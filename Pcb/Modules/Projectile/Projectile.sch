EESchema Schematic File Version 2
LIBS:Projectile-rescue
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
LIBS:Projectile-cache
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
L LD274 D2
U 1 1 59CD43E5
P 4650 4850
F 0 "D2" H 4670 4920 50  0000 L CNN
F 1 "LED" H 4610 4740 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4650 5025 50  0001 C CNN
F 3 "" H 4600 4850 50  0001 C CNN
	1    4650 4850
	0    -1   -1   0   
$EndComp
$Comp
L JACK_RJ45 J1
U 1 1 59FE5B8F
P 2200 4150
F 0 "J1" H 2375 4650 39  0000 C CNN
F 1 "JACK_RJ45" H 2025 4650 39  0000 C CNN
F 2 "CA6:RJ45_pcbwing" H 2175 4150 60  0001 C CNN
F 3 "" H 2175 4150 60  0000 C CNN
	1    2200 4150
	0    -1   1    0   
$EndComp
$Comp
L 3V3 #PWR3
U 1 1 59FE5DCC
P 2750 3750
F 0 "#PWR3" H 2750 3850 40  0001 C CNN
F 1 "3V3" H 2750 3875 40  0000 C CNN
F 2 "" H 2750 3750 60  0000 C CNN
F 3 "" H 2750 3750 60  0000 C CNN
	1    2750 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 59FE5E2D
P 2750 4550
F 0 "#PWR4" H 2750 4300 50  0001 C CNN
F 1 "GND" H 2750 4400 50  0000 C CNN
F 2 "" H 2750 4550 50  0000 C CNN
F 3 "" H 2750 4550 50  0000 C CNN
	1    2750 4550
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR1
U 1 1 59FE5F94
P 2400 5100
F 0 "#PWR1" H 2400 5200 40  0001 C CNN
F 1 "3V3" H 2400 5225 40  0000 C CNN
F 2 "" H 2400 5100 60  0000 C CNN
F 3 "" H 2400 5100 60  0000 C CNN
	1    2400 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 59FE5FC0
P 2400 5500
F 0 "#PWR2" H 2400 5250 50  0001 C CNN
F 1 "GND" H 2400 5350 50  0000 C CNN
F 2 "" H 2400 5500 50  0000 C CNN
F 3 "" H 2400 5500 50  0000 C CNN
	1    2400 5500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59FE5FEE
P 2400 5300
F 0 "C1" H 2425 5400 50  0000 L CNN
F 1 "10uF" H 2425 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2438 5150 50  0001 C CNN
F 3 "" H 2400 5300 50  0000 C CNN
	1    2400 5300
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59FE6B07
P 4650 4550
F 0 "R6" V 4730 4550 50  0000 C CNN
F 1 "49.9" V 4650 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4580 4550 50  0001 C CNN
F 3 "" H 4650 4550 50  0001 C CNN
	1    4650 4550
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 59FE704A
P 4700 5350
F 0 "Q1" H 4900 5400 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4900 5300 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4900 5450 50  0001 C CNN
F 3 "" H 4700 5350 50  0000 C CNN
	1    4700 5350
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR14
U 1 1 59FE7828
P 5100 4300
F 0 "#PWR14" H 5100 4400 40  0001 C CNN
F 1 "3V3" H 5100 4425 40  0000 C CNN
F 2 "" H 5100 4300 60  0000 C CNN
F 3 "" H 5100 4300 60  0000 C CNN
	1    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 59FE7854
P 4800 5600
F 0 "#PWR13" H 4800 5350 50  0001 C CNN
F 1 "GND" H 4800 5450 50  0000 C CNN
F 2 "" H 4800 5600 50  0000 C CNN
F 3 "" H 4800 5600 50  0000 C CNN
	1    4800 5600
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59FE78E6
P 4200 5350
F 0 "R4" V 4280 5350 50  0000 C CNN
F 1 "1K" V 4200 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 5350 50  0001 C CNN
F 3 "" H 4200 5350 50  0001 C CNN
	1    4200 5350
	0    -1   -1   0   
