
#ifndef _DOUBLEL_H
#define _DOUBLEL_H

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
#include "complex.h"

#define DOUBLEL_DEBUG_PRINT_SOLUTIONS

#define TWOPI 6.28318530718f

#define DOUBLEL_NONSENSE_FLOAT 100000000.0f

class DoubleL
{
  public:

    float           Z0;
    float           omega;
    byte            numberOfSolutions;
    bool            seriesShunt;
    float           shuntAdmittance[6][2];
    float           seriesImpedance[6][2];
    float           zRe, zIm, phase;
    float           A,B,C,D;
    float           maxCapacitance;
    float           maxInductance;

    DoubleL(float pZ0, float pFreq, float pMaxCapacitance, float pMaxInductance)
    {
      Z0 = pZ0;
      omega = TWOPI * 1.0e3f * pFreq;
      numberOfSolutions = 0;
      maxCapacitance = pMaxCapacitance * 1.0e-12f;
      maxInductance = pMaxInductance * 1.0e-9f;
    };

    byte matchLoad(float zReal, float zImag, float designPhase, bool onlybest=1, bool seriesShunt=1);
    byte getNumberOfSolutions(void);
    float getShuntAdmittance(byte n, byte st);
    float getSeriesImpedance(byte n, byte st);
    float getShuntAdmittanceCapacitance(byte n, byte st);
    float getShuntAdmittanceInductance(byte n, byte st);
    float getSeriesImpedanceCapacitance(byte n, byte st);
    float getSeriesImpedanceInductance(byte n, byte st);
    bool checkValidImpedance(float impedance);
    bool checkValidAdmittance(float admittance);
    float reactanceScore(float sI0, float sA0, float sI1, float sa1);

#ifdef DOUBLEL_DEBUG_PRINT_SOLUTIONS
    void debugPrintSolutions(void);
#endif
};

#endif /* _DOUBLEL_H */

