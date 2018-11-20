/*  SWR Meter Class */

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


#include "Arduino.h"
#include "swrmeter.h"
#include "debugmsg.h"

#define FULL_SCALE_AD_VOLTS 3.3f
#define FULL_SCALE_AD_COUNTS 4096.0f
#define VOLTS_TO_COUNTS (FULL_SCALE_AD_COUNTS/FULL_SCALE_AD_VOLTS)
#define LOAD_RESISTOR     10000.0f
#define SERIES_RESISTANCE 1000.0f
#define SCALEVAL_DEFAULT (((SERIES_RESISTANCE+LOAD_RESISTOR)/LOAD_RESISTOR)/VOLTS_TO_COUNTS)
#define OFFSET_DEFAULT 0.0f


#define REVERSE_CURRENT 0.1E-06f
#define AC_RECTIFICATION_FACTOR 0.5f
#define THRESHOLD_VOLTAGE ((LOAD_RESISTOR*REVERSE_CURRENT)/AC_RECTIFICATION_FACTOR)
#define LOGOFFSET_DEFAULT (1.0f/(VOLTS_TO_COUNTS*THRESHOLD_VOLTAGE))
#define KTOVERQ 0.000f
#define EMISSION_COEFF 1.0f
#define LOGSCALE_DEFAULT (KTOVERQ/EMISSION_COEFF)

#define NUMBER_SWR_SAMPLES 11

void quicksort(unsigned short list[],int m,int n)
{
    unsigned short temp;
    int key,i,j,k;
    if( m < n)
    {
        k = ((m+n)/2);
        temp = list[m]; list[m] = list[k];list[k] = temp;
        key = list[m];
        i = m+1;
        j = n;
        while(i <= j)
        {
            while((i <= n) && (list[i] <= key))
                i++;
            while((j >= m) && (list[j] > key))
                j--;
            if( i < j)
            {
                temp = list[i]; list[i] = list[j];list[j] = temp;
            }
        }
        temp = list[m]; list[m] = list[j];list[j] = temp;
 
        quicksort(list,m,j-1);
        quicksort(list,j+1,n);
    }
}

unsigned short analogReadCollect(byte pin, int nsamp)
{
  unsigned short samps[nsamp];
#if 1
  adc_dev *dev = PIN_MAP[pin].adc_device;
  int pinMap = PIN_MAP[pin].adc_channel;
  adc_set_sample_rate(dev, ADC_SMPR_55_5); /* ADC_SMPR_13_5 */
  adc_reg_map *regs = dev->regs;
  adc_set_reg_seqlen(dev, 1);
  regs->SQR3 = pinMap;

  for (uint16_t j = 0; j < nsamp; j++ )
  {
    regs->CR2 |= ADC_CR2_SWSTART;
    while (!(regs->SR & ADC_SR_EOC))
        ;
    samps[j]=(regs->DR & ADC_DR_DATA);
  }
#else
  for (int i=0;i<nsamp;i++) samps[i] = analogRead(pin);
#endif
  quicksort(samps,0,nsamp-1);
  return samps[nsamp/2]; 
}

void swr_calib_parms_default(swr_calib_parms *p)
{
  p->offset = OFFSET_DEFAULT;
  p->scale = SCALEVAL_DEFAULT;
  //p->logoffset = LOGOFFSET_DEFAULT;
  //p->logscale = LOGSCALE_DEFAULT; 
}

void SWRMeter::setup(void)
{
  // set all of the pins to be analog
    pinMode(SWRMETER_ANALOG_FWDPWR, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_REVPWR, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_CURPWR, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_DUTYCYCLEFWD, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_DUTYCYCLEREV, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_DUTYCYCLECUR, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_CURDELAYPHASE, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_CURPHASE, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_REVPHASE, INPUT_ANALOG);
    pinMode(SWRMETER_ANALOG_REVDELAYPHASE, INPUT_ANALOG);
    pinMode(SWRMETER_SAMPLE_LEVEL_IO, OUTPUT);

    digitalWrite(SWRMETER_SAMPLE_LEVEL_IO, HIGH);
    delayMicroseconds(100);
    sampleMAXVOLTAGELEVEL = analogReadCollect(SWRMETER_ANALOG_DUTYCYCLEFWD,NUMBER_SWR_SAMPLES);
    digitalWrite(SWRMETER_SAMPLE_LEVEL_IO, LOW);
}

