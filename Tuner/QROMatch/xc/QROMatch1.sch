EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:tuner
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SPDTRelay RLY?
U 1 1 5DDC095F
P -9450 -6200
F 0 "RLY?" H -9200 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -9450 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -9450 -6200 60  0001 C CNN
F 3 "" H -9450 -6200 60  0001 C CNN
	1    -9450 -6200
	1    0    0    -1  
$EndComp
Text GLabel -10000 -5600 0    60   Input ~ 0
RFGND
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0967
P -7700 -6200
F 0 "RLY?" H -7450 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -7700 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -7700 -6200 60  0001 C CNN
F 3 "" H -7700 -6200 60  0001 C CNN
	1    -7700 -6200
	1    0    0    -1  
$EndComp
Text GLabel -8100 -5600 0    60   Input ~ 0
RFGND
Text GLabel -10450 -6300 0    60   Input ~ 0
RFSIG
Text GLabel -8550 -5950 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0971
P -5950 -6200
F 0 "RLY?" H -5700 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -5950 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -5950 -6200 60  0001 C CNN
F 3 "" H -5950 -6200 60  0001 C CNN
	1    -5950 -6200
	1    0    0    -1  
$EndComp
Text GLabel -6350 -5600 0    60   Input ~ 0
RFGND
Text GLabel -6800 -5950 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC097A
P -4200 -6200
F 0 "RLY?" H -3950 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -4200 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -4200 -6200 60  0001 C CNN
F 3 "" H -4200 -6200 60  0001 C CNN
	1    -4200 -6200
	1    0    0    -1  
$EndComp
Text GLabel -4600 -5600 0    60   Input ~ 0
RFGND
Text GLabel -5050 -5950 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0983
P -2300 -6200
F 0 "RLY?" H -2050 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -2300 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -2300 -6200 60  0001 C CNN
F 3 "" H -2300 -6200 60  0001 C CNN
	1    -2300 -6200
	1    0    0    -1  
$EndComp
Text GLabel -2750 -5600 0    60   Input ~ 0
RFGND
$Comp
L SPDTRelay RLY?
U 1 1 5DDC098B
P -9450 -4450
F 0 "RLY?" H -9200 -4600 60  0000 C CNN
F 1 "SPDTRelay" H -9450 -4150 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -9450 -4450 60  0001 C CNN
F 3 "" H -9450 -4450 60  0001 C CNN
	1    -9450 -4450
	1    0    0    -1  
$EndComp
Text GLabel -9850 -3850 0    60   Input ~ 0
RFGND
Text GLabel -10300 -4200 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0994
P -7700 -4450
F 0 "RLY?" H -7450 -4600 60  0000 C CNN
F 1 "SPDTRelay" H -7700 -4150 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -7700 -4450 60  0001 C CNN
F 3 "" H -7700 -4450 60  0001 C CNN
	1    -7700 -4450
	1    0    0    -1  
$EndComp
Text GLabel -8100 -3850 0    60   Input ~ 0
RFGND
Text GLabel -8550 -4200 3    60   Input ~ 0
RFSIG
Text GLabel -3200 -5950 3    60   Input ~ 0
RFSIG
Text GLabel -9800 -5850 0    60   Input ~ 0
RLY1
Text GLabel -8050 -5850 0    60   Input ~ 0
RLY2
Text GLabel -6300 -5850 0    60   Input ~ 0
RLY3
Text GLabel -4500 -5850 0    60   Input ~ 0
RLY4
Text GLabel -8050 -4100 0    60   Input ~ 0
RLY7
Text GLabel -9800 -4100 0    60   Input ~ 0
RLY6
Text GLabel -2650 -5850 0    60   Input ~ 0
RLY5
$Comp
L C C?
U 1 1 5DDC09A5
P -5150 -50
F 0 "C?" H -5125 50  50  0000 L CNN
F 1 "10 nF" H -5125 -150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -200 50  0001 C CNN
F 3 "" H -5150 -50 50  0001 C CNN
	1    -5150 -50 
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09AC
P -2900 -6500
F 0 "#PWR?" H -2900 -6650 50  0001 C CNN
F 1 "+5V" H -2900 -6360 50  0000 C CNN
F 2 "" H -2900 -6500 50  0001 C CNN
F 3 "" H -2900 -6500 50  0001 C CNN
	1    -2900 -6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09B2
P -10050 -4750
F 0 "#PWR?" H -10050 -4900 50  0001 C CNN
F 1 "+5V" H -10050 -4610 50  0000 C CNN
F 2 "" H -10050 -4750 50  0001 C CNN
F 3 "" H -10050 -4750 50  0001 C CNN
	1    -10050 -4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09B8
P -8300 -4800
F 0 "#PWR?" H -8300 -4950 50  0001 C CNN
F 1 "+5V" H -8300 -4660 50  0000 C CNN
F 2 "" H -8300 -4800 50  0001 C CNN
F 3 "" H -8300 -4800 50  0001 C CNN
	1    -8300 -4800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09BE
P -4800 -6500
F 0 "#PWR?" H -4800 -6650 50  0001 C CNN
F 1 "+5V" H -4800 -6360 50  0000 C CNN
F 2 "" H -4800 -6500 50  0001 C CNN
F 3 "" H -4800 -6500 50  0001 C CNN
	1    -4800 -6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09C4
P -6550 -6500
F 0 "#PWR?" H -6550 -6650 50  0001 C CNN
F 1 "+5V" H -6550 -6360 50  0000 C CNN
F 2 "" H -6550 -6500 50  0001 C CNN
F 3 "" H -6550 -6500 50  0001 C CNN
	1    -6550 -6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09CA
P -8300 -6550
F 0 "#PWR?" H -8300 -6700 50  0001 C CNN
F 1 "+5V" H -8300 -6410 50  0000 C CNN
F 2 "" H -8300 -6550 50  0001 C CNN
F 3 "" H -8300 -6550 50  0001 C CNN
	1    -8300 -6550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09D0
P -10050 -6550
F 0 "#PWR?" H -10050 -6700 50  0001 C CNN
F 1 "+5V" H -10050 -6410 50  0000 C CNN
F 2 "" H -10050 -6550 50  0001 C CNN
F 3 "" H -10050 -6550 50  0001 C CNN
	1    -10050 -6550
	1    0    0    -1  
$EndComp
Text GLabel -6900 -4100 3    60   Input ~ 0
RFSIG
$Comp
L Conn_01x01 J?
U 1 1 5DDC09D7
P -3250 -1450
F 0 "J?" H -3250 -1350 50  0000 C CNN
F 1 "Conn_01x01" H -3250 -1550 50  0000 C CNN
F 2 "Connectors:1pin" H -3250 -1450 50  0001 C CNN
F 3 "" H -3250 -1450 50  0001 C CNN
	1    -3250 -1450
	1    0    0    -1  
$EndComp
Text Notes -3950 -1000 0    60   ~ 0
QRO Match Board by Daniel Marks KW4TI
Text Notes -4100 -800 0    60   ~ 0
November 23, 2019
$Comp
L R R?
U 1 1 5DDC09E0
P -10100 -750
F 0 "R?" V -10020 -750 50  0000 C CNN
F 1 "1k" V -10100 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10170 -750 50  0001 C CNN
F 3 "" H -10100 -750 50  0001 C CNN
	1    -10100 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC09E7
P -9500 -1100
F 0 "D?" H -9500 -1000 50  0000 C CNN
F 1 "LED" H -9500 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9500 -1100 50  0001 C CNN
F 3 "" H -9500 -1100 50  0001 C CNN
	1    -9500 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC09EE
P -9500 -1300
F 0 "#PWR?" H -9500 -1450 50  0001 C CNN
F 1 "+5V" H -9500 -1160 50  0000 C CNN
F 2 "" H -9500 -1300 50  0001 C CNN
F 3 "" H -9500 -1300 50  0001 C CNN
	1    -9500 -1300
	1    0    0    -1  
$EndComp
Text GLabel -9500 -450 3    60   Input ~ 0
RLY8
$Comp
L R R?
U 1 1 5DDC09F5
P -9800 -750
F 0 "R?" V -9720 -750 50  0000 C CNN
F 1 "1k" V -9800 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9870 -750 50  0001 C CNN
F 3 "" H -9800 -750 50  0001 C CNN
	1    -9800 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC09FC
P -9150 -1100
F 0 "D?" H -9150 -1000 50  0000 C CNN
F 1 "LED" H -9150 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9150 -1100 50  0001 C CNN
F 3 "" H -9150 -1100 50  0001 C CNN
	1    -9150 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A03
P -9150 -1300
F 0 "#PWR?" H -9150 -1450 50  0001 C CNN
F 1 "+5V" H -9150 -1160 50  0000 C CNN
F 2 "" H -9150 -1300 50  0001 C CNN
F 3 "" H -9150 -1300 50  0001 C CNN
	1    -9150 -1300
	1    0    0    -1  
$EndComp
Text GLabel -9150 -450 3    60   Input ~ 0
RLY7
$Comp
L R R?
U 1 1 5DDC0A0A
P -9500 -750
F 0 "R?" V -9420 -750 50  0000 C CNN
F 1 "1k" V -9500 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9570 -750 50  0001 C CNN
F 3 "" H -9500 -750 50  0001 C CNN
	1    -9500 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A11
P -8800 -1100
F 0 "D?" H -8800 -1000 50  0000 C CNN
F 1 "LED" H -8800 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8800 -1100 50  0001 C CNN
F 3 "" H -8800 -1100 50  0001 C CNN
	1    -8800 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A18
P -8800 -1300
F 0 "#PWR?" H -8800 -1450 50  0001 C CNN
F 1 "+5V" H -8800 -1160 50  0000 C CNN
F 2 "" H -8800 -1300 50  0001 C CNN
F 3 "" H -8800 -1300 50  0001 C CNN
	1    -8800 -1300
	1    0    0    -1  
$EndComp
Text GLabel -8800 -450 3    60   Input ~ 0
RLY6
$Comp
L R R?
U 1 1 5DDC0A1F
P -9150 -750
F 0 "R?" V -9070 -750 50  0000 C CNN
F 1 "1k" V -9150 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9220 -750 50  0001 C CNN
F 3 "" H -9150 -750 50  0001 C CNN
	1    -9150 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A26
P -8450 -1100
F 0 "D?" H -8450 -1000 50  0000 C CNN
F 1 "LED" H -8450 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8450 -1100 50  0001 C CNN
F 3 "" H -8450 -1100 50  0001 C CNN
	1    -8450 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A2D
P -8450 -1300
F 0 "#PWR?" H -8450 -1450 50  0001 C CNN
F 1 "+5V" H -8450 -1160 50  0000 C CNN
F 2 "" H -8450 -1300 50  0001 C CNN
F 3 "" H -8450 -1300 50  0001 C CNN
	1    -8450 -1300
	1    0    0    -1  
$EndComp
Text GLabel -8450 -450 3    60   Input ~ 0
RLY5
$Comp
L R R?
U 1 1 5DDC0A34
P -8800 -750
F 0 "R?" V -8720 -750 50  0000 C CNN
F 1 "1k" V -8800 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8870 -750 50  0001 C CNN
F 3 "" H -8800 -750 50  0001 C CNN
	1    -8800 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A3B
P -8150 -1100
F 0 "D?" H -8150 -1000 50  0000 C CNN
F 1 "LED" H -8150 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8150 -1100 50  0001 C CNN
F 3 "" H -8150 -1100 50  0001 C CNN
	1    -8150 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A42
P -8150 -1300
F 0 "#PWR?" H -8150 -1450 50  0001 C CNN
F 1 "+5V" H -8150 -1160 50  0000 C CNN
F 2 "" H -8150 -1300 50  0001 C CNN
F 3 "" H -8150 -1300 50  0001 C CNN
	1    -8150 -1300
	1    0    0    -1  
$EndComp
Text GLabel -8150 -450 3    60   Input ~ 0
RLY4
$Comp
L R R?
U 1 1 5DDC0A49
P -8450 -750
F 0 "R?" V -8370 -750 50  0000 C CNN
F 1 "1k" V -8450 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8520 -750 50  0001 C CNN
F 3 "" H -8450 -750 50  0001 C CNN
	1    -8450 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A50
P -7800 -1100
F 0 "D?" H -7800 -1000 50  0000 C CNN
F 1 "LED" H -7800 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -7800 -1100 50  0001 C CNN
F 3 "" H -7800 -1100 50  0001 C CNN
	1    -7800 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A57
P -7800 -1300
F 0 "#PWR?" H -7800 -1450 50  0001 C CNN
F 1 "+5V" H -7800 -1160 50  0000 C CNN
F 2 "" H -7800 -1300 50  0001 C CNN
F 3 "" H -7800 -1300 50  0001 C CNN
	1    -7800 -1300
	1    0    0    -1  
$EndComp
Text GLabel -7800 -450 3    60   Input ~ 0
RLY3
$Comp
L R R?
U 1 1 5DDC0A5E
P -8150 -750
F 0 "R?" V -8070 -750 50  0000 C CNN
F 1 "1k" V -8150 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8220 -750 50  0001 C CNN
F 3 "" H -8150 -750 50  0001 C CNN
	1    -8150 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A65
P -7450 -1100
F 0 "D?" H -7450 -1000 50  0000 C CNN
F 1 "LED" H -7450 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -7450 -1100 50  0001 C CNN
F 3 "" H -7450 -1100 50  0001 C CNN
	1    -7450 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A6C
P -7450 -1300
F 0 "#PWR?" H -7450 -1450 50  0001 C CNN
F 1 "+5V" H -7450 -1160 50  0000 C CNN
F 2 "" H -7450 -1300 50  0001 C CNN
F 3 "" H -7450 -1300 50  0001 C CNN
	1    -7450 -1300
	1    0    0    -1  
$EndComp
Text GLabel -7450 -450 3    60   Input ~ 0
RLY2
$Comp
L R R?
U 1 1 5DDC0A73
P -7800 -750
F 0 "R?" V -7720 -750 50  0000 C CNN
F 1 "1k" V -7800 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -7870 -750 50  0001 C CNN
F 3 "" H -7800 -750 50  0001 C CNN
	1    -7800 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A7A
P -7100 -1100
F 0 "D?" H -7100 -1000 50  0000 C CNN
F 1 "LED" H -7100 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -7100 -1100 50  0001 C CNN
F 3 "" H -7100 -1100 50  0001 C CNN
	1    -7100 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0A81
P -7100 -1300
F 0 "#PWR?" H -7100 -1450 50  0001 C CNN
F 1 "+5V" H -7100 -1160 50  0000 C CNN
F 2 "" H -7100 -1300 50  0001 C CNN
F 3 "" H -7100 -1300 50  0001 C CNN
	1    -7100 -1300
	1    0    0    -1  
$EndComp
Text GLabel -7100 -450 3    60   Input ~ 0
RLY1
Text GLabel -5900 -150 2    60   Input ~ 0
RLY1
Text GLabel -5900 -250 2    60   Input ~ 0
RLY2
Text GLabel -5900 -350 2    60   Input ~ 0
RLY3
Text GLabel -5900 -450 2    60   Input ~ 0
RLY4
Text GLabel -5900 -550 2    60   Input ~ 0
RLY5
Text GLabel -5900 -650 2    60   Input ~ 0
RLY6
Text GLabel -5900 -750 2    60   Input ~ 0
RLY7
Text GLabel -5900 -850 2    60   Input ~ 0
RLY8
Text GLabel -5900 -950 2    60   Input ~ 0
RLY9
Text GLabel -5900 -1050 2    60   Input ~ 0
RLY10
$Comp
L +5V #PWR?
U 1 1 5DDC0A92
P -6750 -1400
F 0 "#PWR?" H -6750 -1550 50  0001 C CNN
F 1 "+5V" H -6750 -1260 50  0000 C CNN
F 2 "" H -6750 -1400 50  0001 C CNN
F 3 "" H -6750 -1400 50  0001 C CNN
	1    -6750 -1400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5DDC0A98
P -7450 -750
F 0 "R?" V -7370 -750 50  0000 C CNN
F 1 "1k" V -7450 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -7520 -750 50  0001 C CNN
F 3 "" H -7450 -750 50  0001 C CNN
	1    -7450 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0A9F
P -9800 -1100
F 0 "D?" H -9800 -1000 50  0000 C CNN
F 1 "LED" H -9800 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9800 -1100 50  0001 C CNN
F 3 "" H -9800 -1100 50  0001 C CNN
	1    -9800 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0AA6
P -9800 -1300
F 0 "#PWR?" H -9800 -1450 50  0001 C CNN
F 1 "+5V" H -9800 -1160 50  0000 C CNN
F 2 "" H -9800 -1300 50  0001 C CNN
F 3 "" H -9800 -1300 50  0001 C CNN
	1    -9800 -1300
	1    0    0    -1  
$EndComp
Text GLabel -9800 -450 3    60   Input ~ 0
RLY9
$Comp
L R R?
U 1 1 5DDC0AAD
P -7100 -750
F 0 "R?" V -7020 -750 50  0000 C CNN
F 1 "1k" V -7100 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -7170 -750 50  0001 C CNN
F 3 "" H -7100 -750 50  0001 C CNN
	1    -7100 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0AB4
P -10100 -1100
F 0 "D?" H -10100 -1000 50  0000 C CNN
F 1 "LED" H -10100 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10100 -1100 50  0001 C CNN
F 3 "" H -10100 -1100 50  0001 C CNN
	1    -10100 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0ABB
P -10100 -1300
F 0 "#PWR?" H -10100 -1450 50  0001 C CNN
F 1 "+5V" H -10100 -1160 50  0000 C CNN
F 2 "" H -10100 -1300 50  0001 C CNN
F 3 "" H -10100 -1300 50  0001 C CNN
	1    -10100 -1300
	1    0    0    -1  
$EndComp
Text GLabel -10100 -450 3    60   Input ~ 0
RLY10
Text GLabel -4900 -2050 2    60   Input ~ 0
RLY10
Text GLabel -4900 -50  2    60   Input ~ 0
RLY1
$Comp
L C C?
U 1 1 5DDC0AC4
P -5150 -250
F 0 "C?" H -5125 -150 50  0000 L CNN
F 1 "10 nF" H -5125 -350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -400 50  0001 C CNN
F 3 "" H -5150 -250 50  0001 C CNN
	1    -5150 -250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0ACB
P -5150 -450
F 0 "C?" H -5125 -350 50  0000 L CNN
F 1 "10 nF" H -5125 -550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -600 50  0001 C CNN
F 3 "" H -5150 -450 50  0001 C CNN
	1    -5150 -450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AD2
P -5150 -650
F 0 "C?" H -5125 -550 50  0000 L CNN
F 1 "10 nF" H -5125 -750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -800 50  0001 C CNN
F 3 "" H -5150 -650 50  0001 C CNN
	1    -5150 -650
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AD9
P -5150 -850
F 0 "C?" H -5125 -750 50  0000 L CNN
F 1 "10 nF" H -5125 -950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -1000 50  0001 C CNN
F 3 "" H -5150 -850 50  0001 C CNN
	1    -5150 -850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AE0
P -5150 -1050
F 0 "C?" H -5125 -950 50  0000 L CNN
F 1 "10 nF" H -5125 -1150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -1200 50  0001 C CNN
F 3 "" H -5150 -1050 50  0001 C CNN
	1    -5150 -1050
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AE7
P -5150 -1250
F 0 "C?" H -5125 -1150 50  0000 L CNN
F 1 "10 nF" H -5125 -1350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -1400 50  0001 C CNN
F 3 "" H -5150 -1250 50  0001 C CNN
	1    -5150 -1250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AEE
P -5150 -1450
F 0 "C?" H -5125 -1350 50  0000 L CNN
F 1 "10 nF" H -5125 -1550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -1600 50  0001 C CNN
F 3 "" H -5150 -1450 50  0001 C CNN
	1    -5150 -1450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AF5
P -5150 -1650
F 0 "C?" H -5125 -1550 50  0000 L CNN
F 1 "10 nF" H -5125 -1750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -1800 50  0001 C CNN
F 3 "" H -5150 -1650 50  0001 C CNN
	1    -5150 -1650
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0AFC
P -5150 -2050
F 0 "C?" H -5125 -1950 50  0000 L CNN
F 1 "10 nF" H -5125 -2150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -2200 50  0001 C CNN
F 3 "" H -5150 -2050 50  0001 C CNN
	1    -5150 -2050
	0    1    1    0   
$EndComp
Text GLabel -4900 -250 2    60   Input ~ 0
RLY2
Text GLabel -4900 -450 2    60   Input ~ 0
RLY3
Text GLabel -4900 -650 2    60   Input ~ 0
RLY4
Text GLabel -4900 -850 2    60   Input ~ 0
RLY5
Text GLabel -4900 -1050 2    60   Input ~ 0
RLY6
Text GLabel -4900 -1250 2    60   Input ~ 0
RLY7
Text GLabel -4900 -1450 2    60   Input ~ 0
RLY8
Text GLabel -4900 -1650 2    60   Input ~ 0
RLY9
$Comp
L +5V #PWR?
U 1 1 5DDC0B0B
P -5450 -2600
F 0 "#PWR?" H -5450 -2750 50  0001 C CNN
F 1 "+5V" H -5450 -2460 50  0000 C CNN
F 2 "" H -5450 -2600 50  0001 C CNN
F 3 "" H -5450 -2600 50  0001 C CNN
	1    -5450 -2600
	1    0    0    -1  
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0B11
P -6050 -4450
F 0 "RLY?" H -5800 -4600 60  0000 C CNN
F 1 "SPDTRelay" H -6050 -4150 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -6050 -4450 60  0001 C CNN
F 3 "" H -6050 -4450 60  0001 C CNN
	1    -6050 -4450
	1    0    0    -1  
$EndComp
Text GLabel -6450 -3850 0    60   Input ~ 0
RFGND
Text GLabel -6400 -4100 0    60   Input ~ 0
RLY8
$Comp
L +5V #PWR?
U 1 1 5DDC0B1A
P -6650 -4800
F 0 "#PWR?" H -6650 -4950 50  0001 C CNN
F 1 "+5V" H -6650 -4660 50  0000 C CNN
F 2 "" H -6650 -4800 50  0001 C CNN
F 3 "" H -6650 -4800 50  0001 C CNN
	1    -6650 -4800
	1    0    0    -1  
$EndComp
Text GLabel -5250 -4100 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0B21
P -9000 -2800
F 0 "RLY?" H -8750 -2950 60  0000 C CNN
F 1 "SPDTRelay" H -9000 -2500 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -9000 -2800 60  0001 C CNN
F 3 "" H -9000 -2800 60  0001 C CNN
	1    -9000 -2800
	1    0    0    -1  
$EndComp
Text GLabel -9750 -2600 0    60   Input ~ 0
RLY11
$Comp
L C C?
U 1 1 5DDC0B29
P -5150 -1850
F 0 "C?" H -5125 -1750 50  0000 L CNN
F 1 "10 nF" H -5125 -1950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -2000 50  0001 C CNN
F 3 "" H -5150 -1850 50  0001 C CNN
	1    -5150 -1850
	0    1    1    0   
$EndComp
Text GLabel -4900 -1850 2    60   Input ~ 0
RLY9
$Comp
L C C?
U 1 1 5DDC0B31
P -5150 -2300
F 0 "C?" H -5125 -2200 50  0000 L CNN
F 1 "10 nF" H -5125 -2400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -2450 50  0001 C CNN
F 3 "" H -5150 -2300 50  0001 C CNN
	1    -5150 -2300
	0    1    1    0   
$EndComp
Text GLabel -4900 -2300 2    60   Input ~ 0
RLY11
$Comp
L C C?
U 1 1 5DDC0B39
P -1050 -4350
F 0 "C?" H -1025 -4250 50  0000 L CNN
F 1 "10 nF" H -1025 -4450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -4500 50  0001 C CNN
F 3 "" H -1050 -4350 50  0001 C CNN
	1    -1050 -4350
	0    1    1    0   
