/*
 *  Antenna Tuner STM32duino project
 */

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
#include "swrmeter.h"
#include "invFrequencyCounter.h"
#include "FrequencyCounter.h"
#include "ButtonPanel.h"
#include "LNetwork.h"
#include "DoubleL.h"
#include "RelayModule.h"
#include "complex.h"
#include "debugmsg.h"
//#include "EEPROMobjectstore.h"
#include "mini-printf.h"
#include "tinycl.h"
#include "structconf.h"
#include "flashstruct.h"

#include <Wire.h>
#include <LiquidCrystal_I2C.h>

tuner_ready_state tuner_ready = TUNER_READY_STANDBY;
const char *tuner_state_string[3] = { "STANDBY", "FORCE TUNE", "DISABLED" };

float last_frequency = 0;

unsigned int      last_update_tick;
int               current_memory = -1;
bool              needs_update = false;
bool              tuner_bypass_mode = true;
tunerr_condition  tunerr_last = TUNERR_SUCCESS;

const char *tuner_error_condition_string[5] = { "SUCCESS", "HIGH SWR", "POWER LOSS", "POWER HIGH", "ABORTED" };

swr_state last_swr_state = { 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, Complex(0.0f, 0.0f), Complex(0.0f, 0.0f) };

SWRMeter swrMeter;
//InvFrequencyCounter invCounter(PB8,PB9,1u);
FrequencyCounter freqCounter(PB9,16u,1,10000);