$EndComp
$Comp
L MCP601 U1
U 1 1 59FF5213
P 4850 2900
F 0 "U1" H 4900 3100 50  0000 C CNN
F 1 "OPA320" H 5050 2700 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4800 3000 50  0001 C CNN
F 3 "" H 4900 3100 50  0000 C CNN
	1    4850 2900
	1    0    0    1   
$EndComp
$Comp
L GND #PWR10
U 1 1 59FF5D85
P 4750 2500
F 0 "#PWR10" H 4750 2250 50  0001 C CNN
F 1 "GND" H 4750 2350 50  0000 C CNN
F 2 "" H 4750 2500 50  0000 C CNN
F 3 "" H 4750 2500 50  0000 C CNN
	1    4750 2500
	0    -1   -1   0   
$EndComp
$Comp
L 3V3 #PWR11
U 1 1 59FF6531
P 4750 3300
F 0 "#PWR11" H 4750 3400 40  0001 C CNN
F 1 "3V3" H 4750 3425 40  0000 C CNN
F 2 "" H 4750 3300 60  0000 C CNN
F 3 "" H 4750 3300 60  0000 C CNN
	1    4750 3300
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 59FF6A75
P 4550 3250
F 0 "R5" V 4630 3250 50  0000 C CNN
F 1 "8.98K" V 4550 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4480 3250 50  0001 C CNN
F 3 "" H 4550 3250 50  0001 C CNN
	1    4550 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 59FF6C21
P 4300 3450
F 0 "R3" V 4380 3450 50  0000 C CNN
F 1 "280R" V 4300 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4230 3450 50  0001 C CNN
F 3 "" H 4300 3450 50  0001 C CNN
	1    4300 3450
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59FF6E05
P 4000 3450
F 0 "C3" H 4025 3550 50  0000 L CNN
F 1 "1uF" H 4025 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4038 3300 50  0001 C CNN
F 3 "" H 4000 3450 50  0000 C CNN
	1    4000 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 59FF720B
P 4150 3650
F 0 "#PWR8" H 4150 3400 50  0001 C CNN
F 1 "GND" H 4150 3500 50  0000 C CNN
F 2 "" H 4150 3650 50  0000 C CNN
F 3 "" H 4150 3650 50  0000 C CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 59FF7A50
P 4800 2300
F 0 "R7" V 4880 2300 50  0000 C CNN
F 1 "100K" V 4800 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4730 2300 50  0001 C CNN
F 3 "" H 4800 2300 50  0001 C CNN
	1    4800 2300
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 59FF7ACC
P 4800 1950
F 0 "C4" H 4825 2050 50  0000 L CNN
F 1 "4.3pF" H 4825 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4838 1800 50  0001 C CNN
F 3 "" H 4800 1950 50  0000 C CNN
	1    4800 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 5150 2400 5100
Wire Wire Line
	2400 5500 2400 5450
Wire Wire Line
	2750 4550 2750 4500
Wire Wire Line
	2750 4500 2650 4500
Wire Wire Line
	2650 3800 2750 3800
Wire Wire Line
	2750 3800 2750 3750
Wire Wire Line
	4750 2600 4750 2500
Wire Wire Line
	4750 3200 4750 3400
Wire Wire Line
	4000 3600 4300 3600
Wire Wire Line
	4150 3600 4150 3650
Connection ~ 4150 3600
Wire Wire Line
	4000 3000 4000 3300
Wire Wire Line
	4000 3250 4400 3250
Wire Wire Line
	4300 3300 4300 3250
Connection ~ 4300 3250
Wire Wire Line
	4000 3000 4550 3000
Connection ~ 4000 3250
Wire Wire Line
	3450 2800 4550 2800
$Comp
L R R1
U 1 1 59FF7BEF
P 5300 3200
F 0 "R1" V 5380 3200 50  0000 C CNN
F 1 "49.9R" V 5300 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5230 3200 50  0001 C CNN
F 3 "" H 5300 3200 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2900 5150 2900
Wire Wire Line
	4400 1950 4400 2800
