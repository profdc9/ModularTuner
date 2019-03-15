#ifndef _FREQUENCYCOUNTER_H
#define _FREQUENCYCOUNTER_H

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

#include "complex.h"

#define CPU_CLOCK_RATE 72000000ul

typedef void (*AuxCounterFunction)(void);

class FrequencyCounter
{
	public:

	byte resetcounterPIN;
	short dividerratio;	
	bool useAltPin;
  float tickTime;
  unsigned short checkInterval;
  unsigned short prescaleFactor;
  
	FrequencyCounter(byte presetcounterPIN, short pDividerratio, bool pUseAltPin, unsigned short pCheckInterval, unsigned short pPrescaleFactor=8)
	{
		resetcounterPIN = presetcounterPIN;
		dividerratio = pDividerratio;
		useAltPin = pUseAltPin;
    checkInterval = pCheckInterval;
    prescaleFactor = pPrescaleFactor;
	};
	
	void setup(void);
	void resetExternalDivider(void);
	void armCounter(void);
	void requestUpdate(void);
	float readUpdate(void);
	float readFinalFrequency(void);
  float getTickTime(void);
	unsigned int getCount(void);
  void stopCounter(void);
  void setAuxFunction(AuxCounterFunction pAuxFcn);
  unsigned int cumulativeTicks(void);
};

#endif /* _INVFREQUENCYCOUNTER_H */