$EndComp
Text GLabel -800 -4350 2    60   Input ~ 0
RLY1
$Comp
L C C?
U 1 1 5DDC0B41
P -1050 -4550
F 0 "C?" H -1025 -4450 50  0000 L CNN
F 1 "10 nF" H -1025 -4650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -4700 50  0001 C CNN
F 3 "" H -1050 -4550 50  0001 C CNN
	1    -1050 -4550
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B48
P -1050 -4750
F 0 "C?" H -1025 -4650 50  0000 L CNN
F 1 "10 nF" H -1025 -4850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -4900 50  0001 C CNN
F 3 "" H -1050 -4750 50  0001 C CNN
	1    -1050 -4750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B4F
P -1050 -4950
F 0 "C?" H -1025 -4850 50  0000 L CNN
F 1 "10 nF" H -1025 -5050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -5100 50  0001 C CNN
F 3 "" H -1050 -4950 50  0001 C CNN
	1    -1050 -4950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B56
P -1050 -5150
F 0 "C?" H -1025 -5050 50  0000 L CNN
F 1 "10 nF" H -1025 -5250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -5300 50  0001 C CNN
F 3 "" H -1050 -5150 50  0001 C CNN
	1    -1050 -5150
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B5D
P -1050 -5350
F 0 "C?" H -1025 -5250 50  0000 L CNN
F 1 "10 nF" H -1025 -5450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -5500 50  0001 C CNN
F 3 "" H -1050 -5350 50  0001 C CNN
	1    -1050 -5350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B64
P -1050 -5550
F 0 "C?" H -1025 -5450 50  0000 L CNN
F 1 "10 nF" H -1025 -5650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -5700 50  0001 C CNN
F 3 "" H -1050 -5550 50  0001 C CNN
	1    -1050 -5550
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B6B
P -1050 -5750
F 0 "C?" H -1025 -5650 50  0000 L CNN
F 1 "10 nF" H -1025 -5850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -5900 50  0001 C CNN
F 3 "" H -1050 -5750 50  0001 C CNN
	1    -1050 -5750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0B72
P -1050 -5950
F 0 "C?" H -1025 -5850 50  0000 L CNN
F 1 "10 nF" H -1025 -6050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -6100 50  0001 C CNN
F 3 "" H -1050 -5950 50  0001 C CNN
	1    -1050 -5950
	0    1    1    0   
$EndComp
Text GLabel -800 -4550 2    60   Input ~ 0
RLY2
Text GLabel -800 -4750 2    60   Input ~ 0
RLY3
Text GLabel -800 -4950 2    60   Input ~ 0
RLY4
Text GLabel -800 -5150 2    60   Input ~ 0
RLY5
Text GLabel -800 -5350 2    60   Input ~ 0
RLY6
Text GLabel -800 -5550 2    60   Input ~ 0
RLY7
Text GLabel -800 -5750 2    60   Input ~ 0
RLY8
Text GLabel -800 -5950 2    60   Input ~ 0
RLY9
$Comp
L C C?
U 1 1 5DDC0B81
P -1050 -6150
F 0 "C?" H -1025 -6050 50  0000 L CNN
F 1 "10 nF" H -1025 -6250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -6300 50  0001 C CNN
F 3 "" H -1050 -6150 50  0001 C CNN
	1    -1050 -6150
	0    1    1    0   
$EndComp
Text GLabel -800 -6150 2    60   Input ~ 0
RLY10
$Comp
L Conn_01x01 J?
U 1 1 5DDC0B89
P -3250 -2050
F 0 "J?" H -3250 -1950 50  0000 C CNN
F 1 "Conn_01x01" H -3250 -2150 50  0000 C CNN
F 2 "Connectors:1pin" H -3250 -2050 50  0001 C CNN
F 3 "" H -3250 -2050 50  0001 C CNN
	1    -3250 -2050
	1    0    0    -1  
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0B90
P -2150 -3100
F 0 "RLY?" H -1900 -3250 60  0000 C CNN
F 1 "SPDTRelay" H -2150 -2800 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -2150 -3100 60  0001 C CNN
F 3 "" H -2150 -3100 60  0001 C CNN
	1    -2150 -3100
	1    0    0    -1  
$EndComp
Text GLabel -4900 -2550 2    60   Input ~ 0
RLY12
$Comp
L C C?
U 1 1 5DDC0B98
P -5150 -2550
F 0 "C?" H -5125 -2450 50  0000 L CNN
F 1 "10 nF" H -5125 -2650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -5112 -2700 50  0001 C CNN
F 3 "" H -5150 -2550 50  0001 C CNN
	1    -5150 -2550
	0    1    1    0   
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0B9F
P -4100 -4550
F 0 "RLY?" H -3850 -4700 60  0000 C CNN
F 1 "SPDTRelay" H -4100 -4250 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -4100 -4550 60  0001 C CNN
F 3 "" H -4100 -4550 60  0001 C CNN
	1    -4100 -4550
	1    0    0    -1  
$EndComp
Text GLabel -4500 -3950 0    60   Input ~ 0
RFGND
Text GLabel -4450 -4200 0    60   Input ~ 0
RLY9
$Comp
L +5V #PWR?
U 1 1 5DDC0BA8
P -4700 -4900
F 0 "#PWR?" H -4700 -5050 50  0001 C CNN
F 1 "+5V" H -4700 -4760 50  0000 C CNN
F 2 "" H -4700 -4900 50  0001 C CNN
F 3 "" H -4700 -4900 50  0001 C CNN
	1    -4700 -4900
	1    0    0    -1  
$EndComp
Text GLabel -3300 -4200 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC0BAF
P -2450 -4550
F 0 "RLY?" H -2200 -4700 60  0000 C CNN
F 1 "SPDTRelay" H -2450 -4250 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -2450 -4550 60  0001 C CNN
F 3 "" H -2450 -4550 60  0001 C CNN
	1    -2450 -4550
	1    0    0    -1  
$EndComp
Text GLabel -2850 -3950 0    60   Input ~ 0
RFGND
Text GLabel -2800 -4200 0    60   Input ~ 0
RLY10
$Comp
L +5V #PWR?
U 1 1 5DDC0BB8
P -3050 -4900
F 0 "#PWR?" H -3050 -5050 50  0001 C CNN
F 1 "+5V" H -3050 -4760 50  0000 C CNN
F 2 "" H -3050 -4900 50  0001 C CNN
F 3 "" H -3050 -4900 50  0001 C CNN
	1    -3050 -4900
	1    0    0    -1  
$EndComp
Text GLabel -1650 -4200 3    60   Input ~ 0
RFSIG
$Comp
L +5V #PWR?
U 1 1 5DDC0BBF
P -9750 -3150
F 0 "#PWR?" H -9750 -3300 50  0001 C CNN
F 1 "+5V" H -9750 -3010 50  0000 C CNN
F 2 "" H -9750 -3150 50  0001 C CNN
F 3 "" H -9750 -3150 50  0001 C CNN
	1    -9750 -3150
	1    0    0    -1  
$EndComp
Text GLabel -10800 -3150 3    60   Input ~ 0
RFSIG
$Comp
L Conn_01x02 J?
U 1 1 5DDC0BC6
P -10500 -2600
F 0 "J?" H -10500 -2500 50  0000 C CNN
F 1 "Conn_01x02" H -10500 -2800 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -10500 -2600 50  0001 C CNN
F 3 "" H -10500 -2600 50  0001 C CNN
	1    -10500 -2600
	1    0    0    -1  
$EndComp
Text GLabel -10800 -2300 3    60   Input ~ 0
RFGND
$Comp
L Conn_01x02 J?
U 1 1 5DDC0BCE
P -10400 -3400
F 0 "J?" H -10400 -3300 50  0000 C CNN
F 1 "Conn_01x02" H -10400 -3600 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -10400 -3400 50  0001 C CNN
F 3 "" H -10400 -3400 50  0001 C CNN
	1    -10400 -3400
	1    0    0    -1  
$EndComp
Text GLabel -9900 -2900 0    60   Input ~ 0
RFSIG
Text GLabel -2900 -2900 0    60   Input ~ 0
RLY12
$Comp
L Conn_02x12_Odd_Even J?
U 1 1 5DDC0BD7
P -6350 -650
F 0 "J?" H -6300 -50 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H -6300 -1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x12_Pitch2.54mm" H -6350 -650 50  0001 C CNN
F 3 "" H -6350 -650 50  0001 C CNN
	1    -6350 -650
	1    0    0    1   
$EndComp
Text GLabel -5900 -1150 2    60   Input ~ 0
RLY11
Text GLabel -5900 -1250 2    60   Input ~ 0
RLY12
$Comp
L R R?
U 1 1 5DDC0BE0
P -10700 -750
F 0 "R?" V -10620 -750 50  0000 C CNN
F 1 "1k" V -10700 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10770 -750 50  0001 C CNN
F 3 "" H -10700 -750 50  0001 C CNN
	1    -10700 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0BE7
P -10400 -1100
F 0 "D?" H -10400 -1000 50  0000 C CNN
F 1 "LED" H -10400 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10400 -1100 50  0001 C CNN
F 3 "" H -10400 -1100 50  0001 C CNN
	1    -10400 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0BEE
P -10400 -1300
F 0 "#PWR?" H -10400 -1450 50  0001 C CNN
F 1 "+5V" H -10400 -1160 50  0000 C CNN
F 2 "" H -10400 -1300 50  0001 C CNN
F 3 "" H -10400 -1300 50  0001 C CNN
	1    -10400 -1300
	1    0    0    -1  
$EndComp
Text GLabel -10400 -450 3    60   Input ~ 0
RLY11
$Comp
L R R?
U 1 1 5DDC0BF5
P -10400 -750
F 0 "R?" V -10320 -750 50  0000 C CNN
F 1 "1k" V -10400 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10470 -750 50  0001 C CNN
F 3 "" H -10400 -750 50  0001 C CNN
	1    -10400 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC0BFC
P -10700 -1100
F 0 "D?" H -10700 -1000 50  0000 C CNN
F 1 "LED" H -10700 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10700 -1100 50  0001 C CNN
F 3 "" H -10700 -1100 50  0001 C CNN
	1    -10700 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0C03
P -10700 -1300
F 0 "#PWR?" H -10700 -1450 50  0001 C CNN
F 1 "+5V" H -10700 -1160 50  0000 C CNN
F 2 "" H -10700 -1300 50  0001 C CNN
F 3 "" H -10700 -1300 50  0001 C CNN
	1    -10700 -1300
	1    0    0    -1  
$EndComp
Text GLabel -10700 -450 3    60   Input ~ 0
RLY12
Text GLabel -800 -6350 2    60   Input ~ 0
RLY11
Text GLabel -800 -6550 2    60   Input ~ 0
RLY12
$Comp
L C C?
U 1 1 5DDC0C0C
P -1050 -6350
F 0 "C?" H -1025 -6250 50  0000 L CNN
F 1 "10 nF" H -1025 -6450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -6500 50  0001 C CNN
F 3 "" H -1050 -6350 50  0001 C CNN
	1    -1050 -6350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0C13
P -1050 -6550
F 0 "C?" H -1025 -6450 50  0000 L CNN
F 1 "10 nF" H -1025 -6650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -1012 -6700 50  0001 C CNN
F 3 "" H -1050 -6550 50  0001 C CNN
	1    -1050 -6550
	0    1    1    0   
$EndComp
Text GLabel -1300 -6900 2    60   Input ~ 0
RFGND
$Comp
L +5V #PWR?
U 1 1 5DDC0C1B
P -900 -3750
F 0 "#PWR?" H -900 -3900 50  0001 C CNN
F 1 "+5V" H -900 -3610 50  0000 C CNN
F 2 "" H -900 -3750 50  0001 C CNN
F 3 "" H -900 -3750 50  0001 C CNN
	1    -900 -3750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5DDC0C21
P -3950 -2300
F 0 "C?" H -3925 -2200 50  0000 L CNN
F 1 "10 nF" H -3925 -2400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -3912 -2450 50  0001 C CNN
F 3 "" H -3950 -2300 50  0001 C CNN
	1    -3950 -2300
	0    1    1    0   
$EndComp
Text GLabel -3650 -2600 2    60   Input ~ 0
RFGND
$Comp
L C C?
U 1 1 5DDC0C29
P -3950 -2600
F 0 "C?" H -3925 -2500 50  0000 L CNN
F 1 "10 nF" H -3925 -2700 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -3912 -2750 50  0001 C CNN
F 3 "" H -3950 -2600 50  0001 C CNN
	1    -3950 -2600
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0C30
P -3950 -2850
F 0 "C?" H -3925 -2750 50  0000 L CNN
F 1 "10 nF" H -3925 -2950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -3912 -3000 50  0001 C CNN
F 3 "" H -3950 -2850 50  0001 C CNN
	1    -3950 -2850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC0C37
P -4250 -2600
F 0 "#PWR?" H -4250 -2750 50  0001 C CNN
F 1 "+5V" H -4250 -2460 50  0000 C CNN
F 2 "" H -4250 -2600 50  0001 C CNN
F 3 "" H -4250 -2600 50  0001 C CNN
	1    -4250 -2600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC0C3D
P -900 -3350
F 0 "J?" H -900 -3250 50  0000 C CNN
F 1 "Conn_01x02" H -900 -3550 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -900 -3350 50  0001 C CNN
F 3 "" H -900 -3350 50  0001 C CNN
	1    -900 -3350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC0C44
P -900 -2950
F 0 "J?" H -900 -2850 50  0000 C CNN
F 1 "Conn_01x02" H -900 -3150 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -900 -2950 50  0001 C CNN
F 3 "" H -900 -2950 50  0001 C CNN
	1    -900 -2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC0C4B
P -900 -2550
F 0 "J?" H -900 -2450 50  0000 C CNN
F 1 "Conn_01x02" H -900 -2750 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -900 -2550 50  0001 C CNN
F 3 "" H -900 -2550 50  0001 C CNN
	1    -900 -2550
	1    0    0    -1  
$EndComp
Text GLabel -1500 -2500 0    60   Input ~ 0
RFGND
$Comp
L +5V #PWR?
U 1 1 5DDC0C53
P -2900 -3250
F 0 "#PWR?" H -2900 -3400 50  0001 C CNN
F 1 "+5V" H -2900 -3110 50  0000 C CNN
F 2 "" H -2900 -3250 50  0001 C CNN
F 3 "" H -2900 -3250 50  0001 C CNN
	1    -2900 -3250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5DDC0C59
P -3950 -1450
F 0 "C?" H -3925 -1350 50  0000 L CNN
F 1 "10 nF" H -3925 -1550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -3912 -1600 50  0001 C CNN
F 3 "" H -3950 -1450 50  0001 C CNN
	1    -3950 -1450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0C60
P -3950 -1750
F 0 "C?" H -3925 -1650 50  0000 L CNN
F 1 "10 nF" H -3925 -1850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -3912 -1900 50  0001 C CNN
F 3 "" H -3950 -1750 50  0001 C CNN
	1    -3950 -1750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC0C67
P -3950 -2000
F 0 "C?" H -3925 -1900 50  0000 L CNN
F 1 "10 nF" H -3925 -2100 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -3912 -2150 50  0001 C CNN
F 3 "" H -3950 -2000 50  0001 C CNN
	1    -3950 -2000
	0    1    1    0   
$EndComp
$Comp
L Conn_01x01 J?
U 1 1 5DDC0C6E
P -3250 -1750
F 0 "J?" H -3250 -1650 50  0000 C CNN
F 1 "Conn_01x01" H -3250 -1850 50  0000 C CNN
F 2 "Connectors:1pin" H -3250 -1750 50  0001 C CNN
F 3 "" H -3250 -1750 50  0001 C CNN
	1    -3250 -1750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J?
U 1 1 5DDC0C75
P -3250 -2400
F 0 "J?" H -3250 -2300 50  0000 C CNN
F 1 "Conn_01x01" H -3250 -2500 50  0000 C CNN
F 2 "Connectors:1pin" H -3250 -2400 50  0001 C CNN
F 3 "" H -3250 -2400 50  0001 C CNN
	1    -3250 -2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2700 -2900 -2900 -2900
Connection ~ -2750 -3500
Wire Wire Line
	-2750 -3200 -2750 -3500
Wire Wire Line
	-2700 -3200 -2750 -3200
Wire Wire Line
	-8350 -3500 -1450 -3500
Wire Wire Line
	-8350 -3000 -8350 -3500
Wire Wire Line
	-1550 -6400 -1550 -5200
Connection ~ -10800 -3300
Wire Wire Line
	-10600 -3300 -10800 -3300
Wire Wire Line
	-10800 -3400 -10600 -3400
Wire Wire Line
	-10800 -3400 -10800 -3150
Connection ~ -10800 -2500
Wire Wire Line
	-10700 -2500 -10800 -2500
Wire Wire Line
	-10800 -2600 -10700 -2600
Wire Wire Line
	-10800 -2600 -10800 -2300
Wire Wire Line
	-1450 -4750 -1750 -4750
Wire Wire Line
	-1450 -3500 -1450 -4750
Wire Wire Line
	-8500 -3000 -8350 -3000
Wire Wire Line
	-9550 -2900 -9900 -2900
Wire Wire Line
	-9750 -3150 -9750 -2700
Wire Wire Line
	-9550 -2600 -9750 -2600
Wire Wire Line
	-9750 -2700 -9550 -2700
Wire Wire Line
	-5350 -4650 -4650 -4650
Wire Wire Line
	-3600 -4750 -3500 -4750
Wire Wire Line
	-4450 -3950 -4500 -3950
Wire Wire Line
	-4450 -4100 -4800 -4100
Wire Wire Line
	-4800 -4100 -4800 -4650
Connection ~ -4800 -4650
Wire Wire Line
	-3500 -4750 -3500 -4100
Wire Wire Line
	-3500 -4100 -3550 -4100
Wire Wire Line
	-3600 -4550 -3400 -4550
Wire Wire Line
	-3400 -4550 -3400 -3950
Wire Wire Line
	-3400 -3950 -3550 -3950
Wire Wire Line
	-4650 -4450 -4700 -4450
Wire Wire Line
	-4700 -4450 -4700 -4900
Wire Wire Line
	-4650 -4350 -4650 -4300
Wire Wire Line
	-4650 -4300 -4400 -4300
Wire Wire Line
	-4400 -4300 -4400 -4200
Wire Wire Line
	-4400 -4200 -4450 -4200
Connection ~ -3500 -4750
Wire Wire Line
	-3300 -4200 -3300 -4750
Wire Wire Line
	-3400 -4650 -3000 -4650
Wire Wire Line
	-1950 -4750 -1850 -4750
Wire Wire Line
	-2800 -3950 -2850 -3950
Wire Wire Line
	-2800 -4100 -3150 -4100
Wire Wire Line
	-3150 -4100 -3150 -4650
Connection ~ -3150 -4650
Wire Wire Line
	-1850 -4750 -1850 -4100
Wire Wire Line
	-1850 -4100 -1900 -4100
Wire Wire Line
	-1950 -4550 -1750 -4550
Wire Wire Line
	-1750 -3950 -1900 -3950
Wire Wire Line
	-3000 -4450 -3050 -4450
Wire Wire Line
	-3050 -4450 -3050 -4900
Wire Wire Line
	-3000 -4350 -3000 -4300
Wire Wire Line
	-3000 -4300 -2750 -4300
Wire Wire Line
	-2750 -4300 -2750 -4200
Wire Wire Line
	-2750 -4200 -2800 -4200
Connection ~ -1850 -4750
Wire Wire Line
	-1650 -4200 -1650 -4750
Wire Wire Line
	-3400 -4750 -3400 -4650
Wire Wire Line
	-1750 -4550 -1750 -3950
Wire Wire Line
	-10900 -4650 -10500 -4650
Wire Wire Line
	-1650 -6200 -1650 -5600
Connection ~ -3600 -6400
Connection ~ -5450 -2550
Wire Wire Line
	-5300 -2550 -5450 -2550
Wire Wire Line
	-4900 -2550 -5000 -2550
Wire Wire Line
	-10450 -6300 -10000 -6300
Wire Wire Line
	-8950 -6400 -8750 -6400
Wire Wire Line
	-8650 -6300 -8250 -6300
Wire Wire Line
	-8650 -6300 -8650 -6400
Wire Wire Line
	-8550 -5950 -8550 -6400
Wire Wire Line
	-6900 -6300 -6500 -6300
Wire Wire Line
	-6900 -6300 -6900 -6400
Wire Wire Line
	-6800 -5950 -6800 -6400
Wire Wire Line
	-7200 -6400 -7000 -6400
Wire Wire Line
	-5150 -6300 -4750 -6300
Wire Wire Line
	-5150 -6300 -5150 -6400
Wire Wire Line
	-5050 -5950 -5050 -6400
Wire Wire Line
	-5450 -6400 -5250 -6400
Wire Wire Line
	-3700 -6400 -3400 -6400
Wire Wire Line
	-3300 -6300 -2850 -6300
Wire Wire Line
	-1800 -6400 -1550 -6400
Wire Wire Line
	-10400 -4550 -10000 -4550
Wire Wire Line
	-10400 -4550 -10400 -4650
Wire Wire Line
	-10300 -4200 -10300 -4650
Wire Wire Line
	-8650 -4550 -8250 -4550
Wire Wire Line
	-8650 -4550 -8650 -4650
Wire Wire Line
	-8550 -4200 -8550 -4650
Wire Wire Line
	-8950 -4650 -8750 -4650
Wire Wire Line
	-7200 -4650 -7100 -4650
Wire Wire Line
	-3300 -6400 -3300 -6300
Wire Wire Line
	-3200 -5950 -3200 -6400
Wire Wire Line
	-10900 -5200 -10900 -4650
Wire Wire Line
	-1550 -5200 -10900 -5200
Wire Wire Line
	-10150 -6300 -10150 -5750
Wire Wire Line
	-10150 -5750 -9800 -5750
Connection ~ -10150 -6300
Wire Wire Line
	-8000 -5600 -8100 -5600
Wire Wire Line
	-7200 -6200 -7000 -6200
Wire Wire Line
	-7000 -6200 -7000 -5600
Wire Wire Line
	-7000 -5600 -7100 -5600
Wire Wire Line
	-7100 -6400 -7100 -5750
Connection ~ -7100 -6400
Wire Wire Line
	-8900 -5750 -8850 -5750
Wire Wire Line
	-8850 -5750 -8850 -6400
Connection ~ -8850 -6400
Wire Wire Line
	-8950 -6200 -8750 -6200
Wire Wire Line
	-8750 -6200 -8750 -5600
Wire Wire Line
	-8750 -5600 -8900 -5600
Wire Wire Line
	-8400 -6300 -8400 -5750
Wire Wire Line
	-8400 -5750 -8000 -5750
Connection ~ -8400 -6300
Wire Wire Line
	-6650 -6300 -6650 -5750
Wire Wire Line
	-6650 -5750 -6250 -5750
Connection ~ -6650 -6300
Wire Wire Line
	-6250 -5600 -6350 -5600
Wire Wire Line
	-5350 -6400 -5350 -5750
Connection ~ -5350 -6400
Wire Wire Line
	-5450 -6200 -5250 -6200
Wire Wire Line
	-5250 -6200 -5250 -5600
Wire Wire Line
	-5250 -5600 -5350 -5600
Wire Wire Line
	-4550 -5750 -4850 -5750
Wire Wire Line
	-4850 -5750 -4850 -6300
Connection ~ -4850 -6300
Wire Wire Line
	-4550 -5600 -4600 -5600
Wire Wire Line
	-3650 -5750 -3600 -5750
Wire Wire Line
	-3600 -5750 -3600 -6400
Wire Wire Line
	-3700 -6200 -3500 -6200
Wire Wire Line
	-3500 -6200 -3500 -5600
Wire Wire Line
	-3500 -5600 -3650 -5600
Wire Wire Line
	-2700 -5600 -2750 -5600
