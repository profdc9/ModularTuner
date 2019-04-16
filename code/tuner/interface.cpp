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

#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include "interface.h"
#include "tuner.h"
#include "mini-printf.h"
#include "debugmsg.h"
#include "RelayModule.h"

#ifdef TUNER_USER_INTERFACE
LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);

byte buttonPins[INTERFACE_NUM_BUTTONS];
byte buttonState[INTERFACE_NUM_BUTTONS];
byte consecutiveStates[INTERFACE_NUM_BUTTONS];
byte last_button;
interface_button_operation last_button_operation;
interface_button_state last_button_state;
unsigned int lasttick;
unsigned short msBetweenChecks = 20;
unsigned short reqConsecutiveStates = 5;

void interface_initialize(void)
{
  lcd.begin(INTERFACE_LCD_COLUMNS,INTERFACE_LCD_ROWS);  
  lcd.setBacklight(1);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("ModularTuner by");
  lcd.setCursor(0,1);
  lcd.print("KW4TI CC-BY-SA 4.0");

  for (int i=0;i<INTERFACE_NUM_BUTTONS;i++)
  {
    buttonState[i] = 0;
    consecutiveStates[i] = 0;
  }
  last_button_state = INTERFACE_BUTTON_STATE_CAPTURING;
  lasttick = millis();  
}

void interface_pollbuttons(void)
{
   int i;
   unsigned int curtick = millis();
   unsigned int difference = curtick - lasttick;
   if (difference < msBetweenChecks)
      return;
   lasttick = curtick; 
   uint8_t buttonbits = lcd.readButtons();
   for (int i=0;i<INTERFACE_NUM_BUTTONS;i++)
   { 
      byte state = (buttonbits & (1 << i)) != 0;
      if (state != buttonState[i])
      {
        if ((++consecutiveStates[i]) >= reqConsecutiveStates)
        {
            buttonState[i] = state;
            consecutiveStates[i] = 0;
            if (last_button_state == INTERFACE_BUTTON_STATE_CAPTURING)
            {
              last_button = i;
              last_button_operation = state ? INTERFACE_BUTTON_PRESSED : INTERFACE_BUTTON_RELEASED;
              last_button_state = INTERFACE_BUTTON_STATE_WAITING;
            }
        }
      } else
      {
        consecutiveStates[i] = 0;
      }
   }
}

byte interface_getbuttonevent(byte &buttonNumber, interface_button_operation &operation)
{
  if (last_button_state == INTERFACE_BUTTON_STATE_CAPTURING)
      return 0;
  buttonNumber = last_button;
  operation = last_button_operation;
  last_button_state = INTERFACE_BUTTON_STATE_CAPTURING;
  return 1;
}

byte interface_getbuttonstate(byte buttonNumber)
{
  if (buttonNumber < INTERFACE_NUM_BUTTONS)
    return (buttonState[buttonNumber] == 0);
  return 0;
}

void interface_clear_buttonpress(int button)
{
  buttonState[button] = 0;
  consecutiveStates[button] = 0;
}

static bool updownmode = false;

void interface_update_swr(swr_state *current_swr_state)
{
  char s[INTERFACE_LCD_COLUMNS+1];
  lcd.clear();
  mini_snprintf(s,sizeof(s)-1,"%f %s %s %02f",float2int32(floorf((current_swr_state->last_frequency+499.0f)/1000.0f)),tuner_get_bypass() ? "BYP" : "kHz", tuner_ready_short_string(tuner_get_state()),float2int32(current_swr_state->swr));
  lcd.setCursor(0,0);
  lcd.print(s);
  mini_snprintf(s,sizeof(s)-1,"F %02f R %02f",float2int32(adjust_pwr(current_swr_state->fwd)),float2int32(adjust_pwr(current_swr_state->rev)));
  lcd.setCursor(0,1);
  lcd.print(s);
#if INTERFACE_LCD_ROWS > 2
  mini_snprintf(s,sizeof(s)-1,"Ld %02f%cj%02f",float2int32(current_swr_state->impedance.re()),
    current_swr_state->impedance.im() < 0.0f ? '-' : '+', float2int32(fabsf(current_swr_state->impedance.im())));
  lcd.setCursor(0,2);
  lcd.print(s);
#endif
  updownmode = false;
}

static byte active_relay = 1;

void interface_relay_updown(int code)
{
   int currentVal;
   byte relay_module_type;
   if (code == 0)
   {
      int nextrlyno = active_relay;
      do
      {
        if ((++nextrlyno) >= TUNER_MAX_RELAYS) nextrlyno = 1;
        if (tuner_adjust_relay_updown(nextrlyno,0,currentVal,relay_module_type) != 0) break;
      } while (active_relay != nextrlyno);
      active_relay = nextrlyno;
   } else
      tuner_adjust_relay_updown(active_relay,code,currentVal,relay_module_type);
  lcd.clear();
  int row=0, rlyno=0;
  while (row<INTERFACE_LCD_ROWS)
  {
      for (;;)
      {
        if ((++rlyno) >= TUNER_MAX_RELAYS) break;
        if (tuner_adjust_relay_updown(rlyno,0,currentVal,relay_module_type) != 0) break;
      } 
      if (rlyno >= TUNER_MAX_RELAYS) break;
      char s[INTERFACE_LCD_COLUMNS+1];
      mini_snprintf(s,sizeof(s)-1,"%c%d#: %d%s", (rlyno == active_relay) ? '*' : ' ',
          rlyno, currentVal, relay_module_type_unit[relay_module_type]);
      lcd.setCursor(0,row++);
      lcd.print(s);
  }
}

bool interface_checkabort(void)
{
  interface_pollbuttons();
  byte buttonNumber;
  interface_button_operation op;
  if (interface_getbuttonevent(buttonNumber,op))
  {
    if ((buttonNumber == 5) && (op == INTERFACE_BUTTON_PRESSED)) return true;
  }
  return false;
}

void interface_task(void)
{
  interface_pollbuttons();
  byte buttonNumber;
  interface_button_operation op;
  if (interface_getbuttonevent(buttonNumber,op))
  {
    if ((buttonNumber == 5) && (op == INTERFACE_BUTTON_PRESSED))
    {
        if (updownmode) 
       {
          updownmode = false;
          tuner_update_swr_interface();
       } else tuner_set_state(TUNER_READY_FORCETUNE);
    }
    if ((buttonNumber == 2) && (op == INTERFACE_BUTTON_PRESSED))
    {
        if (updownmode) 
        {
          interface_relay_updown(-1);
          interface_clear_buttonpress(2);
        } else 
        {
          tuner_set_bypass();
          tuner_update_swr_interface();
        }
    }
    if ((buttonNumber == 3) && (op == INTERFACE_BUTTON_PRESSED))
    {
        if (updownmode) 
        {
          interface_relay_updown(1);
          interface_clear_buttonpress(3);
        } else tuner_update_swr_interface();
    } 
    if ((buttonNumber == 4) && (op == INTERFACE_BUTTON_PRESSED))
    {
        updownmode = true;
        interface_relay_updown(0);
    }
  }
}

#endif  /* TUNER_USER_INTERFACE */
