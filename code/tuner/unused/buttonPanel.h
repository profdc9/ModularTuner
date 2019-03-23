#ifndef _BUTTONPANEL_H
#define _BUTTONPANEL_H

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
 
#define CPU_CLOCK_RATE 72000000ul
#define MAX_BUTTON_PINS 5

/* order of components from source (transmitter) to load */
enum button_operation { BUTTON_PRESSED, BUTTON_RELEASED };
enum button_state { BUTTON_STATE_CAPTURING, BUTTON_STATE_WAITING };

class ButtonPanel
{
  public:

  byte numButtons;
  byte buttonPins[MAX_BUTTON_PINS];
  byte buttonState[MAX_BUTTON_PINS];
  byte consecutiveStates[MAX_BUTTON_PINS];
  volatile byte last_button;
  volatile button_operation last_button_operation;
  volatile button_state last_button_state;
  unsigned int lasttick;
  unsigned short msBetweenChecks;
  unsigned int ticksBetweenChecks;
  unsigned short reqConsecutiveStates;

  ButtonPanel(byte pNumButtons, const byte *pButtonPins, unsigned short pMsBetweenChecks, unsigned short pReqConsecutiveStates)
  {
    int i;
    if (pNumButtons > MAX_BUTTON_PINS)
        pNumButtons = MAX_BUTTON_PINS;
    numButtons = pNumButtons;
    msBetweenChecks = pMsBetweenChecks;
    reqConsecutiveStates = pReqConsecutiveStates;
    for (int i=0;i<numButtons;i++)
        buttonPins[i] = pButtonPins[i];
  };
  
  void setup(void);
  void pollButtons(void);
  byte getButtonState(byte buttonNumber);
  byte getButtonEvent(byte &buttonNumber, button_operation &operation);
};

extern ButtonPanel *interruptButtons;
void pollButtons_interrupt(void);

#endif /* _BUTTONPANEL_H */

