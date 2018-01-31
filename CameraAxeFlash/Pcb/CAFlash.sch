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
LIBS:CA6
LIBS:CAFlash-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Audio-Jack-3 J3
U 1 1 5A4C1C28
P 1200 2850
F 0 "J3" H 1150 3025 50  0000 C CNN
F 1 "3.5mm Jack" H 1300 2780 50  0000 C CNN
F 2 "CA6:161-3334-E_Big_Pad" H 1450 2950 50  0001 C CNN
F 3 "" H 1450 2950 50  0001 C CNN
	1    1200 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q2
U 1 1 5A4C1D8D
P 6250 4400
F 0 "Q2" H 6450 4450 50  0000 L CNN
F 1 "IRFS4227" H 6450 4350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 6450 4500 50  0001 C CNN
F 3 "" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
$Comp
L TC4420 U4
U 1 1 5A4C2B04
P 5000 4400
F 0 "U4" H 5000 4650 60  0000 C CNN
F 1 "TC4420" H 5000 4150 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 4800 4300 60  0001 C CNN
F 3 "" H 4800 4300 60  0001 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A4D1239
P 1000 3150
F 0 "#PWR01" H 1000 2900 50  0001 C CNN
F 1 "GND" H 1000 3000 50  0000 C CNN
F 2 "" H 1000 3150 50  0001 C CNN
F 3 "" H 1000 3150 50  0001 C CNN
	1    1000 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A4D149B
P 2350 6100
F 0 "#PWR02" H 2350 5950 50  0001 C CNN
F 1 "+5V" H 2350 6240 50  0000 C CNN
F 2 "" H 2350 6100 50  0001 C CNN
F 3 "" H 2350 6100 50  0001 C CNN
	1    2350 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A4D14D8
P 2350 7400
F 0 "#PWR03" H 2350 7150 50  0001 C CNN
F 1 "GND" H 2350 7250 50  0000 C CNN
F 2 "" H 2350 7400 50  0001 C CNN
F 3 "" H 2350 7400 50  0001 C CNN
	1    2350 7400
	1    0    0    -1  
$EndComp
Text Label 4700 7250 0    60   ~ 0
boost
Text Label 4700 6450 0    60   ~ 0
tip
Text Label 4700 6250 0    60   ~ 0
temp
Text Label 4700 6150 0    60   ~ 0
voltage
$Comp
L R R4
U 1 1 5A4D1ACA
P 1700 3050
F 0 "R4" V 1780 3050 50  0000 C CNN
F 1 "2K2" V 1700 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1630 3050 50  0001 C CNN
F 3 "" H 1700 3050 50  0001 C CNN
	1    1700 3050
	1    0    0    -1  
$EndComp
Text Label 2050 2850 0    60   ~ 0
tip
Text Label 4700 7050 0    60   ~ 0
led
$Comp
L +5V #PWR04
U 1 1 5A4D1AFD
P 1800 3250
F 0 "#PWR04" H 1800 3100 50  0001 C CNN
F 1 "+5V" H 1800 3390 50  0000 C CNN
F 2 "" H 1800 3250 50  0001 C CNN
F 3 "" H 1800 3250 50  0001 C CNN
	1    1800 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A4D27E4
P 5000 4800
F 0 "#PWR05" H 5000 4550 50  0001 C CNN
F 1 "GND" H 5000 4650 50  0000 C CNN
F 2 "" H 5000 4800 50  0001 C CNN
F 3 "" H 5000 4800 50  0001 C CNN
	1    5000 4800
	1    0    0    -1  
$EndComp
Text Label 4300 4350 2    60   ~ 0
led
$Comp
L GND #PWR06
U 1 1 5A4D29E8
P 6350 4700
F 0 "#PWR06" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6350 4550 50  0000 C CNN
F 2 "" H 6350 4700 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A4D2BF4
P 6350 3400
F 0 "R7" V 6430 3400 50  0000 C CNN
F 1 "5" V 6350 3400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_Power_L25.0mm_W9.0mm_P27.94mm" V 6280 3400 50  0001 C CNN
F 3 "" H 6350 3400 50  0001 C CNN
	1    6350 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A4D360B
P 9650 2050
F 0 "#PWR07" H 9650 1800 50  0001 C CNN
F 1 "GND" H 9650 1900 50  0000 C CNN
F 2 "" H 9650 2050 50  0001 C CNN
F 3 "" H 9650 2050 50  0001 C CNN
	1    9650 2050
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 5A4D3A62
P 6000 1700
F 0 "Q1" H 6200 1750 50  0000 L CNN
F 1 "FQD10N20CTM" H 6200 1650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 6200 1800 50  0001 C CNN
F 3 "" H 6000 1700 50  0001 C CNN
	1    6000 1700
	-1   0    0    -1  
