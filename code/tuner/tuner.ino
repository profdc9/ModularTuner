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

#include <Wire.h>
#include <LiquidCrystal_I2C.h>

SWRMeter swrMeter;
//InvFrequencyCounter invCounter(PB8,PB9,1u);
FrequencyCounter freqCounter(PB9,16u,1,10000);

int capacitances[] = { 7, 15, 33, 66, 125, 250, 500, 1000 };
int inductances[] = { 75, 150, 300, 600, 1200, 2400, 5000, 10000 };
RelayModule capRelay1(capacitances,5,0x21);
RelayModule indRelay1(inductances,20,0x20);

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

 indRelay1.setup();
 capRelay1.setup();

  swrMeter.setImpedance(50.0f);

  // put your setup code here, to run once:
    //afio_cfg_debug_ports(AFIO_DEBUG_NONE);
    //afio_cfg_debug_ports(AFIO_DEBUG_SW_ONLY);
    swrMeter.setup();
    swrMeter.setImpedance(50.0f);
    //invCounter.setup();
    freqCounter.setup();
    Serial.begin(115200); // Ignored by Maple. But needed by boards using Hardware serial via a USB to Serial Adaptor

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
  EEPROMstore.setup(2);
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
        indRelay1.setRelayState(rly1,0);
        capRelay1.setRelayState(rly2,0);
        rly1++;
        if (rly1>=8) rly1=0;
        rly2--;
        if (rly2<0) rly2=7;
        indRelay1.setRelayState(rly1,1);
        capRelay1.setRelayState(rly2,1);
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

void loop() {
  testRelay();
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
  delay(2000);
}

