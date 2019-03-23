#ifndef _INTERFACE_H
#define _INTERFACE_H

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

#include "tuner.h"

#define INTERFACE_LCD_COLUMNS 20
#define INTERFACE_LCD_ROWS 4

enum interface_button_operation { INTERFACE_BUTTON_PRESSED, INTERFACE_BUTTON_RELEASED };
enum interface_button_state { INTERFACE_BUTTON_STATE_CAPTURING, INTERFACE_BUTTON_STATE_WAITING };

#define INTERFACE_NUM_BUTTONS 6

void interface_initialize(void);
void interface_task(void);

void interface_pollbuttons(void);
byte interface_getbuttonevent(byte &buttonNumber, interface_button_operation &operation);
byte interface_getbuttonstate(byte buttonNumber);

void interface_update_swr(swr_state *current_swr_state);

#endif  /* _STRUCTCONF_H */