$EndComp
Text Notes 5050 0    0    60   ~ 0
Boost Converter - https://learn.adafruit.com/diy-boost-calc\nhttp://uzzors2k.4hv.org/index.php?page=450vboostconverter
$Comp
L L L1
U 1 1 5A4D44E9
P 5700 1000
F 0 "L1" V 5650 1000 50  0000 C CNN
F 1 "100uH" V 5775 1000 50  0000 C CNN
F 2 "CA6:Bourns_SDR1307A" H 5700 1000 50  0001 C CNN
F 3 "" H 5700 1000 50  0001 C CNN
	1    5700 1000
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D2
U 1 1 5A4D47E2
P 6200 1000
F 0 "D2" H 6200 1100 50  0000 C CNN
F 1 "D_Schottky" H 6200 900 50  0000 C CNN
F 2 "Diodes_SMD:D_SMC" H 6200 1000 50  0001 C CNN
F 3 "" H 6200 1000 50  0001 C CNN
	1    6200 1000
	-1   0    0    1   
$EndComp
$Comp
L D_Schottky D3
U 1 1 5A4D48ED
P 6350 3850
F 0 "D3" H 6350 3950 50  0000 C CNN
F 1 "D_Schottky" H 6350 3750 50  0000 C CNN
F 2 "Diodes_SMD:D_SMC" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0001 C CNN
	1    6350 3850
	0    1    1    0   
$EndComp
$Comp
L CP1 C1
U 1 1 5A4D4D53
P 2000 1250
F 0 "C1" H 2025 1350 50  0000 L CNN
F 1 "100uF" H 2025 1150 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
$Comp
L ATTINY44-20SSU U3
U 1 1 5A4D5875
P 3500 6750
F 0 "U3" H 2650 7500 50  0000 C CNN
F 1 "ATTINY44-20SSU" H 4200 6000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3500 6550 50  0001 C CIN
F 3 "" H 3500 6750 50  0001 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
Text Label 4700 6350 0    60   ~ 0
ring
$Comp
L Conn_01x06 J2
U 1 1 5A4D6CC4
P 950 6550
F 0 "J2" H 950 6850 50  0000 C CNN
F 1 "Programmer" H 950 6150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 950 6550 50  0001 C CNN
F 3 "" H 950 6550 50  0001 C CNN
	1    950  6550
	-1   0    0    1   
$EndComp
$Comp
L Jack-DC J1
U 1 1 5A4D75B2
P 900 1100
F 0 "J1" H 900 1310 50  0000 C CNN
F 1 "Jack-DC" H 900 925 50  0000 C CNN
F 2 "CA6:BARREL_JACK_Round" H 950 1060 50  0001 C CNN
F 3 "" H 950 1060 50  0001 C CNN
	1    900  1100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 5A4D79F8
P 1250 950
F 0 "#PWR08" H 1250 800 50  0001 C CNN
F 1 "+12V" H 1250 1090 50  0000 C CNN
F 2 "" H 1250 950 50  0001 C CNN
F 3 "" H 1250 950 50  0001 C CNN
	1    1250 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A4D7B09
P 1350 1750
F 0 "#PWR09" H 1350 1500 50  0001 C CNN
F 1 "GND" H 1350 1600 50  0000 C CNN
F 2 "" H 1350 1750 50  0001 C CNN
F 3 "" H 1350 1750 50  0001 C CNN
	1    1350 1750
	1    0    0    -1  
$EndComp
$Comp
L L7805 U2
U 1 1 5A4D7D38
P 2800 1100
F 0 "U2" H 2650 1225 50  0000 C CNN
F 1 "L7805" H 2800 1225 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 2825 950 50  0001 L CIN
F 3 "" H 2800 1050 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A4D7E49
P 2800 1500
F 0 "#PWR010" H 2800 1250 50  0001 C CNN
F 1 "GND" H 2800 1350 50  0000 C CNN
F 2 "" H 2800 1500 50  0001 C CNN
F 3 "" H 2800 1500 50  0001 C CNN
	1    2800 1500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A4D8044
P 2300 1250
F 0 "C2" H 2325 1350 50  0000 L CNN
F 1 "0.1uF" H 2325 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2338 1100 50  0001 C CNN
F 3 "" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A4D8302
P 2300 1500
F 0 "#PWR011" H 2300 1250 50  0001 C CNN
F 1 "GND" H 2300 1350 50  0000 C CNN
F 2 "" H 2300 1500 50  0001 C CNN
F 3 "" H 2300 1500 50  0001 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5A4D83CC
P 2000 1500
F 0 "#PWR012" H 2000 1250 50  0001 C CNN
F 1 "GND" H 2000 1350 50  0000 C CNN
F 2 "" H 2000 1500 50  0001 C CNN
F 3 "" H 2000 1500 50  0001 C CNN
	1    2000 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A4D84F9
