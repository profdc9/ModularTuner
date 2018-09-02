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
LIBS:RelayControl-cache
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
L ULN2803A U5
U 1 1 5B8C7F46
P 4600 2950
F 0 "U5" H 4600 3475 50  0000 C CNN
F 1 "ULN2803A" H 4600 3400 50  0000 C CNN
F 2 "Housings_DIP:DIP-18_W7.62mm_Socket" H 4650 2300 50  0001 L CNN
F 3 "" H 4700 2850 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR22
U 1 1 5B8C7F4D
P 2700 900
F 0 "#PWR22" H 2700 750 50  0001 C CNN
F 1 "+5V" H 2700 1040 50  0000 C CNN
F 2 "" H 2700 900 50  0001 C CNN
F 3 "" H 2700 900 50  0001 C CNN
	1    2700 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 5B8C7F53
P 2700 1350
F 0 "#PWR23" H 2700 1100 50  0001 C CNN
F 1 "GND" H 2700 1200 50  0000 C CNN
F 2 "" H 2700 1350 50  0001 C CNN
F 3 "" H 2700 1350 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
$Comp
L CP C9
U 1 1 5B8C7F59
P 5350 5000
F 0 "C9" H 5375 5100 50  0000 L CNN
F 1 "100 uF" H 5375 4900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P5.00mm" H 5388 4850 50  0001 C CNN
F 3 "" H 5350 5000 50  0001 C CNN
	1    5350 5000
	1    0    0    -1  
$EndComp
$Comp
L CP C40
U 1 1 5B8C7F60
P 3750 1150
F 0 "C40" H 3775 1250 50  0000 L CNN
F 1 "100 uF" H 3775 1050 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P5.00mm" H 3788 1000 50  0001 C CNN
F 3 "" H 3750 1150 50  0001 C CNN
	1    3750 1150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J6
U 1 1 5B8C7F67
P 1700 1000
F 0 "J6" H 1700 1100 50  0000 C CNN
F 1 "Conn_01x01" H 1700 900 50  0000 C CNN
F 2 "Connectors:1pin" H 1700 1000 50  0001 C CNN
F 3 "" H 1700 1000 50  0001 C CNN
	1    1700 1000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5B8C7F6E
P 2050 1000
F 0 "J8" H 2050 1100 50  0000 C CNN
F 1 "Conn_01x01" H 2050 900 50  0000 C CNN
F 2 "Connectors:1pin" H 2050 1000 50  0001 C CNN
F 3 "" H 2050 1000 50  0001 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5B8C7F75
P 1650 1250
F 0 "J5" H 1650 1350 50  0000 C CNN
F 1 "Conn_01x01" H 1650 1150 50  0000 C CNN
F 2 "Connectors:1pin" H 1650 1250 50  0001 C CNN
F 3 "" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J7
U 1 1 5B8C7F7C
P 2000 1250
F 0 "J7" H 2000 1350 50  0000 C CNN
F 1 "Conn_01x01" H 2000 1150 50  0000 C CNN
F 2 "Connectors:1pin" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
$Comp
L C C38
U 1 1 5B8C7F83
P 2700 1100
F 0 "C38" H 2725 1200 50  0000 L CNN
F 1 "100 nF" H 2725 1000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2738 950 50  0001 C CNN
F 3 "" H 2700 1100 50  0001 C CNN
	1    2700 1100
	-1   0    0    1   
$EndComp
$Comp
L C C39
U 1 1 5B8C7F8A
P 3100 1150
F 0 "C39" H 3125 1250 50  0000 L CNN
F 1 "100 nF" H 3125 1050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3138 1000 50  0001 C CNN
F 3 "" H 3100 1150 50  0001 C CNN
	1    3100 1150
	-1   0    0    1   
$EndComp
$Comp
L MCP23017 U4
U 1 1 5B8C7F91
P 3300 3950
F 0 "U4" H 3200 4975 50  0000 R CNN
F 1 "MCP23017" H 3200 4900 50  0000 R CNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket" H 3350 3000 50  0001 L CNN
F 3 "" H 3550 4950 50  0001 C CNN
	1    3300 3950
	-1   0    0    1   
$EndComp
$Comp
L Jumper_NC_Dual JP5
U 1 1 5B8C7F98
P 1050 2750
F 0 "JP5" H 1100 2650 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 1050 2850 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1050 2750 50  0001 C CNN
F 3 "" H 1050 2750 50  0001 C CNN
	1    1050 2750
	0    -1   -1   0   
$EndComp
$Comp
L Jumper_NC_Dual JP6
U 1 1 5B8C7F9F
P 1500 2750
F 0 "JP6" H 1550 2650 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 1500 2850 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1500 2750 50  0001 C CNN
F 3 "" H 1500 2750 50  0001 C CNN
	1    1500 2750
	0    -1   -1   0   
$EndComp
$Comp
L Jumper_NC_Dual JP8
U 1 1 5B8C7FA6
P 1950 2750
F 0 "JP8" H 2000 2650 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 1950 2850 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1950 2750 50  0001 C CNN
F 3 "" H 1950 2750 50  0001 C CNN
	1    1950 2750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR16
U 1 1 5B8C7FAD
P 1050 3100
F 0 "#PWR16" H 1050 2850 50  0001 C CNN
F 1 "GND" H 1050 2950 50  0000 C CNN
F 2 "" H 1050 3100 50  0001 C CNN
F 3 "" H 1050 3100 50  0001 C CNN
	1    1050 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR15