Wire Wire Line
	-10000 -5600 -9800 -5600
Wire Wire Line
	-3000 -6300 -3000 -5750
Wire Wire Line
	-3000 -5750 -2700 -5750
Connection ~ -3000 -6300
Wire Wire Line
	-1750 -6400 -1750 -5750
Wire Wire Line
	-1750 -5750 -1800 -5750
Connection ~ -1750 -6400
Wire Wire Line
	-1800 -6200 -1650 -6200
Wire Wire Line
	-1650 -5600 -1800 -5600
Wire Wire Line
	-9800 -3850 -9850 -3850
Wire Wire Line
	-10150 -4550 -10150 -4000
Wire Wire Line
	-10150 -4000 -9800 -4000
Connection ~ -10150 -4550
Wire Wire Line
	-8850 -4650 -8850 -4000
Wire Wire Line
	-8850 -4000 -8900 -4000
Connection ~ -8850 -4650
Wire Wire Line
	-8950 -4450 -8750 -4450
Wire Wire Line
	-8750 -4450 -8750 -3850
Wire Wire Line
	-8750 -3850 -8900 -3850
Wire Wire Line
	-8050 -3850 -8100 -3850
Wire Wire Line
	-8050 -4000 -8400 -4000
Wire Wire Line
	-8400 -4000 -8400 -4550
Connection ~ -8400 -4550
Wire Wire Line
	-7100 -4650 -7100 -4000
Wire Wire Line
	-7100 -4000 -7150 -4000
Wire Wire Line
	-7200 -4450 -7000 -4450
Wire Wire Line
	-7000 -4450 -7000 -3850
Wire Wire Line
	-7000 -3850 -7150 -3850
Wire Wire Line
	-8300 -6550 -8300 -6100
Wire Wire Line
	-8300 -6100 -8250 -6100
Wire Wire Line
	-10050 -6550 -10050 -6100
Wire Wire Line
	-10050 -6100 -10000 -6100
Wire Wire Line
	-6550 -6500 -6550 -6100
Wire Wire Line
	-6550 -6100 -6500 -6100
Wire Wire Line
	-4800 -6500 -4800 -6100
Wire Wire Line
	-4800 -6100 -4750 -6100
Wire Wire Line
	-8250 -4350 -8300 -4350
Wire Wire Line
	-8300 -4350 -8300 -4800
Wire Wire Line
	-10050 -4750 -10050 -4350
Wire Wire Line
	-10050 -4350 -10000 -4350
Wire Wire Line
	-2900 -6500 -2900 -6100
Wire Wire Line
	-2900 -6100 -2850 -6100
Wire Wire Line
	-8250 -6000 -8250 -5950
Wire Wire Line
	-8250 -5950 -8000 -5950
Wire Wire Line
	-8000 -5950 -8000 -5850
Wire Wire Line
	-8000 -5850 -8050 -5850
Wire Wire Line
	-6300 -5850 -6250 -5850
Wire Wire Line
	-6250 -5850 -6250 -5950
Wire Wire Line
	-6250 -5950 -6500 -5950
Wire Wire Line
	-6500 -5950 -6500 -6000
Wire Wire Line
	-4750 -6000 -4750 -5950
Wire Wire Line
	-4750 -5950 -4450 -5950
Wire Wire Line
	-4450 -5950 -4450 -5850
Wire Wire Line
	-4450 -5850 -4500 -5850
Wire Wire Line
	-8250 -4250 -8250 -4200
Wire Wire Line
	-8250 -4200 -8000 -4200
Wire Wire Line
	-8000 -4200 -8000 -4100
Wire Wire Line
	-8000 -4100 -8050 -4100
Wire Wire Line
	-10000 -4250 -10000 -4200
Wire Wire Line
	-10000 -4200 -9750 -4200
Wire Wire Line
	-9750 -4200 -9750 -4100
Wire Wire Line
	-9750 -4100 -9800 -4100
Wire Wire Line
	-2850 -6000 -2850 -5950
Wire Wire Line
	-2850 -5950 -2600 -5950
Wire Wire Line
	-2600 -5950 -2600 -5850
Wire Wire Line
	-2600 -5850 -2650 -5850
Wire Wire Line
	-10000 -6000 -10000 -5950
Wire Wire Line
	-10000 -5950 -9750 -5950
Wire Wire Line
	-9750 -5950 -9750 -5850
Wire Wire Line
	-9750 -5850 -9800 -5850
Connection ~ -7100 -4650
Wire Wire Line
	-6900 -4100 -6900 -4650
Wire Wire Line
	-9500 -1300 -9500 -1250
Wire Wire Line
	-9500 -950 -9500 -900
Wire Wire Line
	-9500 -600 -9500 -450
Wire Wire Line
	-9150 -1300 -9150 -1250
Wire Wire Line
	-9150 -950 -9150 -900
Wire Wire Line
	-9150 -600 -9150 -450
Wire Wire Line
	-8800 -1300 -8800 -1250
Wire Wire Line
	-8800 -950 -8800 -900
Wire Wire Line
	-8800 -600 -8800 -450
Wire Wire Line
	-8450 -1300 -8450 -1250
Wire Wire Line
	-8450 -950 -8450 -900
Wire Wire Line
	-8450 -600 -8450 -450
Wire Wire Line
	-8150 -1300 -8150 -1250
Wire Wire Line
	-8150 -950 -8150 -900
Wire Wire Line
	-8150 -600 -8150 -450
Wire Wire Line
	-7800 -1300 -7800 -1250
Wire Wire Line
	-7800 -950 -7800 -900
Wire Wire Line
	-7800 -600 -7800 -450
Wire Wire Line
	-7450 -1300 -7450 -1250
Wire Wire Line
	-7450 -950 -7450 -900
Wire Wire Line
	-7450 -600 -7450 -450
Wire Wire Line
	-7100 -1300 -7100 -1250
Wire Wire Line
	-7100 -950 -7100 -900
Wire Wire Line
	-7100 -600 -7100 -450
Wire Wire Line
	-5900 -150 -6050 -150
Wire Wire Line
	-5900 -250 -6050 -250
Wire Wire Line
	-6050 -350 -5900 -350
Wire Wire Line
	-5900 -450 -6050 -450
Wire Wire Line
	-6050 -550 -5900 -550
Wire Wire Line
	-6050 -650 -5900 -650
Wire Wire Line
	-6050 -750 -5900 -750
Wire Wire Line
	-6050 -850 -5900 -850
Wire Wire Line
	-5900 -950 -6050 -950
Wire Wire Line
	-5900 -1050 -6050 -1050
Wire Wire Line
	-6750 -1400 -6750 -150
Wire Wire Line
	-6750 -950 -6550 -950
Wire Wire Line
	-6750 -850 -6550 -850
Connection ~ -6750 -950
Wire Wire Line
	-6750 -750 -6550 -750
Connection ~ -6750 -850
Wire Wire Line
	-6750 -650 -6550 -650
Connection ~ -6750 -750
Wire Wire Line
	-6750 -550 -6550 -550
Connection ~ -6750 -650
Wire Wire Line
	-6750 -450 -6550 -450
Connection ~ -6750 -550
Wire Wire Line
	-6750 -350 -6550 -350
Connection ~ -6750 -450
Wire Wire Line
	-6750 -250 -6550 -250
Connection ~ -6750 -350
Wire Wire Line
	-6750 -150 -6550 -150
Connection ~ -6750 -250
Wire Wire Line
	-9800 -1300 -9800 -1250
Wire Wire Line
	-9800 -950 -9800 -900
Wire Wire Line
	-9800 -600 -9800 -450
Wire Wire Line
	-10100 -1300 -10100 -1250
Wire Wire Line
	-10100 -950 -10100 -900
Wire Wire Line
	-10100 -600 -10100 -450
Wire Wire Line
	-4900 -2050 -5000 -2050
Wire Wire Line
	-4900 -1650 -5000 -1650
Wire Wire Line
	-4900 -1450 -5000 -1450
Wire Wire Line
	-4900 -1250 -5000 -1250
Wire Wire Line
	-4900 -1050 -5000 -1050
Wire Wire Line
	-4900 -850 -5000 -850
Wire Wire Line
	-4900 -650 -5000 -650
Wire Wire Line
	-4900 -450 -5000 -450
Wire Wire Line
	-4900 -250 -5000 -250
Wire Wire Line
	-4900 -50  -5000 -50 
Wire Wire Line
	-5450 -2050 -5300 -2050
Wire Wire Line
	-5450 -50  -5300 -50 
Wire Wire Line
	-5450 -250 -5300 -250
Connection ~ -5450 -250
Wire Wire Line
	-5450 -450 -5300 -450
Connection ~ -5450 -450
Wire Wire Line
	-5450 -650 -5300 -650
Connection ~ -5450 -650
Wire Wire Line
	-5450 -850 -5300 -850
Connection ~ -5450 -850
Wire Wire Line
	-5450 -1050 -5300 -1050
Connection ~ -5450 -1050
Wire Wire Line
	-5450 -1250 -5300 -1250
Connection ~ -5450 -1250
Wire Wire Line
	-5450 -1450 -5300 -1450
Connection ~ -5450 -1450
Wire Wire Line
	-5450 -1650 -5300 -1650
Connection ~ -5450 -1650
Connection ~ -5450 -2050
Wire Wire Line
	-7000 -4550 -6600 -4550
Wire Wire Line
	-5550 -4650 -5450 -4650
Wire Wire Line
	-6400 -3850 -6450 -3850
Wire Wire Line
	-6400 -4000 -6750 -4000
Wire Wire Line
	-6750 -4000 -6750 -4550
Connection ~ -6750 -4550
Wire Wire Line
	-5450 -4650 -5450 -4000
Wire Wire Line
	-5450 -4000 -5500 -4000
Wire Wire Line
	-5550 -4450 -5350 -4450
Wire Wire Line
	-5350 -3850 -5500 -3850
Wire Wire Line
	-6600 -4350 -6650 -4350
Wire Wire Line
	-6650 -4350 -6650 -4800
Wire Wire Line
	-6600 -4250 -6600 -4200
Wire Wire Line
	-6600 -4200 -6350 -4200
Wire Wire Line
	-6350 -4200 -6350 -4100
Wire Wire Line
	-6350 -4100 -6400 -4100
Connection ~ -5450 -4650
Wire Wire Line
	-5250 -4100 -5250 -4650
Wire Wire Line
	-7000 -4650 -7000 -4550
Wire Wire Line
	-5450 -2600 -5450 -50 
Wire Wire Line
	-5450 -1850 -5300 -1850
Connection ~ -5450 -1850
Wire Wire Line
	-4900 -1850 -5000 -1850
Wire Wire Line
	-5450 -2300 -5300 -2300
Connection ~ -5450 -2300
Wire Wire Line
	-5000 -2300 -4900 -2300
Wire Wire Line
	-800 -5950 -900 -5950
Wire Wire Line
	-800 -5750 -900 -5750
Wire Wire Line
	-800 -5550 -900 -5550
Wire Wire Line
	-800 -5350 -900 -5350
Wire Wire Line
	-800 -5150 -900 -5150
Wire Wire Line
	-800 -4950 -900 -4950
Wire Wire Line
	-800 -4750 -900 -4750
Wire Wire Line
	-800 -4550 -900 -4550
Wire Wire Line
	-800 -4350 -900 -4350
Wire Wire Line
	-1350 -4350 -1200 -4350
Wire Wire Line
	-1350 -4550 -1200 -4550
Connection ~ -1350 -4550
Wire Wire Line
	-1350 -4750 -1200 -4750
Connection ~ -1350 -4750
Wire Wire Line
	-1350 -4950 -1200 -4950
Connection ~ -1350 -4950
Wire Wire Line
	-1350 -5150 -1200 -5150
Connection ~ -1350 -5150
Wire Wire Line
	-1350 -5350 -1200 -5350
Connection ~ -1350 -5350
Wire Wire Line
	-1350 -5550 -1200 -5550
Connection ~ -1350 -5550
Wire Wire Line
	-1350 -5750 -1200 -5750
Connection ~ -1350 -5750
Wire Wire Line
	-1350 -5950 -1200 -5950
Connection ~ -1350 -5950
Wire Wire Line
	-800 -6150 -900 -6150
Wire Wire Line
	-1350 -6150 -1200 -6150
Wire Wire Line
	-1350 -6900 -1350 -4350
Connection ~ -1350 -6150
Wire Wire Line
	-5350 -4450 -5350 -3850
Wire Wire Line
	-6550 -1250 -6750 -1250
Connection ~ -6750 -1250
Wire Wire Line
	-6550 -1150 -6750 -1150
Connection ~ -6750 -1150
Wire Wire Line
	-6550 -1050 -6750 -1050
Connection ~ -6750 -1050
Wire Wire Line
	-5900 -1250 -6050 -1250
Wire Wire Line
	-5900 -1150 -6050 -1150
Wire Wire Line
	-10400 -1300 -10400 -1250
Wire Wire Line
	-10400 -950 -10400 -900
Wire Wire Line
	-10400 -600 -10400 -450
Wire Wire Line
	-10700 -1300 -10700 -1250
Wire Wire Line
	-10700 -950 -10700 -900
Wire Wire Line
	-10700 -600 -10700 -450
Wire Wire Line
	-800 -6350 -900 -6350
Wire Wire Line
	-1200 -6350 -1350 -6350
Connection ~ -1350 -6350
Wire Wire Line
	-900 -6550 -800 -6550
Wire Wire Line
	-1200 -6550 -1350 -6550
Connection ~ -1350 -6550
Wire Wire Line
	-1350 -6900 -1300 -6900
Wire Wire Line
	-3800 -2850 -3800 -1450
Connection ~ -3800 -2600
Connection ~ -3800 -2300
Connection ~ -3800 -2000
Connection ~ -3800 -1750
Wire Wire Line
	-4100 -2850 -4100 -1450
Connection ~ -4100 -1750
Connection ~ -4100 -2000
Connection ~ -4100 -2300
Connection ~ -4100 -2600
Wire Wire Line
	-4100 -2600 -4250 -2600
Wire Wire Line
	-3650 -2600 -3800 -2600
Wire Wire Line
	-1650 -3300 -1350 -3300
Wire Wire Line
	-1350 -3350 -1350 -3250
Wire Wire Line
	-1350 -3350 -1100 -3350
Wire Wire Line
	-1350 -3250 -1100 -3250
Connection ~ -1350 -3300
Wire Wire Line
	-1650 -3100 -1650 -2900
Wire Wire Line
	-1650 -2900 -1350 -2900
Wire Wire Line
	-1350 -2950 -1350 -2850
Wire Wire Line
	-1350 -2950 -1100 -2950
Wire Wire Line
	-1350 -2850 -1100 -2850
Connection ~ -1350 -2900
Wire Wire Line
	-1350 -2550 -1100 -2550
Wire Wire Line
	-1350 -2550 -1350 -2450
Wire Wire Line
	-1350 -2450 -1100 -2450
Wire Wire Line
	-1500 -2500 -1350 -2500
Connection ~ -1350 -2500
Wire Wire Line
	-2900 -3250 -2900 -3000
Wire Wire Line
	-2900 -3000 -2700 -3000
Wire Wire Line
	-3800 -2000 -3650 -2000
Wire Wire Line
	-3650 -2400 -3650 -1450
Wire Wire Line
	-3650 -2400 -3450 -2400
Wire Wire Line
	-3650 -1450 -3450 -1450
Connection ~ -3650 -2000
Wire Wire Line
	-3450 -1750 -3650 -1750
Connection ~ -3650 -1750
Wire Wire Line
	-3450 -2050 -3650 -2050
Connection ~ -3650 -2050
$Comp
L SPDTRelay RLY?
U 1 1 5DDC19CF
P -9200 -6200
F 0 "RLY?" H -8950 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -9200 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -9200 -6200 60  0001 C CNN
F 3 "" H -9200 -6200 60  0001 C CNN
	1    -9200 -6200
	1    0    0    -1  
$EndComp
Text GLabel -9750 -5600 0    60   Input ~ 0
RFGND
$Comp
L SPDTRelay RLY?
U 1 1 5DDC19D7
P -7450 -6200
F 0 "RLY?" H -7200 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -7450 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -7450 -6200 60  0001 C CNN
F 3 "" H -7450 -6200 60  0001 C CNN
	1    -7450 -6200
	1    0    0    -1  
$EndComp
Text GLabel -7850 -5600 0    60   Input ~ 0
RFGND
Text GLabel -10200 -6300 0    60   Input ~ 0
RFSIG
Text GLabel -8300 -5950 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC19E1
P -5700 -6200
F 0 "RLY?" H -5450 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -5700 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -5700 -6200 60  0001 C CNN
F 3 "" H -5700 -6200 60  0001 C CNN
	1    -5700 -6200
	1    0    0    -1  
$EndComp
Text GLabel -6100 -5600 0    60   Input ~ 0
RFGND
Text GLabel -6550 -5950 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC19EA
P -3950 -6200
F 0 "RLY?" H -3700 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -3950 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -3950 -6200 60  0001 C CNN
F 3 "" H -3950 -6200 60  0001 C CNN
	1    -3950 -6200
	1    0    0    -1  
$EndComp
Text GLabel -4350 -5600 0    60   Input ~ 0
RFGND
Text GLabel -4800 -5950 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC19F3
P -2050 -6200
F 0 "RLY?" H -1800 -6350 60  0000 C CNN
F 1 "SPDTRelay" H -2050 -5900 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -2050 -6200 60  0001 C CNN
F 3 "" H -2050 -6200 60  0001 C CNN
	1    -2050 -6200
	1    0    0    -1  
$EndComp
Text GLabel -2500 -5600 0    60   Input ~ 0
RFGND
$Comp
L SPDTRelay RLY?
U 1 1 5DDC19FB
P -9200 -4450
F 0 "RLY?" H -8950 -4600 60  0000 C CNN
F 1 "SPDTRelay" H -9200 -4150 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -9200 -4450 60  0001 C CNN
F 3 "" H -9200 -4450 60  0001 C CNN
	1    -9200 -4450
	1    0    0    -1  
$EndComp
Text GLabel -9600 -3850 0    60   Input ~ 0
RFGND
Text GLabel -10050 -4200 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC1A04
P -7450 -4450
F 0 "RLY?" H -7200 -4600 60  0000 C CNN
F 1 "SPDTRelay" H -7450 -4150 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -7450 -4450 60  0001 C CNN
F 3 "" H -7450 -4450 60  0001 C CNN
	1    -7450 -4450
	1    0    0    -1  
$EndComp
Text GLabel -7850 -3850 0    60   Input ~ 0
RFGND
Text GLabel -8300 -4200 3    60   Input ~ 0
RFSIG
Text GLabel -2950 -5950 3    60   Input ~ 0
RFSIG
Text GLabel -9550 -5850 0    60   Input ~ 0
RLY1
Text GLabel -7800 -5850 0    60   Input ~ 0
RLY2
Text GLabel -6050 -5850 0    60   Input ~ 0
RLY3
Text GLabel -4250 -5850 0    60   Input ~ 0
RLY4
Text GLabel -7800 -4100 0    60   Input ~ 0
RLY7
Text GLabel -9550 -4100 0    60   Input ~ 0
RLY6
Text GLabel -2400 -5850 0    60   Input ~ 0
RLY5
$Comp
L C C?
U 1 1 5DDC1A15
P -4900 -50
F 0 "C?" H -4875 50  50  0000 L CNN
F 1 "10 nF" H -4875 -150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -200 50  0001 C CNN
F 3 "" H -4900 -50 50  0001 C CNN
	1    -4900 -50 
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A1C
P -2650 -6500
F 0 "#PWR?" H -2650 -6650 50  0001 C CNN
F 1 "+5V" H -2650 -6360 50  0000 C CNN
F 2 "" H -2650 -6500 50  0001 C CNN
F 3 "" H -2650 -6500 50  0001 C CNN
	1    -2650 -6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A22
P -9800 -4750
F 0 "#PWR?" H -9800 -4900 50  0001 C CNN
F 1 "+5V" H -9800 -4610 50  0000 C CNN
F 2 "" H -9800 -4750 50  0001 C CNN
F 3 "" H -9800 -4750 50  0001 C CNN
	1    -9800 -4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A28
P -8050 -4800
F 0 "#PWR?" H -8050 -4950 50  0001 C CNN
F 1 "+5V" H -8050 -4660 50  0000 C CNN
F 2 "" H -8050 -4800 50  0001 C CNN
F 3 "" H -8050 -4800 50  0001 C CNN
	1    -8050 -4800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A2E
P -4550 -6500
F 0 "#PWR?" H -4550 -6650 50  0001 C CNN
F 1 "+5V" H -4550 -6360 50  0000 C CNN
F 2 "" H -4550 -6500 50  0001 C CNN
F 3 "" H -4550 -6500 50  0001 C CNN
	1    -4550 -6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A34
P -6300 -6500
F 0 "#PWR?" H -6300 -6650 50  0001 C CNN
F 1 "+5V" H -6300 -6360 50  0000 C CNN
F 2 "" H -6300 -6500 50  0001 C CNN
F 3 "" H -6300 -6500 50  0001 C CNN
	1    -6300 -6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A3A
P -8050 -6550
F 0 "#PWR?" H -8050 -6700 50  0001 C CNN
F 1 "+5V" H -8050 -6410 50  0000 C CNN
F 2 "" H -8050 -6550 50  0001 C CNN
F 3 "" H -8050 -6550 50  0001 C CNN
	1    -8050 -6550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A40
P -9800 -6550
F 0 "#PWR?" H -9800 -6700 50  0001 C CNN
F 1 "+5V" H -9800 -6410 50  0000 C CNN
F 2 "" H -9800 -6550 50  0001 C CNN
F 3 "" H -9800 -6550 50  0001 C CNN
	1    -9800 -6550
	1    0    0    -1  
$EndComp
Text GLabel -6650 -4100 3    60   Input ~ 0
RFSIG
$Comp
L Conn_01x01 J?
U 1 1 5DDC1A47
P -3000 -1450
F 0 "J?" H -3000 -1350 50  0000 C CNN
F 1 "Conn_01x01" H -3000 -1550 50  0000 C CNN
F 2 "Connectors:1pin" H -3000 -1450 50  0001 C CNN
F 3 "" H -3000 -1450 50  0001 C CNN
	1    -3000 -1450
	1    0    0    -1  
$EndComp
Text Notes -3700 -1000 0    60   ~ 0
QRO Match Board by Daniel Marks KW4TI
Text Notes -3850 -800 0    60   ~ 0
November 23, 2019
$Comp
L R R?
U 1 1 5DDC1A50
P -9850 -750
F 0 "R?" V -9770 -750 50  0000 C CNN
F 1 "1k" V -9850 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9920 -750 50  0001 C CNN
F 3 "" H -9850 -750 50  0001 C CNN
	1    -9850 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1A57
P -9250 -1100
F 0 "D?" H -9250 -1000 50  0000 C CNN
F 1 "LED" H -9250 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9250 -1100 50  0001 C CNN
F 3 "" H -9250 -1100 50  0001 C CNN
	1    -9250 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A5E
P -9250 -1300
F 0 "#PWR?" H -9250 -1450 50  0001 C CNN
F 1 "+5V" H -9250 -1160 50  0000 C CNN
F 2 "" H -9250 -1300 50  0001 C CNN
F 3 "" H -9250 -1300 50  0001 C CNN
	1    -9250 -1300
	1    0    0    -1  
$EndComp
Text GLabel -9250 -450 3    60   Input ~ 0
RLY8
$Comp
L R R?
U 1 1 5DDC1A65
P -9550 -750
F 0 "R?" V -9470 -750 50  0000 C CNN
F 1 "1k" V -9550 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9620 -750 50  0001 C CNN
F 3 "" H -9550 -750 50  0001 C CNN
	1    -9550 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1A6C
P -8900 -1100
F 0 "D?" H -8900 -1000 50  0000 C CNN
F 1 "LED" H -8900 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8900 -1100 50  0001 C CNN
F 3 "" H -8900 -1100 50  0001 C CNN
	1    -8900 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A73