P 3650 1500
F 0 "#PWR013" H 3650 1250 50  0001 C CNN
F 1 "GND" H 3650 1350 50  0000 C CNN
F 2 "" H 3650 1500 50  0001 C CNN
F 3 "" H 3650 1500 50  0001 C CNN
	1    3650 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A4D84FF
P 3350 1500
F 0 "#PWR014" H 3350 1250 50  0001 C CNN
F 1 "GND" H 3350 1350 50  0000 C CNN
F 2 "" H 3350 1500 50  0001 C CNN
F 3 "" H 3350 1500 50  0001 C CNN
	1    3350 1500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR015
U 1 1 5A4D8801
P 2000 1050
F 0 "#PWR015" H 2000 900 50  0001 C CNN
F 1 "+12V" H 2000 1190 50  0000 C CNN
F 2 "" H 2000 1050 50  0001 C CNN
F 3 "" H 2000 1050 50  0001 C CNN
	1    2000 1050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 5A4D884B
P 3650 1050
F 0 "#PWR016" H 3650 900 50  0001 C CNN
F 1 "+5V" H 3650 1190 50  0000 C CNN
F 2 "" H 3650 1050 50  0001 C CNN
F 3 "" H 3650 1050 50  0001 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A4D8BE6
P 1700 2550
F 0 "R3" V 1780 2550 50  0000 C CNN
F 1 "2K2" V 1700 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1630 2550 50  0001 C CNN
F 3 "" H 1700 2550 50  0001 C CNN
	1    1700 2550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5A4D8C48
P 1700 2300
F 0 "#PWR017" H 1700 2150 50  0001 C CNN
F 1 "+5V" H 1700 2440 50  0000 C CNN
F 2 "" H 1700 2300 50  0001 C CNN
F 3 "" H 1700 2300 50  0001 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
Text Label 2050 2750 0    60   ~ 0
ring
$Comp
L +12V #PWR018
U 1 1 5A4D966B
P 4900 950
F 0 "#PWR018" H 4900 800 50  0001 C CNN
F 1 "+12V" H 4900 1090 50  0000 C CNN
F 2 "" H 4900 950 50  0001 C CNN
F 3 "" H 4900 950 50  0001 C CNN
	1    4900 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5A4DAA70
P 5450 1350
F 0 "#PWR019" H 5450 1100 50  0001 C CNN
F 1 "GND" H 5450 1200 50  0000 C CNN
F 2 "" H 5450 1350 50  0001 C CNN
F 3 "" H 5450 1350 50  0001 C CNN
	1    5450 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5A4DB4DF
P 5900 1900
F 0 "#PWR020" H 5900 1650 50  0001 C CNN
F 1 "GND" H 5900 1750 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "" H 5900 1900 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
Text Label 6600 1700 0    60   ~ 0
boost
$Comp
L R R8
U 1 1 5A4DB9AA
P 6400 1700
F 0 "R8" V 6480 1700 50  0000 C CNN
F 1 "470" V 6400 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6330 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	0    1    1    0   
$EndComp
$Comp
L LED_LIGHT_PIPE U1
U 1 1 5A4DD37A
P 2050 4850
F 0 "U1" H 2050 5050 60  0000 C CNN
F 1 "LED_LIGHT_PIPE" H 2050 4640 60  0000 C CNN
F 2 "CA6:SLP3-150-100-R" H 2050 4850 60  0001 C CNN
F 3 "" H 2050 4850 60  0000 C CNN
	1    2050 4850
	1    0    0    -1  
$EndComp
$Comp
L LED2C D1
U 1 1 5A4DD550
P 1300 4950
F 0 "D1" H 1255 5260 50  0000 C CNN
F 1 "LED2C" H 1450 4850 50  0000 C CNN
F 2 "CA6:LED-SOT-23" V 1135 5120 60  0001 C CNN
F 3 "" V 1135 5120 60  0000 C CNN
	1    1300 4950
	1    0    0    -1  
$EndComp
Text Label 4700 7150 0    60   ~ 0
green
$Comp
L R R1
U 1 1 5A4DE14D
P 1150 4400
F 0 "R1" V 1230 4400 50  0000 C CNN
F 1 "470" V 1150 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1080 4400 50  0001 C CNN
F 3 "" H 1150 4400 50  0001 C CNN
	1    1150 4400
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5A4DE29F
P 1450 4400
F 0 "R2" V 1530 4400 50  0000 C CNN
F 1 "470" V 1450 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1380 4400 50  0001 C CNN
F 3 "" H 1450 4400 50  0001 C CNN
	1    1450 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR021
