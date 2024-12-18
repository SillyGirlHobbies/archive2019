EESchema Schematic File Version 4
EELAYER 30 0
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
L StaticCableNano:BatteryHolder .1
U 1 1 610B3B98
P 1000 3700
F 0 ".1" V 1004 3530 50  0000 L CNN
F 1 "BatteryHolder" V 1095 3530 50  0000 L CNN
F 2 "8MagnetTester4Filter:BAT_BH123A" H 1000 3700 50  0001 C CNN
F 3 "" H 1000 3700 50  0001 C CNN
	1    1000 3700
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 610B5DBF
P 3150 3250
F 0 "D4" H 3150 3515 50  0000 C CNN
F 1 "DIODE" H 3150 3424 50  0000 C CNN
F 2 "8MagnetTester4Filter:SD0805S020S1R0" H 3150 3250 50  0001 C CNN
F 3 "~" H 3150 3250 50  0001 C CNN
	1    3150 3250
	1    0    0    -1  
$EndComp
$Comp
L StaticCableNano:DC-DCStepUp U1
U 1 1 610B779C
P 5000 3800
F 0 "U1" V 5004 3680 50  0000 L CNN
F 1 "DC-DCStepUp" V 5095 3680 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 5000 3800 50  0001 C CNN
F 3 "" H 5000 3800 50  0001 C CNN
	1    5000 3800
	0    1    1    0   
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 610B884B
P 3550 6100
F 0 "A1" V 3504 5057 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" V 3595 5057 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 3550 6100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3550 6100 50  0001 C CNN
	1    3550 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 610BC708
P 4050 1500
F 0 "R5" H 4118 1546 50  0000 L CNN
F 1 "150 Ohms" H 4118 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4050 1500 50  0001 C CNN
F 3 "~" H 4050 1500 50  0001 C CNN
	1    4050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 610BC647
P 3200 1500
F 0 "R4" H 3268 1546 50  0000 L CNN
F 1 "150 ohms" H 3268 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3200 1500 50  0001 C CNN
F 3 "~" H 3200 1500 50  0001 C CNN
	1    3200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 610BC495
P 2450 1500
F 0 "R3" H 2518 1546 50  0000 L CNN
F 1 "150 Ohms" H 2518 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2450 1500 50  0001 C CNN
F 3 "~" H 2450 1500 50  0001 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 610BC350
P 1650 1500
F 0 "R2" H 1718 1546 50  0000 L CNN
F 1 "150 Ohms" H 1718 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1650 1500 50  0001 C CNN
F 3 "~" H 1650 1500 50  0001 C CNN
	1    1650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 610BBCF2
P 850 1500
F 0 "R1" H 918 1546 50  0000 L CNN
F 1 "150 Ohms" H 918 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 850 1500 50  0001 C CNN
F 3 "~" H 850 1500 50  0001 C CNN
	1    850  1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Bias.1
U 1 1 610C50F9
P 850 1000
F 0 "Bias.1" V 797 1080 50  0000 L CNN
F 1 "LED" V 888 1080 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 850 1000 50  0001 C CNN
F 3 "~" H 850 1000 50  0001 C CNN
	1    850  1000
	0    1    1    0   
$EndComp
$Comp
L Device:LED R+.2
U 1 1 610C664D
P 1650 1000
F 0 "R+.2" V 1597 1080 50  0000 L CNN
F 1 "LED" V 1688 1080 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 1650 1000 50  0001 C CNN
F 3 "~" H 1650 1000 50  0001 C CNN
	1    1650 1000
	0    1    1    0   
$EndComp
$Comp
L Device:LED L+.3
U 1 1 610C66AB
P 2450 1000
F 0 "L+.3" V 2397 1080 50  0000 L CNN
F 1 "LED" V 2488 1080 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 2450 1000 50  0001 C CNN
F 3 "~" H 2450 1000 50  0001 C CNN
	1    2450 1000
	0    1    1    0   