Wire Wire Line
	4400 2300 4650 2300
Connection ~ 4400 2800
Wire Wire Line
	4400 1950 4650 1950
Connection ~ 4400 2300
Wire Wire Line
	4950 1950 5300 1950
Connection ~ 5300 2900
Wire Wire Line
	4950 2300 5300 2300
Connection ~ 5300 2300
Wire Wire Line
	4700 3250 4750 3250
Connection ~ 4750 3250
$Comp
L D_Photo D1
U 1 1 59FFACEF
P 3450 3200
F 0 "D1" H 3470 3270 50  0000 L CNN
F 1 "D_Photo" H 3410 3090 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3400 3200 50  0001 C CNN
F 3 "" H 3400 3200 50  0000 C CNN
	1    3450 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR7
U 1 1 59FFB610
P 3450 3450
F 0 "#PWR7" H 3450 3200 50  0001 C CNN
F 1 "GND" H 3450 3300 50  0000 C CNN
F 2 "" H 3450 3450 50  0000 C CNN
F 3 "" H 3450 3450 50  0000 C CNN
	1    3450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2800 3450 3000
Wire Wire Line
	3450 3300 3450 3450
$Comp
L LD274 D5
U 1 1 59FFCE74
P 5550 4850
F 0 "D5" H 5570 4920 50  0000 L CNN
F 1 "LED" H 5510 4740 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5550 5025 50  0001 C CNN
F 3 "" H 5500 4850 50  0001 C CNN
	1    5550 4850
	0    -1   -1   0   
$EndComp
$Comp
L LD274 D3
U 1 1 59FFD330
P 4950 4850
F 0 "D3" H 4970 4920 50  0000 L CNN
F 1 "LED" H 4910 4740 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4950 5025 50  0001 C CNN
F 3 "" H 4900 4850 50  0001 C CNN
	1    4950 4850
	0    -1   -1   0   
$EndComp
$Comp
L LD274 D4
U 1 1 59FFD37A
P 5250 4850
F 0 "D4" H 5270 4920 50  0000 L CNN
F 1 "LED" H 5210 4740 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5250 5025 50  0001 C CNN
F 3 "" H 5200 4850 50  0001 C CNN
	1    5250 4850
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 59FFD499
P 4950 4550
F 0 "R8" V 5030 4550 50  0000 C CNN
F 1 "49.9" V 4950 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4880 4550 50  0001 C CNN
F 3 "" H 4950 4550 50  0001 C CNN
	1    4950 4550
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 59FFF9AC
P 5250 4550
F 0 "R9" V 5330 4550 50  0000 C CNN
F 1 "49.9" V 5250 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5180 4550 50  0001 C CNN
F 3 "" H 5250 4550 50  0001 C CNN
	1    5250 4550
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 59FFFA73
P 5550 4550
F 0 "R10" V 5630 4550 50  0000 C CNN
F 1 "49.9" V 5550 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5480 4550 50  0001 C CNN
F 3 "" H 5550 4550 50  0001 C CNN
	1    5550 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 4350 4650 4400
Wire Wire Line
	4950 4400 4950 4350
Connection ~ 4950 4350
Wire Wire Line
	5250 4350 5250 4400
Connection ~ 5100 4350
Wire Wire Line
	5550 4350 5550 4400
Connection ~ 5250 4350
Wire Wire Line
	5550 4700 5550 4750
Wire Wire Line
	5250 4700 5250 4750
Wire Wire Line
	4950 4700 4950 4750
Wire Wire Line
	4650 4700 4650 4750
Wire Wire Line
	4650 5050 4650 5150
Wire Wire Line
	5550 5150 5550 5050
Wire Wire Line
	5250 5050 5250 5150
Wire Wire Line
	4950 5150 4950 5050
Wire Wire Line
	2650 4100 6150 4100