U 1 1 5A4DE552
P 1300 5150
F 0 "#PWR021" H 1300 4900 50  0001 C CNN
F 1 "GND" H 1300 5000 50  0000 C CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	1    0    0    -1  
$EndComp
Text Label 900  4200 0    60   ~ 0
green
$Comp
L Thermistor TH1
U 1 1 5A4DF7F2
P 9950 4450
F 0 "TH1" V 10050 4500 50  0000 C CNN
F 1 "Thermistor" V 9850 4450 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 9950 4450 50  0001 C CNN
F 3 "" H 9950 4450 50  0001 C CNN
	1    9950 4450
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5A4DFCA7
P 9950 4000
F 0 "R13" V 10030 4000 50  0000 C CNN
F 1 "10K" V 9950 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9880 4000 50  0001 C CNN
F 3 "" H 9950 4000 50  0001 C CNN
	1    9950 4000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR022
U 1 1 5A4DFF0A
P 9950 3750
F 0 "#PWR022" H 9950 3600 50  0001 C CNN
F 1 "+5V" H 9950 3890 50  0000 C CNN
F 2 "" H 9950 3750 50  0001 C CNN
F 3 "" H 9950 3750 50  0001 C CNN
	1    9950 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5A4E01EA
P 9950 4750
F 0 "#PWR023" H 9950 4500 50  0001 C CNN
F 1 "GND" H 9950 4600 50  0000 C CNN
F 2 "" H 9950 4750 50  0001 C CNN
F 3 "" H 9950 4750 50  0001 C CNN
	1    9950 4750
	1    0    0    -1  
$EndComp
Text Label 9500 4200 2    60   ~ 0
temp
$Comp
L R R12
U 1 1 5A4E28B6
P 9950 950
F 0 "R12" V 10030 950 50  0000 C CNN
F 1 "1M" V 9950 950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9880 950 50  0001 C CNN
F 3 "" H 9950 950 50  0001 C CNN
	1    9950 950 
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5A4E29C2
P 10150 1200
F 0 "R14" V 10230 1200 50  0000 C CNN
F 1 "10K" V 10150 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10080 1200 50  0001 C CNN
F 3 "" H 10150 1200 50  0001 C CNN
	1    10150 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR024
U 1 1 5A4E2A45
P 10150 1800
F 0 "#PWR024" H 10150 1550 50  0001 C CNN
F 1 "GND" H 10150 1650 50  0000 C CNN
F 2 "" H 10150 1800 50  0001 C CNN
F 3 "" H 10150 1800 50  0001 C CNN
	1    10150 1800
	1    0    0    -1  
$EndComp
Text Label 10250 950  0    60   ~ 0
voltage
$Comp
L GND #PWR025
U 1 1 5A4E64D3
P 1250 6850
F 0 "#PWR025" H 1250 6600 50  0001 C CNN
F 1 "GND" H 1250 6700 50  0000 C CNN
F 2 "" H 1250 6850 50  0001 C CNN
F 3 "" H 1250 6850 50  0001 C CNN
	1    1250 6850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 5A4E6583
P 1750 6150
F 0 "#PWR026" H 1750 6000 50  0001 C CNN
F 1 "+5V" H 1750 6290 50  0000 C CNN
F 2 "" H 1750 6150 50  0001 C CNN
F 3 "" H 1750 6150 50  0001 C CNN
	1    1750 6150
	1    0    0    -1  
$EndComp
Text Label 1300 6650 0    60   ~ 0
sck
Text Label 1300 6450 0    60   ~ 0
miso
Text Label 1300 6350 0    60   ~ 0
mosi_red
Text Label 1300 6250 0    60   ~ 0
rst
Text Label 4700 6750 0    60   ~ 0
mosi_red
Text Label 4700 6650 0    60   ~ 0
miso
Text Label 4700 6550 0    60   ~ 0
sck
Text Label 4700 7350 0    60   ~ 0
rst
Text Notes 850  700  0    118  ~ 24
Power
Text Notes 900  2250 0    118  ~ 24
Input
Text Notes 850  3950 0    118  ~ 24
Indicator Light
Text Notes 1000 5750 0    118  ~ 24
Microcontroller
Text Notes 4300 3250 0    118  ~ 24
Trigger Mosfet
Text Notes 4750 700  0    118  ~ 24
Cap Charging Boost Converter
Text Notes 9400 700  0    118  ~ 24
Flash Cap
Text Notes 9350 3350 0    118  ~ 24
Temp Probe
Text Notes 2550 8950 0    79   ~ 0
Firmware Overview:\n* Write fast digital read/write and analog reads\n* See spice file for logic controlling boost mosfet\n* Interupt triggers on change to tip - Sets flash LED on/off (mirrors ca6 flash delay and duration settings)
Text Notes 9150 2500 0    79   ~ 0
Planned max cap voltage is 180V
$Comp
L R R5
U 1 1 5A4F220B
P 4350 4700
F 0 "R5" V 4430 4700 50  0000 C CNN
F 1 "100K" V 4350 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4280 4700 50  0001 C CNN
F 3 "" H 4350 4700 50  0001 C CNN
	1    4350 4700
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 5A4F23A3
P 6550 1850
F 0 "R9" V 6630 1850 50  0000 C CNN
F 1 "100K" V 6550 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6480 1850 50  0001 C CNN
F 3 "" H 6550 1850 50  0001 C CNN
	1    6550 1850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR027