$EndComp
$Comp
L Device:LED L-.4
U 1 1 610C76E6
P 3200 1000
F 0 "L-.4" V 3147 1080 50  0000 L CNN
F 1 "LED" V 3238 1080 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 3200 1000 50  0001 C CNN
F 3 "~" H 3200 1000 50  0001 C CNN
	1    3200 1000
	0    1    1    0   
$EndComp
$Comp
L Device:LED R-.5
U 1 1 610C8013
P 4050 1000
F 0 "R-.5" V 3997 1080 50  0000 L CNN
F 1 "LED" V 4088 1080 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 4050 1000 50  0001 C CNN
F 3 "~" H 4050 1000 50  0001 C CNN
	1    4050 1000
	0    1    1    0   
$EndComp
Text GLabel 850  1600 3    50   Input ~ 0
BIAS
Text GLabel 1650 1600 3    50   Input ~ 0
R+
Text GLabel 2450 1600 3    50   Input ~ 0
L+
Text GLabel 3200 1600 3    50   Input ~ 0
L-
Text GLabel 4050 1600 3    50   Input ~ 0
R-
Text GLabel 3950 5600 1    50   Input ~ 0
BIAS
Text GLabel 3850 5600 1    50   Input ~ 0
R+
Text GLabel 3750 5600 1    50   Input ~ 0
L+
Text GLabel 3650 5600 1    50   Input ~ 0
L-
Text GLabel 3550 5600 1    50   Input ~ 0
R-
Wire Wire Line
	850  1400 850  1150
Wire Wire Line
	1650 1400 1650 1150
Wire Wire Line
	2450 1400 2450 1150
Wire Wire Line
	3200 1400 3200 1150
Wire Wire Line
	4050 1400 4050 1150
Wire Wire Line
	850  850  1650 850 
Connection ~ 1650 850 
Wire Wire Line
	1650 850  2450 850 
Connection ~ 2450 850 
Wire Wire Line
	2450 850  3200 850 
Connection ~ 3200 850 
Wire Wire Line
	3200 850  4050 850 
Text GLabel 4050 850  2    50   Input ~ 0
GND
Text GLabel 2550 6100 0    50   Input ~ 0
GND
Text GLabel 4650 4250 3    50   Input ~ 0
5V
Wire Wire Line
	1400 4050 4350 4050
Wire Wire Line
	4350 4050 4350 3850
Wire Wire Line
	3350 3250 3950 3250
Wire Wire Line
	4650 3250 4650 3450
Text GLabel 4550 6300 2    50   Input ~ 0
5V
$Comp
L StaticConnectors:Stat5PinConnector U2
U 1 1 610D8D54
P 8450 2500
F 0 "U2" V 8241 2438 50  0000 L CNN
F 1 "Stat5PinConnector" V 8332 2438 50  0000 L CNN
F 2 "SimpleCableTesterStatics:Static5pinConnector" H 8450 2500 50  0001 C CNN
F 3 "" H 8450 2500 50  0001 C CNN
	1    8450 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US 5-4V2
U 1 1 610E30DD
P 9050 1850
F 0 "5-4V2" H 9118 1896 50  0000 L CNN
F 1 "2 Ohms" H 9118 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9050 1850 50  0001 C CNN
F 3 "~" H 9050 1850 50  0001 C CNN
	1    9050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US 5-4V1
U 1 1 610E3853
P 7950 5250
F 0 "5-4V1" H 8018 5296 50  0000 L CNN
F 1 "8 Ohms" H 8018 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7950 5250 50  0001 C CNN
F 3 "~" H 7950 5250 50  0001 C CNN
	1    7950 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US 3-1V1
