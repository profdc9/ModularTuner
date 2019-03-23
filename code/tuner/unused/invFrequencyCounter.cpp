
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
#include "invFrequencyCounter.h"
#include "frequencyCounter.h"
#include "debugmsg.h"

#define DEMCR           (*((volatile uint32_t *)0xE000EDFC))
#define DWT_CTRL        (*(volatile uint32_t *)0xe0001000)
#define CYCCNTENA       (1<<0)
#define DWT_CYCCNT      ((volatile uint32_t *)0xE0001004)
#define CPU_CYCLES      *DWT_CYCCNT
#define DEMCR_TRCENA    0x01000000

#ifdef NEED_INITIALIZE_CYCLE_COUNTER
static void initialize_cortex_m3_cycle_counter(void)
{
  DEMCR |= DEMCR_TRCENA; 
  *DWT_CYCCNT = 0; 
  DWT_CTRL |= CYCCNTENA;
}
#endif

enum counter_state { COUNTER_IDLE, COUNTER_ARMED, COUNTER_PULSES };
enum counter_read_state { COUNTER_READ_IDLE, COUNTER_READ_WAITING, COUNTER_READ_READY };

typedef struct _active_counter
{
	counter_state state;
	counter_read_state state_read;
	unsigned int cycle_last;
	unsigned int total_cycles;
	unsigned int number_of_pulses;
	unsigned int read_total_cycles;
	unsigned int read_number_of_pulses;
} active_counter;

static volatile active_counter active_ctr;

void InvFrequencyCounter::resetExternalDivider(void)
{
	digitalWrite(resetcounterPIN,LOW);
	delayMicroseconds(1);
	digitalWrite(resetcounterPIN,HIGH);
	delayMicroseconds(1);
	digitalWrite(resetcounterPIN,LOW);
}

static void invCounterInterrupt(void)
{
	register int current_cnt = CPU_CYCLES;  // must be first in interrupt!
	if (active_ctr.state == COUNTER_PULSES)
	{
		active_ctr.number_of_pulses++;
		active_ctr.total_cycles += (current_cnt - active_ctr.cycle_last);
		active_ctr.cycle_last = current_cnt;
		if (active_ctr.state_read == COUNTER_READ_WAITING)
		{
			active_ctr.read_number_of_pulses = active_ctr.number_of_pulses;
			active_ctr.read_total_cycles = active_ctr.total_cycles;
			active_ctr.state_read = COUNTER_READ_READY;
		}
		return;
	} else if (active_ctr.state == COUNTER_ARMED)
	{
		active_ctr.cycle_last = current_cnt;
		active_ctr.total_cycles = 0;
		active_ctr.number_of_pulses = 0;
		active_ctr.state = COUNTER_PULSES;
		return;
	}
}

void InvFrequencyCounter::armCounter(void)
{
	if (active_ctr.state != COUNTER_IDLE)
		detachInterrupt(clockPIN);
	active_ctr.state_read = COUNTER_READ_IDLE;
	active_ctr.total_cycles = 0;
	active_ctr.cycle_last = 0;
	active_ctr.number_of_pulses = 0;
	active_ctr.read_total_cycles = 0;
	active_ctr.read_number_of_pulses = 0;
	resetExternalDivider();
  active_ctr.state = COUNTER_ARMED;
	attachInterrupt(clockPIN,invCounterInterrupt,RISING);
}

void InvFrequencyCounter::requestUpdate(void)
{
	active_ctr.read_total_cycles = 0;
	active_ctr.read_number_of_pulses = 0;
	active_ctr.state_read = COUNTER_READ_WAITING;
}

float InvFrequencyCounter::readUpdate(void)
{
 	if (active_ctr.state_read != COUNTER_READ_READY)
		return -1.0f;
	 float freq = ((float)active_ctr.read_number_of_pulses*dividerratio)*
		((float) CPU_CLOCK_RATE)/((float) active_ctr.read_total_cycles);
   return freq;
}

float InvFrequencyCounter::readFinalFrequency(void)
{
	
	if (active_ctr.state != COUNTER_PULSES)
		return -1.0f;
	detachInterrupt(clockPIN);
	active_ctr.state = COUNTER_IDLE;
	if (active_ctr.total_cycles == 0)
		return -1.0f;
	float freq = ((float)active_ctr.number_of_pulses*dividerratio)*((float) CPU_CLOCK_RATE)/
		((float) active_ctr.total_cycles);
	return freq;
}

void InvFrequencyCounter::setup(void)
{
#ifdef NEED_INITIALIZE_CYCLE_COUNTER
	initialize_cortex_m3_cycle_counter();
#endif
	pinMode(resetcounterPIN,OUTPUT);
	active_ctr.state = COUNTER_IDLE;
	active_ctr.state_read = COUNTER_READ_IDLE;
	pinMode(clockPIN,INPUT);
	detachInterrupt(clockPIN);
}