U 1 1 5B8C7FB3
P 1050 2350
F 0 "#PWR15" H 1050 2200 50  0001 C CNN
F 1 "+5V" H 1050 2490 50  0000 C CNN
F 2 "" H 1050 2350 50  0001 C CNN
F 3 "" H 1050 2350 50  0001 C CNN
	1    1050 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 5B8C7FB9
P 2150 4050
F 0 "#PWR18" H 2150 3800 50  0001 C CNN
F 1 "GND" H 2150 3900 50  0000 C CNN
F 2 "" H 2150 4050 50  0001 C CNN
F 3 "" H 2150 4050 50  0001 C CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR19
U 1 1 5B8C7FBF
P 2300 3050
F 0 "#PWR19" H 2300 2900 50  0001 C CNN
F 1 "+5V" H 2300 3190 50  0000 C CNN
F 2 "" H 2300 3050 50  0001 C CNN
F 3 "" H 2300 3050 50  0001 C CNN
	1    2300 3050
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B8C7FC5
P 2550 2800
F 0 "R4" V 2630 2800 50  0000 C CNN
F 1 "10k" V 2550 2800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2480 2800 50  0001 C CNN
F 3 "" H 2550 2800 50  0001 C CNN
	1    2550 2800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR21
U 1 1 5B8C7FCC
P 2550 2550
F 0 "#PWR21" H 2550 2400 50  0001 C CNN
F 1 "+5V" H 2550 2690 50  0000 C CNN
F 2 "" H 2550 2550 50  0001 C CNN
F 3 "" H 2550 2550 50  0001 C CNN
	1    2550 2550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B8C7FD2
P 2400 2800
F 0 "R3" V 2480 2800 50  0000 C CNN
F 1 "10k" V 2400 2800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2330 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR20
U 1 1 5B8C7FD9
P 2400 2550
F 0 "#PWR20" H 2400 2400 50  0001 C CNN
F 1 "+5V" H 2400 2690 50  0000 C CNN
F 2 "" H 2400 2550 50  0001 C CNN
F 3 "" H 2400 2550 50  0001 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U6
U 1 1 5B8C7FDF
P 4600 4350
F 0 "U6" H 4600 4875 50  0000 C CNN
F 1 "ULN2803A" H 4600 4800 50  0000 C CNN
F 2 "Housings_DIP:DIP-18_W7.62mm_Socket" H 4650 3700 50  0001 L CNN
F 3 "" H 4700 4250 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$Comp
L Ferrite_Bead_Small L18
U 1 1 5B8C7FE6
P 7800 1900
F 0 "L18" H 7875 1950 50  0000 L CNN
F 1 "100 uH" V 7850 2000 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 1900 50  0001 C CNN
F 3 "" H 7800 1900 50  0001 C CNN
	1    7800 1900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR25
U 1 1 5B8C7FED
P 3400 2800
F 0 "#PWR25" H 3400 2550 50  0001 C CNN
F 1 "GND" H 3400 2650 50  0000 C CNN
F 2 "" H 3400 2800 50  0001 C CNN
F 3 "" H 3400 2800 50  0001 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
NoConn ~ 2000 3550
$Comp
L Conn_01x06 J3
U 1 1 5B8C7FF4
P 1800 3750
F 0 "J3" H 1800 4050 50  0000 C CNN
F 1 "Conn_01x06" H 1800 3350 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-06_06x2.54mm_Straight" H 1800 3750 50  0001 C CNN
F 3 "" H 1800 3750 50  0001 C CNN
	1    1800 3750
	-1   0    0    1   
$EndComp
$Comp
L Jumper_NC_Dual JP7
U 1 1 5B8C7FFB
P 1500 4050
F 0 "JP7" H 1550 3950 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 1500 4150 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1500 4050 50  0001 C CNN
F 3 "" H 1500 4050 50  0001 C CNN
	1    1500 4050
	0    -1   -1   0   
$EndComp
Text GLabel 1700 4450 2    60   Input ~ 0
RLYPWR2
$Comp
L +5V #PWR24
U 1 1 5B8C8003
P 3100 5050
F 0 "#PWR24" H 3100 4900 50  0001 C CNN
F 1 "+5V" H 3100 5190 50  0000 C CNN
F 2 "" H 3100 5050 50  0001 C CNN
F 3 "" H 3100 5050 50  0001 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
$Comp
L Ferrite_Bead_Small L19
U 1 1 5B8C8009
P 7800 2050
F 0 "L19" H 7875 2100 50  0000 L CNN
F 1 "100 uH" V 7850 2150 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2050 50  0001 C CNN
F 3 "" H 7800 2050 50  0001 C CNN
	1    7800 2050
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L20
U 1 1 5B8C8010
P 7800 2200
F 0 "L20" H 7875 2250 50  0000 L CNN
F 1 "100 uH" V 7850 2300 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0001 C CNN
	1    7800 2200
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L21
U 1 1 5B8C8017
P 7800 2350
F 0 "L21" H 7875 2400 50  0000 L CNN
F 1 "100 uH" V 7850 2450 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2350 50  0001 C CNN
F 3 "" H 7800 2350 50  0001 C CNN
	1    7800 2350
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L22
U 1 1 5B8C801E
P 7800 2500
F 0 "L22" H 7875 2550 50  0000 L CNN
F 1 "100 uH" V 7850 2600 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2500 50  0001 C CNN
F 3 "" H 7800 2500 50  0001 C CNN
	1    7800 2500
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L23
U 1 1 5B8C8025
P 7800 2650
F 0 "L23" H 7875 2700 50  0000 L CNN
F 1 "100 uH" V 7850 2750 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2650 50  0001 C CNN
F 3 "" H 7800 2650 50  0001 C CNN
	1    7800 2650
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L24
U 1 1 5B8C802C
P 7800 2800
F 0 "L24" H 7875 2850 50  0000 L CNN
F 1 "100 uH" V 7850 2900 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2800 50  0001 C CNN
F 3 "" H 7800 2800 50  0001 C CNN
	1    7800 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR26
