/* L network solver class */

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
#include "LNetwork.h"
#include "debugmsg.h"

bool LNetwork::checkValidImpedance(float impedance)
{
  if (impedance >= 0.0f)
      return((impedance / omega) < maxInductance);
  return ((-1.0f/(impedance * omega)) < maxCapacitance);
}

bool LNetwork::checkValidAdmittance(float admittance)
{
  if (admittance >= 0.0f)
      return ((admittance / omega) < maxCapacitance);
  return ((-1.0f/(admittance * omega)) < maxInductance);
}
byte LNetwork::matchLoad(float zReal, float zImag)
{
  numberOfSolutions = 0;
  float zMag = zReal*zReal + zImag*zImag;
  float sq = zReal*Z0*(zMag-zReal*Z0);
  if (sq > 0)
  {
    float sqf = sqrtf(sq);

    float shuntA = (zImag*Z0+sqf)/(Z0*zMag);
    float seriesI = sqf/zReal;

    if (checkValidAdmittance(shuntA) && checkValidImpedance(seriesI))
    {
      solutionOrder[numberOfSolutions] = LNETWORK_SHUNT_THEN_SERIES;
      shuntAdmittance[numberOfSolutions] = shuntA;
      seriesImpedance[numberOfSolutions] = seriesI;
      numberOfSolutions++;
    }

    shuntA = (zImag*Z0-sqf)/(Z0*zMag);
    seriesI = -sqf/zReal;

    if (checkValidAdmittance(shuntA) && checkValidImpedance(seriesI))
    {
      solutionOrder[numberOfSolutions] = LNETWORK_SHUNT_THEN_SERIES;
      shuntAdmittance[numberOfSolutions] = (zImag*Z0-sqf)/(Z0*zMag);
      seriesImpedance[numberOfSolutions] = -sqf/zReal;
      numberOfSolutions++;
    }
  }
    
  if (((Z0-zReal) >= 0.0f) && (zReal >= 0.0f))
  {
    float seriesI = sqrtf((Z0-zReal)*zReal)-zImag;
    float shuntA = sqrtf(Z0-zReal)/(sqrtf(zReal)*Z0);
    if (checkValidAdmittance(shuntA) && checkValidImpedance(seriesI))
    {
        solutionOrder[numberOfSolutions] = LNETWORK_SERIES_THEN_SHUNT;
        seriesImpedance[numberOfSolutions] = seriesI;
        shuntAdmittance[numberOfSolutions] = shuntA;
        numberOfSolutions++;
    }
  }
  zRe = zReal;
  zIm = zImag;
  return numberOfSolutions;
}

byte LNetwork::getNumberOfSolutions(void)
{
  return numberOfSolutions;
}

l_network_order LNetwork::getSolutionType(byte n)
{
  if (n < numberOfSolutions)
    return solutionOrder[n];
  return LNETWORK_UNKNOWN;
}

float LNetwork::getShuntAdmittance(byte n)
{
  if (n < numberOfSolutions)
      return shuntAdmittance[n];
  return LNETWORK_NONSENSE_FLOAT;
}

float LNetwork::getSeriesImpedance(byte n)
{
  if (n < numberOfSolutions)
      return seriesImpedance[n];
  return LNETWORK_NONSENSE_FLOAT;
}

/* returns capacitance in pF */
float LNetwork::getShuntAdmittanceCapacitance(byte n)
{
  if (n < numberOfSolutions)
  {
    float admittance = shuntAdmittance[n];
    if (admittance < 0.0f)
        return LNETWORK_NONSENSE_FLOAT;
    return 1.0e12f*(admittance/omega);
  }
  return LNETWORK_NONSENSE_FLOAT;
}

/* returns inductance in nH */
float LNetwork::getShuntAdmittanceInductance(byte n)
{
  if (n < numberOfSolutions)
  {
    float admittance = shuntAdmittance[n];
    if (admittance > 0.0f)
        return LNETWORK_NONSENSE_FLOAT;
    return -1.0e9f/(omega*admittance);
  }
  return LNETWORK_NONSENSE_FLOAT;
}

/* returns capacitance in pF */
float LNetwork::getSeriesImpedanceCapacitance(byte n)
{
  if (n < numberOfSolutions)
  {
    float impedance = seriesImpedance[n];
    if (impedance > 0.0f)
        return LNETWORK_NONSENSE_FLOAT;
    return -1.0e12f/(omega*impedance);
  }
  return LNETWORK_NONSENSE_FLOAT;
}

/* returns inductance in nH */
float LNetwork::getSeriesImpedanceInductance(byte n)
{
  if (n < numberOfSolutions)
  {
    float impedance = seriesImpedance[n];
    if (impedance < 0.0f)
        return LNETWORK_NONSENSE_FLOAT;
    return 1.0e9f*impedance/omega;
  }
  return LNETWORK_NONSENSE_FLOAT;
}

#ifdef LNETWORK_DEBUG_PRINT_SOLUTIONS
void LNetwork::debugPrintSolutions(void)
{
  float temp;
  byte i;
  if (numberOfSolutions == 0)
      DEBUGMSG("No solutions to L network, or computation not performed");
  DEBUGMSG("Z0=%d to Z=%d+i%d at Frequency %d kHz",(int)Z0,(int)zRe,(int)zIm,(int)(1.0e-3f*omega/TWOPI));
  for (i=0;i<numberOfSolutions;i++)
  {
      l_network_order solutionType = getSolutionType(i);
      if (solutionType == LNETWORK_SERIES_THEN_SHUNT)
      {
          DEBUGMSG("Solution %d: Series then Shunt Z=%d ohms Y=%d umho",i+1,(int)getSeriesImpedance(i),(int)(1.0e6f*getShuntAdmittance(i)));
      }
      else if (solutionType == LNETWORK_SHUNT_THEN_SERIES)
      {
          DEBUGMSG("Solution %d: Shunt then Series Y=%d umho Z=%d ohms",i+1,(int)(1.0e6f*getShuntAdmittance(i)),(int)getSeriesImpedance(i));
      }
      else {
          DEBUGMSG("Solution %d: unknown");
      }
      temp = getShuntAdmittanceCapacitance(i);
      if (temp != LNETWORK_NONSENSE_FLOAT)
          DEBUGMSG("Shunt Capacitance = %d pF",(int) temp);
      temp = getShuntAdmittanceInductance(i);
      if (temp != LNETWORK_NONSENSE_FLOAT)
          DEBUGMSG("Shunt Inductance = %d nH",(int) temp);
      temp = getSeriesImpedanceCapacitance(i);
      if (temp != LNETWORK_NONSENSE_FLOAT)
          DEBUGMSG("Series Capacitance = %d pF",(int) temp);
      temp = getSeriesImpedanceInductance(i);
      if (temp != LNETWORK_NONSENSE_FLOAT)
          DEBUGMSG("Series Inductance = %d nH",(int) temp);        
  }
}
#endif

