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

#include <Arduino.h>
#include <stdarg.h>
#include "remote.h"
#include "mini-printf.h"
#include "consoleio.h"
#include "tuner.h"

byte remote_command_mode_state = 0;
#define REMOTE_PACKET_SIZE 16

byte remote_packet_buffer[REMOTE_PACKET_SIZE+1];
byte remote_bytes;

void remote_set_command_mode(int state)
{
  console_setExternalSerial(state ? & REMOTE_SERIAL_DEVICE : NULL);
  remote_command_mode_state = state;
}

int remote_get_response_timeout(char *s, int len, int timeout)
{
  int n = 0;
  unsigned int inittime = millis();
  for (;;)
  {
    if (REMOTE_SERIAL_DEVICE.available()) 
    {
      int c = REMOTE_SERIAL_DEVICE.read();
      if (c == '\r') 
      {
         s[n] = '\000'; 
         return 1;
      }
      if ((c > ' ') && (c <= '~')) s[n++] = c;
      if (n >= len) 
      {
        s[n] = '\000'; 
        return 0;
      }
    }
    if (((unsigned int)(millis() - inittime)) >= timeout) 
    {
      s[n] = '\000';
      return 0;
    }
  }
}

int remote_send_command(const char *cmd, char *buf, int len)
{
  char s[20];
  if (buf == NULL)
  {
    buf = s;
    len = sizeof(s)-1;    
  }
  int res = 0;
  digitalWrite(REMOTE_COMMAND_PIN,HIGH);
  delay(100);
  REMOTE_SERIAL_DEVICE.write(cmd);
  res = remote_get_response_timeout(buf,len,1000);
  digitalWrite(REMOTE_COMMAND_PIN,LOW);
  delay(200);
  return ((buf[0] == 'O') && (buf[1] == 'K'));
}

void remote_initialize(uint16_t channelno)
{
  char s[20];
  REMOTE_SERIAL_DEVICE.begin(9600);

  pinMode(REMOTE_COMMAND_PIN,OUTPUT);
  digitalWrite(REMOTE_COMMAND_PIN,LOW);
  mini_snprintf(s,sizeof(s)-1,"AT+C%03d\r",channelno);
  remote_send_command(s,NULL,0);
  remote_send_command(s,NULL,0);
  remote_bytes = 0;
}

void remote_transmit_packet(const byte packet[], int len)
{
  byte packetbuf[REMOTE_PACKET_SIZE+1];
  if (remote_command_mode_state) return;
  if (len > (REMOTE_PACKET_SIZE-1)) return;
  packetbuf[0] = '\r';
  memset(&packetbuf[1], '_', REMOTE_PACKET_SIZE);
  memcpy(&packetbuf[1], packet, len);
  byte checksum = 0;
  for (int i=1;i<REMOTE_PACKET_SIZE;i++) checksum += packetbuf[i];
  checksum = ((~checksum) + 1) & 0x3F;
  packetbuf[REMOTE_PACKET_SIZE] = checksum < 32 ? (checksum + 64) : checksum;
  REMOTE_SERIAL_DEVICE.write(packetbuf,REMOTE_PACKET_SIZE+1);
}

int remote_receive_packet(void)
{
  if (!(REMOTE_SERIAL_DEVICE.available())) return 0;
  int c = REMOTE_SERIAL_DEVICE.read();
  if (c == '\r') remote_bytes = 0;
  if ((c < ' ') || (c > 127) || (remote_bytes >= REMOTE_PACKET_SIZE)) return 0;
  remote_packet_buffer[remote_bytes++] = c;
  if (remote_bytes < REMOTE_PACKET_SIZE) return 0;
  remote_bytes = 0;
  byte checksum = 0;
  for (int i=0;i<REMOTE_PACKET_SIZE;i++) checksum += remote_packet_buffer[i];
  if ((checksum & 0x3F) != 0) return 0;
  remote_packet_buffer[REMOTE_PACKET_SIZE] = '\000';
  return 1;
}

bool remote_command_compare(const char *c)
{
  return ((remote_packet_buffer[0] == c[0]) && (remote_packet_buffer[1] == c[1]));
}

void remote_command_dispatch(void)
{
  if (remote_command_compare("TN"))
  {
     tuner_set_state(TUNER_READY_FORCETUNE);
     return;
  }
  if (remote_command_compare("RM"))
  {
     remote_set_command_mode(1);
     return;
  }
}

void remote_task(void)
{
  if (remote_command_mode_state) return;
  if (remote_receive_packet())
      remote_command_dispatch();
}