U 1 1 610ECA07
P 6950 3650
F 0 "3-1V1" H 7018 3696 50  0000 L CNN
F 1 "2 Ohm" H 7018 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6950 3650 50  0001 C CNN
F 3 "~" H 6950 3650 50  0001 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US 3-2V1
U 1 1 610EFCC1
P 7850 1900
F 0 "3-2V1" H 7918 1946 50  0000 L CNN
F 1 "1 Ohm" H 7918 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7850 1900 50  0001 C CNN
F 3 "~" H 7850 1900 50  0001 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US 3-2V2
U 1 1 610EFCC7
P 9100 5300
F 0 "3-2V2" H 9168 5346 50  0000 L CNN
F 1 "2 Ohm" H 9168 5255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9100 5300 50  0001 C CNN
F 3 "~" H 9100 5300 50  0001 C CNN
	1    9100 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US 3.3-3V1
U 1 1 610F1905
P 7550 900
F 0 "3.3-3V1" V 7755 900 50  0000 C CNN
F 1 "1 Ohm" V 7664 900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7550 900 50  0001 C CNN
F 3 "~" H 7550 900 50  0001 C CNN
	1    7550 900 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US 3.3-3V2
U 1 1 610F190B
P 8300 900
F 0 "3.3-3V2" V 8505 900 50  0000 C CNN
F 1 "3 Ohms" V 8414 900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8300 900 50  0001 C CNN
F 3 "~" H 8300 900 50  0001 C CNN
	1    8300 900 
	0    -1   -1   0   
$EndComp
Text GLabel 9850 1450 2    50   Input ~ 0
5V
Text GLabel 6350 900  0    50   Input ~ 0
3.3V
Text GLabel 4550 6200 2    50   Input ~ 0
3.3V
Wire Wire Line
	6350 900  7450 900 
Text GLabel 3550 6600 3    50   Input ~ 0
Read5V
Text GLabel 3450 6600 3    50   Input ~ 0
Read4V
Text GLabel 3350 6600 3    50   Input ~ 0
Read3V
Text GLabel 3250 6600 3    50   Input ~ 0
Read2V
Text GLabel 3150 6600 3    50   Input ~ 0
Read1V
Text GLabel 9850 2400 0    50   Input ~ 0
Read5V
Text GLabel 9050 2150 2    50   Input ~ 0
Read4V
Text GLabel 8900 1850 0    50   Input ~ 0
Read3V
Text GLabel 7850 2150 0    50   Input ~ 0
Read2V
Wire Wire Line
	7650 900  7950 900 
Wire Wire Line
	9850 2500 9200 2500
Wire Wire Line
	9050 1450 9050 1750
Wire Wire Line
	9050 1950 9050 2500
Wire Wire Line
	9050 1450 9850 1450
Wire Wire Line
	8900 1450 8900 2500
Connection ~ 7950 900 
Wire Wire Line
	7950 900  8200 900 
Text GLabel 6950 4150 2    50   Input ~ 0
Read1V
Wire Wire Line
	7950 1450 8900 1450
Wire Wire Line
	7950 1450 7950 1600
Wire Wire Line
	7950 1600 7850 1600
Wire Wire Line
	7850 1600 7850 1800
Connection ~ 7950 1450
Wire Wire Line
	7850 2000 7850 2200
Wire Wire Line
	7850 2200 8750 2200
Wire Wire Line
	8750 2200 8750 2500
$Comp
L Device:R_Small_US 3-1V2
U 1 1 610ECA0D
P 9600 5300
F 0 "3-1V2" H 9668 5346 50  0000 L CNN
F 1 "1 Ohm or 0 Ohms bc wire is 1 Ohm" H 9668 5255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9600 5300 50  0001 C CNN
F 3 "~" H 9600 5300 50  0001 C CNN
	1    9600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5700 8750 6050
Wire Wire Line
	9100 5400 9100 5700
NoConn ~ 8600 2500
Wire Wire Line
	7950 900  7950 1300
Wire Wire Line
	7950 1300 6950 1300
Wire Wire Line
	6950 1300 6950 3550
Connection ~ 7950 1300
Wire Wire Line
	7950 1300 7950 1450
