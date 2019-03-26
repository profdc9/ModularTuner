/*
   Copyright (c) 2018 Daniel Marks

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/


#include <Arduino.h>
#include <Wire.h>
#include "RelayModule.h"
#include "debugmsg.h"
#include "structconf.h"

const relay_module_specs blankRelay = { RELAY_MODULE_NONE,
                                       0,
                                       0,
                                       0,
                                       0x00,
                                       0,
                                       0,
                                       0,
{  },
{  },
{  } };

const relay_module_specs indRelay8 = { RELAY_MODULE_INDUCTOR,
                                       8,
                                       2,
                                       1,
                                       0x20,
                                       1,
                                       20,
                                       15,
{ 75, 150, 300, 600, 1200, 2400, 5000, 10000 },
{ 0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 },
{ 0x8000, 0x4000 } };

const relay_module_specs capRelay8 = { RELAY_MODULE_CAPACITOR,
                                       8,
                                       2,
                                       1,
                                       0x21,
                                       1,
                                       5,
                                       15,
{ 7, 15, 33, 66, 125, 250, 500, 1000 },
{ 0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 },
{ 0x8000, 0x4000 } };

const relay_module_specs dlyRelay8 = { RELAY_MODULE_DELAY,
                                       8,
                                       2,
                                       1,
                                       0x22,
                                       0,
                                       0,
                                       15,
{ 10, 20, 40, 80, 160, 320, 640, 1280 },
{ 0x8000, 0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02  },
{ 0x01, 0x4000 } };
                                     
const relay_module_specs indRelay7 = { RELAY_MODULE_INDUCTOR,
                                       7,
                                       1,
                                       0,
                                       0x20,
                                       1,
                                       20,
                                       15,
{ 150, 300, 600, 1200, 2400, 5000, 10000 },
{ 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 },
{ 0x80 } };
 
const relay_module_specs capRelay7 = { RELAY_MODULE_CAPACITOR,
                                       7,
                                       1,
                                       0,
                                       0x21,
                                       1,
                                       5,
                                       15,
{ 15, 33, 66, 125, 250, 500, 1000 },
{ 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 },
{ 0x80 } };

const relay_module_specs dlyRelay7 = { RELAY_MODULE_DELAY,
                                       6,
                                       2,
                                       0,
                                       0x22,
                                       0,
                                       0,
                                       15,
{ 40, 80, 160, 320, 640, 1280 },
{ 0x40, 0x20, 0x10, 0x08, 0x04, 0x02  },
{ 0x01, 0x80 } };

const relay_module_specs *relay_default_structs[RELAY_DEFAULT_STRUCTS_NUM] = { &blankRelay, &indRelay8, &capRelay8, &dlyRelay8, &indRelay7, &capRelay7, &dlyRelay7 };

const structure_entry relay_fields[11] =
{ { "MODULETYPE",   STRUCTCONF_INT8,       offsetof(relay_module_specs,relay_module_type), 1, 0, 3, "1=inductor,2=capacitor,3=delay" },
  { "NORELAYPORTS", STRUCTCONF_INT8,       offsetof(relay_module_specs,no_relay_ports), 1, 0, 16, NULL },
  { "NOSWITCHES",   STRUCTCONF_INT8,       offsetof(relay_module_specs,no_switches), 1, 0, 2, NULL },
  { "MCP23017",     STRUCTCONF_INT8,       offsetof(relay_module_specs,mcp23017), 1, 0, 1, "0=MCP23008, 1=MCP23017" },
  { "I2CADDR",      STRUCTCONF_INT8_HEX,   offsetof(relay_module_specs,i2caddr), 1, 0x00, 0xFF, "Hex values" },
  { "AUTOTUNE",     STRUCTCONF_INT8,       offsetof(relay_module_specs,autotune), 1, 0, 1, "0=No, 1=Yes" },
  { "OFFSETVAL",    STRUCTCONF_INT32,      offsetof(relay_module_specs,offsetval), 1, 0, STRUCTCONF_INTMAX, NULL },
  { "SETTLETIME",   STRUCTCONF_INT16,      offsetof(relay_module_specs,relay_settle_time), 1, 0, 1000, NULL },
  { "COMPVALUE",    STRUCTCONF_INT32,      offsetof(relay_module_specs,regs), MAX_NUMBER_RELAYS, 0, STRUCTCONF_INTMAX, NULL },
  { "PORTBITS",     STRUCTCONF_INT16_HEX,  offsetof(relay_module_specs,relay_port_bits), MAX_NUMBER_RELAYS, 0, 0xFFFF, "Hex values" },
  { "SWITCHBITS",   STRUCTCONF_INT16_HEX,  offsetof(relay_module_specs,switch_bits), MAX_NUMBER_SWITCHES, 0, 0xFFFF, "Hex values" }
}; 

const char *relay_module_type_unit[4] = { "", " nH", " pF", "00 ps" };

void RelayModule::CalculateMasks(void)
{
  byte i;
  relay_port_mask = 0;
  switch_bits_mask = 0;
  maxval = rms.offsetval;
  for (i = 0; i < rms.no_relay_ports; i++)
  {
    relay_port_mask |= rms.relay_port_bits[i];
    maxval += rms.regs[i];
  }
  for (i = 0; i < rms.no_switches; i++) switch_bits_mask |= rms.switch_bits[i];
}

void RelayModule::InitializeMCP23008(void)
{
  if (rms.i2caddr == 0) return;
  Wire.begin();
  for (int i = 0; i < 10; i++)
  {
    Wire.beginTransmission(rms.i2caddr);
    Wire.write((byte)0x00);  // choose IODIR or IODIRA
    Wire.write((byte)0x00);  // make all of the bits output
    if (rms.mcp23017)  Wire.write((byte)0x00);
    Wire.endTransmission();
  }
}

void RelayModule::OutputBitsMCP23008(uint16_t bitval)
{
  if (rms.i2caddr == 0) return;
  Wire.beginTransmission(rms.i2caddr);
  if (rms.mcp23017)
  {
    Wire.write((byte)0x12);  // choose GPIOA
    Wire.write((byte)(bitval & 0xFF));
    Wire.write((byte)(bitval >> 8));
  } else
  {
    Wire.write((byte)0x09);  // choose GPIO
    Wire.write((byte)bitval);  // make all of the bits output
  }
  Wire.endTransmission();
}

void RelayModule::setup(void)
{
  curval = 0;
  curbits = 0;
  if (rms.relay_module_type != RELAY_MODULE_NONE)
     rms.i2caddr = (rms.i2caddr & 0x07) | 0x20;
  else
  {
     rms.i2caddr = 0;
     rms.no_relay_ports = 0;
     rms.no_switches = 0;
     return;
  }
  CalculateMasks();
  InitializeMCP23008();
  OutputBitsMCP23008(0);
}

void RelayModule::setup(const relay_module_specs &pRMS)
{
  rms = pRMS;
  setup();
}

int RelayModule::getCurrentValue(void)
{
  return curval;
}

int RelayModule::findOptimalValue(int nCurval, uint16_t &bestcombo, int method)
{
  // use exhaustive algorithm to find optimal approximating sum
  int i, bestVal = -1;
  uint16_t combo;
  uint16_t ncombos = (1 << rms.no_relay_ports);
  int minerror = 0x7FFFFFFF;

  bestcombo = 0;
  for (combo = 0; combo < ncombos; combo++)
  {
    int sum = rms.offsetval;
    for (i = rms.no_relay_ports; i > 0;)
    {
      i--;
      if (((combo >> i) & 0x01) != 0) sum += rms.regs[i];
    }
    i = nCurval - sum;
    i = i < 0 ? -i : i;
    if ((i < minerror) &&
        ((method == 0) ||
         ((method == 1) && (sum < nCurval)) ||
         ((method == 2) && (sum > nCurval))))
    {
      minerror = i;
      bestcombo = combo;
      bestVal = sum;
    }
  }
  combo = bestcombo;
  bestcombo = 0;
  for (i = rms.no_relay_ports; i > 0;)
  {
    i--;
    if (((combo >> i) & 0x01) != 0) bestcombo |= rms.relay_port_bits[i];
  }
  return bestVal;
}

int RelayModule::setCurrentValue(int nCurval, int method)
{
  uint16_t bestcombo;
  int bestVal = findOptimalValue(nCurval, bestcombo, method);
  if (bestVal == -1)
        return -1;
  curval = bestVal;
  curbits = (bestcombo & relay_port_mask) | (curbits & ~relay_port_mask);
  OutputBitsMCP23008(curbits);
  return curval;
}

void RelayModule::updateCurval(void)
{
  int curval = rms.offsetval;
  for (int i = 0; i < rms.no_relay_ports; i++)
    if ((curbits & rms.relay_port_bits[i]) != 0)
      curval += rms.regs[i];
}

bool RelayModule::getSwitchState(byte switchno)
{
  if (switchno >= rms.no_switches)
    return 0;
  return (curbits & rms.switch_bits[switchno]) != 0;
}

void RelayModule::setSwitchState(byte switchno, bool state)
{
  if ((switchno < 0) || (switchno >= rms.no_switches))
    return;
  if (state)
    curbits |= rms.switch_bits[switchno];
  else
    curbits &= ~rms.switch_bits[switchno];
  OutputBitsMCP23008(curbits);
}

void RelayModule::setRelayState(int relay, bool state)
{
  if ((relay < 0) || (relay >= rms.no_relay_ports))
    return;
  if  (state)
    curbits |= rms.relay_port_bits[relay];
  else
    curbits &= ~rms.relay_port_bits[relay];
  updateCurval();
  OutputBitsMCP23008(curbits);
}

bool RelayModule::getRelayState(int relay)
{
  if (relay >= rms.no_relay_ports)
    return 0;
  return (curbits & rms.relay_port_bits[relay]) != 0;
}
