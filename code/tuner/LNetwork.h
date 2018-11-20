#ifndef _LNETWORK_H
#define _LNETWORK_H

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

#define LNETWORK_DEBUG_PRINT_SOLUTIONS

#define TWOPI 6.28318530718f

/* order of components from source (transmitter) to load */
enum l_network_order { LNETWORK_SERIES_THEN_SHUNT, LNETWORK_SHUNT_THEN_SERIES, LNETWORK_UNKNOWN };

#define LNETWORK_NONSENSE_FLOAT 100000000.0f

class LNetwork
{
  public:

    float           Z0;
    float           omega;
    byte            numberOfSolutions;
    l_network_order solutionOrder[3];
    float           shuntAdmittance[3];
    float           seriesImpedance[3];
    float           zRe, zIm;
    float           maxInductance;
    float           maxCapacitance;

    LNetwork(float pZ0, float pFreq, float pMaxInductance, float pMaxCapacitance)
    {
      Z0 = pZ0;
      omega = TWOPI * 1.0e3f * pFreq;
      maxInductance = pMaxInductance;
      maxCapacitance = pMaxCapacitance;
      numberOfSolutions = 0;
    };

    byte matchLoad(float zReal, float zImag);
    byte getNumberOfSolutions(void);
    l_network_order getSolutionType(byte n);
    float getShuntAdmittance(byte n);
    float getSeriesImpedance(byte n);
    float getShuntAdmittanceCapacitance(byte n);
    float getShuntAdmittanceInductance(byte n);
    float getSeriesImpedanceCapacitance(byte n);
    float getSeriesImpedanceInductance(byte n);
    bool checkValidImpedance(float impedance);
    bool checkValidAdmittance(float admittance);

#ifdef LNETWORK_DEBUG_PRINT_SOLUTIONS
    void debugPrintSolutions(void);
#endif
};

#endif /* _LNETWORK_H */