U 1 1 5B8C8033
P 4600 3700
F 0 "#PWR26" H 4600 3450 50  0001 C CNN
F 1 "GND" H 4600 3550 50  0000 C CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 5B8C8039
P 4600 5100
F 0 "#PWR27" H 4600 4850 50  0001 C CNN
F 1 "GND" H 4600 4950 50  0000 C CNN
F 2 "" H 4600 5100 50  0001 C CNN
F 3 "" H 4600 5100 50  0001 C CNN
	1    4600 5100
	1    0    0    -1  
$EndComp
$Comp
L Ferrite_Bead_Small L25
U 1 1 5B8C803F
P 7800 2950
F 0 "L25" H 7875 3000 50  0000 L CNN
F 1 "100 uH" V 7850 3050 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 2950 50  0001 C CNN
F 3 "" H 7800 2950 50  0001 C CNN
	1    7800 2950
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L26
U 1 1 5B8C8046
P 7800 3800
F 0 "L26" H 7875 3850 50  0000 L CNN
F 1 "100 uH" V 7850 3900 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 3800 50  0001 C CNN
F 3 "" H 7800 3800 50  0001 C CNN
	1    7800 3800
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L27
U 1 1 5B8C804D
P 7800 3950
F 0 "L27" H 7875 4000 50  0000 L CNN
F 1 "100 uH" V 7850 4050 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 3950 50  0001 C CNN
F 3 "" H 7800 3950 50  0001 C CNN
	1    7800 3950
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L28
U 1 1 5B8C8054
P 7800 4100
F 0 "L28" H 7875 4150 50  0000 L CNN
F 1 "100 uH" V 7850 4200 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 4100 50  0001 C CNN
F 3 "" H 7800 4100 50  0001 C CNN
	1    7800 4100
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L29
U 1 1 5B8C805B
P 7800 4250
F 0 "L29" H 7875 4300 50  0000 L CNN
F 1 "100 uH" V 7850 4350 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 4250 50  0001 C CNN
F 3 "" H 7800 4250 50  0001 C CNN
	1    7800 4250
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L30
U 1 1 5B8C8062
P 7800 4400
F 0 "L30" H 7875 4450 50  0000 L CNN
F 1 "100 uH" V 7850 4500 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 4400 50  0001 C CNN
F 3 "" H 7800 4400 50  0001 C CNN
	1    7800 4400
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L31
U 1 1 5B8C8069
P 7800 4550
F 0 "L31" H 7875 4600 50  0000 L CNN
F 1 "100 uH" V 7850 4650 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 4550 50  0001 C CNN
F 3 "" H 7800 4550 50  0001 C CNN
	1    7800 4550
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L32
U 1 1 5B8C8070
P 7800 4700
F 0 "L32" H 7875 4750 50  0000 L CNN
F 1 "100 uH" V 7850 4800 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 4700 50  0001 C CNN
F 3 "" H 7800 4700 50  0001 C CNN
	1    7800 4700
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L33
U 1 1 5B8C8077
P 7800 4850
F 0 "L33" H 7875 4900 50  0000 L CNN
F 1 "100 uH" V 7850 4950 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7730 4850 50  0001 C CNN
F 3 "" H 7800 4850 50  0001 C CNN
	1    7800 4850
	0    1    1    0   
$EndComp
Text GLabel 5100 5050 0    60   Input ~ 0
RLYPWR2
$Comp
L C C10
U 1 1 5B8C807F
P 8150 3250
F 0 "C10" H 8175 3350 50  0000 L CNN
F 1 "10 nF" H 8175 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8188 3100 50  0001 C CNN
F 3 "" H 8150 3250 50  0001 C CNN
	1    8150 3250
	-1   0    0    1   
$EndComp
$Comp
L C C24
U 1 1 5B8C8086
P 8400 3250
F 0 "C24" H 8425 3350 50  0000 L CNN
F 1 "10 nF" H 8425 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8438 3100 50  0001 C CNN
F 3 "" H 8400 3250 50  0001 C CNN
	1    8400 3250
	-1   0    0    1   
$EndComp
$Comp
L C C26
U 1 1 5B8C808D
P 8650 3250
F 0 "C26" H 8675 3350 50  0000 L CNN
F 1 "10 nF" H 8675 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8688 3100 50  0001 C CNN
F 3 "" H 8650 3250 50  0001 C CNN
	1    8650 3250
	-1   0    0    1   
$EndComp
$Comp
L C C28
U 1 1 5B8C8094
P 8900 3250
F 0 "C28" H 8925 3350 50  0000 L CNN
F 1 "10 nF" H 8925 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8938 3100 50  0001 C CNN
F 3 "" H 8900 3250 50  0001 C CNN
	1    8900 3250
	-1   0    0    1   
$EndComp
$Comp
L C C30
U 1 1 5B8C809B
P 9150 3250
F 0 "C30" H 9175 3350 50  0000 L CNN
F 1 "10 nF" H 9175 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9188 3100 50  0001 C CNN
F 3 "" H 9150 3250 50  0001 C CNN
	1    9150 3250
	-1   0    0    1   