$Comp
L MCP601 U2
U 1 1 5A000C04
P 7050 2900
F 0 "U2" H 7100 3100 50  0000 C CNN
F 1 "OPA320" H 7250 2700 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7000 3000 50  0001 C CNN
F 3 "" H 7100 3100 50  0000 C CNN
	1    7050 2900
	1    0    0    1   
$EndComp
$Comp
L GND #PWR19
U 1 1 5A000C0A
P 6950 2500
F 0 "#PWR19" H 6950 2250 50  0001 C CNN
F 1 "GND" H 6950 2350 50  0000 C CNN
F 2 "" H 6950 2500 50  0000 C CNN
F 3 "" H 6950 2500 50  0000 C CNN
	1    6950 2500
	0    -1   -1   0   
$EndComp
$Comp
L 3V3 #PWR20
U 1 1 5A000C10
P 6950 3300
F 0 "#PWR20" H 6950 3400 40  0001 C CNN
F 1 "3V3" H 6950 3425 40  0000 C CNN
F 2 "" H 6950 3300 60  0000 C CNN
F 3 "" H 6950 3300 60  0000 C CNN
	1    6950 3300
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5A000C16
P 6750 3250
F 0 "R12" V 6830 3250 50  0000 C CNN
F 1 "8.98K" V 6750 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6680 3250 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 5A000C1C
P 6500 3450
F 0 "R11" V 6580 3450 50  0000 C CNN
F 1 "280R" V 6500 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6430 3450 50  0001 C CNN
F 3 "" H 6500 3450 50  0001 C CNN
	1    6500 3450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A000C22
P 6200 3450
F 0 "C5" H 6225 3550 50  0000 L CNN
F 1 "1uF" H 6225 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6238 3300 50  0001 C CNN
F 3 "" H 6200 3450 50  0000 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 5A000C28
P 6350 3650
F 0 "#PWR18" H 6350 3400 50  0001 C CNN
F 1 "GND" H 6350 3500 50  0000 C CNN
F 2 "" H 6350 3650 50  0000 C CNN
F 3 "" H 6350 3650 50  0000 C CNN
	1    6350 3650
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5A000C2E
P 7000 2300
F 0 "R13" V 7080 2300 50  0000 C CNN
F 1 "100K" V 7000 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6930 2300 50  0001 C CNN
F 3 "" H 7000 2300 50  0001 C CNN
	1    7000 2300
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 5A000C34
P 7000 1950
F 0 "C6" H 7025 2050 50  0000 L CNN
F 1 "4.3pF" H 7025 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7038 1800 50  0001 C CNN
F 3 "" H 7000 1950 50  0000 C CNN
	1    7000 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2600 6950 2500
Wire Wire Line
	6950 3200 6950 3400
Wire Wire Line
	6200 3600 6500 3600
Wire Wire Line
	6350 3600 6350 3650
Connection ~ 6350 3600
Wire Wire Line
	6200 3000 6200 3300
Wire Wire Line
	6200 3250 6600 3250
Wire Wire Line
	6500 3300 6500 3250
Connection ~ 6500 3250
Wire Wire Line
	6200 3000 6750 3000
Connection ~ 6200 3250
Wire Wire Line
	5650 2800 6750 2800
Wire Wire Line
	7500 2900 7350 2900
Wire Wire Line
	6600 1950 6600 2800
Wire Wire Line
	6600 2300 6850 2300
Connection ~ 6600 2800
Wire Wire Line
	6600 1950 6850 1950
Connection ~ 6600 2300
Wire Wire Line
	7150 1950 7500 1950
Connection ~ 7500 2900
Wire Wire Line
	7150 2300 7500 2300
Connection ~ 7500 2300
Wire Wire Line
	6900 3250 6950 3250
Connection ~ 6950 3250
$Comp
L D_Photo D6
U 1 1 5A000C53
P 5650 3200
F 0 "D6" H 5670 3270 50  0000 L CNN
F 1 "D_Photo" H 5610 3090 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5600 3200 50  0001 C CNN
F 3 "" H 5600 3200 50  0000 C CNN
	1    5650 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR16
