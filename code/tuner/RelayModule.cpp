/*
 * Copyright (c) 2018 Daniel Marks

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

const uint16_t board8_relay_port_bits[8] = { 0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 };
const uint16_t board8_switch_bits[2] = { 0x8000, 0x4000 };

const uint16_t board7_relay_port_bits[8] = { 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80 };
const uint16_t board7_switch_bits[1] = { 0x80 };

void RelayModule::CalculateMasks(void)
{
   byte i;
   relay_port_mask = 0;
   switch_bits_mask = 0;
   for (i=0;i<no_relay_ports;i++) relay_port_mask |= relay_port_bits[i];
   for (i=0;i<no_switches;i++) switch_bits_mask |= switch_bits[i];
}

void RelayModule::Set8RelayBoard(void)
{
  relay_port_bits = board8_relay_port_bits;
  no_relay_ports = (sizeof(board8_relay_port_bits)/sizeof(uint16_t));
  switch_bits = board8_switch_bits;
  no_switches = (sizeof(board8_switch_bits)/sizeof(uint16_t));
  mcp23017 = 1;
  CalculateMasks();
}

void RelayModule::Set7RelayBoard(void)
{
  relay_port_bits = board7_relay_port_bits;
  no_relay_ports = (sizeof(board7_relay_port_bits)/sizeof(uint16_t));
  switch_bits = board7_switch_bits;
  no_switches = (sizeof(board7_switch_bits)/sizeof(uint16_t));
  mcp23017 = 0;
  CalculateMasks();
}

#undef SOFTI2C

#ifdef SOFTI2C
#undef SOFTI2COUTPUTONLY
#define I2CSCLPIN PB6
#define I2CSDAPIN PB7
#ifdef SOFTI2COUTPUTONLY
#define SETSCL(x) digitalWrite(I2CSCLPIN,x)  
#define SETSDA(x) digitalWrite(I2CSDAPIN,x)
#else 
#define SETSCL(x) { if (x == HIGH) {pinMode(I2CSCLPIN,INPUT);} else {pinMode(I2CSCLPIN,OUTPUT);   digitalWrite(I2CSCLPIN, LOW);} }
#define SETSDA(x) { if (x == HIGH) {pinMode(I2CSDAPIN,INPUT);} else {pinMode(I2CSDAPIN,OUTPUT);   digitalWrite(I2CSDAPIN, LOW);} }
#endif

#define I2CDELAY() i2c_wait_clock_ticks()

void i2c_wait_clock_ticks()
{
#define DWT_CYCCNT      ((volatile uint32_t *)0xE0001004)
  uint32_t start = *DWT_CYCCNT;
  while (((uint32_t)(*DWT_CYCCNT - start)) < 720);
}

void i2c_initialize(void)
{
   pinMode(I2CSCLPIN, OUTPUT);
   pinMode(I2CSDAPIN, OUTPUT);
#ifdef SOFTI2COUTPUTONLY
   digitalWrite(I2CSCLPIN, HIGH);
   digitalWrite(I2CSDAPIN, HIGH);
#else
   digitalWrite(I2CSCLPIN, LOW);
   digitalWrite(I2CSDAPIN, LOW);
   pinMode(I2CSCLPIN, INPUT);
   pinMode(I2CSDAPIN, INPUT);
#endif
}

void i2c_start(void)
{
    SETSDA(HIGH); SETSCL(HIGH); I2CDELAY();
    SETSDA(LOW); I2CDELAY();
    SETSCL(LOW); I2CDELAY();
}

void i2c_stop(void)
{
    SETSDA(LOW); I2CDELAY();
    SETSCL(HIGH); I2CDELAY();
    SETSDA(HIGH); I2CDELAY();
}

// Writing a byte with I2C:
void i2c_write_byte( uint8_t b)
{
    uint8_t i;
    for( i = 0; i < 8; i++ )
    {
      SETSDA(b & 0x80 ? HIGH : LOW);
      I2CDELAY();
      SETSCL(HIGH);
      I2CDELAY();
      SETSCL(LOW);
      b <<= 1;
    }

    SETSDA(HIGH);
    I2CDELAY();
    SETSCL(HIGH);
    I2CDELAY();
    // read the status bit here  bit = SDA
    SETSCL(LOW); 

    return;
}
#endif

void RelayModule::InitializeMCP23008(byte i2caddr)
{
#ifdef SOFTI2C
  i2c_initialize();
  for (int i=0;i<10;i++)
  {
    i2c_start();
    i2c_write_byte(i2caddr << 1);
    i2c_write_byte(0x00);
    i2c_write_byte(0x00);
    if (mcp23017)  i2c_write_byte(0x00);
    i2c_stop();
  }
#else
  Wire.begin();
  for (int i=0;i<10;i++)  
  {
    Wire.beginTransmission(i2caddr);
    Wire.write((byte)0x00);  // choose IODIR or IODIRA
    Wire.write((byte)0x00);  // make all of the bits output
    if (mcp23017)  Wire.write((byte)0x00);
    Wire.endTransmission();
  }
#endif
}

void RelayModule::OutputBitsMCP23008(byte i2caddr, uint16_t bitval)
{
#ifdef SOFTI2C
  i2c_start();
  i2c_write_byte(i2caddr << 1);
  if (mcp23017)
  {
    i2c_write_byte((byte)0x12);  // choose GPIOA
    i2c_write_byte((byte)(bitval & 0xFF));   
    i2c_write_byte((byte)(bitval >> 8));  
  } else
  {
    i2c_write_byte((byte)0x09);
    i2c_write_byte((byte)bitval);
  }
  i2c_stop();
#else
  Wire.beginTransmission(i2caddr);
  if (mcp23017)
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
#endif
}

void RelayModule::setup(void)
{
  i2caddr = (i2caddr & 0x07) | 0x20;
  InitializeMCP23008(i2caddr);
  OutputBitsMCP23008(i2caddr,0);
}

int RelayModule::getCurrentValue(void)
{
  return curval;
}

int RelayModule::findOptimalValue(int nCurval, uint16_t &bestcombo)
{
  // use exhaustive algorithm to find optimal approximating sum
  int i, bestVal;
  uint16_t combo;
  uint16_t ncombos = (1 << no_relay_ports);
  int minerror = nCurval;
  
  bestcombo = 0;
  for (combo=0;combo<ncombos;combo++)
  {
    int sum = 0;
    for (i=no_relay_ports; i>0;)
    {
      i--;
      if (((combo >> i) & 0x01) != 0) sum += regs[i];
    }
    i = nCurval - sum;
    i = i < 0 ? -i : i;
    if (i < minerror)
    {
      minerror = i;
      bestcombo = combo;
      bestVal = sum;
    }
  }
  combo = bestcombo;
  bestcombo = 0;
  for (i=no_relay_ports; i>0;)
  {
    i--;
    if (((combo >> i) & 0x01) != 0) bestcombo |= relay_port_bits[i];
  }
  return bestVal;
}

int RelayModule::setCurrentValue(int nCurval)
{
  uint16_t bestcombo;
  curval = findOptimalValue(nCurval, bestcombo);
  curbits = (bestcombo & relay_port_mask) | (curbits & ~relay_port_mask);
  OutputBitsMCP23008(i2caddr, curbits);
  return curval;
}

void RelayModule::updateCurval(void)
{
  int curval = offsetval;
  for (int i = 0; i < no_relay_ports; i++)
    if ((curbits & relay_port_bits[i]) != 0)
      curval += regs[i];
}

int RelayModule::getMaxValue(void)
{
  int maxval = 0;
  for (int i = 0; i <  no_relay_ports; i++)
      maxval += regs[i];
  return maxval;
}

bool RelayModule::getSwitchState(byte switchno)
{
    if (switchno >= no_switches)
      return 0;
    return (curbits & switch_bits[switchno]) != 0;
}

void RelayModule::setSwitchState(byte switchno, bool state)
{
    if (switchno >= no_switches)
      return;
    if (state)
      curbits |= switch_bits[switchno];
    else
      curbits &= ~switch_bits[switchno];
    OutputBitsMCP23008(i2caddr, curbits);    
}

void RelayModule::setRelayState(int relay, bool state)
{
    if (relay >= no_relay_ports)
      return;
    if  (state)
        curbits |= relay_port_bits[relay];
    else
        curbits &= ~relay_port_bits[relay];
    updateCurval();
    OutputBitsMCP23008(i2caddr, curbits);
}

bool RelayModule::getRelayState(int relay)
{
    if (relay >= no_relay_ports)
      return 0;
    return (curbits & relay_port_bits[relay]) != 0;
}

