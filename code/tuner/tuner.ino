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
#include "EEPROMobjectstore.h"
#include "mini-printf.h"
#include "tinycl.h"

#include <Wire.h>
#include <LiquidCrystal_I2C.h>

SWRMeter swrMeter;
//InvFrequencyCounter invCounter(PB8,PB9,1u);
FrequencyCounter freqCounter(PB9,16u,1,10000);

int n_relays = 0;
RelayModule *relays[10];

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

void initialize_relays(void)
{
  n_relays = 2;
  relays[0] = new RelayModule(indRelay8);
  relays[0]->setup();
  relays[1] = new RelayModule(capRelay8);
  relays[1]->setup();
}

static void initialize_cortex_m3_cycle_counter(void)
{
  DEMCR |= DEMCR_TRCENA; 
  *DWT_CYCCNT = 0; 
  DWT_CTRL |= CYCCNTENA;
}

void setup() {
  initialize_cortex_m3_cycle_counter();
  // default debug messages off if on UART1 (might need it for rig)
#ifdef SERIAL_USB
  setDebugMsgMode(1);
#else
  setDebugMsgMode(0);
#endif

 delay(250);
 initialize_relays();

  swrMeter.setImpedance(50.0f);

  // put your setup code here, to run once:
    //afio_cfg_debug_ports(AFIO_DEBUG_NONE);
    //afio_cfg_debug_ports(AFIO_DEBUG_SW_ONLY);
    swrMeter.setup();
    swrMeter.setImpedance(50.0f);
    //invCounter.setup();
    freqCounter.setup();
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
}

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