P -8900 -1300
F 0 "#PWR?" H -8900 -1450 50  0001 C CNN
F 1 "+5V" H -8900 -1160 50  0000 C CNN
F 2 "" H -8900 -1300 50  0001 C CNN
F 3 "" H -8900 -1300 50  0001 C CNN
	1    -8900 -1300
	1    0    0    -1  
$EndComp
Text GLabel -8900 -450 3    60   Input ~ 0
RLY7
$Comp
L R R?
U 1 1 5DDC1A7A
P -9250 -750
F 0 "R?" V -9170 -750 50  0000 C CNN
F 1 "1k" V -9250 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9320 -750 50  0001 C CNN
F 3 "" H -9250 -750 50  0001 C CNN
	1    -9250 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1A81
P -8550 -1100
F 0 "D?" H -8550 -1000 50  0000 C CNN
F 1 "LED" H -8550 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8550 -1100 50  0001 C CNN
F 3 "" H -8550 -1100 50  0001 C CNN
	1    -8550 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A88
P -8550 -1300
F 0 "#PWR?" H -8550 -1450 50  0001 C CNN
F 1 "+5V" H -8550 -1160 50  0000 C CNN
F 2 "" H -8550 -1300 50  0001 C CNN
F 3 "" H -8550 -1300 50  0001 C CNN
	1    -8550 -1300
	1    0    0    -1  
$EndComp
Text GLabel -8550 -450 3    60   Input ~ 0
RLY6
$Comp
L R R?
U 1 1 5DDC1A8F
P -8900 -750
F 0 "R?" V -8820 -750 50  0000 C CNN
F 1 "1k" V -8900 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8970 -750 50  0001 C CNN
F 3 "" H -8900 -750 50  0001 C CNN
	1    -8900 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1A96
P -8200 -1100
F 0 "D?" H -8200 -1000 50  0000 C CNN
F 1 "LED" H -8200 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8200 -1100 50  0001 C CNN
F 3 "" H -8200 -1100 50  0001 C CNN
	1    -8200 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1A9D
P -8200 -1300
F 0 "#PWR?" H -8200 -1450 50  0001 C CNN
F 1 "+5V" H -8200 -1160 50  0000 C CNN
F 2 "" H -8200 -1300 50  0001 C CNN
F 3 "" H -8200 -1300 50  0001 C CNN
	1    -8200 -1300
	1    0    0    -1  
$EndComp
Text GLabel -8200 -450 3    60   Input ~ 0
RLY5
$Comp
L R R?
U 1 1 5DDC1AA4
P -8550 -750
F 0 "R?" V -8470 -750 50  0000 C CNN
F 1 "1k" V -8550 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8620 -750 50  0001 C CNN
F 3 "" H -8550 -750 50  0001 C CNN
	1    -8550 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1AAB
P -7900 -1100
F 0 "D?" H -7900 -1000 50  0000 C CNN
F 1 "LED" H -7900 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -7900 -1100 50  0001 C CNN
F 3 "" H -7900 -1100 50  0001 C CNN
	1    -7900 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1AB2
P -7900 -1300
F 0 "#PWR?" H -7900 -1450 50  0001 C CNN
F 1 "+5V" H -7900 -1160 50  0000 C CNN
F 2 "" H -7900 -1300 50  0001 C CNN
F 3 "" H -7900 -1300 50  0001 C CNN
	1    -7900 -1300
	1    0    0    -1  
$EndComp
Text GLabel -7900 -450 3    60   Input ~ 0
RLY4
$Comp
L R R?
U 1 1 5DDC1AB9
P -8200 -750
F 0 "R?" V -8120 -750 50  0000 C CNN
F 1 "1k" V -8200 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8270 -750 50  0001 C CNN
F 3 "" H -8200 -750 50  0001 C CNN
	1    -8200 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1AC0
P -7550 -1100
F 0 "D?" H -7550 -1000 50  0000 C CNN
F 1 "LED" H -7550 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -7550 -1100 50  0001 C CNN
F 3 "" H -7550 -1100 50  0001 C CNN
	1    -7550 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1AC7
P -7550 -1300
F 0 "#PWR?" H -7550 -1450 50  0001 C CNN
F 1 "+5V" H -7550 -1160 50  0000 C CNN
F 2 "" H -7550 -1300 50  0001 C CNN
F 3 "" H -7550 -1300 50  0001 C CNN
	1    -7550 -1300
	1    0    0    -1  
$EndComp
Text GLabel -7550 -450 3    60   Input ~ 0
RLY3
$Comp
L R R?
U 1 1 5DDC1ACE
P -7900 -750
F 0 "R?" V -7820 -750 50  0000 C CNN
F 1 "1k" V -7900 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -7970 -750 50  0001 C CNN
F 3 "" H -7900 -750 50  0001 C CNN
	1    -7900 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1AD5
P -7200 -1100
F 0 "D?" H -7200 -1000 50  0000 C CNN
F 1 "LED" H -7200 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -7200 -1100 50  0001 C CNN
F 3 "" H -7200 -1100 50  0001 C CNN
	1    -7200 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1ADC
P -7200 -1300
F 0 "#PWR?" H -7200 -1450 50  0001 C CNN
F 1 "+5V" H -7200 -1160 50  0000 C CNN
F 2 "" H -7200 -1300 50  0001 C CNN
F 3 "" H -7200 -1300 50  0001 C CNN
	1    -7200 -1300
	1    0    0    -1  
$EndComp
Text GLabel -7200 -450 3    60   Input ~ 0
RLY2
$Comp
L R R?
U 1 1 5DDC1AE3
P -7550 -750
F 0 "R?" V -7470 -750 50  0000 C CNN
F 1 "1k" V -7550 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -7620 -750 50  0001 C CNN
F 3 "" H -7550 -750 50  0001 C CNN
	1    -7550 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1AEA
P -6850 -1100
F 0 "D?" H -6850 -1000 50  0000 C CNN
F 1 "LED" H -6850 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -6850 -1100 50  0001 C CNN
F 3 "" H -6850 -1100 50  0001 C CNN
	1    -6850 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1AF1
P -6850 -1300
F 0 "#PWR?" H -6850 -1450 50  0001 C CNN
F 1 "+5V" H -6850 -1160 50  0000 C CNN
F 2 "" H -6850 -1300 50  0001 C CNN
F 3 "" H -6850 -1300 50  0001 C CNN
	1    -6850 -1300
	1    0    0    -1  
$EndComp
Text GLabel -6850 -450 3    60   Input ~ 0
RLY1
Text GLabel -5650 -150 2    60   Input ~ 0
RLY1
Text GLabel -5650 -250 2    60   Input ~ 0
RLY2
Text GLabel -5650 -350 2    60   Input ~ 0
RLY3
Text GLabel -5650 -450 2    60   Input ~ 0
RLY4
Text GLabel -5650 -550 2    60   Input ~ 0
RLY5
Text GLabel -5650 -650 2    60   Input ~ 0
RLY6
Text GLabel -5650 -750 2    60   Input ~ 0
RLY7
Text GLabel -5650 -850 2    60   Input ~ 0
RLY8
Text GLabel -5650 -950 2    60   Input ~ 0
RLY9
Text GLabel -5650 -1050 2    60   Input ~ 0
RLY10
$Comp
L +5V #PWR?
U 1 1 5DDC1B02
P -6500 -1400
F 0 "#PWR?" H -6500 -1550 50  0001 C CNN
F 1 "+5V" H -6500 -1260 50  0000 C CNN
F 2 "" H -6500 -1400 50  0001 C CNN
F 3 "" H -6500 -1400 50  0001 C CNN
	1    -6500 -1400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5DDC1B08
P -7200 -750
F 0 "R?" V -7120 -750 50  0000 C CNN
F 1 "1k" V -7200 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -7270 -750 50  0001 C CNN
F 3 "" H -7200 -750 50  0001 C CNN
	1    -7200 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1B0F
P -9550 -1100
F 0 "D?" H -9550 -1000 50  0000 C CNN
F 1 "LED" H -9550 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9550 -1100 50  0001 C CNN
F 3 "" H -9550 -1100 50  0001 C CNN
	1    -9550 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1B16
P -9550 -1300
F 0 "#PWR?" H -9550 -1450 50  0001 C CNN
F 1 "+5V" H -9550 -1160 50  0000 C CNN
F 2 "" H -9550 -1300 50  0001 C CNN
F 3 "" H -9550 -1300 50  0001 C CNN
	1    -9550 -1300
	1    0    0    -1  
$EndComp
Text GLabel -9550 -450 3    60   Input ~ 0
RLY9
$Comp
L R R?
U 1 1 5DDC1B1D
P -6850 -750
F 0 "R?" V -6770 -750 50  0000 C CNN
F 1 "1k" V -6850 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -6920 -750 50  0001 C CNN
F 3 "" H -6850 -750 50  0001 C CNN
	1    -6850 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1B24
P -9850 -1100
F 0 "D?" H -9850 -1000 50  0000 C CNN
F 1 "LED" H -9850 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9850 -1100 50  0001 C CNN
F 3 "" H -9850 -1100 50  0001 C CNN
	1    -9850 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1B2B
P -9850 -1300
F 0 "#PWR?" H -9850 -1450 50  0001 C CNN
F 1 "+5V" H -9850 -1160 50  0000 C CNN
F 2 "" H -9850 -1300 50  0001 C CNN
F 3 "" H -9850 -1300 50  0001 C CNN
	1    -9850 -1300
	1    0    0    -1  
$EndComp
Text GLabel -9850 -450 3    60   Input ~ 0
RLY10
Text GLabel -4650 -2050 2    60   Input ~ 0
RLY10
Text GLabel -4650 -50  2    60   Input ~ 0
RLY1
$Comp
L C C?
U 1 1 5DDC1B34
P -4900 -250
F 0 "C?" H -4875 -150 50  0000 L CNN
F 1 "10 nF" H -4875 -350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -400 50  0001 C CNN
F 3 "" H -4900 -250 50  0001 C CNN
	1    -4900 -250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B3B
P -4900 -450
F 0 "C?" H -4875 -350 50  0000 L CNN
F 1 "10 nF" H -4875 -550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -600 50  0001 C CNN
F 3 "" H -4900 -450 50  0001 C CNN
	1    -4900 -450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B42
P -4900 -650
F 0 "C?" H -4875 -550 50  0000 L CNN
F 1 "10 nF" H -4875 -750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -800 50  0001 C CNN
F 3 "" H -4900 -650 50  0001 C CNN
	1    -4900 -650
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B49
P -4900 -850
F 0 "C?" H -4875 -750 50  0000 L CNN
F 1 "10 nF" H -4875 -950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -1000 50  0001 C CNN
F 3 "" H -4900 -850 50  0001 C CNN
	1    -4900 -850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B50
P -4900 -1050
F 0 "C?" H -4875 -950 50  0000 L CNN
F 1 "10 nF" H -4875 -1150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -1200 50  0001 C CNN
F 3 "" H -4900 -1050 50  0001 C CNN
	1    -4900 -1050
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B57
P -4900 -1250
F 0 "C?" H -4875 -1150 50  0000 L CNN
F 1 "10 nF" H -4875 -1350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -1400 50  0001 C CNN
F 3 "" H -4900 -1250 50  0001 C CNN
	1    -4900 -1250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B5E
P -4900 -1450
F 0 "C?" H -4875 -1350 50  0000 L CNN
F 1 "10 nF" H -4875 -1550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -1600 50  0001 C CNN
F 3 "" H -4900 -1450 50  0001 C CNN
	1    -4900 -1450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B65
P -4900 -1650
F 0 "C?" H -4875 -1550 50  0000 L CNN
F 1 "10 nF" H -4875 -1750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -1800 50  0001 C CNN
F 3 "" H -4900 -1650 50  0001 C CNN
	1    -4900 -1650
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1B6C
P -4900 -2050
F 0 "C?" H -4875 -1950 50  0000 L CNN
F 1 "10 nF" H -4875 -2150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -2200 50  0001 C CNN
F 3 "" H -4900 -2050 50  0001 C CNN
	1    -4900 -2050
	0    1    1    0   
$EndComp
Text GLabel -4650 -250 2    60   Input ~ 0
RLY2
Text GLabel -4650 -450 2    60   Input ~ 0
RLY3
Text GLabel -4650 -650 2    60   Input ~ 0
RLY4
Text GLabel -4650 -850 2    60   Input ~ 0
RLY5
Text GLabel -4650 -1050 2    60   Input ~ 0
RLY6
Text GLabel -4650 -1250 2    60   Input ~ 0
RLY7
Text GLabel -4650 -1450 2    60   Input ~ 0
RLY8
Text GLabel -4650 -1650 2    60   Input ~ 0
RLY9
$Comp
L +5V #PWR?
U 1 1 5DDC1B7B
P -5200 -2600
F 0 "#PWR?" H -5200 -2750 50  0001 C CNN
F 1 "+5V" H -5200 -2460 50  0000 C CNN
F 2 "" H -5200 -2600 50  0001 C CNN
F 3 "" H -5200 -2600 50  0001 C CNN
	1    -5200 -2600
	1    0    0    -1  
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC1B81
P -5800 -4450
F 0 "RLY?" H -5550 -4600 60  0000 C CNN
F 1 "SPDTRelay" H -5800 -4150 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -5800 -4450 60  0001 C CNN
F 3 "" H -5800 -4450 60  0001 C CNN
	1    -5800 -4450
	1    0    0    -1  
$EndComp
Text GLabel -6200 -3850 0    60   Input ~ 0
RFGND
Text GLabel -6150 -4100 0    60   Input ~ 0
RLY8
$Comp
L +5V #PWR?
U 1 1 5DDC1B8A
P -6400 -4800
F 0 "#PWR?" H -6400 -4950 50  0001 C CNN
F 1 "+5V" H -6400 -4660 50  0000 C CNN
F 2 "" H -6400 -4800 50  0001 C CNN
F 3 "" H -6400 -4800 50  0001 C CNN
	1    -6400 -4800
	1    0    0    -1  
$EndComp
Text GLabel -5000 -4100 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC1B91
P -8750 -2800
F 0 "RLY?" H -8500 -2950 60  0000 C CNN
F 1 "SPDTRelay" H -8750 -2500 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -8750 -2800 60  0001 C CNN
F 3 "" H -8750 -2800 60  0001 C CNN
	1    -8750 -2800
	1    0    0    -1  
$EndComp
Text GLabel -9500 -2600 0    60   Input ~ 0
RLY11
$Comp
L C C?
U 1 1 5DDC1B99
P -4900 -1850
F 0 "C?" H -4875 -1750 50  0000 L CNN
F 1 "10 nF" H -4875 -1950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -2000 50  0001 C CNN
F 3 "" H -4900 -1850 50  0001 C CNN
	1    -4900 -1850
	0    1    1    0   
$EndComp
Text GLabel -4650 -1850 2    60   Input ~ 0
RLY9
$Comp
L C C?
U 1 1 5DDC1BA1
P -4900 -2300
F 0 "C?" H -4875 -2200 50  0000 L CNN
F 1 "10 nF" H -4875 -2400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -2450 50  0001 C CNN
F 3 "" H -4900 -2300 50  0001 C CNN
	1    -4900 -2300
	0    1    1    0   
$EndComp
Text GLabel -4650 -2300 2    60   Input ~ 0
RLY11
$Comp
L C C?
U 1 1 5DDC1BA9
P -800 -4350
F 0 "C?" H -775 -4250 50  0000 L CNN
F 1 "10 nF" H -775 -4450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -4500 50  0001 C CNN
F 3 "" H -800 -4350 50  0001 C CNN
	1    -800 -4350
	0    1    1    0   
$EndComp
Text GLabel -550 -4350 2    60   Input ~ 0
RLY1
$Comp
L C C?
U 1 1 5DDC1BB1
P -800 -4550
F 0 "C?" H -775 -4450 50  0000 L CNN
F 1 "10 nF" H -775 -4650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -4700 50  0001 C CNN
F 3 "" H -800 -4550 50  0001 C CNN
	1    -800 -4550
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BB8
P -800 -4750
F 0 "C?" H -775 -4650 50  0000 L CNN
F 1 "10 nF" H -775 -4850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -4900 50  0001 C CNN
F 3 "" H -800 -4750 50  0001 C CNN
	1    -800 -4750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BBF
P -800 -4950
F 0 "C?" H -775 -4850 50  0000 L CNN
F 1 "10 nF" H -775 -5050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -5100 50  0001 C CNN
F 3 "" H -800 -4950 50  0001 C CNN
	1    -800 -4950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BC6
P -800 -5150
F 0 "C?" H -775 -5050 50  0000 L CNN
F 1 "10 nF" H -775 -5250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -5300 50  0001 C CNN
F 3 "" H -800 -5150 50  0001 C CNN
	1    -800 -5150
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BCD
P -800 -5350
F 0 "C?" H -775 -5250 50  0000 L CNN
F 1 "10 nF" H -775 -5450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -5500 50  0001 C CNN
F 3 "" H -800 -5350 50  0001 C CNN
	1    -800 -5350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BD4
P -800 -5550
F 0 "C?" H -775 -5450 50  0000 L CNN
F 1 "10 nF" H -775 -5650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -5700 50  0001 C CNN
F 3 "" H -800 -5550 50  0001 C CNN
	1    -800 -5550
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BDB
P -800 -5750
F 0 "C?" H -775 -5650 50  0000 L CNN
F 1 "10 nF" H -775 -5850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -5900 50  0001 C CNN
F 3 "" H -800 -5750 50  0001 C CNN
	1    -800 -5750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1BE2
P -800 -5950
F 0 "C?" H -775 -5850 50  0000 L CNN
F 1 "10 nF" H -775 -6050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -6100 50  0001 C CNN
F 3 "" H -800 -5950 50  0001 C CNN
	1    -800 -5950
	0    1    1    0   
$EndComp
Text GLabel -550 -4550 2    60   Input ~ 0
RLY2
Text GLabel -550 -4750 2    60   Input ~ 0
RLY3
Text GLabel -550 -4950 2    60   Input ~ 0
RLY4
Text GLabel -550 -5150 2    60   Input ~ 0
RLY5
Text GLabel -550 -5350 2    60   Input ~ 0
RLY6
Text GLabel -550 -5550 2    60   Input ~ 0
RLY7
Text GLabel -550 -5750 2    60   Input ~ 0
RLY8
Text GLabel -550 -5950 2    60   Input ~ 0
RLY9
$Comp
L C C?
U 1 1 5DDC1BF1
P -800 -6150
F 0 "C?" H -775 -6050 50  0000 L CNN
F 1 "10 nF" H -775 -6250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -6300 50  0001 C CNN
F 3 "" H -800 -6150 50  0001 C CNN
	1    -800 -6150
	0    1    1    0   
$EndComp
Text GLabel -550 -6150 2    60   Input ~ 0
RLY10
$Comp
L Conn_01x01 J?
U 1 1 5DDC1BF9
P -3000 -2050
F 0 "J?" H -3000 -1950 50  0000 C CNN
F 1 "Conn_01x01" H -3000 -2150 50  0000 C CNN
F 2 "Connectors:1pin" H -3000 -2050 50  0001 C CNN
F 3 "" H -3000 -2050 50  0001 C CNN
	1    -3000 -2050
	1    0    0    -1  
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC1C00
P -1900 -3100
F 0 "RLY?" H -1650 -3250 60  0000 C CNN
F 1 "SPDTRelay" H -1900 -2800 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -1900 -3100 60  0001 C CNN
F 3 "" H -1900 -3100 60  0001 C CNN
	1    -1900 -3100
	1    0    0    -1  
$EndComp
Text GLabel -4650 -2550 2    60   Input ~ 0
RLY12
$Comp
L C C?
U 1 1 5DDC1C08
P -4900 -2550
F 0 "C?" H -4875 -2450 50  0000 L CNN
F 1 "10 nF" H -4875 -2650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4862 -2700 50  0001 C CNN
F 3 "" H -4900 -2550 50  0001 C CNN
	1    -4900 -2550
	0    1    1    0   
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC1C0F
P -3850 -4550
F 0 "RLY?" H -3600 -4700 60  0000 C CNN
F 1 "SPDTRelay" H -3850 -4250 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -3850 -4550 60  0001 C CNN
F 3 "" H -3850 -4550 60  0001 C CNN
	1    -3850 -4550
	1    0    0    -1  
$EndComp
Text GLabel -4250 -3950 0    60   Input ~ 0
RFGND
Text GLabel -4200 -4200 0    60   Input ~ 0
RLY9
$Comp
L +5V #PWR?
U 1 1 5DDC1C18
P -4450 -4900
F 0 "#PWR?" H -4450 -5050 50  0001 C CNN
F 1 "+5V" H -4450 -4760 50  0000 C CNN
F 2 "" H -4450 -4900 50  0001 C CNN
F 3 "" H -4450 -4900 50  0001 C CNN
	1    -4450 -4900
	1    0    0    -1  
$EndComp
Text GLabel -3050 -4200 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC1C1F
P -2200 -4550
F 0 "RLY?" H -1950 -4700 60  0000 C CNN
F 1 "SPDTRelay" H -2200 -4250 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -2200 -4550 60  0001 C CNN
F 3 "" H -2200 -4550 60  0001 C CNN
	1    -2200 -4550
	1    0    0    -1  
$EndComp
Text GLabel -2600 -3950 0    60   Input ~ 0
RFGND
Text GLabel -2550 -4200 0    60   Input ~ 0
RLY10
$Comp
L +5V #PWR?
U 1 1 5DDC1C28
P -2800 -4900
F 0 "#PWR?" H -2800 -5050 50  0001 C CNN
F 1 "+5V" H -2800 -4760 50  0000 C CNN
F 2 "" H -2800 -4900 50  0001 C CNN
F 3 "" H -2800 -4900 50  0001 C CNN
	1    -2800 -4900
	1    0    0    -1  
$EndComp
Text GLabel -1400 -4200 3    60   Input ~ 0
RFSIG
$Comp
L +5V #PWR?
U 1 1 5DDC1C2F
P -9500 -3150
F 0 "#PWR?" H -9500 -3300 50  0001 C CNN
F 1 "+5V" H -9500 -3010 50  0000 C CNN
F 2 "" H -9500 -3150 50  0001 C CNN
F 3 "" H -9500 -3150 50  0001 C CNN
	1    -9500 -3150
	1    0    0    -1  
$EndComp
Text GLabel -10550 -3150 3    60   Input ~ 0
RFSIG
$Comp
L Conn_01x02 J?
U 1 1 5DDC1C36
P -10250 -2600
F 0 "J?" H -10250 -2500 50  0000 C CNN
F 1 "Conn_01x02" H -10250 -2800 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -10250 -2600 50  0001 C CNN
F 3 "" H -10250 -2600 50  0001 C CNN
	1    -10250 -2600
	1    0    0    -1  
$EndComp
Text GLabel -10550 -2300 3    60   Input ~ 0
RFGND
$Comp
L Conn_01x02 J?
U 1 1 5DDC1C3E
P -10150 -3400
F 0 "J?" H -10150 -3300 50  0000 C CNN
F 1 "Conn_01x02" H -10150 -3600 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -10150 -3400 50  0001 C CNN
F 3 "" H -10150 -3400 50  0001 C CNN
	1    -10150 -3400
	1    0    0    -1  
$EndComp
Text GLabel -9650 -2900 0    60   Input ~ 0
RFSIG
Text GLabel -2650 -2900 0    60   Input ~ 0
RLY12
$Comp
L Conn_02x12_Odd_Even J?
U 1 1 5DDC1C47
P -6100 -650
F 0 "J?" H -6050 -50 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H -6050 -1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x12_Pitch2.54mm" H -6100 -650 50  0001 C CNN
F 3 "" H -6100 -650 50  0001 C CNN
	1    -6100 -650
	1    0    0    1   