void SWRMeter::sampleSWR(void)
{
  sampleFWDPWR = analogReadCollect(SWRMETER_ANALOG_FWDPWR,NUMBER_SWR_SAMPLES);
  sampleREVPWR = analogReadCollect(SWRMETER_ANALOG_REVPWR,NUMBER_SWR_SAMPLES);
  sampleCURPWR = analogReadCollect(SWRMETER_ANALOG_CURPWR,NUMBER_SWR_SAMPLES);
  sampleDUTYCYCLEFWD = analogReadCollect(SWRMETER_ANALOG_DUTYCYCLEFWD,NUMBER_SWR_SAMPLES);
  sampleDUTYCYCLEREV = analogReadCollect(SWRMETER_ANALOG_DUTYCYCLEREV,NUMBER_SWR_SAMPLES);
  sampleDUTYCYCLECUR = analogReadCollect(SWRMETER_ANALOG_DUTYCYCLECUR,NUMBER_SWR_SAMPLES);
  sampleCURDELAYPHASE = analogReadCollect(SWRMETER_ANALOG_CURDELAYPHASE,NUMBER_SWR_SAMPLES);
  sampleCURPHASE = analogReadCollect(SWRMETER_ANALOG_CURPHASE,NUMBER_SWR_SAMPLES);
  sampleREVPHASE = analogReadCollect(SWRMETER_ANALOG_REVPHASE,NUMBER_SWR_SAMPLES);
  sampleREVDELAYPHASE = analogReadCollect(SWRMETER_ANALOG_REVDELAYPHASE,NUMBER_SWR_SAMPLES);
}

void SWRMeter::setImpedance(float pZ0)
{
	Z0 = pZ0;
}

float calculatePower(unsigned short samples, swr_calib_parms &p)
{
	float pwr = samples;
  pwr = p.offset + pwr*p.scale;
  //pwr = p.offset + pwr*p.scale + p.logscale*logf(p.logoffset*pwr + 1.0f);
	return pwr < 1.0e-6f ? 1.0e-6f : pwr;
}

float SWRMeter::fwdPower(void)
{
	return calculatePower(sampleFWDPWR,swrcalib.fwdParms);
}

float SWRMeter::revPower(void)
{
	return calculatePower(sampleREVPWR,swrcalib.revParms);
}

float SWRMeter::curPower(void)
{
  return calculatePower(sampleCURPWR,swrcalib.curParms);
}

float SWRMeter::magReflection(void)
{
  return revPower() / fwdPower();
}

float SWRMeter::SWR(void)
{
	float magRef = magReflection();
	return (1.0f+magRef)/(1.0f-magRef);
}

float SWRMeter::reflectionPhase(void)
{
  float phaseReflection = FM_PI*((float)sampleREVPHASE)/((float)sampleMAXVOLTAGELEVEL);
  if (sampleREVDELAYPHASE > sampleREVPHASE)
    phaseReflection = -phaseReflection;
  return phaseReflection;
}

float SWRMeter::currentPhase(void)
{
  float phaseCur = FM_PI*((float)sampleCURPHASE)/((float)sampleMAXVOLTAGELEVEL);
  if (sampleCURDELAYPHASE > sampleCURPHASE)
    phaseCur = -phaseCur;
  return phaseCur;
}

Complex SWRMeter::reflectionCoefficient(void)
{
  float magRef = magReflection();
  float phaseReflection = reflectionPhase();

  return Complex(magRef*cosf(phaseReflection),magRef*sinf(phaseReflection));
}

Complex SWRMeter::calculateImpedance(void)
{
	Complex ref = reflectionCoefficient();
	return ((Complex(1.0f,0.0f)+ref)/(Complex(1.0f,0.0f)-ref))*Z0;
}

Complex SWRMeter::currentCoefficient(void)
{
  float magCur = curPower() / fwdPower();
  float phaseCur = currentPhase();

  return Complex(magCur*cosf(phaseCur),magCur*sinf(phaseCur));
}


#ifdef SWRMETER_PRINT_DEBUG_STATUS
void SWRMeter::swrmeterPrintDebugStatus(void)
{
  float fwd_Power, rev_Power, magRef, swr;
  fwd_Power = fwdPower();
  rev_Power = revPower();
  magRef = magReflection();
  swr = SWR();
  DEBUGMSG("fwdPower=%d revPower=%d, magRef=%d, swr=%d", 
        (int)(fwd_Power*1000.0f),
        (int)(rev_Power*1000.0f),
        (int)(magRef*1000.0f),
        (int)(swr*1000.0f));
  DEBUGMSG("FWDPWR=%u REVPWR=%u CURPWR=%u",sampleFWDPWR,sampleREVPWR,sampleCURPWR);
  DEBUGMSG("DUTYCYCLEFWD=%u DUTYCYCLEREV=%u DUTYCYCLECUR=%u MAXVOLTAGELEVEL=%u",sampleDUTYCYCLEFWD,sampleDUTYCYCLEREV,sampleDUTYCYCLECUR,sampleMAXVOLTAGELEVEL);
  DEBUGMSG("CURDELAYPHASE=%u CURPHASE=%u REVDELAYPHASE=%u REVPHASE=%u",sampleCURDELAYPHASE,sampleCURPHASE,sampleREVDELAYPHASE,sampleREVPHASE);

  {
    Complex refCoeff = reflectionCoefficient();
    Complex imped = calculateImpedance();
    DEBUGMSG("refCoeff = %d+j %d",(int)(refCoeff.re()*1000.0f),(int)(refCoeff.im()*1000.0f));
    DEBUGMSG("imped = %d+j %d",(int)(imped.re()*1000.0f),(int)(imped.im()*1000.0f));
    DEBUGMSG("refAngle = %d curAngle = %d",(int)(1000.0f*RAD2DEGF(reflectionPhase())),(int)(1000.0f*RAD2DEGF(currentPhase())));  
  }
}
#endif