void testFrequencyCounter(void)
{
    static int cnt=0;
    Serial.println(String("starting acquisition ")+cnt);
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

#if 0
void testInverseFrequencyCounter(void)
{
    // put your main code here, to run repeatedly:
    Serial.println("starting acquisition" );
    invCounter.armCounter();
    int i;
    for (int i=0;i<9;i++)
    {
      invCounter.requestUpdate();
      delay(100);
      Serial.print("frequency = ");
      float freq = invCounter.readUpdate();
      if (freq < 0.0f)
          Serial.println("failed");
      else
          Serial.println((unsigned int)freq);
    }
    float freq = invCounter.readFinalFrequency();
    delay(100);
}
#endif

void testRelay(void)
{
     static int cnt=0;
     cnt++;
     static int rly1=6;
     static int rly2=5;
     for (int i=0;i<1;i++)
     {
        relays[0]->setRelayState(rly1,0);
        relays[1]->setRelayState(rly2,0);
        rly1++;
        if (rly1>=8) rly1=0;
        rly2--;
        if (rly2<0) rly2=7;
        relays[0]->setRelayState(rly1,1);
        relays[1]->setRelayState(rly2,1);
        Serial.print("relay = ");
        Serial.print(rly1);
        Serial.print(" ");
        Serial.println(rly2);
        /*
        if ((cnt & 0x03) == 0) indRelay1.setSwitchState(0, indRelay1.getSwitchState(0) == 0);
        if ((cnt & 0x01) == 0) indRelay1.setSwitchState(1, indRelay1.getSwitchState(1) == 0);
        if ((cnt & 0x01) == 0) capRelay1.setSwitchState(0, capRelay1.getSwitchState(0) == 0);
        if ((cnt & 0x03) == 0) capRelay1.setSwitchState(1, capRelay1.getSwitchState(1) == 0);
        */
        delay(10);
     }

}

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

static void heartbeat(void)
{
  pinMode(SWRMETER_SAMPLE_LEVEL_IO,OUTPUT);
  digitalWrite(SWRMETER_SAMPLE_LEVEL_IO, HIGH);
  delay(100); 
  digitalWrite(SWRMETER_SAMPLE_LEVEL_IO, LOW);
}

int dotune = 0;

int tune_cmd(int args, tinycl_parameter *tp, void *v)
{
  int p = tp[0].ti.i;
  dotune = p;
  Serial.print("tunestate=");
  Serial.println(dotune);
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
  if ((rlyno < 1) || (rlyno > n_relays))
  {
    Serial.println("Invalid relay #");
    return 1;
  }
  RelayModule *r = relays[rlyno-1];
  r->setCurrentValue(rlyval,method);
  val = r->getCurrentValue();
  Serial.print("Achieved value ");
  Serial.println(val);
  return 1;
}

const tinycl_command tcmds[] =
{
/*  { "CSV", "Set Comma Separated Values Mode", csv_cmd, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "ATTEN", "Attenuator Setting", atten_cmd, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "DEBUG", "Debug Messages", debug_cmd, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "AVERAGES", "Set Averages", averages_cmd, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "IMACQ", "Immediate Acquisition", imacq_cmd, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_INT },
  { "SETACQ", "Set Acquisition Parameters", setacq_cmd, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "DOACQ", "Do Acquisition Parameters", doacq_cmd, TINYCL_PARM_END },
  { "ACQ", "Acquisition of Ref/Thru", acq_cmd, TINYCL_PARM_END },
  { "SPARM", "Acquisition of Ref/Thru S parameters", sparm_cmd, TINYCL_PARM_END },
  { "SHUNT", "Series/Shunt 2 Port Impedance", shunt_cmd, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "SHORT", "Short Calibration", shortcalib_cmd, TINYCL_PARM_END },
  { "OPEN", "Open Calibration", opencalib_cmd, TINYCL_PARM_END },
  { "LOAD", "Load Calibration", loadcalib_cmd, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "THRU", "Two Port Calibration", twocalib_cmd, TINYCL_PARM_END },
  { "LISTCAL", "List Calibration States", listcal_cmd, TINYCL_PARM_END },
  { "WRITECAL", "Write Calibration State", writecal_cmd, TINYCL_PARM_INT, TINYCL_PARM_END },
  { "READCAL", "Read Calibration State", readcal_cmd, TINYCL_PARM_INT, TINYCL_PARM_END }, */
  { "TUNE", "Do a tuning cycle", tune_cmd, { TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "SETRLY", "Set Relay To Value", setrly_cmd, { TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_INT, TINYCL_PARM_END } },
  { "HELP", "Display This Help", help_cmd, {TINYCL_PARM_END } },
};

int help_cmd(int args, tinycl_parameter *tp, void *v)
{
  tinycl_print_commands(sizeof(tcmds) / sizeof(tinycl_command), tcmds);
  return 1;
}

typedef struct _tuner_parameters
{
  float tune_min_power;
  float tune_max_power;
  float tune_max_ref;
  float tune_retune_thr;
} tuner_parameters;

tuner_parameters tpar = { 0.25f, 2.0f, 0.2f, 0.25f };

void printSWRState(void)
{
  char s[100];
  swrMeter.sampleSWR();
  float fwd = swrMeter.fwdPower();
  float rev = swrMeter.revPower();
  float cur = swrMeter.curPower();
  float swr = swrMeter.SWR();
  float refAngle = RAD2DEG(swrMeter.reflectionPhase());
  float curAngle = RAD2DEG(swrMeter.currentPhase());
  Complex refCoef = swrMeter.reflectionCoefficient();
  Complex impedance = swrMeter.calculateImpedance();
  //Complex curCoef = currentCoefficient();
  mini_snprintf(s,sizeof(s)-1,"Fwd power = %04f  Rev power = %04f  Cur Power = %04f",float2int32(fwd),float2int32(rev),float2int32(cur));
  Serial.println(s);
  mini_snprintf(s,sizeof(s)-1,"Ref Angle = %04f  Cur Angle = %04f  SWR = %02f",float2int32(refAngle),float2int32(curAngle),float2int32(swr));
  Serial.println(s);
  mini_snprintf(s,sizeof(s)-1,"Impedance = %04f + j%04f   Ref = %04f + j %04f",float2int32(impedance.re()),float2int32(impedance.im()),float2int32(refCoef.re()),float2int32(refCoef.im()));
  Serial.println(s);
}

int minimize_swr_step(RelayModule *r, int relstep, float &currentRef)
{
  int dir;
  int stepsize = (r->getMaxValue() - r->getMinValue()) >> relstep;
  int currentValue = r->getCurrentValue();
  swrMeter.sampleSWR();
  currentRef = swrMeter.revPower() / swrMeter.fwdPower();
  for (dir=0;dir<2;dir++)
  {
    for (;;)
    {
       int nextval = currentValue + stepsize * (dir ? -1 : 1);
       int lastval = r->getCurrentValue();
       r->setCurrentValue(nextval,dir ? 1 : 2);
       if (r->getCurrentValue() == lastval) break;
       delay(r->getRelaySettleTime());
       swrMeter.sampleSWR();
       float sampSWR = swrMeter.SWR();
       float fwd = swrMeter.fwdPower();
       float rev = swrMeter.revPower();
       float testRef = rev/fwd;
       if ((fwd < tpar.tune_min_power) || (fwd > tpar.tune_max_power))
          return -1;
       DEBUGMSG("stepsize=%d dir=%d currentValue=%d nextval=%d actval=%d ref=%04f",stepsize,dir,currentValue,nextval,r->getCurrentValue(),float2int32(testRef));
       if (testRef < currentRef)
       { 
          currentRef = testRef;
          currentValue = r->getCurrentValue();
       } else break;
    }
  }
  r->setCurrentValue(currentValue);
  delay(r->getRelaySettleTime());
  return currentValue;
}

void simple_tune(void)
{
  int s,n,r;
  float freq;
  freqCounter.armCounter();
  delay(100);
  freqCounter.requestUpdate();
  delay(10);
  freq = freqCounter.readUpdate();
  {
    char s[100];
    mini_snprintf(s,sizeof(s)-1,"frequency=%f",float2int32(freq));
    Serial.println(s);
  }
  float currentRef;
  for (s=0;s<4;s++)
  {
    if (s == 2)
      for (int r=0;r<n_relays;r++) relays[r]->setCurrentValue(0);   
    relays[1]->setSwitchState(0,s & 0x1);
    for (n=2;n<8;n++)
    {
      bool improved;
      do
      {
        improved = false;
        for (int r=0;r<n_relays;r++)
        {
          DEBUGMSG("pass=%d step=%d relay=%d",s,n,r);
          int val = relays[r]->getCurrentValue();
          if (minimize_swr_step(relays[r],n,currentRef) < 0) return;
          if (val != relays[r]->getCurrentValue())
              improved = true;
          if (currentRef < tpar.tune_max_ref)
          {
              printSWRState();
              return;
          }
        }
      } while (improved);
      DEBUGMSG("pass=%d capacitor Inductance=%d nH capacitance=%d pF",s,relays[0]->getCurrentValue(),relays[1]->getCurrentValue());
    }
  } 
}

void tuner_task(void)
{  
  swrMeter.sampleSWR();
  float fwd = swrMeter.fwdPower();
  float rev = swrMeter.revPower();
  if ((fwd < tpar.tune_min_power) || (fwd > tpar.tune_max_power))
      return;
  float ref = rev/fwd;
  if ((dotune) || (ref > tpar.tune_retune_thr))
  {
    Serial.println("Tuning...");
    DEBUGMSG("initial reflection=%04f",float2int32(ref));
    simple_tune();
    dotune = 0;
  }
}

void loop() {
  if (tinycl_task(sizeof(tcmds) / sizeof(tinycl_command), tcmds, NULL))
  {
    tinycl_do_echo = 1;
    Serial.print("> ");
  }
  tuner_task();

/*  testRelay();
  //testLnetwork();
  heartbeat();
  testFrequencyCounter();
  //testEEPROMobjectstore();
  delay(100);
  unsigned int x1=CPU_CYCLES;
  swrMeter.sampleSWR();
  unsigned int x2=CPU_CYCLES;
  //DEBUGMSG("total cycles=%u",x2-x1);
  swrMeter.swrmeterPrintDebugStatus();
  delay(2000); */
}
