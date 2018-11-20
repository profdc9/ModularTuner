/*  Button Panel Class - This is cheezy but doesn't require a timer */

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
#include "buttonPanel.h"
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

ButtonPanel *interruptButtons = NULL;

void pollButtons_interrupt(void)
{
   if (interruptButtons != NULL)
      interruptButtons->pollButtons();
}

void ButtonPanel::pollButtons(void)
{
   int i;
   unsigned int curtick = CPU_CYCLES;
   unsigned int difference = curtick - lasttick;
   if (difference < ticksBetweenChecks)
      return;
   lasttick = curtick; 
   for (int i=0;i<numButtons;i++)
   { 
      byte state = digitalRead(buttonPins[i]) ? 1 : 0;
      if (state != buttonState[i])
      {
        if ((++consecutiveStates[i]) >= reqConsecutiveStates)
        {
            buttonState[i] = state;
            consecutiveStates[i] = 0;
            if (last_button_state == BUTTON_STATE_CAPTURING)
            {
              last_button = i;
              last_button_operation = state ? BUTTON_RELEASED : BUTTON_PRESSED;
              last_button_state = BUTTON_STATE_WAITING;
            }
        }
      } else
      {
        consecutiveStates[i] = 0;
      }
   }
}

byte ButtonPanel::getButtonEvent(byte &buttonNumber, button_operation &operation)
{
  if (last_button_state == BUTTON_STATE_CAPTURING)
      return 0;
  buttonNumber = last_button;
  operation = last_button_operation;
  last_button_state = BUTTON_STATE_CAPTURING;
}

byte ButtonPanel::getButtonState(byte buttonNumber)
{
  if (buttonNumber < numButtons)
    return (buttonState[buttonNumber] == 0);
  return 0;
}

void ButtonPanel::setup(void)
{
  int i;
#ifdef NEED_INITIALIZE_CYCLE_COUNTER
  initialize_cortex_m3_cycle_counter();
#endif
  for (int i=0;i<numButtons;i++)
  {
    pinMode(buttonPins[i],INPUT_PULLUP);
    buttonState[i] = 0;
    consecutiveStates[i] = 0;
  }
  last_button_state = BUTTON_STATE_CAPTURING;
  ticksBetweenChecks = (CPU_CLOCK_RATE / 1000ul) * msBetweenChecks;
  lasttick = CPU_CYCLES;
}