U 1 1 5A000C59
P 5650 3450
F 0 "#PWR16" H 5650 3200 50  0001 C CNN
F 1 "GND" H 5650 3300 50  0000 C CNN
F 2 "" H 5650 3450 50  0000 C CNN
F 3 "" H 5650 3450 50  0000 C CNN
	1    5650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2800 5650 3000
Wire Wire Line
	5650 3300 5650 3450
$Comp
L R R2
U 1 1 5A000E64
P 7500 3200
F 0 "R2" V 7580 3200 50  0000 C CNN
F 1 "49.9R" V 7500 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7430 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A0037D5
P 2750 5300
F 0 "C2" H 2775 5400 50  0000 L CNN
F 1 "0.1uF" H 2775 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2788 5150 50  0001 C CNN
F 3 "" H 2750 5300 50  0000 C CNN
	1    2750 5300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR5
U 1 1 5A003C19
P 2750 5100
F 0 "#PWR5" H 2750 5200 40  0001 C CNN
F 1 "3V3" H 2750 5225 40  0000 C CNN
F 2 "" H 2750 5100 60  0000 C CNN
F 3 "" H 2750 5100 60  0000 C CNN
	1    2750 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5A003C7B
P 2750 5500
F 0 "#PWR6" H 2750 5250 50  0001 C CNN
F 1 "GND" H 2750 5350 50  0000 C CNN
F 2 "" H 2750 5500 50  0000 C CNN
F 3 "" H 2750 5500 50  0000 C CNN
	1    2750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5450 2750 5500
NoConn ~ 2650 4200
NoConn ~ 2650 4300
NoConn ~ 2650 4400
Wire Wire Line
	2750 5100 2750 5150
Wire Wire Line
	7500 1950 7500 3050
Wire Wire Line
	7500 3350 7500 4000
Wire Wire Line
	7500 4000 2650 4000
Wire Wire Line
	2650 3900 5300 3900
Wire Wire Line
	5300 3900 5300 3350
Wire Wire Line
	5300 1950 5300 3050
$Comp
L R R14
U 1 1 5A220CAD
P 4400 5550
F 0 "R14" V 4480 5550 50  0000 C CNN
F 1 "100K" V 4400 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 5550 50  0001 C CNN
F 3 "" H 4400 5550 50  0001 C CNN
	1    4400 5550
	1    0    0    -1  
$EndComp
$Comp
L HOLE X1
U 1 1 5A235115
P 2950 6000
F 0 "X1" H 2950 5900 60  0000 C CNN
F 1 "HOLE" H 2950 6100 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.5mm_Pad" H 2950 6000 60  0001 C CNN
F 3 "" H 2950 6000 60  0000 C CNN
	1    2950 6000
	1    0    0    -1  
$EndComp
$Comp
L HOLE X2
U 1 1 5A235277
P 3250 6000
F 0 "X2" H 3250 5900 60  0000 C CNN
F 1 "HOLE" H 3250 6100 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.5mm_Pad" H 3250 6000 60  0001 C CNN
F 3 "" H 3250 6000 60  0000 C CNN
	1    3250 6000
	1    0    0    -1  
$EndComp
$Comp
L HOLE X3
U 1 1 5A2352EF
P 3550 6000
F 0 "X3" H 3550 5900 60  0000 C CNN
F 1 "HOLE" H 3550 6100 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.5mm_Pad" H 3550 6000 60  0001 C CNN
F 3 "" H 3550 6000 60  0000 C CNN
	1    3550 6000
	1    0    0    -1  
$EndComp
$Comp
L HOLE X4
U 1 1 5A23536A
P 3850 6000
F 0 "X4" H 3850 5900 60  0000 C CNN
F 1 "HOLE" H 3850 6100 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.5mm_Pad" H 3850 6000 60  0001 C CNN
F 3 "" H 3850 6000 60  0000 C CNN
	1    3850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4350 5100 4300