$EndComp
Text GLabel -5650 -1150 2    60   Input ~ 0
RLY11
Text GLabel -5650 -1250 2    60   Input ~ 0
RLY12
$Comp
L R R?
U 1 1 5DDC1C50
P -10450 -750
F 0 "R?" V -10370 -750 50  0000 C CNN
F 1 "1k" V -10450 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10520 -750 50  0001 C CNN
F 3 "" H -10450 -750 50  0001 C CNN
	1    -10450 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1C57
P -10150 -1100
F 0 "D?" H -10150 -1000 50  0000 C CNN
F 1 "LED" H -10150 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10150 -1100 50  0001 C CNN
F 3 "" H -10150 -1100 50  0001 C CNN
	1    -10150 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1C5E
P -10150 -1300
F 0 "#PWR?" H -10150 -1450 50  0001 C CNN
F 1 "+5V" H -10150 -1160 50  0000 C CNN
F 2 "" H -10150 -1300 50  0001 C CNN
F 3 "" H -10150 -1300 50  0001 C CNN
	1    -10150 -1300
	1    0    0    -1  
$EndComp
Text GLabel -10150 -450 3    60   Input ~ 0
RLY11
$Comp
L R R?
U 1 1 5DDC1C65
P -10150 -750
F 0 "R?" V -10070 -750 50  0000 C CNN
F 1 "1k" V -10150 -750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10220 -750 50  0001 C CNN
F 3 "" H -10150 -750 50  0001 C CNN
	1    -10150 -750
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC1C6C
P -10450 -1100
F 0 "D?" H -10450 -1000 50  0000 C CNN
F 1 "LED" H -10450 -1200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10450 -1100 50  0001 C CNN
F 3 "" H -10450 -1100 50  0001 C CNN
	1    -10450 -1100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1C73
P -10450 -1300
F 0 "#PWR?" H -10450 -1450 50  0001 C CNN
F 1 "+5V" H -10450 -1160 50  0000 C CNN
F 2 "" H -10450 -1300 50  0001 C CNN
F 3 "" H -10450 -1300 50  0001 C CNN
	1    -10450 -1300
	1    0    0    -1  
$EndComp
Text GLabel -10450 -450 3    60   Input ~ 0
RLY12
Text GLabel -550 -6350 2    60   Input ~ 0
RLY11
Text GLabel -550 -6550 2    60   Input ~ 0
RLY12
$Comp
L C C?
U 1 1 5DDC1C7C
P -800 -6350
F 0 "C?" H -775 -6250 50  0000 L CNN
F 1 "10 nF" H -775 -6450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -6500 50  0001 C CNN
F 3 "" H -800 -6350 50  0001 C CNN
	1    -800 -6350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1C83
P -800 -6550
F 0 "C?" H -775 -6450 50  0000 L CNN
F 1 "10 nF" H -775 -6650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -762 -6700 50  0001 C CNN
F 3 "" H -800 -6550 50  0001 C CNN
	1    -800 -6550
	0    1    1    0   
$EndComp
Text GLabel -1050 -6900 2    60   Input ~ 0
RFGND
$Comp
L +5V #PWR?
U 1 1 5DDC1C8B
P -650 -3750
F 0 "#PWR?" H -650 -3900 50  0001 C CNN
F 1 "+5V" H -650 -3610 50  0000 C CNN
F 2 "" H -650 -3750 50  0001 C CNN
F 3 "" H -650 -3750 50  0001 C CNN
	1    -650 -3750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5DDC1C91
P -3700 -2300
F 0 "C?" H -3675 -2200 50  0000 L CNN
F 1 "10 nF" H -3675 -2400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -3662 -2450 50  0001 C CNN
F 3 "" H -3700 -2300 50  0001 C CNN
	1    -3700 -2300
	0    1    1    0   
$EndComp
Text GLabel -3400 -2600 2    60   Input ~ 0
RFGND
$Comp
L C C?
U 1 1 5DDC1C99
P -3700 -2600
F 0 "C?" H -3675 -2500 50  0000 L CNN
F 1 "10 nF" H -3675 -2700 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -3662 -2750 50  0001 C CNN
F 3 "" H -3700 -2600 50  0001 C CNN
	1    -3700 -2600
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1CA0
P -3700 -2850
F 0 "C?" H -3675 -2750 50  0000 L CNN
F 1 "10 nF" H -3675 -2950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -3662 -3000 50  0001 C CNN
F 3 "" H -3700 -2850 50  0001 C CNN
	1    -3700 -2850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC1CA7
P -4000 -2600
F 0 "#PWR?" H -4000 -2750 50  0001 C CNN
F 1 "+5V" H -4000 -2460 50  0000 C CNN
F 2 "" H -4000 -2600 50  0001 C CNN
F 3 "" H -4000 -2600 50  0001 C CNN
	1    -4000 -2600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC1CAD
P -650 -3350
F 0 "J?" H -650 -3250 50  0000 C CNN
F 1 "Conn_01x02" H -650 -3550 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -650 -3350 50  0001 C CNN
F 3 "" H -650 -3350 50  0001 C CNN
	1    -650 -3350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC1CB4
P -650 -2950
F 0 "J?" H -650 -2850 50  0000 C CNN
F 1 "Conn_01x02" H -650 -3150 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -650 -2950 50  0001 C CNN
F 3 "" H -650 -2950 50  0001 C CNN
	1    -650 -2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC1CBB
P -650 -2550
F 0 "J?" H -650 -2450 50  0000 C CNN
F 1 "Conn_01x02" H -650 -2750 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -650 -2550 50  0001 C CNN
F 3 "" H -650 -2550 50  0001 C CNN
	1    -650 -2550
	1    0    0    -1  
$EndComp
Text GLabel -1250 -2500 0    60   Input ~ 0
RFGND
$Comp
L +5V #PWR?
U 1 1 5DDC1CC3
P -2650 -3250
F 0 "#PWR?" H -2650 -3400 50  0001 C CNN
F 1 "+5V" H -2650 -3110 50  0000 C CNN
F 2 "" H -2650 -3250 50  0001 C CNN
F 3 "" H -2650 -3250 50  0001 C CNN
	1    -2650 -3250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5DDC1CC9
P -3700 -1450
F 0 "C?" H -3675 -1350 50  0000 L CNN
F 1 "10 nF" H -3675 -1550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -3662 -1600 50  0001 C CNN
F 3 "" H -3700 -1450 50  0001 C CNN
	1    -3700 -1450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1CD0
P -3700 -1750
F 0 "C?" H -3675 -1650 50  0000 L CNN
F 1 "10 nF" H -3675 -1850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -3662 -1900 50  0001 C CNN
F 3 "" H -3700 -1750 50  0001 C CNN
	1    -3700 -1750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC1CD7
P -3700 -2000
F 0 "C?" H -3675 -1900 50  0000 L CNN
F 1 "10 nF" H -3675 -2100 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -3662 -2150 50  0001 C CNN
F 3 "" H -3700 -2000 50  0001 C CNN
	1    -3700 -2000
	0    1    1    0   
$EndComp
$Comp
L Conn_01x01 J?
U 1 1 5DDC1CDE
P -3000 -1750
F 0 "J?" H -3000 -1650 50  0000 C CNN
F 1 "Conn_01x01" H -3000 -1850 50  0000 C CNN
F 2 "Connectors:1pin" H -3000 -1750 50  0001 C CNN
F 3 "" H -3000 -1750 50  0001 C CNN
	1    -3000 -1750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J?
U 1 1 5DDC1CE5
P -3000 -2400
F 0 "J?" H -3000 -2300 50  0000 C CNN
F 1 "Conn_01x01" H -3000 -2500 50  0000 C CNN
F 2 "Connectors:1pin" H -3000 -2400 50  0001 C CNN
F 3 "" H -3000 -2400 50  0001 C CNN
	1    -3000 -2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2450 -2900 -2650 -2900
Connection ~ -2500 -3500
Wire Wire Line
	-2500 -3200 -2500 -3500
Wire Wire Line
	-2450 -3200 -2500 -3200
Wire Wire Line
	-8100 -3500 -1200 -3500
Wire Wire Line
	-8100 -3000 -8100 -3500
Wire Wire Line
	-1300 -6400 -1300 -5200
Connection ~ -10550 -3300
Wire Wire Line
	-10350 -3300 -10550 -3300
Wire Wire Line
	-10550 -3400 -10350 -3400
Wire Wire Line
	-10550 -3400 -10550 -3150
Connection ~ -10550 -2500
Wire Wire Line
	-10450 -2500 -10550 -2500
Wire Wire Line
	-10550 -2600 -10450 -2600
Wire Wire Line
	-10550 -2600 -10550 -2300
Wire Wire Line
	-1200 -4750 -1500 -4750
Wire Wire Line
	-1200 -3500 -1200 -4750
Wire Wire Line
	-8250 -3000 -8100 -3000
Wire Wire Line
	-9300 -2900 -9650 -2900
Wire Wire Line
	-9500 -3150 -9500 -2700
Wire Wire Line
	-9300 -2600 -9500 -2600
Wire Wire Line
	-9500 -2700 -9300 -2700
Wire Wire Line
	-5100 -4650 -4400 -4650
Wire Wire Line
	-3350 -4750 -3250 -4750
Wire Wire Line
	-4200 -3950 -4250 -3950
Wire Wire Line
	-4200 -4100 -4550 -4100
Wire Wire Line
	-4550 -4100 -4550 -4650
Connection ~ -4550 -4650
Wire Wire Line
	-3250 -4750 -3250 -4100
Wire Wire Line
	-3250 -4100 -3300 -4100
Wire Wire Line
	-3350 -4550 -3150 -4550
Wire Wire Line
	-3150 -4550 -3150 -3950
Wire Wire Line
	-3150 -3950 -3300 -3950
Wire Wire Line
	-4400 -4450 -4450 -4450
Wire Wire Line
	-4450 -4450 -4450 -4900
Wire Wire Line
	-4400 -4350 -4400 -4300
Wire Wire Line
	-4400 -4300 -4150 -4300
Wire Wire Line
	-4150 -4300 -4150 -4200
Wire Wire Line
	-4150 -4200 -4200 -4200
Connection ~ -3250 -4750
Wire Wire Line
	-3050 -4200 -3050 -4750
Wire Wire Line
	-3150 -4650 -2750 -4650
Wire Wire Line
	-1700 -4750 -1600 -4750
Wire Wire Line
	-2550 -3950 -2600 -3950
Wire Wire Line
	-2550 -4100 -2900 -4100
Wire Wire Line
	-2900 -4100 -2900 -4650
Connection ~ -2900 -4650
Wire Wire Line
	-1600 -4750 -1600 -4100
Wire Wire Line
	-1600 -4100 -1650 -4100
Wire Wire Line
	-1700 -4550 -1500 -4550
Wire Wire Line
	-1500 -3950 -1650 -3950
Wire Wire Line
	-2750 -4450 -2800 -4450
Wire Wire Line
	-2800 -4450 -2800 -4900
Wire Wire Line
	-2750 -4350 -2750 -4300
Wire Wire Line
	-2750 -4300 -2500 -4300
Wire Wire Line
	-2500 -4300 -2500 -4200
Wire Wire Line
	-2500 -4200 -2550 -4200
Connection ~ -1600 -4750
Wire Wire Line
	-1400 -4200 -1400 -4750
Wire Wire Line
	-3150 -4750 -3150 -4650
Wire Wire Line
	-1500 -4550 -1500 -3950
Wire Wire Line
	-10650 -4650 -10250 -4650
Wire Wire Line
	-1400 -6200 -1400 -5600
Connection ~ -3350 -6400
Connection ~ -5200 -2550
Wire Wire Line
	-5050 -2550 -5200 -2550
Wire Wire Line
	-4650 -2550 -4750 -2550
Wire Wire Line
	-10200 -6300 -9750 -6300
Wire Wire Line
	-8700 -6400 -8500 -6400
Wire Wire Line
	-8400 -6300 -8000 -6300
Wire Wire Line
	-8400 -6300 -8400 -6400
Wire Wire Line
	-8300 -5950 -8300 -6400
Wire Wire Line
	-6650 -6300 -6250 -6300
Wire Wire Line
	-6650 -6300 -6650 -6400
Wire Wire Line
	-6550 -5950 -6550 -6400
Wire Wire Line
	-6950 -6400 -6750 -6400
Wire Wire Line
	-4900 -6300 -4500 -6300
Wire Wire Line
	-4900 -6300 -4900 -6400
Wire Wire Line
	-4800 -5950 -4800 -6400
Wire Wire Line
	-5200 -6400 -5000 -6400
Wire Wire Line
	-3450 -6400 -3150 -6400
Wire Wire Line
	-3050 -6300 -2600 -6300
Wire Wire Line
	-1550 -6400 -1300 -6400
Wire Wire Line
	-10150 -4550 -9750 -4550
Wire Wire Line
	-10150 -4550 -10150 -4650
Wire Wire Line
	-10050 -4200 -10050 -4650
Wire Wire Line
	-8400 -4550 -8000 -4550
Wire Wire Line
	-8400 -4550 -8400 -4650
Wire Wire Line
	-8300 -4200 -8300 -4650
Wire Wire Line
	-8700 -4650 -8500 -4650
Wire Wire Line
	-6950 -4650 -6850 -4650
Wire Wire Line
	-3050 -6400 -3050 -6300
Wire Wire Line
	-2950 -5950 -2950 -6400
Wire Wire Line
	-10650 -5200 -10650 -4650
Wire Wire Line
	-1300 -5200 -10650 -5200
Wire Wire Line
	-9900 -6300 -9900 -5750
Wire Wire Line
	-9900 -5750 -9550 -5750
Connection ~ -9900 -6300
Wire Wire Line
	-7750 -5600 -7850 -5600
Wire Wire Line
	-6950 -6200 -6750 -6200
Wire Wire Line
	-6750 -6200 -6750 -5600
Wire Wire Line
	-6750 -5600 -6850 -5600
Wire Wire Line
	-6850 -6400 -6850 -5750
Connection ~ -6850 -6400
Wire Wire Line
	-8650 -5750 -8600 -5750
Wire Wire Line
	-8600 -5750 -8600 -6400
Connection ~ -8600 -6400
Wire Wire Line
	-8700 -6200 -8500 -6200
Wire Wire Line
	-8500 -6200 -8500 -5600
Wire Wire Line
	-8500 -5600 -8650 -5600
Wire Wire Line
	-8150 -6300 -8150 -5750
Wire Wire Line
	-8150 -5750 -7750 -5750
Connection ~ -8150 -6300
Wire Wire Line
	-6400 -6300 -6400 -5750
Wire Wire Line
	-6400 -5750 -6000 -5750
Connection ~ -6400 -6300
Wire Wire Line
	-6000 -5600 -6100 -5600
Wire Wire Line
	-5100 -6400 -5100 -5750
Connection ~ -5100 -6400
Wire Wire Line
	-5200 -6200 -5000 -6200
Wire Wire Line
	-5000 -6200 -5000 -5600
Wire Wire Line
	-5000 -5600 -5100 -5600
Wire Wire Line
	-4300 -5750 -4600 -5750
Wire Wire Line
	-4600 -5750 -4600 -6300
Connection ~ -4600 -6300
Wire Wire Line
	-4300 -5600 -4350 -5600
Wire Wire Line
	-3400 -5750 -3350 -5750
Wire Wire Line
	-3350 -5750 -3350 -6400
Wire Wire Line
	-3450 -6200 -3250 -6200
Wire Wire Line
	-3250 -6200 -3250 -5600
Wire Wire Line
	-3250 -5600 -3400 -5600
Wire Wire Line
	-2450 -5600 -2500 -5600
Wire Wire Line
	-9750 -5600 -9550 -5600
Wire Wire Line
	-2750 -6300 -2750 -5750
Wire Wire Line
	-2750 -5750 -2450 -5750
Connection ~ -2750 -6300
Wire Wire Line
	-1500 -6400 -1500 -5750
Wire Wire Line
	-1500 -5750 -1550 -5750
Connection ~ -1500 -6400
Wire Wire Line
	-1550 -6200 -1400 -6200
Wire Wire Line
	-1400 -5600 -1550 -5600
Wire Wire Line
	-9550 -3850 -9600 -3850
Wire Wire Line
	-9900 -4550 -9900 -4000
Wire Wire Line
	-9900 -4000 -9550 -4000
Connection ~ -9900 -4550
Wire Wire Line
	-8600 -4650 -8600 -4000
Wire Wire Line
	-8600 -4000 -8650 -4000
Connection ~ -8600 -4650
Wire Wire Line
	-8700 -4450 -8500 -4450
Wire Wire Line
	-8500 -4450 -8500 -3850
Wire Wire Line
	-8500 -3850 -8650 -3850
Wire Wire Line
	-7800 -3850 -7850 -3850
Wire Wire Line
	-7800 -4000 -8150 -4000
Wire Wire Line
	-8150 -4000 -8150 -4550
Connection ~ -8150 -4550
Wire Wire Line
	-6850 -4650 -6850 -4000
Wire Wire Line
	-6850 -4000 -6900 -4000
Wire Wire Line
	-6950 -4450 -6750 -4450
Wire Wire Line
	-6750 -4450 -6750 -3850
Wire Wire Line
	-6750 -3850 -6900 -3850
Wire Wire Line
	-8050 -6550 -8050 -6100
Wire Wire Line
	-8050 -6100 -8000 -6100
Wire Wire Line
	-9800 -6550 -9800 -6100
Wire Wire Line
	-9800 -6100 -9750 -6100
Wire Wire Line
	-6300 -6500 -6300 -6100
Wire Wire Line
	-6300 -6100 -6250 -6100
Wire Wire Line
	-4550 -6500 -4550 -6100
Wire Wire Line
	-4550 -6100 -4500 -6100
Wire Wire Line
	-8000 -4350 -8050 -4350
Wire Wire Line
	-8050 -4350 -8050 -4800
Wire Wire Line
	-9800 -4750 -9800 -4350
Wire Wire Line
	-9800 -4350 -9750 -4350
Wire Wire Line
	-2650 -6500 -2650 -6100
Wire Wire Line
	-2650 -6100 -2600 -6100
Wire Wire Line
	-8000 -6000 -8000 -5950
Wire Wire Line
	-8000 -5950 -7750 -5950
Wire Wire Line
	-7750 -5950 -7750 -5850
Wire Wire Line
	-7750 -5850 -7800 -5850
Wire Wire Line
	-6050 -5850 -6000 -5850
Wire Wire Line
	-6000 -5850 -6000 -5950
Wire Wire Line
	-6000 -5950 -6250 -5950
Wire Wire Line
	-6250 -5950 -6250 -6000
Wire Wire Line
	-4500 -6000 -4500 -5950
Wire Wire Line
	-4500 -5950 -4200 -5950
Wire Wire Line
	-4200 -5950 -4200 -5850
Wire Wire Line
	-4200 -5850 -4250 -5850
Wire Wire Line
	-8000 -4250 -8000 -4200
Wire Wire Line
	-8000 -4200 -7750 -4200
Wire Wire Line
	-7750 -4200 -7750 -4100
Wire Wire Line
	-7750 -4100 -7800 -4100
Wire Wire Line
	-9750 -4250 -9750 -4200
Wire Wire Line
	-9750 -4200 -9500 -4200
Wire Wire Line
	-9500 -4200 -9500 -4100
Wire Wire Line
	-9500 -4100 -9550 -4100
Wire Wire Line
	-2600 -6000 -2600 -5950
Wire Wire Line
	-2600 -5950 -2350 -5950
Wire Wire Line
	-2350 -5950 -2350 -5850
Wire Wire Line
	-2350 -5850 -2400 -5850
Wire Wire Line
	-9750 -6000 -9750 -5950
Wire Wire Line
	-9750 -5950 -9500 -5950
Wire Wire Line
	-9500 -5950 -9500 -5850
Wire Wire Line
	-9500 -5850 -9550 -5850
Connection ~ -6850 -4650
Wire Wire Line
	-6650 -4100 -6650 -4650
Wire Wire Line
	-9250 -1300 -9250 -1250
Wire Wire Line
	-9250 -950 -9250 -900
Wire Wire Line
	-9250 -600 -9250 -450
Wire Wire Line
	-8900 -1300 -8900 -1250
Wire Wire Line
	-8900 -950 -8900 -900
Wire Wire Line
	-8900 -600 -8900 -450
Wire Wire Line
	-8550 -1300 -8550 -1250
Wire Wire Line
	-8550 -950 -8550 -900
Wire Wire Line
	-8550 -600 -8550 -450
Wire Wire Line
	-8200 -1300 -8200 -1250
Wire Wire Line
	-8200 -950 -8200 -900
Wire Wire Line
	-8200 -600 -8200 -450
Wire Wire Line
	-7900 -1300 -7900 -1250
Wire Wire Line
	-7900 -950 -7900 -900
Wire Wire Line
	-7900 -600 -7900 -450
Wire Wire Line
	-7550 -1300 -7550 -1250
Wire Wire Line
	-7550 -950 -7550 -900
Wire Wire Line
	-7550 -600 -7550 -450
Wire Wire Line
	-7200 -1300 -7200 -1250
Wire Wire Line
	-7200 -950 -7200 -900
Wire Wire Line
	-7200 -600 -7200 -450
Wire Wire Line
	-6850 -1300 -6850 -1250
Wire Wire Line
	-6850 -950 -6850 -900
Wire Wire Line
	-6850 -600 -6850 -450
Wire Wire Line
	-5650 -150 -5800 -150
Wire Wire Line
	-5650 -250 -5800 -250
Wire Wire Line
	-5800 -350 -5650 -350
Wire Wire Line
	-5650 -450 -5800 -450
Wire Wire Line
	-5800 -550 -5650 -550
Wire Wire Line
	-5800 -650 -5650 -650
Wire Wire Line
	-5800 -750 -5650 -750
Wire Wire Line
	-5800 -850 -5650 -850
Wire Wire Line
	-5650 -950 -5800 -950
Wire Wire Line
	-5650 -1050 -5800 -1050
Wire Wire Line
	-6500 -1400 -6500 -150
Wire Wire Line
	-6500 -950 -6300 -950
Wire Wire Line
	-6500 -850 -6300 -850
Connection ~ -6500 -950
Wire Wire Line
	-6500 -750 -6300 -750
Connection ~ -6500 -850
Wire Wire Line
	-6500 -650 -6300 -650
Connection ~ -6500 -750
Wire Wire Line
	-6500 -550 -6300 -550
Connection ~ -6500 -650
Wire Wire Line
	-6500 -450 -6300 -450
Connection ~ -6500 -550
Wire Wire Line
	-6500 -350 -6300 -350
Connection ~ -6500 -450
Wire Wire Line
	-6500 -250 -6300 -250
Connection ~ -6500 -350
Wire Wire Line
	-6500 -150 -6300 -150
Connection ~ -6500 -250
Wire Wire Line
	-9550 -1300 -9550 -1250
Wire Wire Line
	-9550 -950 -9550 -900
Wire Wire Line
	-9550 -600 -9550 -450
Wire Wire Line
	-9850 -1300 -9850 -1250
Wire Wire Line
	-9850 -950 -9850 -900
Wire Wire Line
	-9850 -600 -9850 -450
Wire Wire Line
	-4650 -2050 -4750 -2050
Wire Wire Line
	-4650 -1650 -4750 -1650
Wire Wire Line
	-4650 -1450 -4750 -1450
Wire Wire Line
	-4650 -1250 -4750 -1250
Wire Wire Line
	-4650 -1050 -4750 -1050
Wire Wire Line
	-4650 -850 -4750 -850
Wire Wire Line
	-4650 -650 -4750 -650
Wire Wire Line
	-4650 -450 -4750 -450
Wire Wire Line
	-4650 -250 -4750 -250
Wire Wire Line
	-4650 -50  -4750 -50 
Wire Wire Line
	-5200 -2050 -5050 -2050
Wire Wire Line
	-5200 -50  -5050 -50 
