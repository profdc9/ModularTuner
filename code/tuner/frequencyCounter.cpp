/*  Frequency Counter Class */

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
#include "frequencyCounter.h"
#include "debugmsg.h"

HardwareTimer time2(2);
HardwareTimer timeb(3);

enum freq_counter_state { FREQ_COUNTER_IDLE, FREQ_COUNTER_ARMED, FREQ_COUNTER_PULSES };
enum freq_counter_read_state { FREQ_COUNTER_READ_IDLE, FREQ_COUNTER_READ_WAITING, FREQ_COUNTER_READ_READY };

typedef struct _active_counter
{
	freq_counter_state state;
	freq_counter_read_state state_read;
	unsigned short count_last;
	unsigned int total_counts;
	unsigned int number_of_ticks;
	unsigned int read_total_counts;
	unsigned int read_number_of_ticks;
  unsigned int cumulative_ticks;
  AuxCounterFunction aux_fcn;
} freq_active_counter;

static volatile freq_active_counter active_ctr;

void FrequencyCounter::resetExternalDivider(void)
{
	digitalWrite(resetcounterPIN,LOW);
	delayMicroseconds(1);
	digitalWrite(resetcounterPIN,HIGH);
	delayMicroseconds(1);
	digitalWrite(resetcounterPIN,LOW);
}

static void freqCounterInterrupt(void)
{
	unsigned short current_cnt = time2.getCount();  // must be first in interrupt!
  active_ctr.cumulative_ticks++;
  if (active_ctr.aux_fcn != NULL)
      (*active_ctr.aux_fcn)();
	if (active_ctr.state == FREQ_COUNTER_PULSES)
	{
		active_ctr.number_of_ticks++;
	  active_ctr.total_counts += (current_cnt - active_ctr.count_last) & 0xFFFF;
		active_ctr.count_last = current_cnt;
		if (active_ctr.state_read == FREQ_COUNTER_READ_WAITING)
		{
			active_ctr.read_number_of_ticks = active_ctr.number_of_ticks;
			active_ctr.read_total_counts = active_ctr.total_counts;
			active_ctr.state_read = FREQ_COUNTER_READ_READY;
		}
		return;
	} else if (active_ctr.state == FREQ_COUNTER_ARMED)
	{
		active_ctr.count_last = current_cnt;
		active_ctr.total_counts = 0;
		active_ctr.number_of_ticks = 0;
		active_ctr.state = FREQ_COUNTER_PULSES;
		return;
	}
}

unsigned int FrequencyCounter::cumulativeTicks(void)
{
  return active_ctr.cumulative_ticks;
}

void FrequencyCounter::armCounter(void)
{
  active_ctr.state_read = FREQ_COUNTER_READ_IDLE; 
	active_ctr.state = FREQ_COUNTER_ARMED;
}

void FrequencyCounter::requestUpdate(void)
{
	active_ctr.read_total_counts = 0;
	active_ctr.read_number_of_ticks = 0;
	active_ctr.state_read = FREQ_COUNTER_READ_WAITING;
}

float FrequencyCounter::readUpdate(void)
{
 	if (active_ctr.state_read != FREQ_COUNTER_READ_READY)
		return -1.0f;
	 float freq = ((float)active_ctr.read_total_counts*dividerratio)/
		(tickTime * active_ctr.read_number_of_ticks);
   return freq;
}


void FrequencyCounter::stopCounter(void)
{ 
  active_ctr.state = FREQ_COUNTER_IDLE;
  return;
}

float FrequencyCounter::readFinalFrequency(void)
{
	if (active_ctr.state != FREQ_COUNTER_PULSES)
		return -1.0f;
	active_ctr.state = FREQ_COUNTER_IDLE;
	if (active_ctr.number_of_ticks == 0)
		return -1.0f;
	float freq = ((float)active_ctr.total_counts*dividerratio) /
	   (tickTime * active_ctr.number_of_ticks);
	return freq;
}

unsigned int FrequencyCounter::getCount(void)
{
	return time2.getCount();
}

float FrequencyCounter::getTickTime(void)
{
  return tickTime;
}

void FrequencyCounter::setAuxFunction(AuxCounterFunction pAuxFcn)
{
   active_ctr.aux_fcn = pAuxFcn;
}


void FrequencyCounter::setup(void)
{
  pinMode(resetcounterPIN,OUTPUT);

  time2.pause();
  time2.setCount(0);
  time2.setPrescaleFactor(1);
  time2.setOverflow(65535);  
	if (useAltPin)
	{
		pinMode(PA15,INPUT_PULLUP);
		afio_remap(AFIO_REMAP_TIM2_PARTIAL_1);
	} else
	{
		pinMode(PA0,INPUT_PULLUP);
	}	
	// TIMER2->regs.gen->CCMR1 |= 0x0101; // Ch. 2 as TI2 CC2S
  TIMER2->regs.gen->SMCR |= 0x003F; // Ext. clk mode 1
  TIMER2->regs.gen->SMCR |= 0xC000; // TI2FP2 is the trigger
  TIMER2->regs.gen->SMCR &= ~0x3F80; // TI2FP2 is the trigger
//  TIMER2->regs.gen->CR1 |= 0x0001; // enable counting 
	time2.refresh();
  time2.resume();

  tickTime = ((float)(prescaleFactor * checkInterval))/((float)CPU_CLOCK_RATE);

  active_ctr.cumulative_ticks = 0;
  active_ctr.state = FREQ_COUNTER_IDLE;
  active_ctr.state_read = FREQ_COUNTER_READ_IDLE;
  active_ctr.aux_fcn = NULL;
  timeb.pause();
  timeb.setCount(0);
  timeb.setPrescaleFactor(prescaleFactor);
  timeb.setOverflow(checkInterval);
  timeb.setCompare(TIMER_CH1, 1);
  timeb.attachCompare1Interrupt(freqCounterInterrupt);
  timeb.refresh();
  timeb.resume();
}
