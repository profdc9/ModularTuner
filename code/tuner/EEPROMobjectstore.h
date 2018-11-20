#ifndef _EEPROMOBJECTSTORE_H
#define _EEPROMOBJECTSTORE_H

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

#define EEPROMOBJECTSTORE_INVALID_BANK 0xBEEF

class EEPROMobjectstore
{
  public:

    int nbanks;

    EEPROMobjectstore()
    {
    };

    int setup(int pNbanks);
    uint16 setEEPROMbank(uint16 bank);
    uint16 formatBank(uint16 bank);
    uint16 writeBlock(uint16 bank, uint16 address, unsigned char *block, uint16 length);
    uint16 readBlock(uint16 bank, uint16 address, unsigned char *block, uint16 length);
};

extern EEPROMobjectstore EEPROMstore;

#endif  /* _EEPROMOBJECTSTORE_H */