Wire Wire Line
	-5200 -250 -5050 -250
Connection ~ -5200 -250
Wire Wire Line
	-5200 -450 -5050 -450
Connection ~ -5200 -450
Wire Wire Line
	-5200 -650 -5050 -650
Connection ~ -5200 -650
Wire Wire Line
	-5200 -850 -5050 -850
Connection ~ -5200 -850
Wire Wire Line
	-5200 -1050 -5050 -1050
Connection ~ -5200 -1050
Wire Wire Line
	-5200 -1250 -5050 -1250
Connection ~ -5200 -1250
Wire Wire Line
	-5200 -1450 -5050 -1450
Connection ~ -5200 -1450
Wire Wire Line
	-5200 -1650 -5050 -1650
Connection ~ -5200 -1650
Connection ~ -5200 -2050
Wire Wire Line
	-6750 -4550 -6350 -4550
Wire Wire Line
	-5300 -4650 -5200 -4650
Wire Wire Line
	-6150 -3850 -6200 -3850
Wire Wire Line
	-6150 -4000 -6500 -4000
Wire Wire Line
	-6500 -4000 -6500 -4550
Connection ~ -6500 -4550
Wire Wire Line
	-5200 -4650 -5200 -4000
Wire Wire Line
	-5200 -4000 -5250 -4000
Wire Wire Line
	-5300 -4450 -5100 -4450
Wire Wire Line
	-5100 -3850 -5250 -3850
Wire Wire Line
	-6350 -4350 -6400 -4350
Wire Wire Line
	-6400 -4350 -6400 -4800
Wire Wire Line
	-6350 -4250 -6350 -4200
Wire Wire Line
	-6350 -4200 -6100 -4200
Wire Wire Line
	-6100 -4200 -6100 -4100
Wire Wire Line
	-6100 -4100 -6150 -4100
Connection ~ -5200 -4650
Wire Wire Line
	-5000 -4100 -5000 -4650
Wire Wire Line
	-6750 -4650 -6750 -4550
Wire Wire Line
	-5200 -2600 -5200 -50 
Wire Wire Line
	-5200 -1850 -5050 -1850
Connection ~ -5200 -1850
Wire Wire Line
	-4650 -1850 -4750 -1850
Wire Wire Line
	-5200 -2300 -5050 -2300
Connection ~ -5200 -2300
Wire Wire Line
	-4750 -2300 -4650 -2300
Wire Wire Line
	-550 -5950 -650 -5950
Wire Wire Line
	-550 -5750 -650 -5750
Wire Wire Line
	-550 -5550 -650 -5550
Wire Wire Line
	-550 -5350 -650 -5350
Wire Wire Line
	-550 -5150 -650 -5150
Wire Wire Line
	-550 -4950 -650 -4950
Wire Wire Line
	-550 -4750 -650 -4750
Wire Wire Line
	-550 -4550 -650 -4550
Wire Wire Line
	-550 -4350 -650 -4350
Wire Wire Line
	-1100 -4350 -950 -4350
Wire Wire Line
	-1100 -4550 -950 -4550
Connection ~ -1100 -4550
Wire Wire Line
	-1100 -4750 -950 -4750
Connection ~ -1100 -4750
Wire Wire Line
	-1100 -4950 -950 -4950
Connection ~ -1100 -4950
Wire Wire Line
	-1100 -5150 -950 -5150
Connection ~ -1100 -5150
Wire Wire Line
	-1100 -5350 -950 -5350
Connection ~ -1100 -5350
Wire Wire Line
	-1100 -5550 -950 -5550
Connection ~ -1100 -5550
Wire Wire Line
	-1100 -5750 -950 -5750
Connection ~ -1100 -5750
Wire Wire Line
	-1100 -5950 -950 -5950
Connection ~ -1100 -5950
Wire Wire Line
	-550 -6150 -650 -6150
Wire Wire Line
	-1100 -6150 -950 -6150
Wire Wire Line
	-1100 -6900 -1100 -4350
Connection ~ -1100 -6150
Wire Wire Line
	-5100 -4450 -5100 -3850
Wire Wire Line
	-6300 -1250 -6500 -1250
Connection ~ -6500 -1250
Wire Wire Line
	-6300 -1150 -6500 -1150
Connection ~ -6500 -1150
Wire Wire Line
	-6300 -1050 -6500 -1050
Connection ~ -6500 -1050
Wire Wire Line
	-5650 -1250 -5800 -1250
Wire Wire Line
	-5650 -1150 -5800 -1150
Wire Wire Line
	-10150 -1300 -10150 -1250
Wire Wire Line
	-10150 -950 -10150 -900
Wire Wire Line
	-10150 -600 -10150 -450
Wire Wire Line
	-10450 -1300 -10450 -1250
Wire Wire Line
	-10450 -950 -10450 -900
Wire Wire Line
	-10450 -600 -10450 -450
Wire Wire Line
	-550 -6350 -650 -6350
Wire Wire Line
	-950 -6350 -1100 -6350
Connection ~ -1100 -6350
Wire Wire Line
	-650 -6550 -550 -6550
Wire Wire Line
	-950 -6550 -1100 -6550
Connection ~ -1100 -6550
Wire Wire Line
	-1100 -6900 -1050 -6900
Wire Wire Line
	-3550 -2850 -3550 -1450
Connection ~ -3550 -2600
Connection ~ -3550 -2300
Connection ~ -3550 -2000
Connection ~ -3550 -1750
Wire Wire Line
	-3850 -2850 -3850 -1450
Connection ~ -3850 -1750
Connection ~ -3850 -2000
Connection ~ -3850 -2300
Connection ~ -3850 -2600
Wire Wire Line
	-3850 -2600 -4000 -2600
Wire Wire Line
	-3400 -2600 -3550 -2600
Wire Wire Line
	-1400 -3300 -1100 -3300
Wire Wire Line
	-1100 -3350 -1100 -3250
Wire Wire Line
	-1100 -3350 -850 -3350
Wire Wire Line
	-1100 -3250 -850 -3250
Connection ~ -1100 -3300
Wire Wire Line
	-1400 -3100 -1400 -2900
Wire Wire Line
	-1400 -2900 -1100 -2900
Wire Wire Line
	-1100 -2950 -1100 -2850
Wire Wire Line
	-1100 -2950 -850 -2950
Wire Wire Line
	-1100 -2850 -850 -2850
Connection ~ -1100 -2900
Wire Wire Line
	-1100 -2550 -850 -2550
Wire Wire Line
	-1100 -2550 -1100 -2450
Wire Wire Line
	-1100 -2450 -850 -2450
Wire Wire Line
	-1250 -2500 -1100 -2500
Connection ~ -1100 -2500
Wire Wire Line
	-2650 -3250 -2650 -3000
Wire Wire Line
	-2650 -3000 -2450 -3000
Wire Wire Line
	-3550 -2000 -3400 -2000
Wire Wire Line
	-3400 -2400 -3400 -1450
Wire Wire Line
	-3400 -2400 -3200 -2400
Wire Wire Line
	-3400 -1450 -3200 -1450
Connection ~ -3400 -2000
Wire Wire Line
	-3200 -1750 -3400 -1750
Connection ~ -3400 -1750
Wire Wire Line
	-3200 -2050 -3400 -2050
Connection ~ -3400 -2050
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3B90
P -10500 -7700
F 0 "RLY?" H -10250 -7850 60  0000 C CNN
F 1 "SPDTRelay" H -10500 -7400 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -10500 -7700 60  0001 C CNN
F 3 "" H -10500 -7700 60  0001 C CNN
	1    -10500 -7700
	1    0    0    -1  
$EndComp
Text GLabel -11050 -7100 0    60   Input ~ 0
RFGND
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3B98
P -8750 -7700
F 0 "RLY?" H -8500 -7850 60  0000 C CNN
F 1 "SPDTRelay" H -8750 -7400 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -8750 -7700 60  0001 C CNN
F 3 "" H -8750 -7700 60  0001 C CNN
	1    -8750 -7700
	1    0    0    -1  
$EndComp
Text GLabel -9150 -7100 0    60   Input ~ 0
RFGND
Text GLabel -11500 -7800 0    60   Input ~ 0
RFSIG
Text GLabel -9600 -7450 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3BA2
P -7000 -7700
F 0 "RLY?" H -6750 -7850 60  0000 C CNN
F 1 "SPDTRelay" H -7000 -7400 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -7000 -7700 60  0001 C CNN
F 3 "" H -7000 -7700 60  0001 C CNN
	1    -7000 -7700
	1    0    0    -1  
$EndComp
Text GLabel -7400 -7100 0    60   Input ~ 0
RFGND
Text GLabel -7850 -7450 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3BAB
P -5250 -7700
F 0 "RLY?" H -5000 -7850 60  0000 C CNN
F 1 "SPDTRelay" H -5250 -7400 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -5250 -7700 60  0001 C CNN
F 3 "" H -5250 -7700 60  0001 C CNN
	1    -5250 -7700
	1    0    0    -1  
$EndComp
Text GLabel -5650 -7100 0    60   Input ~ 0
RFGND
Text GLabel -6100 -7450 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3BB4
P -3350 -7700
F 0 "RLY?" H -3100 -7850 60  0000 C CNN
F 1 "SPDTRelay" H -3350 -7400 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -3350 -7700 60  0001 C CNN
F 3 "" H -3350 -7700 60  0001 C CNN
	1    -3350 -7700
	1    0    0    -1  
$EndComp
Text GLabel -3800 -7100 0    60   Input ~ 0
RFGND
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3BBC
P -10500 -5950
F 0 "RLY?" H -10250 -6100 60  0000 C CNN
F 1 "SPDTRelay" H -10500 -5650 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -10500 -5950 60  0001 C CNN
F 3 "" H -10500 -5950 60  0001 C CNN
	1    -10500 -5950
	1    0    0    -1  
$EndComp
Text GLabel -10900 -5350 0    60   Input ~ 0
RFGND
Text GLabel -11350 -5700 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3BC5
P -8750 -5950
F 0 "RLY?" H -8500 -6100 60  0000 C CNN
F 1 "SPDTRelay" H -8750 -5650 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -8750 -5950 60  0001 C CNN
F 3 "" H -8750 -5950 60  0001 C CNN
	1    -8750 -5950
	1    0    0    -1  
$EndComp
Text GLabel -9150 -5350 0    60   Input ~ 0
RFGND
Text GLabel -9600 -5700 3    60   Input ~ 0
RFSIG
Text GLabel -4250 -7450 3    60   Input ~ 0
RFSIG
Text GLabel -10850 -7350 0    60   Input ~ 0
RLY1
Text GLabel -9100 -7350 0    60   Input ~ 0
RLY2
Text GLabel -7350 -7350 0    60   Input ~ 0
RLY3
Text GLabel -5550 -7350 0    60   Input ~ 0
RLY4
Text GLabel -9100 -5600 0    60   Input ~ 0
RLY7
Text GLabel -10850 -5600 0    60   Input ~ 0
RLY6
Text GLabel -3700 -7350 0    60   Input ~ 0
RLY5
$Comp
L C C?
U 1 1 5DDC3BD6
P -6200 -1550
F 0 "C?" H -6175 -1450 50  0000 L CNN
F 1 "10 nF" H -6175 -1650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -1700 50  0001 C CNN
F 3 "" H -6200 -1550 50  0001 C CNN
	1    -6200 -1550
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3BDD
P -3950 -8000
F 0 "#PWR?" H -3950 -8150 50  0001 C CNN
F 1 "+5V" H -3950 -7860 50  0000 C CNN
F 2 "" H -3950 -8000 50  0001 C CNN
F 3 "" H -3950 -8000 50  0001 C CNN
	1    -3950 -8000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3BE3
P -11100 -6250
F 0 "#PWR?" H -11100 -6400 50  0001 C CNN
F 1 "+5V" H -11100 -6110 50  0000 C CNN
F 2 "" H -11100 -6250 50  0001 C CNN
F 3 "" H -11100 -6250 50  0001 C CNN
	1    -11100 -6250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3BE9
P -9350 -6300
F 0 "#PWR?" H -9350 -6450 50  0001 C CNN
F 1 "+5V" H -9350 -6160 50  0000 C CNN
F 2 "" H -9350 -6300 50  0001 C CNN
F 3 "" H -9350 -6300 50  0001 C CNN
	1    -9350 -6300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3BEF
P -5850 -8000
F 0 "#PWR?" H -5850 -8150 50  0001 C CNN
F 1 "+5V" H -5850 -7860 50  0000 C CNN
F 2 "" H -5850 -8000 50  0001 C CNN
F 3 "" H -5850 -8000 50  0001 C CNN
	1    -5850 -8000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3BF5
P -7600 -8000
F 0 "#PWR?" H -7600 -8150 50  0001 C CNN
F 1 "+5V" H -7600 -7860 50  0000 C CNN
F 2 "" H -7600 -8000 50  0001 C CNN
F 3 "" H -7600 -8000 50  0001 C CNN
	1    -7600 -8000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3BFB
P -9350 -8050
F 0 "#PWR?" H -9350 -8200 50  0001 C CNN
F 1 "+5V" H -9350 -7910 50  0000 C CNN
F 2 "" H -9350 -8050 50  0001 C CNN
F 3 "" H -9350 -8050 50  0001 C CNN
	1    -9350 -8050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C01
P -11100 -8050
F 0 "#PWR?" H -11100 -8200 50  0001 C CNN
F 1 "+5V" H -11100 -7910 50  0000 C CNN
F 2 "" H -11100 -8050 50  0001 C CNN
F 3 "" H -11100 -8050 50  0001 C CNN
	1    -11100 -8050
	1    0    0    -1  
$EndComp
Text GLabel -7950 -5600 3    60   Input ~ 0
RFSIG
$Comp
L Conn_01x01 J?
U 1 1 5DDC3C08
P -4300 -2950
F 0 "J?" H -4300 -2850 50  0000 C CNN
F 1 "Conn_01x01" H -4300 -3050 50  0000 C CNN
F 2 "Connectors:1pin" H -4300 -2950 50  0001 C CNN
F 3 "" H -4300 -2950 50  0001 C CNN
	1    -4300 -2950
	1    0    0    -1  
$EndComp
Text Notes -5000 -2500 0    60   ~ 0
QRO Match Board by Daniel Marks KW4TI
Text Notes -5150 -2300 0    60   ~ 0
November 23, 2019
$Comp
L R R?
U 1 1 5DDC3C11
P -11150 -2250
F 0 "R?" V -11070 -2250 50  0000 C CNN
F 1 "1k" V -11150 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -11220 -2250 50  0001 C CNN
F 3 "" H -11150 -2250 50  0001 C CNN
	1    -11150 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C18
P -10550 -2600
F 0 "D?" H -10550 -2500 50  0000 C CNN
F 1 "LED" H -10550 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10550 -2600 50  0001 C CNN
F 3 "" H -10550 -2600 50  0001 C CNN
	1    -10550 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C1F
P -10550 -2800
F 0 "#PWR?" H -10550 -2950 50  0001 C CNN
F 1 "+5V" H -10550 -2660 50  0000 C CNN
F 2 "" H -10550 -2800 50  0001 C CNN
F 3 "" H -10550 -2800 50  0001 C CNN
	1    -10550 -2800
	1    0    0    -1  
$EndComp
Text GLabel -10550 -1950 3    60   Input ~ 0
RLY8
$Comp
L R R?
U 1 1 5DDC3C26
P -10850 -2250
F 0 "R?" V -10770 -2250 50  0000 C CNN
F 1 "1k" V -10850 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10920 -2250 50  0001 C CNN
F 3 "" H -10850 -2250 50  0001 C CNN
	1    -10850 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C2D
P -10200 -2600
F 0 "D?" H -10200 -2500 50  0000 C CNN
F 1 "LED" H -10200 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10200 -2600 50  0001 C CNN
F 3 "" H -10200 -2600 50  0001 C CNN
	1    -10200 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C34
P -10200 -2800
F 0 "#PWR?" H -10200 -2950 50  0001 C CNN
F 1 "+5V" H -10200 -2660 50  0000 C CNN
F 2 "" H -10200 -2800 50  0001 C CNN
F 3 "" H -10200 -2800 50  0001 C CNN
	1    -10200 -2800
	1    0    0    -1  
$EndComp
Text GLabel -10200 -1950 3    60   Input ~ 0
RLY7
$Comp
L R R?
U 1 1 5DDC3C3B
P -10550 -2250
F 0 "R?" V -10470 -2250 50  0000 C CNN
F 1 "1k" V -10550 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10620 -2250 50  0001 C CNN
F 3 "" H -10550 -2250 50  0001 C CNN
	1    -10550 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C42
P -9850 -2600
F 0 "D?" H -9850 -2500 50  0000 C CNN
F 1 "LED" H -9850 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9850 -2600 50  0001 C CNN
F 3 "" H -9850 -2600 50  0001 C CNN
	1    -9850 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C49
P -9850 -2800
F 0 "#PWR?" H -9850 -2950 50  0001 C CNN
F 1 "+5V" H -9850 -2660 50  0000 C CNN
F 2 "" H -9850 -2800 50  0001 C CNN
F 3 "" H -9850 -2800 50  0001 C CNN
	1    -9850 -2800
	1    0    0    -1  
$EndComp
Text GLabel -9850 -1950 3    60   Input ~ 0
RLY6
$Comp
L R R?
U 1 1 5DDC3C50
P -10200 -2250
F 0 "R?" V -10120 -2250 50  0000 C CNN
F 1 "1k" V -10200 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -10270 -2250 50  0001 C CNN
F 3 "" H -10200 -2250 50  0001 C CNN
	1    -10200 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C57
P -9500 -2600
F 0 "D?" H -9500 -2500 50  0000 C CNN
F 1 "LED" H -9500 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9500 -2600 50  0001 C CNN
F 3 "" H -9500 -2600 50  0001 C CNN
	1    -9500 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C5E
P -9500 -2800
F 0 "#PWR?" H -9500 -2950 50  0001 C CNN
F 1 "+5V" H -9500 -2660 50  0000 C CNN
F 2 "" H -9500 -2800 50  0001 C CNN
F 3 "" H -9500 -2800 50  0001 C CNN
	1    -9500 -2800
	1    0    0    -1  
$EndComp
Text GLabel -9500 -1950 3    60   Input ~ 0
RLY5
$Comp
L R R?
U 1 1 5DDC3C65
P -9850 -2250
F 0 "R?" V -9770 -2250 50  0000 C CNN
F 1 "1k" V -9850 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9920 -2250 50  0001 C CNN
F 3 "" H -9850 -2250 50  0001 C CNN
	1    -9850 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C6C
P -9200 -2600
F 0 "D?" H -9200 -2500 50  0000 C CNN
F 1 "LED" H -9200 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -9200 -2600 50  0001 C CNN
F 3 "" H -9200 -2600 50  0001 C CNN
	1    -9200 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C73
P -9200 -2800
F 0 "#PWR?" H -9200 -2950 50  0001 C CNN
F 1 "+5V" H -9200 -2660 50  0000 C CNN
F 2 "" H -9200 -2800 50  0001 C CNN
F 3 "" H -9200 -2800 50  0001 C CNN
	1    -9200 -2800
	1    0    0    -1  
$EndComp
Text GLabel -9200 -1950 3    60   Input ~ 0
RLY4
$Comp
L R R?
U 1 1 5DDC3C7A
P -9500 -2250
F 0 "R?" V -9420 -2250 50  0000 C CNN
F 1 "1k" V -9500 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9570 -2250 50  0001 C CNN
F 3 "" H -9500 -2250 50  0001 C CNN
	1    -9500 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C81
P -8850 -2600
F 0 "D?" H -8850 -2500 50  0000 C CNN
F 1 "LED" H -8850 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8850 -2600 50  0001 C CNN
F 3 "" H -8850 -2600 50  0001 C CNN
	1    -8850 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C88
P -8850 -2800
F 0 "#PWR?" H -8850 -2950 50  0001 C CNN
F 1 "+5V" H -8850 -2660 50  0000 C CNN
F 2 "" H -8850 -2800 50  0001 C CNN
F 3 "" H -8850 -2800 50  0001 C CNN
	1    -8850 -2800
	1    0    0    -1  
$EndComp
Text GLabel -8850 -1950 3    60   Input ~ 0
RLY3
$Comp
L R R?
U 1 1 5DDC3C8F
P -9200 -2250
F 0 "R?" V -9120 -2250 50  0000 C CNN
F 1 "1k" V -9200 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -9270 -2250 50  0001 C CNN
F 3 "" H -9200 -2250 50  0001 C CNN
	1    -9200 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3C96
P -8500 -2600
F 0 "D?" H -8500 -2500 50  0000 C CNN
F 1 "LED" H -8500 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8500 -2600 50  0001 C CNN
F 3 "" H -8500 -2600 50  0001 C CNN
	1    -8500 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3C9D
P -8500 -2800
F 0 "#PWR?" H -8500 -2950 50  0001 C CNN
F 1 "+5V" H -8500 -2660 50  0000 C CNN
F 2 "" H -8500 -2800 50  0001 C CNN
F 3 "" H -8500 -2800 50  0001 C CNN
	1    -8500 -2800
	1    0    0    -1  
$EndComp
Text GLabel -8500 -1950 3    60   Input ~ 0
RLY2
$Comp
L R R?
U 1 1 5DDC3CA4
P -8850 -2250
F 0 "R?" V -8770 -2250 50  0000 C CNN
F 1 "1k" V -8850 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8920 -2250 50  0001 C CNN
F 3 "" H -8850 -2250 50  0001 C CNN
	1    -8850 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3CAB
P -8150 -2600
F 0 "D?" H -8150 -2500 50  0000 C CNN
F 1 "LED" H -8150 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -8150 -2600 50  0001 C CNN
F 3 "" H -8150 -2600 50  0001 C CNN
	1    -8150 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3CB2
P -8150 -2800
F 0 "#PWR?" H -8150 -2950 50  0001 C CNN
F 1 "+5V" H -8150 -2660 50  0000 C CNN
F 2 "" H -8150 -2800 50  0001 C CNN
F 3 "" H -8150 -2800 50  0001 C CNN
	1    -8150 -2800
	1    0    0    -1  
$EndComp
Text GLabel -8150 -1950 3    60   Input ~ 0
RLY1
Text GLabel -6950 -1650 2    60   Input ~ 0
RLY1
Text GLabel -6950 -1750 2    60   Input ~ 0
RLY2
Text GLabel -6950 -1850 2    60   Input ~ 0
RLY3
Text GLabel -6950 -1950 2    60   Input ~ 0
RLY4
Text GLabel -6950 -2050 2    60   Input ~ 0
RLY5
Text GLabel -6950 -2150 2    60   Input ~ 0
RLY6
Text GLabel -6950 -2250 2    60   Input ~ 0
RLY7
Text GLabel -6950 -2350 2    60   Input ~ 0
RLY8
Text GLabel -6950 -2450 2    60   Input ~ 0
RLY9
Text GLabel -6950 -2550 2    60   Input ~ 0
RLY10
$Comp
L +5V #PWR?
U 1 1 5DDC3CC3
P -7800 -2900
F 0 "#PWR?" H -7800 -3050 50  0001 C CNN
F 1 "+5V" H -7800 -2760 50  0000 C CNN
F 2 "" H -7800 -2900 50  0001 C CNN
F 3 "" H -7800 -2900 50  0001 C CNN
	1    -7800 -2900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5DDC3CC9
P -8500 -2250
F 0 "R?" V -8420 -2250 50  0000 C CNN
F 1 "1k" V -8500 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8570 -2250 50  0001 C CNN
F 3 "" H -8500 -2250 50  0001 C CNN
	1    -8500 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3CD0
P -10850 -2600
F 0 "D?" H -10850 -2500 50  0000 C CNN
F 1 "LED" H -10850 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -10850 -2600 50  0001 C CNN
F 3 "" H -10850 -2600 50  0001 C CNN
	1    -10850 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3CD7