U 1 1 5A4F2668
P 6550 2050
F 0 "#PWR027" H 6550 1800 50  0001 C CNN
F 1 "GND" H 6550 1900 50  0000 C CNN
F 2 "" H 6550 2050 50  0001 C CNN
F 3 "" H 6550 2050 50  0001 C CNN
	1    6550 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5A4F2C21
P 4350 4900
F 0 "#PWR028" H 4350 4650 50  0001 C CNN
F 1 "GND" H 4350 4750 50  0000 C CNN
F 2 "" H 4350 4900 50  0001 C CNN
F 3 "" H 4350 4900 50  0001 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A4FC972
P 6000 4600
F 0 "R6" V 6080 4600 50  0000 C CNN
F 1 "100K" V 6000 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5930 4600 50  0001 C CNN
F 3 "" H 6000 4600 50  0001 C CNN
	1    6000 4600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR029
U 1 1 5A4FCC92
P 6000 4800
F 0 "#PWR029" H 6000 4550 50  0001 C CNN
F 1 "GND" H 6000 4650 50  0000 C CNN
F 2 "" H 6000 4800 50  0001 C CNN
F 3 "" H 6000 4800 50  0001 C CNN
	1    6000 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5A5010B1
P 5200 3900
F 0 "#PWR030" H 5200 3650 50  0001 C CNN
F 1 "GND" H 5200 3750 50  0000 C CNN
F 2 "" H 5200 3900 50  0001 C CNN
F 3 "" H 5200 3900 50  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 5A5036C0
P 3350 1250
F 0 "C4" H 3375 1350 50  0000 L CNN
F 1 "100uF" H 3375 1150 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 3350 1250 50  0001 C CNN
F 3 "" H 3350 1250 50  0001 C CNN
	1    3350 1250
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A5048BE
P 3650 1250
F 0 "C5" H 3675 1350 50  0000 L CNN
F 1 "0.1uF" H 3675 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3688 1100 50  0001 C CNN
F 3 "" H 3650 1250 50  0001 C CNN
	1    3650 1250
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5A5049C5
P 5450 1150
F 0 "C9" H 5475 1250 50  0000 L CNN
F 1 "0.1uF" H 5475 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5488 1000 50  0001 C CNN
F 3 "" H 5450 1150 50  0001 C CNN
	1    5450 1150
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5A504C83
P 5200 3700
F 0 "C8" H 5225 3800 50  0000 L CNN
F 1 "0.1uF" H 5225 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5238 3550 50  0001 C CNN
F 3 "" H 5200 3700 50  0001 C CNN
	1    5200 3700
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A504E91
P 2350 6700
F 0 "C3" H 2375 6800 50  0000 L CNN
F 1 "0.1uF" H 2375 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2388 6550 50  0001 C CNN
F 3 "" H 2350 6700 50  0001 C CNN
	1    2350 6700
	1    0    0    -1  
$EndComp
Text Notes 7300 3900 0    60   ~ 0
LED
$Comp
L Conn_01x01 J4
U 1 1 5A5252D5
P 7000 3700
F 0 "J4" H 7000 3800 50  0000 C CNN
F 1 "LED+" H 7000 3600 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 7000 3700 50  0001 C CNN
F 3 "" H 7000 3700 50  0001 C CNN
	1    7000 3700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5A525377
P 7000 4000
F 0 "J5" H 7000 4100 50  0000 C CNN
F 1 "LED-" H 7000 3900 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 7000 4000 50  0001 C CNN
F 3 "" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J6
U 1 1 5A525E1D
P 9850 1700
F 0 "J6" H 9850 1800 50  0000 C CNN
F 1 "CAP+" H 9850 1600 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 9850 1700 50  0001 C CNN
F 3 "" H 9850 1700 50  0001 C CNN
	1    9850 1700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J7
U 1 1 5A525F17
P 9850 2000
F 0 "J7" H 9850 2100 50  0000 C CNN
F 1 "CAP-" H 9850 1900 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 9850 2000 50  0001 C CNN
F 3 "" H 9850 2000 50  0001 C CNN
	1    9850 2000
	1    0    0    -1  
$EndComp
Text GLabel 6500 1000 2    60   Input ~ 0
FLASH_CAP
Text GLabel 9450 950  0    60   Input ~ 0
FLASH_CAP
Text GLabel 6500 3200 2    60   Input ~ 0
FLASH_CAP
NoConn ~ 1200 1100
$Comp
L HOLE X1
U 1 1 5A528B1C
P 2350 700
F 0 "X1" H 2350 600 60  0000 C CNN
F 1 "HOLE" H 2350 800 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 2350 700 60  0001 C CNN
F 3 "" H 2350 700 60  0000 C CNN
	1    2350 700 
	1    0    0    -1  