$Comp
L GND #PWR9
U 1 1 5A36E5A8
P 4400 5750
F 0 "#PWR9" H 4400 5500 50  0001 C CNN
F 1 "GND" H 4400 5600 50  0000 C CNN
F 2 "" H 4400 5750 50  0000 C CNN
F 3 "" H 4400 5750 50  0000 C CNN
	1    4400 5750
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 5A36E776
P 5500 5350
F 0 "Q2" H 5700 5400 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 5700 5300 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5700 5450 50  0001 C CNN
F 3 "" H 5500 5350 50  0000 C CNN
	1    5500 5350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5A36E77C
P 5400 5600
F 0 "#PWR15" H 5400 5350 50  0001 C CNN
F 1 "GND" H 5400 5450 50  0000 C CNN
F 2 "" H 5400 5600 50  0000 C CNN
F 3 "" H 5400 5600 50  0000 C CNN
	1    5400 5600
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5A36E782
P 6000 5350
F 0 "R16" V 6080 5350 50  0000 C CNN
F 1 "1K" V 6000 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5930 5350 50  0001 C CNN
F 3 "" H 6000 5350 50  0001 C CNN
	1    6000 5350
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 5A36E788
P 5800 5550
F 0 "R15" V 5880 5550 50  0000 C CNN
F 1 "100K" V 5800 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 5550 50  0001 C CNN
F 3 "" H 5800 5550 50  0001 C CNN
	1    5800 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 5A36E78F
P 5800 5750
F 0 "#PWR17" H 5800 5500 50  0001 C CNN
F 1 "GND" H 5800 5600 50  0000 C CNN
F 2 "" H 5800 5750 50  0000 C CNN
F 3 "" H 5800 5750 50  0000 C CNN
	1    5800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5150 4950 5150
Connection ~ 4800 5150
Wire Wire Line
	5250 5150 5550 5150
Connection ~ 5400 5150
Wire Wire Line
	3850 4100 3850 5350
Wire Wire Line
	3850 5350 4050 5350
Wire Wire Line
	4350 5350 4500 5350
Wire Wire Line
	4400 5400 4400 5350
Connection ~ 4400 5350
Wire Wire Line
	4400 5750 4400 5700
Wire Wire Line
	4800 5600 4800 5550
Wire Wire Line
	5400 5600 5400 5550
Wire Wire Line
	5700 5350 5850 5350
Wire Wire Line
	5800 5400 5800 5350
Connection ~ 5800 5350
Wire Wire Line
	5800 5750 5800 5700
Wire Wire Line
	6150 4100 6150 5350
Connection ~ 3850 4100
Connection ~ 5550 4350
Connection ~ 4650 4350
Wire Wire Line
	4650 4350 5550 4350
$Comp
L C C8
U 1 1 5A37083B
P 6950 3550
F 0 "C8" H 6975 3650 50  0000 L CNN
F 1 "0.1uF" H 6975 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6988 3400 50  0001 C CNN
F 3 "" H 6950 3550 50  0000 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5A370C69
P 4750 3550
F 0 "C7" H 4775 3650 50  0000 L CNN
F 1 "0.1uF" H 4775 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 3400 50  0001 C CNN
F 3 "" H 4750 3550 50  0000 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 5A370E4C
P 6950 3700
F 0 "#PWR21" H 6950 3450 50  0001 C CNN
F 1 "GND" H 6950 3550 50  0000 C CNN
F 2 "" H 6950 3700 50  0000 C CNN
F 3 "" H 6950 3700 50  0000 C CNN
	1    6950 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 5A37102B
P 4750 3700
F 0 "#PWR12" H 4750 3450 50  0001 C CNN
F 1 "GND" H 4750 3550 50  0000 C CNN
F 2 "" H 4750 3700 50  0000 C CNN
F 3 "" H 4750 3700 50  0000 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3700 6950 3700
Connection ~ 6950 3300
Connection ~ 4750 3300
$EndSCHEMATC