$EndComp
$Comp
L C C32
U 1 1 5B8C80A2
P 9400 3250
F 0 "C32" H 9425 3350 50  0000 L CNN
F 1 "10 nF" H 9425 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9438 3100 50  0001 C CNN
F 3 "" H 9400 3250 50  0001 C CNN
	1    9400 3250
	-1   0    0    1   
$EndComp
$Comp
L C C34
U 1 1 5B8C80A9
P 9650 3250
F 0 "C34" H 9675 3350 50  0000 L CNN
F 1 "10 nF" H 9675 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9688 3100 50  0001 C CNN
F 3 "" H 9650 3250 50  0001 C CNN
	1    9650 3250
	-1   0    0    1   
$EndComp
$Comp
L C C36
U 1 1 5B8C80B0
P 9900 3250
F 0 "C36" H 9925 3350 50  0000 L CNN
F 1 "10 nF" H 9925 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9938 3100 50  0001 C CNN
F 3 "" H 9900 3250 50  0001 C CNN
	1    9900 3250
	-1   0    0    1   
$EndComp
Text GLabel 5600 3700 0    60   Input ~ 0
RLYPWR2
$Comp
L Ferrite_Bead_Small L34
U 1 1 5B8C80B8
P 7900 3500
F 0 "L34" H 7975 3550 50  0000 L CNN
F 1 "100 uH" V 7950 3600 50  0000 L CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7830 3500 50  0001 C CNN
F 3 "" H 7900 3500 50  0001 C CNN
	1    7900 3500
	0    1    1    0   
$EndComp
$Comp
L C C23
U 1 1 5B8C80BF
P 8200 5100
F 0 "C23" H 8225 5200 50  0000 L CNN
F 1 "10 nF" H 8225 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8238 4950 50  0001 C CNN
F 3 "" H 8200 5100 50  0001 C CNN
	1    8200 5100
	-1   0    0    1   
$EndComp
$Comp
L C C25
U 1 1 5B8C80C6
P 8450 5100
F 0 "C25" H 8475 5200 50  0000 L CNN
F 1 "10 nF" H 8475 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8488 4950 50  0001 C CNN
F 3 "" H 8450 5100 50  0001 C CNN
	1    8450 5100
	-1   0    0    1   
$EndComp
$Comp
L C C27
U 1 1 5B8C80CD
P 8700 5100
F 0 "C27" H 8725 5200 50  0000 L CNN
F 1 "10 nF" H 8725 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8738 4950 50  0001 C CNN
F 3 "" H 8700 5100 50  0001 C CNN
	1    8700 5100
	-1   0    0    1   
$EndComp
$Comp
L C C29
U 1 1 5B8C80D4
P 8950 5100
F 0 "C29" H 8975 5200 50  0000 L CNN
F 1 "10 nF" H 8975 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8988 4950 50  0001 C CNN
F 3 "" H 8950 5100 50  0001 C CNN
	1    8950 5100
	-1   0    0    1   
$EndComp
$Comp
L C C31
U 1 1 5B8C80DB
P 9200 5100
F 0 "C31" H 9225 5200 50  0000 L CNN
F 1 "10 nF" H 9225 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9238 4950 50  0001 C CNN
F 3 "" H 9200 5100 50  0001 C CNN
	1    9200 5100
	-1   0    0    1   
$EndComp
$Comp
L C C33
U 1 1 5B8C80E2
P 9450 5100
F 0 "C33" H 9475 5200 50  0000 L CNN
F 1 "10 nF" H 9475 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9488 4950 50  0001 C CNN
F 3 "" H 9450 5100 50  0001 C CNN
	1    9450 5100
	-1   0    0    1   
$EndComp
$Comp
L C C35
U 1 1 5B8C80E9
P 9700 5100
F 0 "C35" H 9725 5200 50  0000 L CNN
F 1 "10 nF" H 9725 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9738 4950 50  0001 C CNN
F 3 "" H 9700 5100 50  0001 C CNN
	1    9700 5100
	-1   0    0    1   
$EndComp
$Comp
L C C37
U 1 1 5B8C80F0
P 9950 5100
F 0 "C37" H 9975 5200 50  0000 L CNN
F 1 "10 nF" H 9975 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9988 4950 50  0001 C CNN
F 3 "" H 9950 5100 50  0001 C CNN
	1    9950 5100
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x16_Odd_Even J4
U 1 1 5B8C80F7
P 10850 3300
F 0 "J4" H 10900 4100 50  0000 C CNN
F 1 "Conn_02x16_Odd_Even" H 10900 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x16_Pitch2.54mm" H 10850 3300 50  0001 C CNN
F 3 "" H 10850 3300 50  0001 C CNN
	1    10850 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR28
U 1 1 5B8C8207
P 5350 5250
F 0 "#PWR28" H 5350 5000 50  0001 C CNN
F 1 "GND" H 5350 5100 50  0000 C CNN
F 2 "" H 5350 5250 50  0001 C CNN
F 3 "" H 5350 5250 50  0001 C CNN
	1    5350 5250
	1    0    0    -1  
$EndComp
Text GLabel 2550 4000 3    60   Input ~ 0
SDA
Text GLabel 2700 4000 3    60   Input ~ 0
SCL
Text GLabel 1300 3550 0    60   Input ~ 0
EXTPWR
$Comp
L C C57
U 1 1 5B8D4F1B
P 5750 3250
F 0 "C57" H 5775 3350 50  0000 L CNN
F 1 "10 nF" H 5775 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5788 3100 50  0001 C CNN
F 3 "" H 5750 3250 50  0001 C CNN
	1    5750 3250
	-1   0    0    1   