$EndComp
$Comp
L HOLE X2
U 1 1 5A529463
P 2650 700
F 0 "X2" H 2650 600 60  0000 C CNN
F 1 "HOLE" H 2650 800 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 2650 700 60  0001 C CNN
F 3 "" H 2650 700 60  0000 C CNN
	1    2650 700 
	1    0    0    -1  
$EndComp
$Comp
L HOLE X3
U 1 1 5A529504
P 2950 700
F 0 "X3" H 2950 600 60  0000 C CNN
F 1 "HOLE" H 2950 800 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 2950 700 60  0001 C CNN
F 3 "" H 2950 700 60  0000 C CNN
	1    2950 700 
	1    0    0    -1  
$EndComp
$Comp
L HOLE X4
U 1 1 5A5295A4
P 3250 700
F 0 "X4" H 3250 600 60  0000 C CNN
F 1 "HOLE" H 3250 800 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3250 700 60  0001 C CNN
F 3 "" H 3250 700 60  0000 C CNN
	1    3250 700 
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5A53851C
P 10150 1550
F 0 "R11" V 10230 1550 50  0000 C CNN
F 1 "10K" V 10150 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10080 1550 50  0001 C CNN
F 3 "" H 10150 1550 50  0001 C CNN
	1    10150 1550
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 5A54DEEB
P 10450 1350
F 0 "C11" H 10475 1450 50  0000 L CNN
F 1 "0.1uF" H 10475 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10488 1200 50  0001 C CNN
F 3 "" H 10450 1350 50  0001 C CNN
	1    10450 1350
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A5516DC
P 1350 1550
F 0 "R10" V 1430 1550 50  0000 C CNN
F 1 "0.1" V 1350 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1280 1550 50  0001 C CNN
F 3 "" H 1350 1550 50  0001 C CNN
	1    1350 1550
	-1   0    0    1   
$EndComp
Text Label 4700 6850 0    60   ~ 0
current
Text Label 1100 1450 2    60   ~ 0
current
Text Label 900  4100 0    60   ~ 0
mosi_red
$Comp
L C C10
U 1 1 5A557FA9
P 1550 1550
F 0 "C10" H 1575 1650 50  0000 L CNN
F 1 "0.1uF" H 1575 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1588 1400 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5A553958
P 6200 1300
F 0 "R15" V 6280 1300 50  0000 C CNN
F 1 "10K" V 6200 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6130 1300 50  0001 C CNN
F 3 "" H 6200 1300 50  0001 C CNN
	1    6200 1300
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 5A553C3E
P 6600 1300
F 0 "C12" H 6625 1400 50  0000 L CNN
F 1 "0.1uF" H 6625 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6638 1150 50  0001 C CNN
F 3 "" H 6600 1300 50  0001 C CNN
	1    6600 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR031
U 1 1 5A554186
P 6850 1300
F 0 "#PWR031" H 6850 1050 50  0001 C CNN
F 1 "GND" H 6850 1150 50  0000 C CNN
F 2 "" H 6850 1300 50  0001 C CNN
F 3 "" H 6850 1300 50  0001 C CNN
	1    6850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3150 1000 2950
Wire Wire Line
	1400 2850 1700 2850
Wire Wire Line
	1700 2850 2050 2850
Wire Wire Line
	1700 2850 1700 2900
Connection ~ 1700 2850
Wire Wire Line
	1700 3250 1800 3250
Wire Wire Line
	1700 3200 1700 3250
Wire Wire Line
	4500 4250 4500 3550
Wire Wire Line
	5000 3550 5000 3500
Connection ~ 5000 3550
Wire Wire Line
	4500 4550 4500 4750
Wire Wire Line
	4500 4750 5000 4750
Wire Wire Line
	5000 4750 5500 4750
Wire Wire Line
	5500 4750 5500 4550
Wire Wire Line
	5000 4750 5000 4800
Connection ~ 5000 4750
Wire Wire Line
	4300 4350 4350 4350
Wire Wire Line
	4350 4350 4500 4350
Wire Wire Line
	5500 4350 5550 4350
Wire Wire Line
	5550 4350 5550 4400
Wire Wire Line
	5550 4400 5550 4450
Wire Wire Line
	5550 4450 5500 4450
Connection ~ 5550 4400
Wire Wire Line
	6350 4700 6350 4600
Wire Wire Line
	6350 3550 6350 3650
Wire Wire Line
	6350 3650 6350 3700
Wire Wire Line
	6350 4000 6350 4050
Wire Wire Line
	6350 4050 6350 4150
Wire Wire Line
	6350 4150 6350 4200
