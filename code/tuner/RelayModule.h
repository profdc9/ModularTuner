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

class RelayModule
{
  public:

    int           *regs; 
    int            curval;
    int            offsetval;
    uint16_t       curbits;
    byte           i2caddr;
    byte           mcp23017;
    byte           no_relay_ports;
    byte           no_switches;
    uint16_t       relay_port_mask;
    uint16_t       switch_bits_mask;
    const uint16  *relay_port_bits;
    const uint16  *switch_bits;

    RelayModule(int *pRegs, int pOffsetval, byte pI2caddr)
    {
      regs = pRegs;
      curval = 0;
      curbits = 0;
      i2caddr = pI2caddr;
      offsetval = pOffsetval;
      Set8RelayBoard();
    };

    void setup(void);
    int getCurrentValue(void);
    int setCurrentValue(int nCurval);
    bool getSwitchState(byte switchno);
    void setSwitchState(byte switchno, bool state);
    int findOptimalValue(int nCurVal, uint16_t &bestcombo);
    int getMaxValue(void);
    void updateCurval(void);
    void setRelayState(int relay, bool state);
    bool getRelayState(int relay);
    void InitializeMCP23008(byte i2caddr);
    void OutputBitsMCP23008(byte i2caddr, uint16_t bitval);
    void Set8RelayBoard(void);
    void Set7RelayBoard(void);
    void CalculateMasks(void);
};

#endif  /* _RELAYMODULE_H */