$EndComp
$Comp
L C C59
U 1 1 5B8D4F22
P 6000 3250
F 0 "C59" H 6025 3350 50  0000 L CNN
F 1 "10 nF" H 6025 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6038 3100 50  0001 C CNN
F 3 "" H 6000 3250 50  0001 C CNN
	1    6000 3250
	-1   0    0    1   
$EndComp
$Comp
L C C61
U 1 1 5B8D4F29
P 6250 3250
F 0 "C61" H 6275 3350 50  0000 L CNN
F 1 "10 nF" H 6275 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6288 3100 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	-1   0    0    1   
$EndComp
$Comp
L C C63
U 1 1 5B8D4F30
P 6500 3250
F 0 "C63" H 6525 3350 50  0000 L CNN
F 1 "10 nF" H 6525 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6538 3100 50  0001 C CNN
F 3 "" H 6500 3250 50  0001 C CNN
	1    6500 3250
	-1   0    0    1   
$EndComp
$Comp
L C C65
U 1 1 5B8D4F37
P 6750 3250
F 0 "C65" H 6775 3350 50  0000 L CNN
F 1 "10 nF" H 6775 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6788 3100 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	-1   0    0    1   
$EndComp
$Comp
L C C67
U 1 1 5B8D4F3E
P 7000 3250
F 0 "C67" H 7025 3350 50  0000 L CNN
F 1 "10 nF" H 7025 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7038 3100 50  0001 C CNN
F 3 "" H 7000 3250 50  0001 C CNN
	1    7000 3250
	-1   0    0    1   
$EndComp
$Comp
L C C69
U 1 1 5B8D4F45
P 7250 3250
F 0 "C69" H 7275 3350 50  0000 L CNN
F 1 "10 nF" H 7275 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7288 3100 50  0001 C CNN
F 3 "" H 7250 3250 50  0001 C CNN
	1    7250 3250
	-1   0    0    1   
$EndComp
$Comp
L C C71
U 1 1 5B8D4F4C
P 7500 3250
F 0 "C71" H 7525 3350 50  0000 L CNN
F 1 "10 nF" H 7525 3150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7538 3100 50  0001 C CNN
F 3 "" H 7500 3250 50  0001 C CNN
	1    7500 3250
	-1   0    0    1   
$EndComp
$Comp
L C C58
U 1 1 5B8D4F53
P 5750 5100
F 0 "C58" H 5775 5200 50  0000 L CNN
F 1 "10 nF" H 5775 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5788 4950 50  0001 C CNN
F 3 "" H 5750 5100 50  0001 C CNN
	1    5750 5100
	-1   0    0    1   
$EndComp
$Comp
L C C60
U 1 1 5B8D4F5A
P 6000 5100
F 0 "C60" H 6025 5200 50  0000 L CNN
F 1 "10 nF" H 6025 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6038 4950 50  0001 C CNN
F 3 "" H 6000 5100 50  0001 C CNN
	1    6000 5100
	-1   0    0    1   
$EndComp
$Comp
L C C62
U 1 1 5B8D4F61
P 6250 5100
F 0 "C62" H 6275 5200 50  0000 L CNN
F 1 "10 nF" H 6275 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6288 4950 50  0001 C CNN
F 3 "" H 6250 5100 50  0001 C CNN
	1    6250 5100
	-1   0    0    1   
$EndComp
$Comp
L C C64
U 1 1 5B8D4F68
P 6500 5100
F 0 "C64" H 6525 5200 50  0000 L CNN
F 1 "10 nF" H 6525 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6538 4950 50  0001 C CNN
F 3 "" H 6500 5100 50  0001 C CNN
	1    6500 5100
	-1   0    0    1   
$EndComp
$Comp
L C C66
U 1 1 5B8D4F6F
P 6750 5100
F 0 "C66" H 6775 5200 50  0000 L CNN
F 1 "10 nF" H 6775 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6788 4950 50  0001 C CNN
F 3 "" H 6750 5100 50  0001 C CNN
	1    6750 5100
	-1   0    0    1   
$EndComp
$Comp
L C C68
U 1 1 5B8D4F76
P 7000 5100
F 0 "C68" H 7025 5200 50  0000 L CNN
F 1 "10 nF" H 7025 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7038 4950 50  0001 C CNN
F 3 "" H 7000 5100 50  0001 C CNN
	1    7000 5100
	-1   0    0    1   
$EndComp
$Comp
L C C70
U 1 1 5B8D4F7D
P 7250 5100
F 0 "C70" H 7275 5200 50  0000 L CNN
F 1 "10 nF" H 7275 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7288 4950 50  0001 C CNN
F 3 "" H 7250 5100 50  0001 C CNN
	1    7250 5100
	-1   0    0    1   
$EndComp
$Comp
L C C72
U 1 1 5B8D4F84
P 7500 5100
F 0 "C72" H 7525 5200 50  0000 L CNN
F 1 "10 nF" H 7525 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7538 4950 50  0001 C CNN
F 3 "" H 7500 5100 50  0001 C CNN
	1    7500 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 900  3750 900 
Wire Wire Line
	3100 900  3100 1000
Wire Wire Line
	2700 1300 3750 1300
Wire Wire Line
	2700 1250 2700 1350
Wire Wire Line
	2700 950  2700 900 