tuner_parameters tpar = { {"NONE"}, 12.0f, 0.5f, 15.0f, 0.2f, 0.25f, 1.05f, 10, 0,
                          { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                          { 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                          { 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                          { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                          { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                          { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                          { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
};

const structure_entry tuner_parameter_fields[16] =
{ { "LABEL",           STRUCTCONF_STRING,     offsetof(tuner_parameters,tune_label), sizeof(tpar.tune_label), STRUCTCONF_INTMIN, STRUCTCONF_INTMAX, NULL },
  { "POWERCALIB",      STRUCTCONF_FLOAT,      offsetof(tuner_parameters,tune_power_calib), 1, 0, STRUCTCONF_INTMAX,  },
  { "MINTUNINGPOWER",  STRUCTCONF_FLOAT,      offsetof(tuner_parameters,tune_min_power), 1, 0,  STRUCTCONF_INTMAX, NULL },
  { "MAXTUNINGPOWER",  STRUCTCONF_FLOAT,      offsetof(tuner_parameters,tune_max_power), 1, 0, STRUCTCONF_INTMAX, NULL },
  { "MAXREFLECTION",   STRUCTCONF_FLOAT,      offsetof(tuner_parameters,tune_max_ref), 1, 0, 1, NULL },
  { "RETUNETHRESHOLD", STRUCTCONF_FLOAT,      offsetof(tuner_parameters,tune_retune_thr), 1, 0, 1, NULL },
  { "SEARCHRELAXATION",STRUCTCONF_FLOAT,      offsetof(tuner_parameters,tune_search_relaxation), 1, 1, 2, NULL },
  { "SEARCHKHZSPACING",STRUCTCONF_INT16,      offsetof(tuner_parameters,tune_search_khz_spacing), 1, 0, 100, NULL },
  { "RIGCONTROL",      STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_rig_control), 1, 0, 3, "0=NONE 1=ICOM 2=KENWOOD 3=YAESU" },
  { "SWITCHBYPASS",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_bypass), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
  { "SWITCHSTATE1",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_1), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
  { "SWITCHSTATE2",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_2), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
  { "SWITCHSTATE3",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_3), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
  { "SWITCHSTATE4",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_4), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
  { "SWITCHSTATE5",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_5), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
  { "SWITCHSTATE6",    STRUCTCONF_INT8,       offsetof(tuner_parameters,tune_switchstate_6), TUNE_SWITCHSTATE_PER_STATE*3, 0, 255, NULL },
};

tuner_cache_entry tce[TUNER_CACHE_ENTRIES];

RelayModule relays[TUNER_MAX_RELAYS];

#undef USER_INTERFACE

#ifdef USER_INTERFACE
const byte button_list[4] = {PB12,PB13,PB14,PB15};
LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);
ButtonPanel buttonPanel(4,button_list,10,10);
#endif

#define DEMCR           (*((volatile uint32_t *)0xE000EDFC))
#define DWT_CTRL        (*(volatile uint32_t *)0xe0001000)
#define CYCCNTENA       (1<<0)
#define DWT_CYCCNT      ((volatile uint32_t *)0xE0001004)
#define CPU_CYCLES      *DWT_CYCCNT
#define DEMCR_TRCENA    0x01000000

float ref_to_swr(float ref)
{
   return (1.0f+ref)/(1.0f-ref); 
}

void initialize_tuner_cache_entries(void)
{
  memset(tce,'\000',sizeof(tce));
}

void restore_relays(void)
{
  int r;
  for (r=0;r<TUNER_MAX_RELAYS;r++)
     relays[r].setup();
}

void initialize_default_relays(void)
{
  memset(relays,'\000',sizeof(relays));
  relays[0].setup(indRelay8);
  relays[1].setup(capRelay8);
}

static void initialize_cortex_m3_cycle_counter(void)
{
  DEMCR |= DEMCR_TRCENA; 
  *DWT_CYCCNT = 0; 
  DWT_CTRL |= CYCCNTENA;
}

void initialize_rig_control(void)
{
  switch (tpar.tune_rig_control)
  {
    case TUNER_RIG_CONTROL_ICOM:
        pinMode(PB13,INPUT);
        pinMode(PB12,OUTPUT);
        digitalWrite(PB12,HIGH);
        break;
    case TUNER_RIG_CONTROL_KENWOOD:
        break;
    case TUNER_RIG_CONTROL_YAESU:
        break;
  }
}

void check_i2c_active(void)
{
  pinMode(PB6,INPUT);
  pinMode(PB7,INPUT);
  while ((!digitalRead(PB6)) || (!digitalRead(PB7)))
  {
    Serial.println("Waiting for power");
    delay(250);
  }
  delay(250);
}

void setup() {
  check_i2c_active();
   afio_cfg_debug_ports(AFIO_DEBUG_NONE);
   afio_cfg_debug_ports(AFIO_DEBUG_SW_ONLY);
  initialize_cortex_m3_cycle_counter();
  // default debug messages off if on UART1 (might need it for rig)

  setDebugMsgMode(0);
  delay(250);
  swrMeter.setup();
  swrMeter.setImpedance(50.0f);
  freqCounter.setup();
  if (tuner_readstate(1))
     restore_relays();
  else
  { 
    initialize_tuner_cache_entries();
    initialize_default_relays();
  }
 tuner_set_bypass();
 Serial.begin(115200); 

#ifdef USER_INTERFACE
  buttonPanel.setup();
  // initialize the LCD
  lcd.begin(40,4);  
  // Turn on the blacklight and print a message.
  lcd.setBacklight(1);
  lcd.clear();
  lcd.setCursor(0,1);
  interruptButtons = &buttonPanel;
  freqCounter.setAuxFunction(pollButtons_interrupt);
#endif
  //EEPROMstore.setup(2);
  //EEPROMstore.formatBank(0);
  initialize_rig_control();
}


/*
void testLnetwork(void)
{
  LNetwork lNetwork(50.0f,3500.0f,2000.0f,10000.0f);
  lNetwork.matchLoad(249.0f,0.0f);
  lNetwork.debugPrintSolutions();
  DoubleL doubleL(50.0f,3500.0f,2000.0f,10000.0f);
  doubleL.matchLoad(500.0f,-500.0f,150.0f,1,1);
  Serial.println("series shunt series shunt");
  doubleL.debugPrintSolutions();
}
*/


void testFrequencyCounter(void)
{
    static int cnt=0;
    Serial.print("Starting acquisition ");
    Serial.println(cnt);
    cnt++;
    freqCounter.armCounter();
    int i;
    delay(100);
    freqCounter.requestUpdate();
    delay(10);
    float freq = freqCounter.readUpdate();
    Serial.print("frequency = ");
    Serial.println((int)freq);
#ifdef USER_INTERFACE
    lcd.setCursor(0,0);
    lcd.print(String("Frequency ")+((unsigned int)freq)+"   ");
    lcd.setCursor(0,2);
    for (int i=0;i<4;i++)
        lcd.print(buttonPanel.getButtonState(i) ? '+' : '-');
#endif
    //freqCounter.stopCounter();
   // delay(100);
}


/*
void testEEPROMobjectstore(void)
{
   int inct; 
   unsigned char block[11];

   for (int i=0;i<(sizeof(block)/sizeof(unsigned char));i++)
      block[i] = 0;
   EEPROMstore.readBlock(0,10,block,sizeof(block));
   Serial.print("b4: ");
   for (int i=0;i<(sizeof(block)/sizeof(unsigned char));i++)
   {
        Serial.print((int)(block[i]));
        Serial.print(' ');
   }
   Serial.println("");
   inct = block[sizeof(block)-1];
   for (int i=0;i<(sizeof(block)/sizeof(unsigned char));i++)
        block[i] = inct+i;
   EEPROMstore.writeBlock(0,10,block,sizeof(block));   
   for (int i=0;i<(sizeof(block)/sizeof(unsigned char));i++)
   {
        Serial.print((int)(block[i]));
        Serial.print(' ');
   }
   Serial.println("");
}
*/

float adjust_pwr(float rawpwr)
{
  return tpar.tune_power_calib*rawpwr*rawpwr;
}

int tune_cmd(int args, tinycl_parameter *tp, void *v)
{
  int p = tp[0].ti.i;
  if ((p<1)||(p>3))
  {
    Serial.println("Invalid tuner state");
  } else
  {
    tuner_ready = (tuner_ready_state) (p-1);
    Serial.print("Tune State: ");
    Serial.println(tuner_state_string[tuner_ready]);
  }
  return 1;
}

int debug_cmd(int args, tinycl_parameter *tp, void *v)
{
  int d = tp[0].ti.i;
  setDebugMsgMode(d);
  Serial.print("Debug State: ");
  Serial.println(d);
  return 1;
}

int test_relay_cmd(int args, tinycl_parameter *tp, void *v)
{
  int rlyno = tp[0].ti.i;
  int isswitch = tp[1].ti.i;
  int number = tp[2].ti.i;
  int setting = tp[3].ti.i;

  if ((rlyno < 1) || (rlyno > TUNER_MAX_RELAYS))
  {
    Serial.println("Invalid relay #");
    return 1;
  }
  RelayModule *rm = &relays[rlyno-1];
  if (!rm->isValidModule())
  {
    Serial.println("Invalid relay #");
    return 1;
  }  
  if (isswitch)
      rm->setSwitchState(number-1,setting);
  else
      rm->setRelayState(number-1,setting);
  return 1;
}

int setrly_cmd(int args, tinycl_parameter *tp, void *v)
{
  int rlyno = tp[0].ti.i;
  int rlyval = tp[1].ti.i;
  int method = tp[2].ti.i;
  Serial.print("Setting relay #");
  Serial.print(rlyno);
  Serial.print(" to value ");
  Serial.println(rlyval);
  int val;
  if ((rlyno < 1) || (rlyno > TUNER_MAX_RELAYS))
  {
    Serial.println("Invalid relay #");
    return 1;
  }
  RelayModule *rm = &relays[rlyno-1];
  if (!rm->isValidModule())
  {
    Serial.println("Invalid relay #");
    return 1;
  }  
  rm->setCurrentValue(rlyval,method);
  val = rm->getCurrentValue();
  Serial.print("Achieved value ");
  Serial.println(val);
  return 1;
}

int print_tuner_data_cmd(int args, tinycl_parameter *tp, void *v)
{
  Serial.println("Tuner data:");
  se_print_structure(sizeof(tuner_parameter_fields)/sizeof(tuner_parameter_fields[0]), tuner_parameter_fields, &tpar);
  return 1;
}

void trigger_update(void)
{
  if (!needs_update)
  {
    needs_update = true;
    last_update_tick = freqCounter.cumulativeTicks();
  }
}

int set_tuner_data_cmd(int args, tinycl_parameter *tp, void *v)
{
  char *str = tp[0].ts.str;
  se_set_structure_field(sizeof(tuner_parameter_fields)/sizeof(tuner_parameter_fields[0]), tuner_parameter_fields, &tpar, str);
  se_print_structure(sizeof(tuner_parameter_fields)/sizeof(tuner_parameter_fields[0]), tuner_parameter_fields, &tpar);
  trigger_update();
  return 1;
}

int print_relay_data_cmd(int args, tinycl_parameter *tp, void *v)
{
  int r;
  for (r=0;r<TUNER_MAX_RELAYS;r++)
  {
     RelayModule *rm = &relays[r];
     if (rm->isValidModule())
     {
       Serial.print("Relay bank ");
       Serial.println(r+1);
       se_print_structure(sizeof(relay_fields)/sizeof(relay_fields[0]), relay_fields, rm);
       Serial.println("");
     }
  }
  return 1;
}
int set_relay_data_cmd(int args, tinycl_parameter *tp, void *v)
{
  int rlyno = tp[0].ti.i;
  char *str = tp[1].ts.str;
  if ((rlyno < 1) || (rlyno > TUNER_MAX_RELAYS))
  {
    Serial.println("Invalid relay #");
    return 1;
  }
  RelayModule *rm = &relays[rlyno-1];
  if (!rm->isValidModule())
  {
    Serial.println("Invalid relay #");
    return 1;
  }  
  Serial.print("Setting relay #");
  Serial.print(rlyno);
  Serial.print(" ");
  Serial.println(str);
  se_set_structure_field(sizeof(relay_fields)/sizeof(relay_fields[0]), relay_fields, rm, str);
  se_print_structure(sizeof(relay_fields)/sizeof(relay_fields[0]), relay_fields, rm);
  trigger_update();
  return 1;
}

int rlydef_cmd(int args, tinycl_parameter *tp, void *v)
{
  int rlyno = tp[0].ti.i;
  int rlydef = tp[1].ti.i;
  Serial.print("Setting relay #");
  Serial.print(rlyno);
  Serial.print(" to default # ");
  Serial.println(rlydef);
  int val;
  if ((rlyno < 1) || (rlyno > TUNER_MAX_RELAYS))
  {
    Serial.println("Invalid relay #");
    return 1;
  }
  if ((rlydef < 1) || (rlydef > RELAY_DEFAULT_STRUCTS_NUM))
  {
    Serial.println("Invalid default #");
    return 1;
  }
  RelayModule *rm = &relays[rlyno-1];
  rm->setup(*relay_default_structs[rlydef-1]);
  Serial.println("New default set");
  return 1;
}

int clear_cache_cmd(int args, tinycl_parameter *tp, void *v)
{ 
  initialize_tuner_cache_entries();
  Serial.println("Tuner cache cleared");
  return 1;
}

int show_cache_cmd(int args, tinycl_parameter *tp, void *v)
{ 
  int i,p;
  char s[80];
  Serial.println("Tuner cache contents:");
  for (i=0;i<TUNER_CACHE_ENTRIES;i++)
  { 
    tuner_cache_entry *t = &tce[i];
    if (t->frequency_khz > 0)
    {
      char s[80];
      mini_snprintf(s,sizeof(s)-1,"%03u %05u ",i+1,t->frequency_khz);
      Serial.print(s);
      for (p=0;p<TUNER_CACHE_NPARMS;p++)
      {
         mini_snprintf(s,sizeof(s)-1," %05u%c%c",t->parm[p],t->switch_state & (1<<(p*2)) ? '+' : '-',t->switch_state & (1<<(p*2+1)) ? '+' : '-');
         Serial.print(s);
      }
      Serial.println("");
    }
  }
  return 1;
}

void updateSWRState(swr_state *state)
{
  state->fwd = swrMeter.fwdPower();
  state->rev = swrMeter.revPower();
  state->cur = swrMeter.curPower();
  state->swr = swrMeter.SWR();
  state->refAngle = RAD2DEG(swrMeter.reflectionPhase());
  state->curAngle = RAD2DEG(swrMeter.currentPhase());
  state->refCoef = swrMeter.reflectionCoefficient();
  state->impedance = swrMeter.calculateImpedance();
}

void printSWRState(swr_state *state)
{
  char s[100];
  mini_snprintf(s,sizeof(s)-1,"Fwd power = %04f  Rev power = %04f  Cur Power = %04f",float2int32(adjust_pwr(state->fwd)),float2int32(adjust_pwr(state->rev)),float2int32(state->cur));
  Serial.println(s);
  mini_snprintf(s,sizeof(s)-1,"Ref Angle = %04f  Cur Angle = %04f  SWR = %02f",float2int32(state->refAngle),float2int32(state->curAngle),float2int32(state->swr));
  Serial.println(s);
  mini_snprintf(s,sizeof(s)-1,"Impedance = %04f + j%04f   Ref = %04f + j %04f",float2int32(state->impedance.re()),float2int32(state->impedance.im()),float2int32(state->refCoef.re()),float2int32(state->refCoef.im()));
  Serial.println(s);
}

tunerr_condition minimize_swr_step(RelayModule *r, int relstep, float &currentRef, int &currentValue)
{
  int dir;
  int stepsize = (r->getMaxValue() - r->getMinValue()) >> relstep;
  currentValue = r->getCurrentValue();
  swrMeter.sampleSWR();
  if (check_for_rig_tune_abort()) return TUNERR_ABORT;
  currentRef = swrMeter.revPower() / swrMeter.fwdPower();
  for (dir=1;dir>=-1;dir-=2)
  {
    int nextval;
    nextval = currentValue;
    for (;;)
    {
       nextval += stepsize * dir;
       int lastval = r->getCurrentValue();
       r->setCurrentValue(nextval,dir < 0 ? 1 : 2);
       if (r->getCurrentValue() == lastval) break;
       delay(r->getRelaySettleTime());
       swrMeter.sampleSWR();
       if (check_for_rig_tune_abort()) return TUNERR_ABORT;
       float fwd = swrMeter.fwdPower();
       float rev = swrMeter.revPower();
       float testRef = rev/fwd;
       float adjfwd = adjust_pwr(fwd);
       if (adjfwd < tpar.tune_min_power) return TUNERR_POWERLOSS;
       if (adjfwd > tpar.tune_max_power) return TUNERR_POWERHIGH;
       DEBUGMSG("stepsize=%d dir=%d currentValue=%d nextval=%d actval=%d ref=%04f cref=%04f",stepsize,dir,currentValue,nextval,r->getCurrentValue(),float2int32(testRef),float2int32(currentRef));
       nextval = r->getCurrentValue();
       if (testRef < currentRef)
       { 
          currentRef = testRef;
          currentValue = nextval;
       } else 
       {
         if (testRef > (currentRef*tpar.tune_search_relaxation)) break;
       }
    }
  }
  r->setCurrentValue(currentValue);
  delay(r->getRelaySettleTime());
  return TUNERR_SUCCESS;
}

void tuner_set_switches(uint8_t *u)
{
  int i;
  for (i=0;i<(TUNE_SWITCHSTATE_PER_STATE*3);i+=3)
  {
     int r = u[i];
     int s = u[i+1];
     if ((r<1) || (r>TUNER_MAX_RELAYS)) continue;
     if ((s<1) || (s>2)) continue;
     RelayModule *rc = &relays[r-1];
     rc->setSwitchState(s-1,u[i+2] != 0 ? true : false);
     delay(rc->getRelaySettleTime());
  }
}

void tuner_zero_adjustable_relays(void)
{
   for (int r=0;r<TUNER_MAX_RELAYS;r++) 
   {
      RelayModule *rc = &relays[r];
      if (rc->getAutoTune()) rc->setCurrentValue(0);
   }      
}

void tuner_set_bypass(void)
{
  tuner_zero_adjustable_relays();
  tuner_set_switches(tpar.tune_switchstate_bypass);
  tuner_bypass_mode = true;
}

tunerr_condition exhaustive_tune(bool withoutdefault)
{
  int s,n,r;
  float currentRef;
  for (s=withoutdefault ? 1 : 0;s<7;s++)
  {
    switch (s)
    {
      case 1:  if (tpar.tune_switchstate_1[0]==0) continue;
               tuner_set_switches(tpar.tune_switchstate_1);
               break;
      case 2:  if (tpar.tune_switchstate_2[0]==0) continue;
               tuner_set_switches(tpar.tune_switchstate_2);
               break;
      case 3:  if (tpar.tune_switchstate_3[0]==0) continue;
               tuner_set_switches(tpar.tune_switchstate_3);
               break;
      case 4:  if (tpar.tune_switchstate_4[0]==0) continue;
               tuner_set_switches(tpar.tune_switchstate_4);
               break;           
      case 5:  if (tpar.tune_switchstate_5[0]==0) continue;
               tuner_set_switches(tpar.tune_switchstate_5);
               break;           
      case 6:  if (tpar.tune_switchstate_6[0]==0) continue;
               tuner_set_switches(tpar.tune_switchstate_6);
               break;           
    }
    if (s > 0) tuner_zero_adjustable_relays();
    for (n=2;n<8;n++)
    {
      bool improved;
      do
      {
        improved = false;
        for (int r=0;r<TUNER_MAX_RELAYS;r++)
        {
          RelayModule *rc = &relays[r];
          if (!rc->getAutoTune()) continue;
          DEBUGMSG("pass=%d step=%d relay=%d",s,n,r);
          int val = rc->getCurrentValue();
          int currentval;
          tunerr_condition err = minimize_swr_step(rc,n,currentRef,currentval);
          if (err != TUNERR_SUCCESS) return err;
          if (val != rc->getCurrentValue())
              improved = true;
          if (currentRef < tpar.tune_max_ref)
              return TUNERR_SUCCESS;
        }
      } while (improved);
      DEBUGMSG("pass=%d capacitor Inductance=%d nH capacitance=%d pF",s,relays[0].getCurrentValue(),relays[1].getCurrentValue());
    }
  } 
  return TUNERR_HIGHSWR;
}

int tuner_search_cache(uint16_t entry_hz, uint16_t width)
{
  int i;
  uint16_t minfreq = entry_hz - width;
  uint16_t maxfreq = entry_hz + width;
  for (i=0;i<TUNER_CACHE_ENTRIES;i++)
     if ((tce[i].frequency_khz >= minfreq) && (tce[i].frequency_khz <= maxfreq))
      { 
        return i;
      }
  return -1;
}

int tuner_cache_move_to_top(uint16_t entry_hz)
{
  int n;
  int nent = tuner_search_cache(entry_hz,tpar.tune_search_khz_spacing);
  if (nent < 0) return -1;
  tuner_cache_entry temp = tce[nent];
  for (n = nent;n>0;n--)
     tce[n] = tce[n-1];
  tce[0] = temp;
  return nent;
}

int tuner_update_cache(uint16_t entry_hz, uint16_t parms[], uint16_t switch_state)
{
  if (tuner_cache_move_to_top(entry_hz) < 0)
  {
    for (int n = TUNER_CACHE_ENTRIES-1;n>0;n--)
      tce[n] = tce[n-1];
  }
  tce[0].frequency_khz = entry_hz;
  tce[0].switch_state = switch_state;
  for (int n=0;n<TUNER_CACHE_NPARMS;n++)
      tce[0].parm[n] = parms[n];
  trigger_update();
  return 0;
}

int tuner_update_current_state(uint16_t freqkhz)
{
  int p;
  uint16_t switch_state = 0;
  uint16_t parm[TUNER_CACHE_NPARMS];
  for (p=0;p<TUNER_CACHE_NPARMS;p++)
  {
    RelayModule *r = &relays[p];
    if (r->isValidModule())
    {
      parm[p] = r->getCurrentValue();
      switch_state |= r->getSwitchState(0) ? (1<<(2*p)) : 0;
      switch_state |= r->getSwitchState(1) ? (1<<(2*p+1)) : 0;
    } else
      parm[p] = 0;
  }
  return tuner_update_cache(freqkhz, parm, switch_state);
}

int tuner_restore_state(uint16_t freqkhz)
{
  int p;
  int entno = tuner_search_cache(freqkhz,tpar.tune_search_khz_spacing);
  if (entno < 0) return -1;
  tuner_cache_entry *t = &tce[entno];
  for (p=0;p<TUNER_CACHE_NPARMS;p++)
  {
    RelayModule *r = &relays[p];
    if (r->isValidModule())
    {
       r->setCurrentValue(t->parm[p]);
       r->setSwitchState(0,t->switch_state & (1<<(2*p)) ? true : false);
       r->setSwitchState(1,t->switch_state & (1<<(2*p+1)) ? true : false);
       delay(r->getRelaySettleTime());
    }
  }
  return 0;
}

bool check_for_rig_tune_initiation(void)
{
  switch (tpar.tune_rig_control)
  {
    case TUNER_RIG_CONTROL_ICOM:
    {
        int pinSet = digitalRead(PB13);
        if (pinSet == HIGH) return false;
        delay(90);
        pinSet = digitalRead(PB13);
        return pinSet == HIGH ? false : true;
    }
    case TUNER_RIG_CONTROL_KENWOOD:
        break;
    case TUNER_RIG_CONTROL_YAESU:
        break;
  }
  return false;
}

bool check_for_rig_tune_abort(void)
{
  switch (tpar.tune_rig_control)
  {
    case TUNER_RIG_CONTROL_ICOM:
        break;
    case TUNER_RIG_CONTROL_KENWOOD:
        break;
    case TUNER_RIG_CONTROL_YAESU:
        break;
  }
  return false;
}

bool send_rig_tune_power_control(bool power, bool success)
{
  switch (tpar.tune_rig_control)
  {
    case TUNER_RIG_CONTROL_ICOM:
        if (power)
        {
          delay(250);
          digitalWrite(PB12,LOW);
          delay(200);
        }
        else
        {
          digitalWrite(PB12,HIGH);
          if (!success)
          {
            delay(20);
            digitalWrite(PB12,LOW);
            delay(200);
            digitalWrite(PB12,HIGH);
          } 
        }
        return true;
    case TUNER_RIG_CONTROL_KENWOOD:
        break;
    case TUNER_RIG_CONTROL_YAESU:
        break;
  }
  return false;  
}

void tuner_task(void)
{  
  bool rigtune = false;
  bool success;
  float fwd;
  if ((tuner_ready == TUNER_READY_FORCETUNE) || (check_for_rig_tune_initiation()))
     rigtune = send_rig_tune_power_control(true,false);
  if (!rigtune)
  {
     swrMeter.sampleSWR();
     fwd = swrMeter.fwdPower();
     if (adjust_pwr(fwd) < tpar.tune_min_power) return;
   }
  float freq;
  uint16_t freqkhz;
  freqCounter.armCounter();
  delay(100);
  freqCounter.requestUpdate();
  delay(10);
  freq = freqCounter.readUpdate();
   
  swrMeter.sampleSWR();
  fwd = swrMeter.fwdPower();
  float adjfwd = adjust_pwr(fwd);
  if (adjfwd < tpar.tune_min_power)
  {
      if (rigtune) send_rig_tune_power_control(false,false);
      return;
  }
  last_frequency = freq;
  updateSWRState(&last_swr_state);
  if (adjfwd > tpar.tune_max_power)
  {
      if (rigtune) send_rig_tune_power_control(false,false);
      tunerr_last = TUNERR_POWERHIGH;
      return;
  }
  float ref = swrMeter.revPower()/fwd;
  if ((tuner_ready == TUNER_READY_FORCETUNE) || rigtune || ((tuner_ready == TUNER_READY_STANDBY) && (ref > tpar.tune_retune_thr)))
  {
    DEBUGMSG("Tuning: initial reflection=%04f",float2int32(ref));
    uint16_t freqkhz = (uint16_t) floorf((freq + 499.0f) / 1000.0f);
    if (!rigtune) rigtune = send_rig_tune_power_control(true,false);
    bool withoutdefault = tuner_restore_state(freqkhz) < 0 ? true : false;
    tunerr_condition err;
    tunerr_last = exhaustive_tune(withoutdefault);
    success = false;
    switch (tunerr_last)
    {
      case TUNERR_SUCCESS:
        swrMeter.sampleSWR();
        updateSWRState(&last_swr_state);
        tuner_update_current_state(freqkhz);
        success = true;
        tuner_bypass_mode = false;
        break;
      case TUNERR_HIGHSWR:
      case TUNERR_ABORT:
      case TUNERR_POWERLOSS:
      case TUNERR_POWERHIGH:
        tuner_set_bypass();
        break;
    }
  }
  if (tuner_ready == TUNER_READY_FORCETUNE)
     tuner_ready = TUNER_READY_STANDBY;
  if (rigtune) send_rig_tune_power_control(false,success);
}

int save_cache_cmd(int args, tinycl_parameter* tp, void *v)
{
  int freq = tp[0].ti.i;
  if ((freq < 1) || (freq > 65535))
  {
    Serial.println("Invalid frequency kHz");
    return 1;
  }
  tuner_update_current_state((uint16_t)freq);
  Serial.print("Cache entry updated at frequency ");
  Serial.println(freq);
  return 1;
}

int recall_cache_cmd(int args, tinycl_parameter* tp, void *v)
{
  int freq = tp[0].ti.i;
  if ((freq < 1) || (freq > 65535))
  {
    Serial.println("Invalid frequency kHz");
    return 1;
  }
  if (tuner_restore_state((uint16_t)freq) < 0)
  {
     Serial.println("Cache entry not found");
  } else
  {
      Serial.print("Cache entry recalled at frequency ");
      Serial.println(freq);
  }
  return 1;
}

const tuner_flash_header flash_header = { TUNER_MAGIC_1, TUNER_MAGIC_2 };
const unsigned int flash_pages[] = { 0x0801C000u, 0x0801D000u, 0x0801E000u, 0x0801F000u };
#define NUM_FLASH_PAGES ((sizeof(flash_pages)/sizeof(void *)))

void tuner_clear_update(int n)
{
  current_memory = n;
  last_update_tick = freqCounter.cumulativeTicks();
  needs_update = false;  
}

int tuner_readstate(int n)
{
  int err;
  tuner_flash_header rd_flash_header;
  void *vp[4];
  int b[4];
  if ((n < 1) || (n > NUM_FLASH_PAGES)) return 0;

  vp[0] = &rd_flash_header;
  b[0] = sizeof(rd_flash_header);
  readflashstruct((void *)flash_pages[n - 1], 1, vp, b);
  if (!((rd_flash_header.flash_header_1 == flash_header.flash_header_1) && (rd_flash_header.flash_header_2 == flash_header.flash_header_2)))
    return 0;
  vp[0] = NULL;
  b[0] = sizeof(flash_header);
  vp[1] = &tpar;
  b[1] = sizeof(tpar);
  vp[2] = relays;
  b[2] = sizeof(relays);
  vp[3] = tce;
  b[3] = sizeof(tce);
  err = readflashstruct((void *)flash_pages[n - 1], 4, vp, b);
  tuner_clear_update(n);
  return err;
}

int tuner_writestate(int n)
{
  void *vp[4];
  int b[4];

  if ((n < 1) || (n > NUM_FLASH_PAGES)) return 0;
  vp[0] = (void *)&flash_header;
  b[0] = sizeof(flash_header);
  vp[1] = &tpar;
  b[1] = sizeof(tpar);
  vp[2] = relays;
  b[2] = sizeof(relays);
  vp[3] = tce;
  b[3] = sizeof(tce);

  tuner_clear_update(n);  
  return writeflashstruct((void *)flash_pages[n - 1], 4, vp, b);
}

int writestate_cmd(int args, tinycl_parameter* tp, void *v)
{
  int n = tp[0].ti.i;
  if ((n < 1) || (n > NUM_FLASH_PAGES))
  {
    Serial.println("Invalid state number");
    return 1;
  }
  Serial.print("Writing state ");
  Serial.print(n);
  Serial.println(tuner_writestate(n) ? ": written" : ": failed");
  return 1;
}

int readstate_cmd(int args, tinycl_parameter* tp, void *v)
{
  int n = tp[0].ti.i;
 
  if ((n < 1) || (n > NUM_FLASH_PAGES))
  {
    Serial.println("Invalid state number");
    return 1;
  }
  if (tuner_readstate(n))
  {
    Serial.print("Read state ");
    Serial.println(n);
  } else
    Serial.println("No state to retrieve");
  return 1;
}

int bypass_cmd(int args, tinycl_parameter* tp, void *v)
{
    tuner_set_bypass();
    Serial.println("Bypass mode set");
}

int status_cmd(int args, tinycl_parameter* tp, void *v)
{
   int p;
   char s[80];
   if (current_memory>0)
   {
      mini_snprintf(s,sizeof(s)-1,"Current Memory:  %u Saved? %c",current_memory,needs_update ? 'N' : 'Y');
      Serial.println(s);
   }
   mini_snprintf(s,sizeof(s)-1,   "Tuner status:    %s  Bypass: %c",tuner_state_string[tuner_ready],tuner_bypass_mode ? 'Y' : 'N');
   Serial.println(s);
   mini_snprintf(s,sizeof(s)-1,   "Tuned condition: %s",tuner_error_condition_string[(int)tunerr_last]);
   Serial.println(s);
   mini_snprintf(s,sizeof(s)-1,   "Last frequency:  %f",float2int32(last_frequency));
   Serial.println(s);
   printSWRState(&last_swr_state);
   for (p=0;p<TUNER_MAX_RELAYS;p++)
   {
      RelayModule *r = &relays[p];
      if (r->isValidModule())
      {
        mini_snprintf(s,sizeof(s)-1,"Relay Unit #%u, setting %u, switch 1 (%c) switch 2 (%c)", p+1,
                r->getCurrentValue(), r->getSwitchState(0)? '+' : '-', r->getSwitchState(1)? '+' : '-');
        Serial.println(s);
      }
   }
   return 1;
}

int help_cmd(int args, tinycl_parameter *tp, void *v);

const tinycl_command tcmds[] =
{
  { "STATUS", "Tuner status", status_cmd, { TINYCL_PARM_END } },
  { "BYPASS", "Tuner placed into bypass", bypass_cmd, { TINYCL_PARM_END } },
  { "DEBUG", "Debugging on/off", debug_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "TUNE", "Do a tuning cycle", tune_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "SETRELAY", "Set Relay Data", set_relay_data_cmd, { TINYCL_PARM_INT, TINYCL_PARM_STR, TINYCL_PARM_END } },
  { "RELAY?", "Print Relay Data", print_relay_data_cmd, { TINYCL_PARM_END } },
  { "SETRLY", "Set Relay To Value", setrly_cmd, { TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "RLYDEF", "Reset relay unit to default", rlydef_cmd, { TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "TESTRELAY", "Manually switch relay", test_relay_cmd, { TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_INT } },
  { "SETTUNER", "Set Tuner Data", set_tuner_data_cmd, { TINYCL_PARM_STR, TINYCL_PARM_END } },
  { "TUNER?", "Print Tuner Data", print_tuner_data_cmd, { TINYCL_PARM_END } },
  { "CLEARCACHE", "Clear the Cache", clear_cache_cmd, { TINYCL_PARM_END } },
  { "SHOWCACHE", "Show the Cache", show_cache_cmd, { TINYCL_PARM_END } },
  { "SAVECACHE", "Save to cache", save_cache_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "RECALLCACHE", "Recall from Cache", recall_cache_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "WRITESTATE", "Write state to flash", writestate_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "READSTATE", "Read state from flash", readstate_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "HELP", "Display This Help", help_cmd, {TINYCL_PARM_END } },
};

int help_cmd(int args, tinycl_parameter *tp, void *v)
{
  tinycl_print_commands(sizeof(tcmds) / sizeof(tinycl_command), tcmds);
  return 1;
}

void save_state_task(void)
{
  unsigned int curtick, diftick;
  if (current_memory <= 0) return;
  if (!needs_update) return;
  curtick = freqCounter.cumulativeTicks();
  diftick = curtick - last_update_tick;
  if (diftick < TUNER_UPDATE_TICKS) return;
  tuner_writestate(current_memory);
  last_update_tick = curtick;
  needs_update = false;
}

void loop() {
  if (tinycl_task(sizeof(tcmds) / sizeof(tinycl_command), tcmds, NULL))
  {
    tinycl_do_echo = 1;
    Serial.print("> ");
  }
  tuner_task();
  save_state_task();
}