P -10850 -2800
F 0 "#PWR?" H -10850 -2950 50  0001 C CNN
F 1 "+5V" H -10850 -2660 50  0000 C CNN
F 2 "" H -10850 -2800 50  0001 C CNN
F 3 "" H -10850 -2800 50  0001 C CNN
	1    -10850 -2800
	1    0    0    -1  
$EndComp
Text GLabel -10850 -1950 3    60   Input ~ 0
RLY9
$Comp
L R R?
U 1 1 5DDC3CDE
P -8150 -2250
F 0 "R?" V -8070 -2250 50  0000 C CNN
F 1 "1k" V -8150 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -8220 -2250 50  0001 C CNN
F 3 "" H -8150 -2250 50  0001 C CNN
	1    -8150 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3CE5
P -11150 -2600
F 0 "D?" H -11150 -2500 50  0000 C CNN
F 1 "LED" H -11150 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -11150 -2600 50  0001 C CNN
F 3 "" H -11150 -2600 50  0001 C CNN
	1    -11150 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3CEC
P -11150 -2800
F 0 "#PWR?" H -11150 -2950 50  0001 C CNN
F 1 "+5V" H -11150 -2660 50  0000 C CNN
F 2 "" H -11150 -2800 50  0001 C CNN
F 3 "" H -11150 -2800 50  0001 C CNN
	1    -11150 -2800
	1    0    0    -1  
$EndComp
Text GLabel -11150 -1950 3    60   Input ~ 0
RLY10
Text GLabel -5950 -3550 2    60   Input ~ 0
RLY10
Text GLabel -5950 -1550 2    60   Input ~ 0
RLY1
$Comp
L C C?
U 1 1 5DDC3CF5
P -6200 -1750
F 0 "C?" H -6175 -1650 50  0000 L CNN
F 1 "10 nF" H -6175 -1850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -1900 50  0001 C CNN
F 3 "" H -6200 -1750 50  0001 C CNN
	1    -6200 -1750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3CFC
P -6200 -1950
F 0 "C?" H -6175 -1850 50  0000 L CNN
F 1 "10 nF" H -6175 -2050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -2100 50  0001 C CNN
F 3 "" H -6200 -1950 50  0001 C CNN
	1    -6200 -1950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D03
P -6200 -2150
F 0 "C?" H -6175 -2050 50  0000 L CNN
F 1 "10 nF" H -6175 -2250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -2300 50  0001 C CNN
F 3 "" H -6200 -2150 50  0001 C CNN
	1    -6200 -2150
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D0A
P -6200 -2350
F 0 "C?" H -6175 -2250 50  0000 L CNN
F 1 "10 nF" H -6175 -2450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -2500 50  0001 C CNN
F 3 "" H -6200 -2350 50  0001 C CNN
	1    -6200 -2350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D11
P -6200 -2550
F 0 "C?" H -6175 -2450 50  0000 L CNN
F 1 "10 nF" H -6175 -2650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -2700 50  0001 C CNN
F 3 "" H -6200 -2550 50  0001 C CNN
	1    -6200 -2550
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D18
P -6200 -2750
F 0 "C?" H -6175 -2650 50  0000 L CNN
F 1 "10 nF" H -6175 -2850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -2900 50  0001 C CNN
F 3 "" H -6200 -2750 50  0001 C CNN
	1    -6200 -2750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D1F
P -6200 -2950
F 0 "C?" H -6175 -2850 50  0000 L CNN
F 1 "10 nF" H -6175 -3050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -3100 50  0001 C CNN
F 3 "" H -6200 -2950 50  0001 C CNN
	1    -6200 -2950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D26
P -6200 -3150
F 0 "C?" H -6175 -3050 50  0000 L CNN
F 1 "10 nF" H -6175 -3250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -3300 50  0001 C CNN
F 3 "" H -6200 -3150 50  0001 C CNN
	1    -6200 -3150
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D2D
P -6200 -3550
F 0 "C?" H -6175 -3450 50  0000 L CNN
F 1 "10 nF" H -6175 -3650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -3700 50  0001 C CNN
F 3 "" H -6200 -3550 50  0001 C CNN
	1    -6200 -3550
	0    1    1    0   
$EndComp
Text GLabel -5950 -1750 2    60   Input ~ 0
RLY2
Text GLabel -5950 -1950 2    60   Input ~ 0
RLY3
Text GLabel -5950 -2150 2    60   Input ~ 0
RLY4
Text GLabel -5950 -2350 2    60   Input ~ 0
RLY5
Text GLabel -5950 -2550 2    60   Input ~ 0
RLY6
Text GLabel -5950 -2750 2    60   Input ~ 0
RLY7
Text GLabel -5950 -2950 2    60   Input ~ 0
RLY8
Text GLabel -5950 -3150 2    60   Input ~ 0
RLY9
$Comp
L +5V #PWR?
U 1 1 5DDC3D3C
P -6500 -4100
F 0 "#PWR?" H -6500 -4250 50  0001 C CNN
F 1 "+5V" H -6500 -3960 50  0000 C CNN
F 2 "" H -6500 -4100 50  0001 C CNN
F 3 "" H -6500 -4100 50  0001 C CNN
	1    -6500 -4100
	1    0    0    -1  
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3D42
P -7100 -5950
F 0 "RLY?" H -6850 -6100 60  0000 C CNN
F 1 "SPDTRelay" H -7100 -5650 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -7100 -5950 60  0001 C CNN
F 3 "" H -7100 -5950 60  0001 C CNN
	1    -7100 -5950
	1    0    0    -1  
$EndComp
Text GLabel -7500 -5350 0    60   Input ~ 0
RFGND
Text GLabel -7450 -5600 0    60   Input ~ 0
RLY8
$Comp
L +5V #PWR?
U 1 1 5DDC3D4B
P -7700 -6300
F 0 "#PWR?" H -7700 -6450 50  0001 C CNN
F 1 "+5V" H -7700 -6160 50  0000 C CNN
F 2 "" H -7700 -6300 50  0001 C CNN
F 3 "" H -7700 -6300 50  0001 C CNN
	1    -7700 -6300
	1    0    0    -1  
$EndComp
Text GLabel -6300 -5600 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3D52
P -10050 -4300
F 0 "RLY?" H -9800 -4450 60  0000 C CNN
F 1 "SPDTRelay" H -10050 -4000 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -10050 -4300 60  0001 C CNN
F 3 "" H -10050 -4300 60  0001 C CNN
	1    -10050 -4300
	1    0    0    -1  
$EndComp
Text GLabel -10800 -4100 0    60   Input ~ 0
RLY11
$Comp
L C C?
U 1 1 5DDC3D5A
P -6200 -3350
F 0 "C?" H -6175 -3250 50  0000 L CNN
F 1 "10 nF" H -6175 -3450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -3500 50  0001 C CNN
F 3 "" H -6200 -3350 50  0001 C CNN
	1    -6200 -3350
	0    1    1    0   
$EndComp
Text GLabel -5950 -3350 2    60   Input ~ 0
RLY9
$Comp
L C C?
U 1 1 5DDC3D62
P -6200 -3800
F 0 "C?" H -6175 -3700 50  0000 L CNN
F 1 "10 nF" H -6175 -3900 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -3950 50  0001 C CNN
F 3 "" H -6200 -3800 50  0001 C CNN
	1    -6200 -3800
	0    1    1    0   
$EndComp
Text GLabel -5950 -3800 2    60   Input ~ 0
RLY11
$Comp
L C C?
U 1 1 5DDC3D6A
P -2100 -5850
F 0 "C?" H -2075 -5750 50  0000 L CNN
F 1 "10 nF" H -2075 -5950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -6000 50  0001 C CNN
F 3 "" H -2100 -5850 50  0001 C CNN
	1    -2100 -5850
	0    1    1    0   
$EndComp
Text GLabel -1850 -5850 2    60   Input ~ 0
RLY1
$Comp
L C C?
U 1 1 5DDC3D72
P -2100 -6050
F 0 "C?" H -2075 -5950 50  0000 L CNN
F 1 "10 nF" H -2075 -6150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -6200 50  0001 C CNN
F 3 "" H -2100 -6050 50  0001 C CNN
	1    -2100 -6050
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D79
P -2100 -6250
F 0 "C?" H -2075 -6150 50  0000 L CNN
F 1 "10 nF" H -2075 -6350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -6400 50  0001 C CNN
F 3 "" H -2100 -6250 50  0001 C CNN
	1    -2100 -6250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D80
P -2100 -6450
F 0 "C?" H -2075 -6350 50  0000 L CNN
F 1 "10 nF" H -2075 -6550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -6600 50  0001 C CNN
F 3 "" H -2100 -6450 50  0001 C CNN
	1    -2100 -6450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D87
P -2100 -6650
F 0 "C?" H -2075 -6550 50  0000 L CNN
F 1 "10 nF" H -2075 -6750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -6800 50  0001 C CNN
F 3 "" H -2100 -6650 50  0001 C CNN
	1    -2100 -6650
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D8E
P -2100 -6850
F 0 "C?" H -2075 -6750 50  0000 L CNN
F 1 "10 nF" H -2075 -6950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -7000 50  0001 C CNN
F 3 "" H -2100 -6850 50  0001 C CNN
	1    -2100 -6850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D95
P -2100 -7050
F 0 "C?" H -2075 -6950 50  0000 L CNN
F 1 "10 nF" H -2075 -7150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -7200 50  0001 C CNN
F 3 "" H -2100 -7050 50  0001 C CNN
	1    -2100 -7050
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3D9C
P -2100 -7250
F 0 "C?" H -2075 -7150 50  0000 L CNN
F 1 "10 nF" H -2075 -7350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -7400 50  0001 C CNN
F 3 "" H -2100 -7250 50  0001 C CNN
	1    -2100 -7250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3DA3
P -2100 -7450
F 0 "C?" H -2075 -7350 50  0000 L CNN
F 1 "10 nF" H -2075 -7550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -7600 50  0001 C CNN
F 3 "" H -2100 -7450 50  0001 C CNN
	1    -2100 -7450
	0    1    1    0   
$EndComp
Text GLabel -1850 -6050 2    60   Input ~ 0
RLY2
Text GLabel -1850 -6250 2    60   Input ~ 0
RLY3
Text GLabel -1850 -6450 2    60   Input ~ 0
RLY4
Text GLabel -1850 -6650 2    60   Input ~ 0
RLY5
Text GLabel -1850 -6850 2    60   Input ~ 0
RLY6
Text GLabel -1850 -7050 2    60   Input ~ 0
RLY7
Text GLabel -1850 -7250 2    60   Input ~ 0
RLY8
Text GLabel -1850 -7450 2    60   Input ~ 0
RLY9
$Comp
L C C?
U 1 1 5DDC3DB2
P -2100 -7650
F 0 "C?" H -2075 -7550 50  0000 L CNN
F 1 "10 nF" H -2075 -7750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -7800 50  0001 C CNN
F 3 "" H -2100 -7650 50  0001 C CNN
	1    -2100 -7650
	0    1    1    0   
$EndComp
Text GLabel -1850 -7650 2    60   Input ~ 0
RLY10
$Comp
L Conn_01x01 J?
U 1 1 5DDC3DBA
P -4300 -3550
F 0 "J?" H -4300 -3450 50  0000 C CNN
F 1 "Conn_01x01" H -4300 -3650 50  0000 C CNN
F 2 "Connectors:1pin" H -4300 -3550 50  0001 C CNN
F 3 "" H -4300 -3550 50  0001 C CNN
	1    -4300 -3550
	1    0    0    -1  
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3DC1
P -3200 -4600
F 0 "RLY?" H -2950 -4750 60  0000 C CNN
F 1 "SPDTRelay" H -3200 -4300 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -3200 -4600 60  0001 C CNN
F 3 "" H -3200 -4600 60  0001 C CNN
	1    -3200 -4600
	1    0    0    -1  
$EndComp
Text GLabel -5950 -4050 2    60   Input ~ 0
RLY12
$Comp
L C C?
U 1 1 5DDC3DC9
P -6200 -4050
F 0 "C?" H -6175 -3950 50  0000 L CNN
F 1 "10 nF" H -6175 -4150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -6162 -4200 50  0001 C CNN
F 3 "" H -6200 -4050 50  0001 C CNN
	1    -6200 -4050
	0    1    1    0   
$EndComp
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3DD0
P -5150 -6050
F 0 "RLY?" H -4900 -6200 60  0000 C CNN
F 1 "SPDTRelay" H -5150 -5750 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -5150 -6050 60  0001 C CNN
F 3 "" H -5150 -6050 60  0001 C CNN
	1    -5150 -6050
	1    0    0    -1  
$EndComp
Text GLabel -5550 -5450 0    60   Input ~ 0
RFGND
Text GLabel -5500 -5700 0    60   Input ~ 0
RLY9
$Comp
L +5V #PWR?
U 1 1 5DDC3DD9
P -5750 -6400
F 0 "#PWR?" H -5750 -6550 50  0001 C CNN
F 1 "+5V" H -5750 -6260 50  0000 C CNN
F 2 "" H -5750 -6400 50  0001 C CNN
F 3 "" H -5750 -6400 50  0001 C CNN
	1    -5750 -6400
	1    0    0    -1  
$EndComp
Text GLabel -4350 -5700 3    60   Input ~ 0
RFSIG
$Comp
L SPDTRelay RLY?
U 1 1 5DDC3DE0
P -3500 -6050
F 0 "RLY?" H -3250 -6200 60  0000 C CNN
F 1 "SPDTRelay" H -3500 -5750 60  0000 C CNN
F 2 "tuner:SMIHRelay" H -3500 -6050 60  0001 C CNN
F 3 "" H -3500 -6050 60  0001 C CNN
	1    -3500 -6050
	1    0    0    -1  
$EndComp
Text GLabel -3900 -5450 0    60   Input ~ 0
RFGND
Text GLabel -3850 -5700 0    60   Input ~ 0
RLY10
$Comp
L +5V #PWR?
U 1 1 5DDC3DE9
P -4100 -6400
F 0 "#PWR?" H -4100 -6550 50  0001 C CNN
F 1 "+5V" H -4100 -6260 50  0000 C CNN
F 2 "" H -4100 -6400 50  0001 C CNN
F 3 "" H -4100 -6400 50  0001 C CNN
	1    -4100 -6400
	1    0    0    -1  
$EndComp
Text GLabel -2700 -5700 3    60   Input ~ 0
RFSIG
$Comp
L +5V #PWR?
U 1 1 5DDC3DF0
P -10800 -4650
F 0 "#PWR?" H -10800 -4800 50  0001 C CNN
F 1 "+5V" H -10800 -4510 50  0000 C CNN
F 2 "" H -10800 -4650 50  0001 C CNN
F 3 "" H -10800 -4650 50  0001 C CNN
	1    -10800 -4650
	1    0    0    -1  
$EndComp
Text GLabel -11850 -4650 3    60   Input ~ 0
RFSIG
$Comp
L Conn_01x02 J?
U 1 1 5DDC3DF7
P -11550 -4100
F 0 "J?" H -11550 -4000 50  0000 C CNN
F 1 "Conn_01x02" H -11550 -4300 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -11550 -4100 50  0001 C CNN
F 3 "" H -11550 -4100 50  0001 C CNN
	1    -11550 -4100
	1    0    0    -1  
$EndComp
Text GLabel -11850 -3800 3    60   Input ~ 0
RFGND
$Comp
L Conn_01x02 J?
U 1 1 5DDC3DFF
P -11450 -4900
F 0 "J?" H -11450 -4800 50  0000 C CNN
F 1 "Conn_01x02" H -11450 -5100 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -11450 -4900 50  0001 C CNN
F 3 "" H -11450 -4900 50  0001 C CNN
	1    -11450 -4900
	1    0    0    -1  
$EndComp
Text GLabel -10950 -4400 0    60   Input ~ 0
RFSIG
Text GLabel -3950 -4400 0    60   Input ~ 0
RLY12
$Comp
L Conn_02x12_Odd_Even J?
U 1 1 5DDC3E08
P -7400 -2150
F 0 "J?" H -7350 -1550 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H -7350 -2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x12_Pitch2.54mm" H -7400 -2150 50  0001 C CNN
F 3 "" H -7400 -2150 50  0001 C CNN
	1    -7400 -2150
	1    0    0    1   
$EndComp
Text GLabel -6950 -2650 2    60   Input ~ 0
RLY11
Text GLabel -6950 -2750 2    60   Input ~ 0
RLY12
$Comp
L R R?
U 1 1 5DDC3E11
P -11750 -2250
F 0 "R?" V -11670 -2250 50  0000 C CNN
F 1 "1k" V -11750 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -11820 -2250 50  0001 C CNN
F 3 "" H -11750 -2250 50  0001 C CNN
	1    -11750 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3E18
P -11450 -2600
F 0 "D?" H -11450 -2500 50  0000 C CNN
F 1 "LED" H -11450 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -11450 -2600 50  0001 C CNN
F 3 "" H -11450 -2600 50  0001 C CNN
	1    -11450 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3E1F
P -11450 -2800
F 0 "#PWR?" H -11450 -2950 50  0001 C CNN
F 1 "+5V" H -11450 -2660 50  0000 C CNN
F 2 "" H -11450 -2800 50  0001 C CNN
F 3 "" H -11450 -2800 50  0001 C CNN
	1    -11450 -2800
	1    0    0    -1  
$EndComp
Text GLabel -11450 -1950 3    60   Input ~ 0
RLY11
$Comp
L R R?
U 1 1 5DDC3E26
P -11450 -2250
F 0 "R?" V -11370 -2250 50  0000 C CNN
F 1 "1k" V -11450 -2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V -11520 -2250 50  0001 C CNN
F 3 "" H -11450 -2250 50  0001 C CNN
	1    -11450 -2250
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5DDC3E2D
P -11750 -2600
F 0 "D?" H -11750 -2500 50  0000 C CNN
F 1 "LED" H -11750 -2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H -11750 -2600 50  0001 C CNN
F 3 "" H -11750 -2600 50  0001 C CNN
	1    -11750 -2600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3E34
P -11750 -2800
F 0 "#PWR?" H -11750 -2950 50  0001 C CNN
F 1 "+5V" H -11750 -2660 50  0000 C CNN
F 2 "" H -11750 -2800 50  0001 C CNN
F 3 "" H -11750 -2800 50  0001 C CNN
	1    -11750 -2800
	1    0    0    -1  
$EndComp
Text GLabel -11750 -1950 3    60   Input ~ 0
RLY12
Text GLabel -1850 -7850 2    60   Input ~ 0
RLY11
Text GLabel -1850 -8050 2    60   Input ~ 0
RLY12
$Comp
L C C?
U 1 1 5DDC3E3D
P -2100 -7850
F 0 "C?" H -2075 -7750 50  0000 L CNN
F 1 "10 nF" H -2075 -7950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -8000 50  0001 C CNN
F 3 "" H -2100 -7850 50  0001 C CNN
	1    -2100 -7850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3E44
P -2100 -8050
F 0 "C?" H -2075 -7950 50  0000 L CNN
F 1 "10 nF" H -2075 -8150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -2062 -8200 50  0001 C CNN
F 3 "" H -2100 -8050 50  0001 C CNN
	1    -2100 -8050
	0    1    1    0   
$EndComp
Text GLabel -2350 -8400 2    60   Input ~ 0
RFGND
$Comp
L +5V #PWR?
U 1 1 5DDC3E4C
P -1950 -5250
F 0 "#PWR?" H -1950 -5400 50  0001 C CNN
F 1 "+5V" H -1950 -5110 50  0000 C CNN
F 2 "" H -1950 -5250 50  0001 C CNN
F 3 "" H -1950 -5250 50  0001 C CNN
	1    -1950 -5250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5DDC3E52
P -5000 -3800
F 0 "C?" H -4975 -3700 50  0000 L CNN
F 1 "10 nF" H -4975 -3900 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4962 -3950 50  0001 C CNN
F 3 "" H -5000 -3800 50  0001 C CNN
	1    -5000 -3800
	0    1    1    0   
$EndComp
Text GLabel -4700 -4100 2    60   Input ~ 0
RFGND
$Comp
L C C?
U 1 1 5DDC3E5A
P -5000 -4100
F 0 "C?" H -4975 -4000 50  0000 L CNN
F 1 "10 nF" H -4975 -4200 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4962 -4250 50  0001 C CNN
F 3 "" H -5000 -4100 50  0001 C CNN
	1    -5000 -4100
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3E61
P -5000 -4350
F 0 "C?" H -4975 -4250 50  0000 L CNN
F 1 "10 nF" H -4975 -4450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H -4962 -4500 50  0001 C CNN
F 3 "" H -5000 -4350 50  0001 C CNN
	1    -5000 -4350
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5DDC3E68
P -5300 -4100
F 0 "#PWR?" H -5300 -4250 50  0001 C CNN
F 1 "+5V" H -5300 -3960 50  0000 C CNN
F 2 "" H -5300 -4100 50  0001 C CNN
F 3 "" H -5300 -4100 50  0001 C CNN
	1    -5300 -4100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC3E6E
P -1950 -4850
F 0 "J?" H -1950 -4750 50  0000 C CNN
F 1 "Conn_01x02" H -1950 -5050 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -1950 -4850 50  0001 C CNN
F 3 "" H -1950 -4850 50  0001 C CNN
	1    -1950 -4850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC3E75
P -1950 -4450
F 0 "J?" H -1950 -4350 50  0000 C CNN
F 1 "Conn_01x02" H -1950 -4650 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -1950 -4450 50  0001 C CNN
F 3 "" H -1950 -4450 50  0001 C CNN
	1    -1950 -4450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5DDC3E7C
P -1950 -4050
F 0 "J?" H -1950 -3950 50  0000 C CNN
F 1 "Conn_01x02" H -1950 -4250 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H -1950 -4050 50  0001 C CNN
F 3 "" H -1950 -4050 50  0001 C CNN
	1    -1950 -4050
	1    0    0    -1  
$EndComp
Text GLabel -2550 -4000 0    60   Input ~ 0
RFGND
$Comp
L +5V #PWR?
U 1 1 5DDC3E84
P -3950 -4750
F 0 "#PWR?" H -3950 -4900 50  0001 C CNN
F 1 "+5V" H -3950 -4610 50  0000 C CNN
F 2 "" H -3950 -4750 50  0001 C CNN
F 3 "" H -3950 -4750 50  0001 C CNN
	1    -3950 -4750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5DDC3E8A
P -5000 -2950
F 0 "C?" H -4975 -2850 50  0000 L CNN
F 1 "10 nF" H -4975 -3050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -4962 -3100 50  0001 C CNN
F 3 "" H -5000 -2950 50  0001 C CNN
	1    -5000 -2950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3E91
P -5000 -3250
F 0 "C?" H -4975 -3150 50  0000 L CNN
F 1 "10 nF" H -4975 -3350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -4962 -3400 50  0001 C CNN
F 3 "" H -5000 -3250 50  0001 C CNN
	1    -5000 -3250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5DDC3E98
P -5000 -3500
F 0 "C?" H -4975 -3400 50  0000 L CNN
F 1 "10 nF" H -4975 -3600 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H -4962 -3650 50  0001 C CNN
F 3 "" H -5000 -3500 50  0001 C CNN
	1    -5000 -3500
	0    1    1    0   
$EndComp
$Comp
L Conn_01x01 J?
U 1 1 5DDC3E9F
P -4300 -3250
F 0 "J?" H -4300 -3150 50  0000 C CNN
F 1 "Conn_01x01" H -4300 -3350 50  0000 C CNN
F 2 "Connectors:1pin" H -4300 -3250 50  0001 C CNN
F 3 "" H -4300 -3250 50  0001 C CNN
	1    -4300 -3250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J?
U 1 1 5DDC3EA6
P -4300 -3900
F 0 "J?" H -4300 -3800 50  0000 C CNN
F 1 "Conn_01x01" H -4300 -4000 50  0000 C CNN
F 2 "Connectors:1pin" H -4300 -3900 50  0001 C CNN
F 3 "" H -4300 -3900 50  0001 C CNN
	1    -4300 -3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3750 -4400 -3950 -4400