Connection ~ 2700 1300
Connection ~ 3100 900 
Connection ~ 3100 1300
Wire Wire Line
	3750 900  3750 1000
Wire Wire Line
	1050 3100 1050 3000
Wire Wire Line
	1050 3000 1950 3000
Connection ~ 1500 3000
Wire Wire Line
	1050 2350 1050 2500
Wire Wire Line
	1500 2500 1500 2450
Wire Wire Line
	1050 2450 1950 2450
Connection ~ 1050 2450
Wire Wire Line
	1950 2450 1950 2500
Connection ~ 1500 2450
Wire Wire Line
	1150 2750 1150 3350
Wire Wire Line
	1600 2750 1600 3250
Wire Wire Line
	1600 3250 2800 3250
Wire Wire Line
	2050 2750 2050 3150
Wire Wire Line
	2050 3150 2800 3150
Wire Wire Line
	2300 3950 2300 4750
Wire Wire Line
	2550 2650 2550 2550
Wire Wire Line
	2400 2550 2400 2650
Wire Wire Line
	2300 4750 2800 4750
Wire Wire Line
	4200 4050 3800 4050
Wire Wire Line
	4200 4150 3800 4150
Wire Wire Line
	4200 4250 3800 4250
Wire Wire Line
	4200 4350 3800 4350
Wire Wire Line
	4200 4450 3800 4450
Wire Wire Line
	4200 4550 3800 4550
Wire Wire Line
	1150 3350 2800 3350
Wire Wire Line
	2000 3950 2300 3950
Wire Wire Line
	2150 3950 2150 4050
Connection ~ 2150 3950
Wire Wire Line
	2000 3850 2300 3850
Wire Wire Line
	2300 3850 2300 3050
Wire Wire Line
	3300 2950 3300 2800
Wire Wire Line
	3300 2800 3400 2800
Wire Wire Line
	2000 3750 2650 3750
Wire Wire Line
	2650 3750 2650 3650
Wire Wire Line
	2650 3650 2800 3650
Wire Wire Line
	2400 2950 2400 3750
Connection ~ 2400 3750
Wire Wire Line
	2550 2950 2550 3650
Wire Wire Line
	2550 3550 2800 3550
Wire Wire Line
	2550 3650 2000 3650
Connection ~ 2550 3550
Wire Wire Line
	2000 3450 2000 3200
Wire Wire Line
	2000 3200 1500 3200
Wire Wire Line
	1500 3200 1500 3800
Wire Wire Line
	2050 3850 2050 4300
Wire Wire Line
	2050 4300 1500 4300
Connection ~ 2050 3850
Wire Wire Line
	1600 4050 1650 4050
Wire Wire Line
	1650 4050 1650 4600
Wire Wire Line
	1650 4450 1700 4450
Wire Wire Line
	3800 4650 4200 4650
Wire Wire Line
	3100 5050 3300 5050
Wire Wire Line
	3300 5050 3300 4950
Wire Wire Line
	5100 2650 5000 2650
Wire Wire Line
	5100 1900 5100 2650
Wire Wire Line
	5150 2750 5000 2750
Wire Wire Line
	5150 2050 5150 2750
Wire Wire Line
	5200 2850 5000 2850
Wire Wire Line
	5200 2200 5200 2850
Wire Wire Line
	5250 2950 5000 2950
Wire Wire Line
	5250 2350 5250 2950
Wire Wire Line
	5000 3050 5300 3050
Wire Wire Line
	5300 3050 5300 2500
Wire Wire Line
	5000 3150 5350 3150
Wire Wire Line
	5350 3150 5350 2650
Wire Wire Line
	5000 3250 5400 3250
Wire Wire Line
	5400 3250 5400 2800
Wire Wire Line
	4600 3700 4600 3650
Wire Wire Line
	4600 5050 4600 5100
Wire Wire Line
	5000 3350 5450 3350
Wire Wire Line
	5450 3350 5450 2950
Wire Wire Line
	5000 4850 5350 4850
Wire Wire Line
	5100 4850 5100 3450
Wire Wire Line
	5100 3450 5000 3450
Wire Wire Line
	5100 5050 5150 5050
Wire Wire Line
	5150 5050 5150 4850
Connection ~ 5100 4850
Wire Wire Line
	5000 4050 5150 4050
Wire Wire Line
	5150 4050 5150 3800
Wire Wire Line
	5000 4150 5200 4150
Wire Wire Line
	5200 4150 5200 3950
Wire Wire Line
	5000 4250 5250 4250
Wire Wire Line
	5250 4250 5250 4100
Wire Wire Line
	5000 4350 5300 4350
Wire Wire Line
	5300 4350 5300 4250
Wire Wire Line
	5000 4450 5350 4450
Wire Wire Line
	5350 4450 5350 4400
Wire Wire Line
	5000 4650 7600 4650
Wire Wire Line
	7600 4700 7700 4700
Wire Wire Line
	5000 4750 7550 4750
Wire Wire Line
	7550 4850 7700 4850
Wire Wire Line
	7900 2950 10300 2950
Wire Wire Line
	8150 2950 8150 3100
Wire Wire Line
	7900 2800 10350 2800
Wire Wire Line
	8400 2800 8400 3100
Wire Wire Line
	7900 2650 10400 2650
Wire Wire Line
	8650 2650 8650 3100
Wire Wire Line
	8900 3100 8900 2500
Wire Wire Line
	7900 2500 10450 2500
Wire Wire Line
	9150 3100 9150 2350
Wire Wire Line
	7900 2350 10500 2350
Wire Wire Line
	9400 3100 9400 2200
