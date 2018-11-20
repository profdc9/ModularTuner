/* Double L network solver class */

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
#include "DoubleL.h"
#include "debugmsg.h"

#define DOUBLEL_CHECK_STEPS 10
#define DOUBLEL_HIGH_SCORE 1.0e10f

bool DoubleL::checkValidImpedance(float impedance)
{
  if (impedance >= 0.0f)
      return((impedance / omega) < maxInductance);
  return ((-1.0f/(impedance * omega)) < maxCapacitance);
}

bool DoubleL::checkValidAdmittance(float admittance)
{
  if (admittance >= 0.0f)
      return ((admittance / omega) < maxCapacitance);
  return ((-1.0f/(admittance * omega)) < maxInductance);
}

float DoubleL::reactanceScore(float sI0, float sA0, float sI1, float sA1)
{
  return (fabsf(sI0)/Z0)+(fabsf(sA0)*Z0)+(fabsf(sI1)/Z0)+(fabsf(sA1)*Z0);
}

float minmag(float fl, float minv)
{
  if (fl < 0.0f)
    return fl > (-minv) ? (-minv) : fl;
  return fl < minv ? minv: fl;
}

byte DoubleL::matchLoad(float zReal, float zImag, float designPhase, bool onlybest, bool pSeriesShunt)
{
  int stp;
  numberOfSolutions = 0;

  seriesShunt = pSeriesShunt;
  phase = DEG2RAD(designPhase);
  zRe = zReal;
  zIm = zImag;

  /* first calculate A,B,C,D matrix */
  float reduc = sqrtf(Z0 / zReal);
  Complex cphase;
  Complex zComplex(zReal, zImag);
  cphase.polar(phase);
  Complex beta = cphase * reduc;
  Complex alpha = beta * zComplex;

  A = alpha.re() / Z0;
  B = -alpha.im();
  C = beta.im() / Z0;
  D = beta.re();

  float sI0,sA0,sI1,sA1;
  float bestsI0,bestsA0,bestsI1,bestsA1;
  float lowestScore = DOUBLEL_HIGH_SCORE;
  float Bv = minmag(B,Z0);
  float Cv = minmag(C,1.0f/Z0);
  for (stp=-DOUBLEL_CHECK_STEPS;stp<=DOUBLEL_CHECK_STEPS;stp++)
  {
    if (seriesShunt)
    {
      float Z1 = (-2.0f*Bv*stp)/DOUBLEL_CHECK_STEPS;
      sI0 = Z1;
      sA0 = (A - 1.0f) / (B + A*Z1);
      sI1 = -(B + A*Z1);
      sA1 = (D - 1.0f) / (B + A*Z1);
    } else
    {
      float Y1 = (2.0f*Cv*stp)/DOUBLEL_CHECK_STEPS;
      sA0 = Y1;
      sI0 = (1.0f - D)/(C - D*Y1);
      sA1 = C - D*Y1;
      sI1 = (1.0f - A)/(C - D*Y1);
    }
    if (((sA0 > 0.0f) && (sI0 < 0.0f)) || ((sA0 < 0.0f) && (sI0 > 0.0f)))
        continue;
    if (((sA1 > 0.0f) && (sI1 < 0.0f)) || ((sA1 < 0.0f) && (sI1 > 0.0f)))
        continue;
    if ((checkValidImpedance(sI0)) && (checkValidAdmittance(sA0)) &&
        (checkValidImpedance(sI1) && (checkValidAdmittance(sA1))))
        {
          float score = reactanceScore(sI0,sA0,sI1,sA1);
          if (score < lowestScore)
          {
              bestsI0 = sI0; bestsA0 = sA0; bestsI1 = sI1; bestsA1 = sA1;
              lowestScore = score;
          }
        }
  }
  if ((!onlybest) && (lowestScore != DOUBLEL_HIGH_SCORE))
  {
    seriesImpedance[numberOfSolutions][0] = bestsI0;
    shuntAdmittance[numberOfSolutions][0] = bestsA0;
    seriesImpedance[numberOfSolutions][1] = bestsI1;
    shuntAdmittance[numberOfSolutions][1] = bestsA1; 
    numberOfSolutions++;
    lowestScore = DOUBLEL_HIGH_SCORE; 
  } 
  for (stp=-DOUBLEL_CHECK_STEPS;stp<=DOUBLEL_CHECK_STEPS;stp++)
  {
    if (seriesShunt)
    {
      float Y2 = (2.0f*Cv*stp)/DOUBLEL_CHECK_STEPS;
      sI0 = (1.0f - D) / (C-A*Y2);
      sA0 = (C - A*Y2);
      sI1 = (1.0f - A) / (C-A*Y2);
      sA1 = Y2;
    } else
    {
      float Z2 = (-2.0f*Bv*stp)/DOUBLEL_CHECK_STEPS;
      sA0 = (1.0f - A) / (B + D*Z2);
      sI0 = -(B + D*Z2);
      sA1 = (1.0f - D) / (B + D*Z2);
      sI1 = Z2;
    }
    if (((sA0 > 0.0f) && (sI0 < 0.0f)) || ((sA0 < 0.0f) && (sI0 > 0.0f)))
        continue;
    if (((sA1 > 0.0f) && (sI1 < 0.0f)) || ((sA1 < 0.0f) && (sI1 > 0.0f)))
        continue;
    if ((checkValidImpedance(sI0)) && (checkValidAdmittance(sA0)) &&
        (checkValidImpedance(sI1) && (checkValidAdmittance(sA1))))
        {
          float score = reactanceScore(sI0,sA0,sI1,sA1);
          if (score < lowestScore)
          {
              bestsI0 = sI0; bestsA0 = sA0; bestsI1 = sI1; bestsA1 = sA1;
              lowestScore = score;
          }
        }
  }
  if (lowestScore != DOUBLEL_HIGH_SCORE)
  {
    seriesImpedance[numberOfSolutions][0] = bestsI0;
    shuntAdmittance[numberOfSolutions][0] = bestsA0;
    seriesImpedance[numberOfSolutions][1] = bestsI1;
    shuntAdmittance[numberOfSolutions][1] = bestsA1; 
    numberOfSolutions++;
  }
  return numberOfSolutions;
}