Wire Wire Line
	6350 4050 6800 4050
Wire Wire Line
	6800 4050 6800 4000
Connection ~ 6350 4050
Wire Wire Line
	6800 3700 6800 3650
Wire Wire Line
	6800 3650 6350 3650
Connection ~ 6350 3650
Wire Wire Line
	6350 3200 6350 3250
Wire Wire Line
	9650 2000 9650 2050
Wire Wire Line
	2450 6150 2350 6150
Wire Wire Line
	2350 6100 2350 6150
Wire Wire Line
	2350 6150 2350 6550
Wire Wire Line
	2450 7350 2350 7350
Wire Wire Line
	2350 6850 2350 7350
Wire Wire Line
	2350 7350 2350 7400
Connection ~ 2350 7350
Connection ~ 2350 6150
Wire Wire Line
	1200 1000 1250 1000
Wire Wire Line
	1250 1000 1250 950 
Wire Wire Line
	2000 1100 2300 1100
Wire Wire Line
	2300 1100 2500 1100
Connection ~ 2300 1100
Wire Wire Line
	2000 1400 2000 1500
Wire Wire Line
	2300 1400 2300 1500
Wire Wire Line
	2800 1400 2800 1500
Wire Wire Line
	3350 1400 3350 1500
Wire Wire Line
	3650 1500 3650 1400
Wire Wire Line
	3100 1100 3350 1100
Wire Wire Line
	3350 1100 3650 1100
Connection ~ 3350 1100
Wire Wire Line
	3650 1100 3650 1050
Wire Wire Line
	2000 1050 2000 1100
Connection ~ 3650 1100
Connection ~ 2000 1100
Wire Wire Line
	1400 2750 1700 2750
Wire Wire Line
	1700 2750 2050 2750
Wire Wire Line
	1700 2700 1700 2750
Connection ~ 1700 2750
Wire Wire Line
	1700 2300 1700 2400
Wire Wire Line
	5850 1000 5900 1000
Wire Wire Line
	5900 1000 6050 1000
Connection ~ 5450 1000
Wire Wire Line
	4900 1000 4900 950 
Wire Wire Line
	5450 1300 5450 1300
Wire Wire Line
	5900 1000 5900 1300
Wire Wire Line
	5900 1300 5900 1500
Connection ~ 5900 1000
Wire Wire Line
	5450 1300 5450 1350
Wire Wire Line
	6250 1700 6200 1700
Wire Wire Line
	6550 1700 6600 1700
Wire Wire Line
	1300 5150 1300 5100
Wire Wire Line
	1450 4600 1450 4550
Wire Wire Line
	1150 4600 1150 4550
Wire Wire Line
	1150 4250 1150 4200
Wire Wire Line
	1150 4200 900  4200
Wire Wire Line
	1450 4250 1450 4100
Wire Wire Line
	1450 4100 900  4100
Wire Wire Line
	9950 3750 9950 3850
Wire Wire Line
	9950 4150 9950 4200
Wire Wire Line
	9950 4200 9950 4250
Wire Wire Line
	9950 4650 9950 4750
Wire Wire Line
	9950 4200 9500 4200
Connection ~ 9950 4200
Wire Wire Line
	9450 950  9650 950 
Wire Wire Line
	9650 950  9800 950 
Connection ~ 9650 950 
Wire Wire Line
	10100 950  10150 950 
Wire Wire Line
	10150 950  10250 950 
Wire Wire Line
	10150 950  10150 1000
Wire Wire Line
	10150 1000 10150 1050
Wire Wire Line
	10150 1350 10150 1400
Connection ~ 10150 950 
Wire Wire Line
	1150 6750 1250 6750
Wire Wire Line
	1250 6750 1250 6850
Wire Wire Line
	1150 6550 1750 6550
Wire Wire Line
	1750 6550 1750 6150
Wire Wire Line
	1150 6650 1300 6650
Wire Wire Line
	1150 6450 1300 6450
Wire Wire Line
	1150 6350 1300 6350
Wire Wire Line
	1150 6250 1300 6250
Wire Wire Line
	4550 6750 4700 6750
Wire Wire Line
	4550 6650 4700 6650
Wire Wire Line
	4550 6550 4700 6550
Wire Wire Line
	4550 7350 4700 7350
Wire Wire Line
	4550 6150 4700 6150
Wire Wire Line
	4700 6250 4550 6250
Wire Wire Line
	4550 6350 4700 6350
Wire Wire Line
	4700 6450 4550 6450
Wire Wire Line
	4550 6850 4700 6850
Wire Wire Line
	4700 7050 4550 7050
Wire Wire Line
	4550 7150 4700 7150
Wire Wire Line
	4700 7250 4550 7250
Wire Wire Line
	6350 3200 6500 3200
Connection ~ 6550 1700
Wire Wire Line
	6550 2000 6550 2050
