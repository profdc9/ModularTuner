#ifndef _TUNER_H
#define _TUNER_H

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

#include "complex.h"

typedef enum { TUNER_READY_STANDBY=0, TUNER_READY_FORCETUNE=1, TUNER_READY_DISABLE=2 } tuner_ready_state;

#define TUNER_MAX_RELAYS 8

#define TUNER_MAGIC_1 0xA1B2C3D4
#define TUNER_MAGIC_2 0xFEEDC0A1

typedef struct _tuner_flash_header
{
  uint32_t flash_header_1;
  uint32_t flash_header_2;
} tuner_flash_header;

typedef struct _tuner_parameters
{
  char       tune_label[16];
  float      tune_min_power;
  float      tune_max_power;
  float      tune_max_ref;
  float      tune_retune_thr;
} tuner_parameters;

#define TUNER_CACHE_ENTRIES 200
#define TUNER_CACHE_NPARMS 3

typedef struct _tuner_cache_entry
{
  uint16_t frequency_khz;
  uint16_t switch_state;
  uint16_t parm[TUNER_CACHE_NPARMS];
} tuner_cache_entry;

typedef struct _swr_state
{
  float fwd;
  float rev;
  float cur;
  float swr;
  float refAngle;
  float curAngle;
  Complex refCoef;
  Complex impedance;
} swr_state;

extern tuner_cache_entry tce[TUNER_CACHE_ENTRIES];

extern tuner_parameters tpar;

int tuner_readstate(int n);

#endif  /* _TUNER_H */