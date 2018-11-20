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
#include <EEPROM.h>
#include "EEPROMobjectstore.h"
#include "debugmsg.h"

uint16 EEPROMobjectstore::setEEPROMbank(uint16 bank)
{
      if (bank < nbanks)
      {
        EEPROM.PageBase0 = 0x801F800 - bank * 0x800;
        EEPROM.PageBase1 = 0x801FC00 - bank * 0x800;
        EEPROM.PageSize  = 0x400;
        return 0;
      }
      return EEPROMOBJECTSTORE_INVALID_BANK;
;
}

uint16 EEPROMobjectstore::formatBank(uint16 bank)
{
      uint16 status = setEEPROMbank(bank);
      if (status != 0) return status;
      return EEPROM.format();
}

uint16 EEPROMobjectstore::writeBlock(uint16 bank, uint16 address, unsigned char *block, uint16 length)
{
      uint16 status;
      uint16 data;

      status = setEEPROMbank(bank);
      if (status != 0) return status;

      for (uint16 i=0; i < length; i+=2)
      {
          if (i<(length-1))
               data = (((uint16)block[i+1]) << 8) | ((uint16) block[i]);
          else
               data = block[i];
          status = EEPROM.write(address+i/2,data);
          if (status != 0) return status;
      }
      return 0;
}

uint16 EEPROMobjectstore::readBlock(uint16 bank, uint16 address, unsigned char *block, uint16 length)
{
      uint16 status;
      uint16 data;

      status = setEEPROMbank(bank);
      if (status != 0) return status;
      
      for (uint16 i=0; i < length; i+=2)
      {
          status = EEPROM.read(address+i/2,&data);
          if (status != 0) return status;
          if (i<(length-1))
              block[i+1] = data >> 8;
          block[i] = data & 0xFF;
      }
      return 0;
}

int EEPROMobjectstore::setup(int pNbanks)
{
    uint16 status;
    
    nbanks = pNbanks;
    for (int bank=0;bank<nbanks;bank++)
    {
        setEEPROMbank(bank);
        status = EEPROM.init();
        if (status != 0) return status;  
    }
    return 0;
}

EEPROMobjectstore EEPROMstore;


