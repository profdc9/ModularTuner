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

/* Define if the LCD is attached */
#define TUNER_USER_INTERFACE

typedef enum { TUNER_READY_STANDBY=0, TUNER_READY_FORCETUNE=1, TUNER_READY_DISABLE=2 } tuner_ready_state;

#define TUNER_UPDATE_TICKS 300000u

#define TUNER_MAX_RELAYS 8

#define TUNER_MAGIC_1 0xA1B2C3D4
#define TUNER_MAGIC_2 0xFEEDC0A1

typedef struct _tuner_flash_header
{
  uint32_t flash_header_1;
  uint32_t flash_header_2;
} tuner_flash_header;

#define TUNE_SWITCHSTATE_PER_STATE 6

typedef enum { TUNERR_SUCCESS=0, TUNERR_HIGHSWR=1, TUNERR_POWERLOSS=2, TUNERR_POWERHIGH=3, TUNERR_ABORT=4 } tunerr_condition;

typedef enum { TUNER_NO_RIG_CONTROL=0, TUNER_RIG_CONTROL_ICOM=1, TUNER_RIG_CONTROL_KENWOOD=2, TUNER_RIG_CONTROL_YAESU=3 } tuner_rig_control_type;

typedef struct _tuner_parameters
{
  char       tune_label[16];
  float      tune_power_calib;
  float      tune_min_power;
  float      tune_max_power;
  float      tune_max_ref;
  float      tune_retune_thr;
  float      tune_search_relaxation;
  uint16_t   tune_search_khz_spacing;
  uint8_t    tune_rig_control;
  uint8_t    tune_switchstate_bypass[TUNE_SWITCHSTATE_PER_STATE*3];
  uint8_t    tune_switchstate_1[TUNE_SWITCHSTATE_PER_STATE*3];
  uint8_t    tune_switchstate_2[TUNE_SWITCHSTATE_PER_STATE*3];
  uint8_t    tune_switchstate_3[TUNE_SWITCHSTATE_PER_STATE*3];
  uint8_t    tune_switchstate_4[TUNE_SWITCHSTATE_PER_STATE*3];
  uint8_t    tune_switchstate_5[TUNE_SWITCHSTATE_PER_STATE*3];
  uint8_t    tune_switchstate_6[TUNE_SWITCHSTATE_PER_STATE*3];
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
  float last_frequency;
} swr_state;

extern tuner_cache_entry tce[TUNER_CACHE_ENTRIES];
extern tuner_parameters tpar;
int tuner_readstate(int n);
void tuner_set_bypass(void);
float adjust_pwr(float rawpwr);
void tuner_set_state(tuner_ready_state p);
tuner_ready_state tuner_get_state(void);
const char *tuner_ready_string(tuner_ready_state p);
const char *tuner_ready_short_string(tuner_ready_state p);

#endif  /* _TUNER_H */