Connection ~ -3800 -5000
Wire Wire Line
	-3800 -4700 -3800 -5000
Wire Wire Line
	-3750 -4700 -3800 -4700
Wire Wire Line
	-9400 -5000 -2500 -5000
Wire Wire Line
	-9400 -4500 -9400 -5000
Wire Wire Line
	-2600 -7900 -2600 -6700
Connection ~ -11850 -4800
Wire Wire Line
	-11650 -4800 -11850 -4800
Wire Wire Line
	-11850 -4900 -11650 -4900
Wire Wire Line
	-11850 -4900 -11850 -4650
Connection ~ -11850 -4000
Wire Wire Line
	-11750 -4000 -11850 -4000
Wire Wire Line
	-11850 -4100 -11750 -4100
Wire Wire Line
	-11850 -4100 -11850 -3800
Wire Wire Line
	-2500 -6250 -2800 -6250
Wire Wire Line
	-2500 -5000 -2500 -6250
Wire Wire Line
	-9550 -4500 -9400 -4500
Wire Wire Line
	-10600 -4400 -10950 -4400
Wire Wire Line
	-10800 -4650 -10800 -4200
Wire Wire Line
	-10600 -4100 -10800 -4100
Wire Wire Line
	-10800 -4200 -10600 -4200
Wire Wire Line
	-6400 -6150 -5700 -6150
Wire Wire Line
	-4650 -6250 -4550 -6250
Wire Wire Line
	-5500 -5450 -5550 -5450
Wire Wire Line
	-5500 -5600 -5850 -5600
Wire Wire Line
	-5850 -5600 -5850 -6150
Connection ~ -5850 -6150
Wire Wire Line
	-4550 -6250 -4550 -5600
Wire Wire Line
	-4550 -5600 -4600 -5600
Wire Wire Line
	-4650 -6050 -4450 -6050
Wire Wire Line
	-4450 -6050 -4450 -5450
Wire Wire Line
	-4450 -5450 -4600 -5450
Wire Wire Line
	-5700 -5950 -5750 -5950
Wire Wire Line
	-5750 -5950 -5750 -6400
Wire Wire Line
	-5700 -5850 -5700 -5800
Wire Wire Line
	-5700 -5800 -5450 -5800
Wire Wire Line
	-5450 -5800 -5450 -5700
Wire Wire Line
	-5450 -5700 -5500 -5700
Connection ~ -4550 -6250
Wire Wire Line
	-4350 -5700 -4350 -6250
Wire Wire Line
	-4450 -6150 -4050 -6150
Wire Wire Line
	-3000 -6250 -2900 -6250
Wire Wire Line
	-3850 -5450 -3900 -5450
Wire Wire Line
	-3850 -5600 -4200 -5600
Wire Wire Line
	-4200 -5600 -4200 -6150
Connection ~ -4200 -6150
Wire Wire Line
	-2900 -6250 -2900 -5600
Wire Wire Line
	-2900 -5600 -2950 -5600
Wire Wire Line
	-3000 -6050 -2800 -6050
Wire Wire Line
	-2800 -5450 -2950 -5450
Wire Wire Line
	-4050 -5950 -4100 -5950
Wire Wire Line
	-4100 -5950 -4100 -6400
Wire Wire Line
	-4050 -5850 -4050 -5800
Wire Wire Line
	-4050 -5800 -3800 -5800
Wire Wire Line
	-3800 -5800 -3800 -5700
Wire Wire Line
	-3800 -5700 -3850 -5700
Connection ~ -2900 -6250
Wire Wire Line
	-2700 -5700 -2700 -6250
Wire Wire Line
	-4450 -6250 -4450 -6150
Wire Wire Line
	-2800 -6050 -2800 -5450
Wire Wire Line
	-11950 -6150 -11550 -6150
Wire Wire Line
	-2700 -7700 -2700 -7100
Connection ~ -4650 -7900
Connection ~ -6500 -4050
Wire Wire Line
	-6350 -4050 -6500 -4050
Wire Wire Line
	-5950 -4050 -6050 -4050
Wire Wire Line
	-11500 -7800 -11050 -7800
Wire Wire Line
	-10000 -7900 -9800 -7900
Wire Wire Line
	-9700 -7800 -9300 -7800
Wire Wire Line
	-9700 -7800 -9700 -7900
Wire Wire Line
	-9600 -7450 -9600 -7900
Wire Wire Line
	-7950 -7800 -7550 -7800
Wire Wire Line
	-7950 -7800 -7950 -7900
Wire Wire Line
	-7850 -7450 -7850 -7900
Wire Wire Line
	-8250 -7900 -8050 -7900
Wire Wire Line
	-6200 -7800 -5800 -7800
Wire Wire Line
	-6200 -7800 -6200 -7900
Wire Wire Line
	-6100 -7450 -6100 -7900
Wire Wire Line
	-6500 -7900 -6300 -7900
Wire Wire Line
	-4750 -7900 -4450 -7900
Wire Wire Line
	-4350 -7800 -3900 -7800
Wire Wire Line
	-2850 -7900 -2600 -7900
Wire Wire Line
	-11450 -6050 -11050 -6050
Wire Wire Line
	-11450 -6050 -11450 -6150
Wire Wire Line
	-11350 -5700 -11350 -6150
Wire Wire Line
	-9700 -6050 -9300 -6050
Wire Wire Line
	-9700 -6050 -9700 -6150
Wire Wire Line
	-9600 -5700 -9600 -6150
Wire Wire Line
	-10000 -6150 -9800 -6150
Wire Wire Line
	-8250 -6150 -8150 -6150
Wire Wire Line
	-4350 -7900 -4350 -7800
Wire Wire Line
	-4250 -7450 -4250 -7900
Wire Wire Line
	-11950 -6700 -11950 -6150
Wire Wire Line
	-2600 -6700 -11950 -6700
Wire Wire Line
	-11200 -7800 -11200 -7250
Wire Wire Line
	-11200 -7250 -10850 -7250
Connection ~ -11200 -7800
Wire Wire Line
	-9050 -7100 -9150 -7100
Wire Wire Line
	-8250 -7700 -8050 -7700
Wire Wire Line
	-8050 -7700 -8050 -7100
Wire Wire Line
	-8050 -7100 -8150 -7100
Wire Wire Line
	-8150 -7900 -8150 -7250
Connection ~ -8150 -7900
Wire Wire Line
	-9950 -7250 -9900 -7250
Wire Wire Line
	-9900 -7250 -9900 -7900
Connection ~ -9900 -7900
Wire Wire Line
	-10000 -7700 -9800 -7700
Wire Wire Line
	-9800 -7700 -9800 -7100
Wire Wire Line
	-9800 -7100 -9950 -7100
Wire Wire Line
	-9450 -7800 -9450 -7250
Wire Wire Line
	-9450 -7250 -9050 -7250
Connection ~ -9450 -7800
Wire Wire Line
	-7700 -7800 -7700 -7250
Wire Wire Line
	-7700 -7250 -7300 -7250
Connection ~ -7700 -7800
Wire Wire Line
	-7300 -7100 -7400 -7100
Wire Wire Line
	-6400 -7900 -6400 -7250
Connection ~ -6400 -7900
Wire Wire Line
	-6500 -7700 -6300 -7700
Wire Wire Line
	-6300 -7700 -6300 -7100
Wire Wire Line
	-6300 -7100 -6400 -7100
Wire Wire Line
	-5600 -7250 -5900 -7250
Wire Wire Line
	-5900 -7250 -5900 -7800
Connection ~ -5900 -7800
Wire Wire Line
	-5600 -7100 -5650 -7100
Wire Wire Line
	-4700 -7250 -4650 -7250
Wire Wire Line
	-4650 -7250 -4650 -7900
Wire Wire Line
	-4750 -7700 -4550 -7700
Wire Wire Line
	-4550 -7700 -4550 -7100
Wire Wire Line
	-4550 -7100 -4700 -7100
Wire Wire Line
	-3750 -7100 -3800 -7100
Wire Wire Line
	-11050 -7100 -10850 -7100
Wire Wire Line
	-4050 -7800 -4050 -7250
Wire Wire Line
	-4050 -7250 -3750 -7250
Connection ~ -4050 -7800
Wire Wire Line
	-2800 -7900 -2800 -7250
Wire Wire Line
	-2800 -7250 -2850 -7250
Connection ~ -2800 -7900
Wire Wire Line
	-2850 -7700 -2700 -7700
Wire Wire Line
	-2700 -7100 -2850 -7100
Wire Wire Line
	-10850 -5350 -10900 -5350
Wire Wire Line
	-11200 -6050 -11200 -5500
Wire Wire Line
	-11200 -5500 -10850 -5500
Connection ~ -11200 -6050
Wire Wire Line
	-9900 -6150 -9900 -5500
Wire Wire Line
	-9900 -5500 -9950 -5500
Connection ~ -9900 -6150
Wire Wire Line
	-10000 -5950 -9800 -5950
Wire Wire Line
	-9800 -5950 -9800 -5350
Wire Wire Line
	-9800 -5350 -9950 -5350
Wire Wire Line
	-9100 -5350 -9150 -5350
Wire Wire Line
	-9100 -5500 -9450 -5500
Wire Wire Line
	-9450 -5500 -9450 -6050
Connection ~ -9450 -6050
Wire Wire Line
	-8150 -6150 -8150 -5500
Wire Wire Line
	-8150 -5500 -8200 -5500
Wire Wire Line
	-8250 -5950 -8050 -5950
Wire Wire Line
	-8050 -5950 -8050 -5350
Wire Wire Line
	-8050 -5350 -8200 -5350
Wire Wire Line
	-9350 -8050 -9350 -7600
Wire Wire Line
	-9350 -7600 -9300 -7600
Wire Wire Line
	-11100 -8050 -11100 -7600
Wire Wire Line
	-11100 -7600 -11050 -7600
Wire Wire Line
	-7600 -8000 -7600 -7600
Wire Wire Line
	-7600 -7600 -7550 -7600
Wire Wire Line
	-5850 -8000 -5850 -7600
Wire Wire Line
	-5850 -7600 -5800 -7600
Wire Wire Line
	-9300 -5850 -9350 -5850
Wire Wire Line
	-9350 -5850 -9350 -6300
Wire Wire Line
	-11100 -6250 -11100 -5850
Wire Wire Line
	-11100 -5850 -11050 -5850
Wire Wire Line
	-3950 -8000 -3950 -7600
Wire Wire Line
	-3950 -7600 -3900 -7600
Wire Wire Line
	-9300 -7500 -9300 -7450
Wire Wire Line
	-9300 -7450 -9050 -7450
Wire Wire Line
	-9050 -7450 -9050 -7350
Wire Wire Line
	-9050 -7350 -9100 -7350
Wire Wire Line
	-7350 -7350 -7300 -7350
Wire Wire Line
	-7300 -7350 -7300 -7450
Wire Wire Line
	-7300 -7450 -7550 -7450
Wire Wire Line
	-7550 -7450 -7550 -7500
Wire Wire Line
	-5800 -7500 -5800 -7450
Wire Wire Line
	-5800 -7450 -5500 -7450
Wire Wire Line
	-5500 -7450 -5500 -7350
Wire Wire Line
	-5500 -7350 -5550 -7350
Wire Wire Line
	-9300 -5750 -9300 -5700
Wire Wire Line
	-9300 -5700 -9050 -5700
Wire Wire Line
	-9050 -5700 -9050 -5600
Wire Wire Line
	-9050 -5600 -9100 -5600
Wire Wire Line
	-11050 -5750 -11050 -5700
Wire Wire Line
	-11050 -5700 -10800 -5700
Wire Wire Line
	-10800 -5700 -10800 -5600
Wire Wire Line
	-10800 -5600 -10850 -5600
Wire Wire Line
	-3900 -7500 -3900 -7450
Wire Wire Line
	-3900 -7450 -3650 -7450
Wire Wire Line
	-3650 -7450 -3650 -7350
Wire Wire Line
	-3650 -7350 -3700 -7350
Wire Wire Line
	-11050 -7500 -11050 -7450
Wire Wire Line
	-11050 -7450 -10800 -7450
Wire Wire Line
	-10800 -7450 -10800 -7350
Wire Wire Line
	-10800 -7350 -10850 -7350
Connection ~ -8150 -6150
Wire Wire Line
	-7950 -5600 -7950 -6150
Wire Wire Line
	-10550 -2800 -10550 -2750
Wire Wire Line
	-10550 -2450 -10550 -2400
Wire Wire Line
	-10550 -2100 -10550 -1950
Wire Wire Line
	-10200 -2800 -10200 -2750
Wire Wire Line
	-10200 -2450 -10200 -2400
Wire Wire Line
	-10200 -2100 -10200 -1950
Wire Wire Line
	-9850 -2800 -9850 -2750
Wire Wire Line
	-9850 -2450 -9850 -2400
Wire Wire Line
	-9850 -2100 -9850 -1950
Wire Wire Line
	-9500 -2800 -9500 -2750
Wire Wire Line
	-9500 -2450 -9500 -2400
Wire Wire Line
	-9500 -2100 -9500 -1950
Wire Wire Line
	-9200 -2800 -9200 -2750
Wire Wire Line
	-9200 -2450 -9200 -2400
Wire Wire Line
	-9200 -2100 -9200 -1950
Wire Wire Line
	-8850 -2800 -8850 -2750
Wire Wire Line
	-8850 -2450 -8850 -2400
Wire Wire Line
	-8850 -2100 -8850 -1950
Wire Wire Line
	-8500 -2800 -8500 -2750
Wire Wire Line
	-8500 -2450 -8500 -2400
Wire Wire Line
	-8500 -2100 -8500 -1950
Wire Wire Line
	-8150 -2800 -8150 -2750
Wire Wire Line
	-8150 -2450 -8150 -2400
Wire Wire Line
	-8150 -2100 -8150 -1950
Wire Wire Line
	-6950 -1650 -7100 -1650
Wire Wire Line
	-6950 -1750 -7100 -1750
Wire Wire Line
	-7100 -1850 -6950 -1850
Wire Wire Line
	-6950 -1950 -7100 -1950
Wire Wire Line
	-7100 -2050 -6950 -2050
Wire Wire Line
	-7100 -2150 -6950 -2150
Wire Wire Line
	-7100 -2250 -6950 -2250
Wire Wire Line
	-7100 -2350 -6950 -2350
Wire Wire Line
	-6950 -2450 -7100 -2450
Wire Wire Line
	-6950 -2550 -7100 -2550
Wire Wire Line
	-7800 -2900 -7800 -1650
Wire Wire Line
	-7800 -2450 -7600 -2450
Wire Wire Line
	-7800 -2350 -7600 -2350
Connection ~ -7800 -2450
Wire Wire Line
	-7800 -2250 -7600 -2250
Connection ~ -7800 -2350
Wire Wire Line
	-7800 -2150 -7600 -2150
Connection ~ -7800 -2250
Wire Wire Line
	-7800 -2050 -7600 -2050
Connection ~ -7800 -2150
Wire Wire Line
	-7800 -1950 -7600 -1950
Connection ~ -7800 -2050
Wire Wire Line
	-7800 -1850 -7600 -1850
Connection ~ -7800 -1950
Wire Wire Line
	-7800 -1750 -7600 -1750
Connection ~ -7800 -1850
Wire Wire Line
	-7800 -1650 -7600 -1650
Connection ~ -7800 -1750
Wire Wire Line
	-10850 -2800 -10850 -2750
Wire Wire Line
	-10850 -2450 -10850 -2400
Wire Wire Line
	-10850 -2100 -10850 -1950
Wire Wire Line
	-11150 -2800 -11150 -2750
Wire Wire Line
	-11150 -2450 -11150 -2400
Wire Wire Line
	-11150 -2100 -11150 -1950
Wire Wire Line
	-5950 -3550 -6050 -3550
Wire Wire Line
	-5950 -3150 -6050 -3150
Wire Wire Line
	-5950 -2950 -6050 -2950
Wire Wire Line
	-5950 -2750 -6050 -2750
Wire Wire Line
	-5950 -2550 -6050 -2550
Wire Wire Line
	-5950 -2350 -6050 -2350
Wire Wire Line
	-5950 -2150 -6050 -2150
Wire Wire Line
	-5950 -1950 -6050 -1950
Wire Wire Line
	-5950 -1750 -6050 -1750
Wire Wire Line
	-5950 -1550 -6050 -1550
Wire Wire Line
	-6500 -3550 -6350 -3550
Wire Wire Line
	-6500 -1550 -6350 -1550
Wire Wire Line
	-6500 -1750 -6350 -1750
Connection ~ -6500 -1750
Wire Wire Line
	-6500 -1950 -6350 -1950
Connection ~ -6500 -1950
Wire Wire Line
	-6500 -2150 -6350 -2150
Connection ~ -6500 -2150
Wire Wire Line
	-6500 -2350 -6350 -2350
Connection ~ -6500 -2350
Wire Wire Line
	-6500 -2550 -6350 -2550
Connection ~ -6500 -2550
Wire Wire Line
	-6500 -2750 -6350 -2750
Connection ~ -6500 -2750
Wire Wire Line
	-6500 -2950 -6350 -2950
Connection ~ -6500 -2950
Wire Wire Line
	-6500 -3150 -6350 -3150
Connection ~ -6500 -3150
Connection ~ -6500 -3550
Wire Wire Line
	-8050 -6050 -7650 -6050
Wire Wire Line
	-6600 -6150 -6500 -6150
Wire Wire Line
	-7450 -5350 -7500 -5350
Wire Wire Line
	-7450 -5500 -7800 -5500
Wire Wire Line
	-7800 -5500 -7800 -6050
Connection ~ -7800 -6050
Wire Wire Line
	-6500 -6150 -6500 -5500
Wire Wire Line
	-6500 -5500 -6550 -5500
Wire Wire Line
	-6600 -5950 -6400 -5950
Wire Wire Line
	-6400 -5350 -6550 -5350
Wire Wire Line
	-7650 -5850 -7700 -5850
Wire Wire Line
	-7700 -5850 -7700 -6300
Wire Wire Line
	-7650 -5750 -7650 -5700
Wire Wire Line
	-7650 -5700 -7400 -5700
Wire Wire Line
	-7400 -5700 -7400 -5600
Wire Wire Line
	-7400 -5600 -7450 -5600
Connection ~ -6500 -6150
Wire Wire Line
	-6300 -5600 -6300 -6150
Wire Wire Line
	-8050 -6150 -8050 -6050
Wire Wire Line
	-6500 -4100 -6500 -1550
Wire Wire Line
	-6500 -3350 -6350 -3350
Connection ~ -6500 -3350
Wire Wire Line
	-5950 -3350 -6050 -3350
Wire Wire Line
	-6500 -3800 -6350 -3800
Connection ~ -6500 -3800
Wire Wire Line
	-6050 -3800 -5950 -3800
Wire Wire Line
	-1850 -7450 -1950 -7450
Wire Wire Line
	-1850 -7250 -1950 -7250
Wire Wire Line
	-1850 -7050 -1950 -7050
Wire Wire Line
	-1850 -6850 -1950 -6850
Wire Wire Line
	-1850 -6650 -1950 -6650
Wire Wire Line
	-1850 -6450 -1950 -6450
Wire Wire Line
	-1850 -6250 -1950 -6250
Wire Wire Line
	-1850 -6050 -1950 -6050
Wire Wire Line
	-1850 -5850 -1950 -5850
Wire Wire Line
	-2400 -5850 -2250 -5850
Wire Wire Line
	-2400 -6050 -2250 -6050
Connection ~ -2400 -6050
Wire Wire Line
	-2400 -6250 -2250 -6250
Connection ~ -2400 -6250
Wire Wire Line
	-2400 -6450 -2250 -6450
Connection ~ -2400 -6450
Wire Wire Line
	-2400 -6650 -2250 -6650
Connection ~ -2400 -6650
Wire Wire Line
	-2400 -6850 -2250 -6850
Connection ~ -2400 -6850
Wire Wire Line
	-2400 -7050 -2250 -7050
Connection ~ -2400 -7050
Wire Wire Line
	-2400 -7250 -2250 -7250
Connection ~ -2400 -7250
Wire Wire Line
	-2400 -7450 -2250 -7450
Connection ~ -2400 -7450
Wire Wire Line
	-1850 -7650 -1950 -7650
Wire Wire Line
	-2400 -7650 -2250 -7650
Wire Wire Line
	-2400 -8400 -2400 -5850
Connection ~ -2400 -7650
Wire Wire Line
	-6400 -5950 -6400 -5350
Wire Wire Line
	-7600 -2750 -7800 -2750
Connection ~ -7800 -2750
Wire Wire Line
	-7600 -2650 -7800 -2650
Connection ~ -7800 -2650
Wire Wire Line
	-7600 -2550 -7800 -2550
Connection ~ -7800 -2550
Wire Wire Line
	-6950 -2750 -7100 -2750
Wire Wire Line
	-6950 -2650 -7100 -2650
Wire Wire Line
	-11450 -2800 -11450 -2750
Wire Wire Line
	-11450 -2450 -11450 -2400
Wire Wire Line
	-11450 -2100 -11450 -1950
Wire Wire Line
	-11750 -2800 -11750 -2750
Wire Wire Line
	-11750 -2450 -11750 -2400
Wire Wire Line
	-11750 -2100 -11750 -1950
Wire Wire Line
	-1850 -7850 -1950 -7850
Wire Wire Line
	-2250 -7850 -2400 -7850
Connection ~ -2400 -7850
Wire Wire Line
	-1950 -8050 -1850 -8050
Wire Wire Line
	-2250 -8050 -2400 -8050
Connection ~ -2400 -8050
Wire Wire Line
	-2400 -8400 -2350 -8400
Wire Wire Line
	-4850 -4350 -4850 -2950
Connection ~ -4850 -4100
Connection ~ -4850 -3800
Connection ~ -4850 -3500
Connection ~ -4850 -3250
Wire Wire Line
	-5150 -4350 -5150 -2950
Connection ~ -5150 -3250
Connection ~ -5150 -3500
Connection ~ -5150 -3800
Connection ~ -5150 -4100
Wire Wire Line
	-5150 -4100 -5300 -4100
Wire Wire Line
	-4700 -4100 -4850 -4100
Wire Wire Line
	-2700 -4800 -2400 -4800
Wire Wire Line
	-2400 -4850 -2400 -4750
Wire Wire Line
	-2400 -4850 -2150 -4850
Wire Wire Line
	-2400 -4750 -2150 -4750
Connection ~ -2400 -4800
Wire Wire Line
	-2700 -4600 -2700 -4400
Wire Wire Line
	-2700 -4400 -2400 -4400
Wire Wire Line
	-2400 -4450 -2400 -4350
Wire Wire Line
	-2400 -4450 -2150 -4450
Wire Wire Line
	-2400 -4350 -2150 -4350
Connection ~ -2400 -4400
Wire Wire Line
	-2400 -4050 -2150 -4050
Wire Wire Line
	-2400 -4050 -2400 -3950
Wire Wire Line
	-2400 -3950 -2150 -3950
Wire Wire Line
	-2550 -4000 -2400 -4000
Connection ~ -2400 -4000
Wire Wire Line
	-3950 -4750 -3950 -4500
Wire Wire Line
	-3950 -4500 -3750 -4500
Wire Wire Line
	-4850 -3500 -4700 -3500
Wire Wire Line
	-4700 -3900 -4700 -2950
Wire Wire Line
	-4700 -3900 -4500 -3900
Wire Wire Line
	-4700 -2950 -4500 -2950
Connection ~ -4700 -3500
Wire Wire Line
	-4500 -3250 -4700 -3250
Connection ~ -4700 -3250
Wire Wire Line
	-4500 -3550 -4700 -3550
Connection ~ -4700 -3550
$EndSCHEMATC
