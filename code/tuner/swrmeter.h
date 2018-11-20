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

#ifndef _SWRMETER_H
#define _SWRMETER_H

#ifndef M_PI
#define M_PI 3.14159265358979323846264338327950288
#endif

#define FM_PI ((float)M_PI)
#define FM_RAD2DEG ((float)(180.0/M_PI))
#define FM_DEG2RAD ((float)(M_PI/180.0))

#define RAD2DEGF(x) (x*FM_RAD2DEG)
#define DEG2RADF(x) (x*FM_DEG2RAD)

#define SWRMETER_PRINT_DEBUG_STATUS

#include "complex.h"

#define SWRMETER_SAMPLE_LEVEL_IO PC13

#define SWRMETER_ANALOG_REVPWR  PA0
#define SWRMETER_ANALOG_FWDPWR  PA1
#define SWRMETER_ANALOG_CURPWR  PA2
#define SWRMETER_ANALOG_DUTYCYCLEFWD PA3
#define SWRMETER_ANALOG_DUTYCYCLEREV PA4
#define SWRMETER_ANALOG_DUTYCYCLECUR PA5
#define SWRMETER_ANALOG_CURDELAYPHASE PA6
#define SWRMETER_ANALOG_CURPHASE PA7
#define SWRMETER_ANALOG_REVPHASE PB0
#define SWRMETER_ANALOG_REVDELAYPHASE PB1

typedef struct _swr_calib_parms
{
  float offset;
  float scale;
//  float logoffset;
//  float logscale;
} swr_calib_parms;

void swr_calib_parms_default(swr_calib_parms *p);

typedef struct _swr_calib
{
  swr_calib_parms fwdParms;
  swr_calib_parms revParms;
  swr_calib_parms curParms;
} swr_calib;

class SWRMeter
{
    unsigned short sampleMAXVOLTAGELEVEL;
    
    unsigned short sampleFWDPWR;
    unsigned short sampleREVPWR;
    unsigned short sampleCURPWR;
    unsigned short sampleDUTYCYCLEFWD;
    unsigned short sampleDUTYCYCLEREV;
    unsigned short sampleDUTYCYCLECUR;
    unsigned short sampleCURDELAYPHASE;
    unsigned short sampleCURPHASE;
    unsigned short sampleREVPHASE;
    unsigned short sampleREVDELAYPHASE;
    
    swr_calib swrcalib;
    float Z0;
    
  public:

    SWRMeter()
    {
      swr_calib_parms_default(&swrcalib.fwdParms);
      swr_calib_parms_default(&swrcalib.revParms);
      swr_calib_parms_default(&swrcalib.curParms);
    }

    void setup(void);
    void sampleSWR(void);
    void setImpedance(float pZ0);
    float fwdPower(void);
    float revPower(void);
    float curPower(void);

    float reflectionPhase(void);
    float currentPhase(void);

    Complex reflectionCoefficient(void);
    Complex calculateImpedance(void);
    Complex currentCoefficient(void);

    float magReflection(void);
    float SWR(void);

#ifdef SWRMETER_PRINT_DEBUG_STATUS
    void swrmeterPrintDebugStatus(void);
#endif
};

#endif /* _SWRMETER_H */

