#ifndef _REMOTE_H
#define _REMOTE_H

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

void remote_initialize(uint16_t channelno);
void remote_task(void);
void remote_set_command_mode(int state);
int remote_send_command(const char *cmd, char *buf, int len);
void remote_transmit_packet(const byte packet[], int len);

#define REMOTE_SERIAL_DEVICE Serial3
#define REMOTE_COMMAND_PIN PA8
#endif  /* _REMOTE_H */