Text Notes 9300 3550 0    50   ~ 0
Bias from left to right is 1 Ohm\nR+,R-,L+L- are all on average .5 ohms
Wire Wire Line
	9600 5400 9600 5700
Wire Wire Line
	9600 5700 9100 5700
Connection ~ 9100 5700
NoConn ~ 4150 5600
NoConn ~ 4050 5600
NoConn ~ 3450 5600
NoConn ~ 3350 5600
NoConn ~ 3250 5600
NoConn ~ 3150 5600
NoConn ~ 3050 5600
NoConn ~ 2950 5600
NoConn ~ 2850 5600
NoConn ~ 3750 6600
NoConn ~ 4050 6600
NoConn ~ 4150 6600
NoConn ~ 3050 6600
NoConn ~ 2950 6600
NoConn ~ 2850 6600
NoConn ~ 4550 6000
Text GLabel 9050 900  2    50   Input ~ 0
GND
Text GLabel 8750 6050 3    50   Input ~ 0
GND
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 611ADFE7
P 3950 3250
F 0 "#FLG0101" H 3950 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 3423 50  0000 C CNN
F 2 "" H 3950 3250 50  0001 C CNN
F 3 "~" H 3950 3250 50  0001 C CNN
	1    3950 3250
	1    0    0    -1  
$EndComp
Connection ~ 3950 3250
Wire Wire Line
	3950 3250 4650 3250
Text GLabel 2550 6200 0    50   Input ~ 0
GND
Wire Wire Line
	8400 900  9050 900 
$Comp
L Device:R_Small_US Stay5V1
U 1 1 611BA866
P 9850 1900
F 0 "Stay5V1" H 9918 1946 50  0000 L CNN
F 1 "0 Ohms" H 9918 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9850 1900 50  0001 C CNN
F 3 "~" H 9850 1900 50  0001 C CNN
	1    9850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1800 9850 1450
Wire Wire Line
	9850 2000 9850 2500
Text GLabel 2400 4050 3    50   Input ~ 0
GND
$Comp
L StaticConnectors:LEFT&RightChannel U3
U 1 1 61201D8E
P 8300 4200
F 0 "U3" H 8275 4225 50  0000 C CNN
F 1 "LEFT&RightChannel" H 8275 4134 50  0000 C CNN
F 2 "SimpleCableTesterStatics:Left&rightChannel" H 8300 4200 50  0001 C CNN
F 3 "" H 8300 4200 50  0001 C CNN
	1    8300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3750 6950 4400
Wire Wire Line
	6950 4400 7950 4400
Wire Wire Line
	8600 4400 9600 4400
Wire Wire Line
	8600 4600 8900 4600
Wire Wire Line
	8900 4600 8900 5700
Connection ~ 8900 5700
Wire Wire Line
	8900 5700 8750 5700
Wire Wire Line
	8900 5700 9100 5700
Wire Wire Line
	9600 4400 9600 5200
Wire Wire Line
	8600 4500 9100 4500
Wire Wire Line
	9100 4500 9100 5200
Wire Wire Line
	7950 5350 7950 5700
Wire Wire Line
	7950 5700 8750 5700
Connection ~ 8750 5700
Wire Wire Line
	7950 4600 7950 5150
Wire Wire Line
	7950 4500 7750 4500
Wire Wire Line
	7750 4500 7750 5700
Wire Wire Line
	7750 5700 7950 5700
Connection ~ 7950 5700
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 6123C201
P 2250 3250
F 0 "SW1" H 2250 3517 50  0000 C CNN
F 1 "ON/OFF" H 2250 3426 50  0000 C CNN
F 2 "SimpleCableTesterStatics:Switch" H 2250 3250 50  0001 C CNN
F 3 "~" H 2250 3250 50  0001 C CNN
	1    2250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3250 1950 3250
Wire Wire Line
	2550 3250 2950 3250
$EndSCHEMATC