Wire Wire Line
	4350 4350 4350 4550
Connection ~ 4350 4350
Wire Wire Line
	4350 4850 4350 4900
Wire Wire Line
	6500 1000 6350 1000
Wire Wire Line
	5550 4400 6000 4400
Wire Wire Line
	6000 4400 6050 4400
Wire Wire Line
	6000 4450 6000 4400
Connection ~ 6000 4400
Wire Wire Line
	6000 4750 6000 4800
Wire Wire Line
	5500 3550 5500 4250
Connection ~ 5200 3550
Wire Wire Line
	5200 3850 5200 3900
Wire Wire Line
	9650 1700 9650 950 
Wire Wire Line
	10150 1700 10150 1750
Wire Wire Line
	10150 1750 10150 1800
Wire Wire Line
	10150 1000 10450 1000
Wire Wire Line
	10450 1000 10450 1200
Connection ~ 10150 1000
Wire Wire Line
	10450 1500 10450 1750
Wire Wire Line
	10450 1750 10150 1750
Connection ~ 10150 1750
Wire Wire Line
	1200 1200 1350 1200
Wire Wire Line
	1350 1200 1350 1350
Wire Wire Line
	1350 1350 1350 1400
Wire Wire Line
	1550 1350 1550 1400
Wire Wire Line
	1200 1350 1350 1350
Wire Wire Line
	1350 1350 1550 1350
Connection ~ 1350 1350
Wire Wire Line
	1550 1700 1350 1700
Wire Wire Line
	1350 1700 1350 1750
Connection ~ 1350 1700
Wire Wire Line
	1100 1450 1200 1450
Wire Wire Line
	1200 1450 1200 1350
Wire Wire Line
	5900 1300 6050 1300
Connection ~ 6350 4150
Wire Wire Line
	6350 1300 6450 1300
Wire Wire Line
	6750 1300 6850 1300
Wire Wire Line
	4500 3550 4800 3550
Wire Wire Line
	4800 3550 5000 3550
Wire Wire Line
	5000 3550 5200 3550
Wire Wire Line
	5200 3550 5500 3550
Connection ~ 5100 1000
Wire Wire Line
	4900 1000 5100 1000
Wire Wire Line
	5100 1000 5450 1000
Wire Wire Line
	5450 1000 5550 1000
Wire Wire Line
	5100 1300 5100 1350
$Comp
L GND #PWR032
U 1 1 5A4DAA20
P 5100 1350
F 0 "#PWR032" H 5100 1100 50  0001 C CNN
F 1 "GND" H 5100 1200 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C7
U 1 1 5A5038A6
P 5100 1150
F 0 "C7" H 5125 1250 50  0000 L CNN
F 1 "100uF" H 5125 1050 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 5100 1150 50  0001 C CNN
F 3 "" H 5100 1150 50  0001 C CNN
	1    5100 1150
	1    0    0    -1  
$EndComp
Connection ~ 4800 3550
Wire Wire Line
	4800 3850 4800 3900
$Comp
L GND #PWR033
U 1 1 5A500928
P 4800 3900
F 0 "#PWR033" H 4800 3650 50  0001 C CNN
F 1 "GND" H 4800 3750 50  0000 C CNN
F 2 "" H 4800 3900 50  0001 C CNN
F 3 "" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 5A503C1F
P 4800 3700
F 0 "C6" H 4825 3800 50  0000 L CNN
F 1 "100uF" H 4825 3600 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 4800 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0001 C CNN
	1    4800 3700
	1    0    0    -1  
$EndComp
Connection ~ 5900 1300
$Comp
L +12V #PWR034
U 1 1 5A57AD59
P 5000 3500
F 0 "#PWR034" H 5000 3350 50  0001 C CNN
F 1 "+12V" H 5000 3640 50  0000 C CNN
F 2 "" H 5000 3500 50  0001 C CNN
F 3 "" H 5000 3500 50  0001 C CNN
	1    5000 3500
	1    0    0    -1  
$EndComp
$Comp
L CA_Logo_150 G1
U 1 1 5A5CD9D2
P 10600 6050
F 0 "G1" H 10600 5777 60  0001 C CNN
F 1 "CA_Logo_150" H 10600 6323 60  0001 C CNN
F 2 "CA6:CA_Logo_15mm" H 10600 6050 60  0001 C CNN
F 3 "" H 10600 6050 60  0000 C CNN
	1    10600 6050
	1    0    0    -1  
$EndComp
$Comp
L JACK_STEREO J?
U 1 1 5A70C9AA
P 2650 2850
F 0 "J?" H 2275 2850 50  0000 R CNN
F 1 "JACK_STEREO" H 2650 3100 50  0000 C CNN
F 2 "" H 2650 2850 60  0000 C CNN
F 3 "" H 2650 2850 60  0000 C CNN
	1    2650 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
