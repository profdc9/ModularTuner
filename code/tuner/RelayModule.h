#ifndef _RELAYMODULE_H
#define _RELAYMODULE_H

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

#include <math.h>
#include <Arduino.h>
#include "structconf.h"

#define RELAY_MODULE_NONE 0
#define RELAY_MODULE_INDUCTOR 1
#define RELAY_MODULE_CAPACITOR 2
#define RELAY_MODULE_DELAY 3

#define MAX_NUMBER_RELAYS 16
#define MAX_NUMBER_SWITCHES 2

typedef struct _relay_module_specs
{
  byte     relay_module_type;
  byte     no_relay_ports;
  byte     no_switches;
  byte     mcp23017;
  byte     i2caddr;
  int      offsetval;
  uint16   relay_settle_time;
  int      regs[MAX_NUMBER_RELAYS];
  uint16   relay_port_bits[MAX_NUMBER_RELAYS];
  uint16   switch_bits[MAX_NUMBER_SWITCHES];
} relay_module_specs;

class RelayModule
{
  public:
    relay_module_specs  rms;
    int                 curval, maxval;
    uint16_t            curbits;
    uint16_t            relay_port_mask;
    uint16_t            switch_bits_mask;
    
    void setup(void);
    void setup(const relay_module_specs &pRMS);
    bool isValidModule(void) { return (rms.relay_module_type != RELAY_MODULE_NONE); };
    int getCurrentValue(void);
    int getMaxValue(void) { return maxval; };
    int getMinValue(void) { return rms.offsetval; };
    int getRelaySettleTime(void) { return rms.relay_settle_time; };
    int setCurrentValue(int nCurval, int method=0);
    bool getSwitchState(byte switchno);
    void setSwitchState(byte switchno, bool state);
    int findOptimalValue(int nCurVal, uint16_t &bestcombo, int method);
    void updateCurval(void);
    void setRelayState(int relay, bool state);
    bool getRelayState(int relay);
    void InitializeMCP23008();
    void OutputBitsMCP23008(uint16_t bitval);
    void CalculateMasks(void);
};

extern const relay_module_specs blankRelay;
extern const relay_module_specs indRelay8;
extern const relay_module_specs capRelay8;
extern const relay_module_specs dlyRelay8;
extern const relay_module_specs indRelay7;
extern const relay_module_specs capRelay7;
extern const relay_module_specs dlyRelay7;
#define RELAY_DEFAULT_STRUCTS_NUM 7
extern const relay_module_specs *relay_default_structs[RELAY_DEFAULT_STRUCTS_NUM];
extern const structure_entry relay_fields[10];

#endif  /* _RELAYMODULE_H */