Wire Wire Line
	7900 2200 10550 2200
Wire Wire Line
	9650 3100 9650 2050
Wire Wire Line
	7900 2050 10600 2050
Wire Wire Line
	9900 3100 9900 1900
Wire Wire Line
	7900 1900 10650 1900
Wire Wire Line
	5750 3500 7500 3500
Wire Wire Line
	8150 3500 8150 3400
Wire Wire Line
	8000 3500 10100 3500
Wire Wire Line
	8400 3500 8400 3400
Connection ~ 8150 3500
Wire Wire Line
	8650 3500 8650 3400
Connection ~ 8400 3500
Wire Wire Line
	8900 3500 8900 3400
Connection ~ 8650 3500
Wire Wire Line
	9150 3500 9150 3400
Connection ~ 8900 3500
Wire Wire Line
	9400 3500 9400 3400
Connection ~ 9150 3500
Wire Wire Line
	9650 3500 9650 3400
Connection ~ 9400 3500
Wire Wire Line
	9900 3500 9900 3400
Connection ~ 9650 3500
Wire Wire Line
	7900 4850 10650 4850
Wire Wire Line
	8200 4850 8200 4950
Wire Wire Line
	8050 5250 8050 3500
Wire Wire Line
	5750 5250 9950 5250
Connection ~ 8050 3500
Connection ~ 8200 5250
Connection ~ 8450 5250
Connection ~ 8700 5250
Connection ~ 8950 5250
Connection ~ 9200 5250
Connection ~ 9450 5250
Connection ~ 9700 5250
Wire Wire Line
	7900 4700 10500 4700
Wire Wire Line
	8450 4700 8450 4950
Wire Wire Line
	7900 4550 10450 4550
Wire Wire Line
	8700 4550 8700 4950
Wire Wire Line
	7900 4400 10400 4400
Wire Wire Line
	8950 4400 8950 4950
Wire Wire Line
	7900 4250 10350 4250
Wire Wire Line
	9200 4250 9200 4950
Wire Wire Line
	7900 4100 10300 4100
Wire Wire Line
	9450 4100 9450 4950
Wire Wire Line
	7900 3950 10250 3950
Wire Wire Line
	9700 3950 9700 4950
Wire Wire Line
	7900 3800 10200 3800
Wire Wire Line
	9950 3800 9950 4950
Wire Wire Line
	11150 1850 11150 4100
Connection ~ 11150 2700
Connection ~ 11150 2800
Connection ~ 11150 2900
Connection ~ 11150 3000
Connection ~ 11150 3100
Connection ~ 11150 3200
Connection ~ 11150 3300
Connection ~ 11150 3400
Connection ~ 11150 3500
Connection ~ 11150 3600
Connection ~ 11150 3700
Connection ~ 11150 3800
Connection ~ 11150 3900
Connection ~ 11150 4000
Wire Wire Line
	10100 3500 10100 1850
Wire Wire Line
	10100 1850 11150 1850
Connection ~ 11150 2600
Connection ~ 9900 3500
Wire Wire Line
	4200 4750 3800 4750
Wire Wire Line
	10650 1900 10650 2600
Connection ~ 9900 1900
Wire Wire Line
	10600 2050 10600 2700
Wire Wire Line
	10600 2700 10650 2700
Connection ~ 9650 2050
Wire Wire Line
	10550 2200 10550 2800
Wire Wire Line
	10550 2800 10650 2800
Connection ~ 9400 2200
Wire Wire Line
	10500 2350 10500 2900
Wire Wire Line
	10500 2900 10650 2900
Connection ~ 9150 2350
Wire Wire Line
	10450 2500 10450 3000
Wire Wire Line
	10450 3000 10650 3000
Connection ~ 8900 2500
Wire Wire Line
	10400 2650 10400 3100
Wire Wire Line
	10400 3100 10650 3100
Connection ~ 8650 2650
Wire Wire Line
	10350 2800 10350 3200
Wire Wire Line
	10350 3200 10650 3200
Wire Wire Line
	10300 2950 10300 3300
Wire Wire Line
	10300 3300 10650 3300
Wire Wire Line
	10200 3800 10200 3400
Wire Wire Line
	10200 3400 10650 3400
Connection ~ 9950 3800
Wire Wire Line
	10250 3950 10250 3500
Wire Wire Line
	10250 3500 10650 3500
Connection ~ 9700 3950
Wire Wire Line
	10300 4100 10300 3600
Wire Wire Line
	10300 3600 10650 3600
Connection ~ 9450 4100
Wire Wire Line
	10350 4250 10350 3700
Wire Wire Line
	10350 3700 10650 3700
Wire Wire Line
	10400 4400 10400 3800
Wire Wire Line
	10400 3800 10650 3800
Connection ~ 8950 4400
Wire Wire Line
	10450 4550 10450 3900
Wire Wire Line
	10450 3900 10650 3900
Connection ~ 8700 4550
Wire Wire Line
	10500 4700 10500 4000
Wire Wire Line
	10500 4000 10650 4000
Connection ~ 8450 4700
Connection ~ 8150 2950
Wire Wire Line
	10650 4850 10650 4100
Connection ~ 8200 4850
Connection ~ 9200 4250
Connection ~ 8400 2800
Wire Wire Line
	4150 3350 4200 3350
Wire Wire Line
	3800 3850 4150 3850
Wire Wire Line
	4150 3850 4150 3350
Wire Wire Line
	4100 3250 4200 3250
Wire Wire Line
	3800 3750 4100 3750