byte DoubleL::getNumberOfSolutions(void)
{
  return numberOfSolutions;
}

float DoubleL::getShuntAdmittance(byte n, byte st)
{
  if ((n < numberOfSolutions) && (st < 2))
    return shuntAdmittance[n][st];
  return DOUBLEL_NONSENSE_FLOAT;
}

float DoubleL::getSeriesImpedance(byte n, byte st)
{
  if ((n < numberOfSolutions) && (st < 2))
    return seriesImpedance[n][st];
  return DOUBLEL_NONSENSE_FLOAT;
}

/* returns capacitance in pF */
float DoubleL::getShuntAdmittanceCapacitance(byte n, byte st)
{
  if ((n < numberOfSolutions) && (st < 2))
  {
    float admittance = shuntAdmittance[n][st];
    if (admittance < 0.0f)
      return DOUBLEL_NONSENSE_FLOAT;
    return 1.0e12f * (admittance / omega);
  }
  return DOUBLEL_NONSENSE_FLOAT;
}

/* returns inductance in nH */
float DoubleL::getShuntAdmittanceInductance(byte n, byte st)
{
  if ((n < numberOfSolutions) && (st < 2))
  {
    float admittance = shuntAdmittance[n][st];
    if (admittance >= 0.0f)
      return DOUBLEL_NONSENSE_FLOAT;
    return -1.0e9f / (omega * admittance);
  }
  return DOUBLEL_NONSENSE_FLOAT;
}

/* returns capacitance in pF */
float DoubleL::getSeriesImpedanceCapacitance(byte n, byte st)
{
  if ((n < numberOfSolutions) && (st < 2))
  {
    float impedance = seriesImpedance[n][st];
    if (impedance >= 0.0f)
      return DOUBLEL_NONSENSE_FLOAT;
    return -1.0e12f / (omega * impedance);
  }
  return DOUBLEL_NONSENSE_FLOAT;
}

/* returns inductance in nH */
float DoubleL::getSeriesImpedanceInductance(byte n, byte st)
{
  if ((n < numberOfSolutions) && (st < 2))
  {
    float impedance = seriesImpedance[n][st];
    if (impedance < 0.0f)
      return DOUBLEL_NONSENSE_FLOAT;
    return 1.0e9f * impedance / omega;
  }
  return DOUBLEL_NONSENSE_FLOAT;
}

#ifdef DOUBLEL_DEBUG_PRINT_SOLUTIONS
void DoubleL::debugPrintSolutions(void)
{
  float temp;
  byte i, j;
  if (numberOfSolutions == 0)
    DEBUGMSG("No solutions to double L network, or computation not performed");
  DEBUGMSG("Z0=%d to Z=%d+i%d at phase %d, Frequency %d kHz", (int)Z0, (int)zRe, (int)zIm, (int)RAD2DEG(phase), (int)(1.0e-3f * omega / TWOPI));
  DEBUGMSG("A=%d B=%d C=%d D=%d", (int)(A * 1000.0f), (int)(B * 1000.0f), (int)(C * 1000.0f), (int)(D * 1000.f));
  for (i = 0; i < numberOfSolutions; i++)
  {
    if (seriesShunt)
        DEBUGMSG("Solution series-shunt %d", i);
    else
        DEBUGMSG("Solution shunt-series %d", i);
    for (j = 0; j < 2; j++)
    {
      DEBUGMSG("Stage %d: Series %d ohms Shunt %d umhos", j, (int)getSeriesImpedance(i, j), (int)(1.0e6f * getShuntAdmittance(i, j)));
      temp = getSeriesImpedanceCapacitance(i, j);
      if (temp != DOUBLEL_NONSENSE_FLOAT)
        DEBUGMSG("Series Capacitance %d = %d pF", j, (int) temp);
      temp = getSeriesImpedanceInductance(i, j);
      if (temp != DOUBLEL_NONSENSE_FLOAT)
        DEBUGMSG("Series Inductance %d = %d nH", j, (int) temp);
      temp = getShuntAdmittanceCapacitance(i, j);
      if (temp != DOUBLEL_NONSENSE_FLOAT)
        DEBUGMSG("Shunt Capacitance %d = %d pF", j, (int) temp);
      temp = getShuntAdmittanceInductance(i, j);
      if (temp != DOUBLEL_NONSENSE_FLOAT)
        DEBUGMSG("Shunt Inductance %d = %d nH", j, (int) temp);
    }
  }
}
#endif