Wire Wire Line
	4100 3750 4100 3250
Wire Wire Line
	4050 3150 4200 3150
Wire Wire Line
	3800 3650 4050 3650
Wire Wire Line
	4050 3650 4050 3150
Wire Wire Line
	4000 3050 4200 3050
Wire Wire Line
	3800 3550 4000 3550
Wire Wire Line
	4000 3550 4000 3050
Wire Wire Line
	3800 3150 3800 2650
Wire Wire Line
	3800 3250 3850 3250
Wire Wire Line
	3850 3250 3850 2750
Wire Wire Line
	3950 2950 4200 2950
Wire Wire Line
	3800 3450 3950 3450
Wire Wire Line
	3950 3450 3950 2950
Wire Wire Line
	3900 2850 4200 2850
Wire Wire Line
	3800 3350 3900 3350
Wire Wire Line
	3900 3350 3900 2850
Wire Wire Line
	3850 2750 4200 2750
Wire Wire Line
	3800 2650 4200 2650
Connection ~ 5150 4850
Wire Wire Line
	5350 5150 5350 5250
Wire Wire Line
	2550 4000 2550 3550
Wire Wire Line
	2700 4000 2700 3650
Connection ~ 2700 3650
Wire Wire Line
	1500 3550 1300 3550
Connection ~ 1500 3550
Wire Wire Line
	5750 3400 5750 3500
Wire Wire Line
	6000 3400 6000 3500
Connection ~ 6000 3500
Wire Wire Line
	6250 3400 6250 3500
Connection ~ 6250 3500
Wire Wire Line
	6500 3400 6500 3500
Connection ~ 6500 3500
Wire Wire Line
	6750 3400 6750 3500
Connection ~ 6750 3500
Wire Wire Line
	7000 3400 7000 3500
Connection ~ 7000 3500
Wire Wire Line
	7250 3400 7250 3500
Connection ~ 7250 3500
Wire Wire Line
	7500 3400 7500 3600
Wire Wire Line
	5750 3100 5750 2950
Connection ~ 5750 2950
Wire Wire Line
	6000 2800 6000 3100
Connection ~ 6000 2800
Wire Wire Line
	6250 3100 6250 2650
Connection ~ 6250 2650
Wire Wire Line
	6500 3100 6500 2500
Connection ~ 6500 2500
Wire Wire Line
	6750 3100 6750 2350
Connection ~ 6750 2350
Wire Wire Line
	7000 3100 7000 2200
Connection ~ 7000 2200
Wire Wire Line
	7250 3100 7250 2050
Connection ~ 7250 2050
Wire Wire Line
	7500 3100 7500 1900
Connection ~ 7500 1900
Connection ~ 6000 5250
Connection ~ 6250 5250
Connection ~ 6500 5250
Connection ~ 7500 5250
Connection ~ 7250 5250
Connection ~ 6750 5250
Connection ~ 7000 5250
Wire Wire Line
	5750 4750 5750 4950
Connection ~ 5750 4750
Wire Wire Line
	6000 4650 6000 4950
Connection ~ 6000 4650
Wire Wire Line
	6250 4950 6250 4550
Connection ~ 6250 4550
Wire Wire Line
	6500 4950 6500 4400
Connection ~ 6500 4400
Wire Wire Line
	6750 4950 6750 4250
Connection ~ 6750 4250
Wire Wire Line
	7000 4950 7000 4100
Connection ~ 7000 4100
Wire Wire Line
	7250 4950 7250 3950
Connection ~ 7250 3950
Wire Wire Line
	7500 4950 7500 3800
Connection ~ 7500 3800
Connection ~ 8050 5250
Wire Wire Line
	5150 3800 7700 3800
Wire Wire Line
	5200 3950 7700 3950
Wire Wire Line
	5250 4100 7700 4100
Wire Wire Line
	5300 4250 7700 4250
Wire Wire Line
	5350 4400 7700 4400
Wire Wire Line
	5000 4550 7700 4550
Wire Wire Line
	7600 4650 7600 4700
Wire Wire Line
	7550 4750 7550 4850
Wire Wire Line
	5100 1900 7700 1900
Wire Wire Line
	5150 2050 7700 2050
Wire Wire Line
	5200 2200 7700 2200
Wire Wire Line
	5250 2350 7700 2350
Wire Wire Line
	5300 2500 7700 2500
Wire Wire Line
	5350 2650 7700 2650
Wire Wire Line
	5400 2800 7700 2800
Wire Wire Line
	5450 2950 7700 2950
Wire Wire Line
	5600 3700 7800 3700
Wire Wire Line
	7800 3700 7800 3500
Wire Wire Line
	7500 3600 8050 3600
Connection ~ 7500 3500
Connection ~ 8050 3600
$Comp
L C C74
U 1 1 5B8DE52F
P 1650 4750
F 0 "C74" H 1675 4850 50  0000 L CNN
F 1 "100 nF" H 1675 4650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1688 4600 50  0001 C CNN
F 3 "" H 1650 4750 50  0001 C CNN
	1    1650 4750
	-1   0    0    1   
$EndComp
Connection ~ 1650 4450
$Comp
L GND #PWR17
U 1 1 5B8DEA36
P 1650 4950
F 0 "#PWR17" H 1650 4700 50  0001 C CNN
F 1 "GND" H 1650 4800 50  0000 C CNN
F 2 "" H 1650 4950 50  0001 C CNN
F 3 "" H 1650 4950 50  0001 C CNN
	1    1650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4900 1650 4950
$EndSCHEMATC