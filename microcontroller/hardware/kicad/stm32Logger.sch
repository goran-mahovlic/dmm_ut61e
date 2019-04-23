EESchema Schematic File Version 4
LIBS:stm32Logger-cache
EELAYER 29 0
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
L stm32Logger-rescue:STM32F103C8Tx U2
U 1 1 5A9B258F
P 5500 3300
F 0 "U2" H 2700 5025 50  0000 L BNN
F 1 "STM32F103C8Tx" H 8300 5025 50  0000 R BNN
F 2 "" H 8300 4975 50  0000 R TNN
F 3 "" H 5500 3300 50  0000 C CNN
	1    5500 3300
	1    0    0    -1  
$EndComp
$Comp
L stm32Logger-rescue:Micro_SD_Card CON1
U 1 1 5A9B2629
P 3750 6250
F 0 "CON1" H 3100 6850 50  0000 C CNN
F 1 "Micro_SD_Card" H 4400 6850 50  0000 R CNN
F 2 "" H 4900 6550 50  0001 C CNN
F 3 "" H 3750 6250 50  0000 C CNN
	1    3750 6250
	1    0    0    -1  
$EndComp
$Comp
L stm32Logger-rescue:74HC14 U1
U 1 1 5A9B2904
P 1400 6900
F 0 "U1" H 1550 7000 50  0000 C CNN
F 1 "74HC14" H 1600 6800 50  0000 C CNN
F 2 "" H 1400 6900 50  0001 C CNN
F 3 "" H 1400 6900 50  0000 C CNN
	1    1400 6900
	1    0    0    -1  
$EndComp
$Comp
L stm32Logger-rescue:74HC14 U1
U 2 1 5A9B295D
P 2300 7200
F 0 "U1" H 2450 7300 50  0000 C CNN
F 1 "74HC14" H 2500 7100 50  0000 C CNN
F 2 "" H 2300 7200 50  0001 C CNN
F 3 "" H 2300 7200 50  0000 C CNN
	2    2300 7200
	1    0    0    -1  
$EndComp
$Comp
L device1:LED D3
U 1 1 5A9B29C9
P 4050 1200
F 0 "D3" H 4050 1300 50  0000 C CNN
F 1 "LED" H 4050 1100 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 4050 1200 50  0001 C CNN
F 3 "" H 4050 1200 50  0000 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
$Comp
L device1:R R3
U 1 1 5A9B2A26
P 3600 1200
F 0 "R3" V 3680 1200 50  0000 C CNN
F 1 "1K" V 3600 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3530 1200 50  0001 C CNN
F 3 "" H 3600 1200 50  0000 C CNN
	1    3600 1200
	0    1    1    0   
$EndComp
$Comp
L device1:Crystal Y1
U 1 1 5A9B2ADF
P 9450 1650
F 0 "Y1" H 9450 1800 50  0000 C CNN
F 1 "Crystal" H 9450 1500 50  0000 C CNN
F 2 "" H 9450 1650 50  0001 C CNN
F 3 "" H 9450 1650 50  0000 C CNN
	1    9450 1650
	1    0    0    -1  
$EndComp
$Comp
L device1:Crystal Y2
U 1 1 5A9B2B10
P 10450 1650
F 0 "Y2" H 10450 1800 50  0000 C CNN
F 1 "Crystal" H 10450 1500 50  0000 C CNN
F 2 "" H 10450 1650 50  0001 C CNN
F 3 "" H 10450 1650 50  0000 C CNN
	1    10450 1650
	1    0    0    -1  
$EndComp
$Comp
L stm32Logger-rescue:CONN_01X04 P7
U 1 1 5A9B2BD7
P 10600 4100
F 0 "P7" H 10600 4350 50  0000 C CNN
F 1 "CONN_01X04" V 10700 4100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-04_04x2.54mm_Straight" H 10600 4100 50  0001 C CNN
F 3 "" H 10600 4100 50  0000 C CNN
	1    10600 4100
	1    0    0    -1  
$EndComp
Text GLabel 10200 3950 0    60   Input ~ 0
VCC
Text GLabel 5400 5350 3    60   Input ~ 0
GND
Text GLabel 10350 4750 3    60   Input ~ 0
GND
Text GLabel 10300 3400 1    60   Input ~ 0
VCC
$Comp
L device1:R R8
U 1 1 5A9B2DDF
P 10350 4500
F 0 "R8" V 10430 4500 50  0000 C CNN
F 1 "10K" V 10350 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10280 4500 50  0001 C CNN
F 3 "" H 10350 4500 50  0000 C CNN
	1    10350 4500
	1    0    0    -1  
$EndComp
$Comp
L device1:R R7
U 1 1 5A9B3029
P 10300 3650
F 0 "R7" V 10380 3650 50  0000 C CNN
F 1 "10K" V 10300 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10230 3650 50  0001 C CNN
F 3 "" H 10300 3650 50  0000 C CNN
	1    10300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3400 10300 3500
Wire Wire Line
	10200 4250 10400 4250
Wire Wire Line
	10200 3950 10400 3950
Wire Wire Line
	9800 4050 10350 4050
Wire Wire Line
	9800 4150 10300 4150
Wire Wire Line
	10350 4650 10350 4750
Wire Wire Line
	10350 4350 10350 4050
Connection ~ 10350 4050
Wire Wire Line
	10300 3800 10300 4150
Connection ~ 10300 4150
Text GLabel 9800 4050 0    60   Input ~ 0
SWDIO
Text GLabel 9800 4150 0    60   Input ~ 0
SWDCLK
Text GLabel 8600 4500 2    60   Input ~ 0
SWDIO
Text GLabel 8600 4600 2    60   Input ~ 0
SWDCLK
Wire Wire Line
	8400 4500 8600 4500
Wire Wire Line
	8400 4600 8600 4600
$Comp
L stm32Logger-rescue:USB_OTG P6
U 1 1 5A9B3C7F
P 10400 5500
F 0 "P6" H 10725 5375 50  0000 C CNN
F 1 "USB_OTG" H 10400 5700 50  0000 C CNN
F 2 "Connectors:USB_Micro-B" V 10350 5400 50  0001 C CNN
F 3 "" V 10350 5400 50  0000 C CNN
	1    10400 5500
	0    1    1    0   
$EndComp
Text GLabel 10000 5850 3    60   Input ~ 0
GND
Wire Wire Line
	10000 5600 10000 5700
Wire Wire Line
	10000 5700 10100 5700
Wire Wire Line
	10100 5600 10000 5600
Connection ~ 10000 5700
Text GLabel 10000 5200 1    60   Input ~ 0
+5V
Wire Wire Line
	10000 5200 10000 5300
Wire Wire Line
	10000 5300 10100 5300
$Comp
L device1:R R6
U 1 1 5A9B4705
P 9850 5400
F 0 "R6" V 9750 5400 50  0000 C CNN
F 1 "22" V 9850 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9780 5400 50  0001 C CNN
F 3 "" H 9850 5400 50  0000 C CNN
	1    9850 5400
	0    1    1    0   
$EndComp
$Comp
L device1:R R4
U 1 1 5A9B4769
P 9650 5500
F 0 "R4" V 9730 5500 50  0000 C CNN
F 1 "22" V 9650 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9580 5500 50  0001 C CNN
F 3 "" H 9650 5500 50  0000 C CNN
	1    9650 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 5400 10100 5400
Wire Wire Line
	9800 5500 9900 5500
$Comp
L device1:R R5
U 1 1 5A9B4B34
P 9650 5650
F 0 "R5" V 9730 5650 50  0000 C CNN
F 1 "1.5K" V 9650 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9580 5650 50  0001 C CNN
F 3 "" H 9650 5650 50  0000 C CNN
	1    9650 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 5650 9900 5650
Wire Wire Line
	9900 5650 9900 5500
Connection ~ 9900 5500
Text GLabel 9350 5500 0    60   Input ~ 0
D+
Text GLabel 9350 5400 0    60   Input ~ 0
D-
Wire Wire Line
	9350 5400 9700 5400
Wire Wire Line
	9350 5500 9500 5500
Text GLabel 9350 5650 0    60   Input ~ 0
VCC
Wire Wire Line
	9350 5650 9500 5650
Text GLabel 8600 4300 2    60   Input ~ 0
D-
Wire Wire Line
	8600 4300 8400 4300
Text GLabel 8600 4400 2    60   Input ~ 0
D+
Wire Wire Line
	8400 4400 8600 4400
$Comp
L device1:C C1
U 1 1 5A9B60B3
P 6300 5900
F 0 "C1" H 6325 6000 50  0000 L CNN
F 1 "C" H 6325 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6338 5750 50  0001 C CNN
F 3 "" H 6300 5900 50  0000 C CNN
	1    6300 5900
	1    0    0    -1  
$EndComp
$Comp
L device1:C C2
U 1 1 5A9B610C
P 6550 5900
F 0 "C2" H 6575 6000 50  0000 L CNN
F 1 "C" H 6575 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6588 5750 50  0001 C CNN
F 3 "" H 6550 5900 50  0000 C CNN
	1    6550 5900
	1    0    0    -1  
$EndComp
$Comp
L device1:C C3
U 1 1 5A9B6159
P 6800 5900
F 0 "C3" H 6825 6000 50  0000 L CNN
F 1 "C" H 6825 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6838 5750 50  0001 C CNN
F 3 "" H 6800 5900 50  0000 C CNN
	1    6800 5900
	1    0    0    -1  
$EndComp
$Comp
L device1:C C4
U 1 1 5A9B61A7
P 7050 5900
F 0 "C4" H 7075 6000 50  0000 L CNN
F 1 "C" H 7075 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7088 5750 50  0001 C CNN
F 3 "" H 7050 5900 50  0000 C CNN
	1    7050 5900
	1    0    0    -1  
$EndComp
$Comp
L device1:C C5
U 1 1 5A9B6200
P 7300 5900
F 0 "C5" H 7325 6000 50  0000 L CNN
F 1 "C" H 7325 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7338 5750 50  0001 C CNN
F 3 "" H 7300 5900 50  0000 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5750 6300 5550
Wire Wire Line
	6300 5550 6550 5550
Wire Wire Line
	6800 5400 6800 5550
Wire Wire Line
	7300 5550 7300 5750
Connection ~ 6800 5550
Wire Wire Line
	6550 5750 6550 5550
Connection ~ 6550 5550
Wire Wire Line
	7050 5550 7050 5750
Connection ~ 7050 5550
Wire Wire Line
	6300 6050 6300 6250
Wire Wire Line
	6300 6250 6550 6250
Wire Wire Line
	6550 6250 6550 6050
Wire Wire Line
	6800 6050 6800 6250
Connection ~ 6550 6250
Wire Wire Line
	7050 6250 7050 6050
Connection ~ 6800 6250
Wire Wire Line
	7300 6250 7300 6050
Connection ~ 7050 6250
Text GLabel 6800 5400 1    60   Input ~ 0
VCC
Text GLabel 6800 6400 3    60   Input ~ 0
GND
Text GLabel 8550 3600 2    60   Input ~ 0
SD_NSS
Text GLabel 8550 3700 2    60   Input ~ 0
SD_SCK
Text GLabel 8550 3800 2    60   Input ~ 0
SD_MISO
Text GLabel 8550 3900 2    60   Input ~ 0
SD_MOSI
Wire Wire Line
	8400 3600 8550 3600
Wire Wire Line
	8400 3700 8550 3700
Wire Wire Line
	8400 3800 8550 3800
Wire Wire Line
	8400 3900 8550 3900
Text GLabel 2550 6350 0    60   Input ~ 0
SD_SCK
Text GLabel 2550 6550 0    60   Input ~ 0
SD_MISO
Text GLabel 2550 6150 0    60   Input ~ 0
SD_MOSI
Text GLabel 2550 6450 0    60   Input ~ 0
GND
Text GLabel 2550 6250 0    60   Input ~ 0
VCC
Wire Wire Line
	2550 6250 2850 6250
Wire Wire Line
	2550 6350 2850 6350
Wire Wire Line
	2550 6450 2850 6450
Wire Wire Line
	2550 6150 2850 6150
Wire Wire Line
	2550 6550 2850 6550
Text GLabel 2550 6050 0    60   Input ~ 0
SD_NSS
Wire Wire Line
	2550 6050 2850 6050
Text GLabel 2300 3200 0    60   Input ~ 0
BTN1
Text GLabel 2300 3300 0    60   Input ~ 0
BTN2
Text GLabel 2300 2800 0    60   Input ~ 0
LED1
Text GLabel 8600 4200 2    60   Input ~ 0
MeterSerial
Wire Wire Line
	8400 4200 8600 4200
$Comp
L device1:C C6
U 1 1 5A9BE553
P 9150 1400
F 0 "C6" H 9175 1500 50  0000 L CNN
F 1 "C" H 9175 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9188 1250 50  0001 C CNN
F 3 "" H 9150 1400 50  0000 C CNN
	1    9150 1400
	-1   0    0    1   
$EndComp
$Comp
L device1:C C7
U 1 1 5A9BE6DD
P 9800 1400
F 0 "C7" H 9825 1500 50  0000 L CNN
F 1 "C" H 9825 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9838 1250 50  0001 C CNN
F 3 "" H 9800 1400 50  0000 C CNN
	1    9800 1400
	-1   0    0    1   
$EndComp
$Comp
L device1:C C9
U 1 1 5A9BE793
P 10800 1400
F 0 "C9" H 10825 1500 50  0000 L CNN
F 1 "C" H 10825 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10838 1250 50  0001 C CNN
F 3 "" H 10800 1400 50  0000 C CNN
	1    10800 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 1650 9300 1650
Wire Wire Line
	9600 1650 9800 1650
Wire Wire Line
	9150 1550 9150 1650
Wire Wire Line
	9800 1550 9800 1650
$Comp
L device1:C C8
U 1 1 5A9BF993
P 10150 1400
F 0 "C8" H 10175 1500 50  0000 L CNN
F 1 "C" H 10175 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10188 1250 50  0001 C CNN
F 3 "" H 10150 1400 50  0000 C CNN
	1    10150 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 1550 10150 1650
Wire Wire Line
	10150 1650 10300 1650
Wire Wire Line
	10600 1650 10800 1650
Wire Wire Line
	10800 1550 10800 1650
Text GLabel 10000 950  1    60   Input ~ 0
GND
Wire Wire Line
	9150 1250 9150 1000
Wire Wire Line
	9150 1000 9800 1000
Wire Wire Line
	9800 1000 9800 1250
Wire Wire Line
	10150 1000 10150 1250
Wire Wire Line
	10800 1000 10800 1250
Connection ~ 10150 1000
Connection ~ 9800 1000
Wire Wire Line
	10000 950  10000 1000
Connection ~ 10000 1000
Text GLabel 9150 1900 3    60   Input ~ 0
PC14
Text GLabel 9800 1900 3    60   Input ~ 0
PC15
Connection ~ 9800 1650
Connection ~ 9150 1650
Text GLabel 10150 1900 3    60   Input ~ 0
OSC_IN
Text GLabel 10800 1900 3    60   Input ~ 0
OSC_OUT
Connection ~ 10150 1650
Connection ~ 10800 1650
$Comp
L device1:R R9
U 1 1 5A9C217D
P 10450 1900
F 0 "R9" V 10530 1900 50  0000 C CNN
F 1 "1M" V 10450 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10380 1900 50  0001 C CNN
F 3 "" H 10450 1900 50  0000 C CNN
	1    10450 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 1900 10300 1750
Wire Wire Line
	10300 1750 10150 1750
Connection ~ 10150 1750
Wire Wire Line
	10600 1900 10600 1750
Wire Wire Line
	10600 1750 10800 1750
Connection ~ 10800 1750
Text GLabel 2300 2900 0    60   Input ~ 0
PC14
Text GLabel 2300 3000 0    60   Input ~ 0
PC15
Wire Wire Line
	2300 2900 2600 2900
Wire Wire Line
	2300 3000 2600 3000
Text GLabel 2300 2500 0    60   Input ~ 0
OSC_IN
Wire Wire Line
	2300 2500 2600 2500
Text GLabel 2300 2600 0    60   Input ~ 0
OSC_OUT
Wire Wire Line
	2300 2600 2600 2600
Wire Wire Line
	2300 2800 2600 2800
Text GLabel 3300 1200 0    60   Input ~ 0
LED1
Text GLabel 4400 1200 2    60   Input ~ 0
VCC
Wire Wire Line
	4400 1200 4200 1200
Wire Wire Line
	3900 1200 3750 1200
Wire Wire Line
	3450 1200 3300 1200
Wire Wire Line
	2300 3200 2600 3200
Wire Wire Line
	2300 3300 2600 3300
$Comp
L device1:R R1
U 1 1 5A9C7842
P 800 6700
F 0 "R1" V 880 6700 50  0000 C CNN
F 1 "1K" V 800 6700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 730 6700 50  0001 C CNN
F 3 "" H 800 6700 50  0000 C CNN
	1    800  6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 5350 5400 5200
Wire Wire Line
	5500 5200 5500 5100
Wire Wire Line
	5300 5200 5400 5200
Connection ~ 5400 5200
Wire Wire Line
	5300 5100 5300 5200
Text GLabel 5400 1200 1    60   Input ~ 0
VCC
Wire Wire Line
	5400 1200 5400 1300
Wire Wire Line
	5300 1500 5300 1300
Wire Wire Line
	5300 1300 5400 1300
Connection ~ 5400 1300
Wire Wire Line
	5500 1300 5500 1500
Text GLabel 800  6450 1    60   Input ~ 0
VCC
$Comp
L device1:D_Photo D1
U 1 1 5A9D8FFF
P 800 7050
F 0 "D1" H 820 7120 50  0000 L CNN
F 1 "D_Photo" H 760 6940 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 750 7050 50  0001 C CNN
F 3 "" H 750 7050 50  0000 C CNN
	1    800  7050
	0    -1   -1   0   
$EndComp
Text GLabel 3000 7200 2    60   Input ~ 0
MeterSerial
Wire Wire Line
	800  6450 800  6550
Wire Wire Line
	800  6850 800  6900
Wire Wire Line
	800  7250 800  7450
Connection ~ 800  6900
Text GLabel 800  7450 3    60   Input ~ 0
GND
Wire Wire Line
	800  6900 950  6900
Wire Wire Line
	1850 6900 1850 7200
Wire Wire Line
	2750 7200 3000 7200
$Comp
L device1:Battery_Cell BT1
U 1 1 5A9EF7FE
P 900 1300
F 0 "BT1" H 1000 1400 50  0000 L CNN
F 1 "Battery_Cell" H 1000 1300 50  0000 L CNN
F 2 "" V 900 1360 50  0001 C CNN
F 3 "" V 900 1360 50  0000 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
Text GLabel 900  900  1    60   Input ~ 0
VBAT
Wire Wire Line
	900  900  900  1100
Text GLabel 900  1550 3    60   Input ~ 0
GND
Wire Wire Line
	900  1400 900  1550
$Comp
L power1:GND #PWR0101
U 1 1 5A9F0782
P 2350 750
F 0 "#PWR0101" H 2350 500 50  0001 C CNN
F 1 "GND" H 2350 600 50  0000 C CNN
F 2 "" H 2350 750 50  0000 C CNN
F 3 "" H 2350 750 50  0000 C CNN
	1    2350 750 
	0    1    1    0   
$EndComp
Text GLabel 2600 750  2    60   Input ~ 0
GND
$Comp
L power1:+3.3V #PWR0102
U 1 1 5A9F27C4
P 2350 600
F 0 "#PWR0102" H 2350 450 50  0001 C CNN
F 1 "+3.3V" H 2350 740 50  0000 C CNN
F 2 "" H 2350 600 50  0000 C CNN
F 3 "" H 2350 600 50  0000 C CNN
	1    2350 600 
	0    -1   -1   0   
$EndComp
Text GLabel 2600 600  2    60   Input ~ 0
VCC
Wire Wire Line
	2350 600  2600 600 
Wire Wire Line
	2350 750  2600 750 
Text GLabel 2300 2300 0    60   Input ~ 0
VBAT
Wire Wire Line
	2300 2300 2600 2300
Wire Wire Line
	5600 5200 5600 5100
Connection ~ 5500 5200
Wire Wire Line
	5600 1300 5600 1500
Connection ~ 5500 1300
Text GLabel 2300 2100 0    60   Input ~ 0
BOOT0
Wire Wire Line
	2300 2100 2600 2100
Text GLabel 2300 3400 0    60   Input ~ 0
BOOT1
Wire Wire Line
	2300 3400 2600 3400
$Comp
L stm32Logger-rescue:CONN_02X03 P1
U 1 1 5A9FA6CE
P 1100 3950
F 0 "P1" H 1100 4150 50  0000 C CNN
F 1 "CONN_02X03" H 1100 3750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 1100 2750 50  0001 C CNN
F 3 "" H 1100 2750 50  0000 C CNN
	1    1100 3950
	0    -1   -1   0   
$EndComp
Text GLabel 1100 4300 3    60   Input ~ 0
BOOT1
Text GLabel 1100 3550 1    60   Input ~ 0
BOOT0
Text GLabel 1000 3550 1    60   Input ~ 0
GND
Text GLabel 1000 4300 3    60   Input ~ 0
GND
Text GLabel 1200 3550 1    60   Input ~ 0
VCC
Wire Wire Line
	1200 3550 1200 3700
Wire Wire Line
	1100 3550 1100 3700
Wire Wire Line
	1000 3550 1000 3700
Wire Wire Line
	1000 4300 1000 4200
Wire Wire Line
	1100 4300 1100 4200
Text GLabel 1200 4300 3    60   Input ~ 0
VCC
Wire Wire Line
	1200 4300 1200 4200
$Comp
L stm32Logger-rescue:CONN_01X04 P2
U 1 1 5AA035FD
P 1850 3850
F 0 "P2" H 1850 4100 50  0000 C CNN
F 1 "CONN_01X04" V 1950 3850 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-04_04x2.54mm_Straight" H 1850 3850 50  0001 C CNN
F 3 "" H 1850 3850 50  0000 C CNN
	1    1850 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 3800 2600 3800
Wire Wire Line
	2050 3900 2600 3900
Text GLabel 1950 3550 0    60   Input ~ 0
VCC
Wire Wire Line
	1950 3550 2150 3550
Wire Wire Line
	2150 3550 2150 3700
Wire Wire Line
	2150 3700 2050 3700
Text GLabel 1950 4200 0    60   Input ~ 0
GND
Wire Wire Line
	1950 4200 2150 4200
Wire Wire Line
	2150 4200 2150 4000
Wire Wire Line
	2150 4000 2050 4000
$Comp
L stm32Logger-rescue:CONN_01X02 P3
U 1 1 5AA0AD53
P 7650 950
F 0 "P3" H 7650 1100 50  0000 C CNN
F 1 "CONN_01X02" V 7750 950 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7650 950 50  0001 C CNN
F 3 "" H 7650 950 50  0000 C CNN
	1    7650 950 
	1    0    0    -1  
$EndComp
Text GLabel 7250 900  0    60   Input ~ 0
VCC
Text GLabel 7250 1000 0    60   Input ~ 0
GND
Wire Wire Line
	7250 900  7450 900 
Wire Wire Line
	7250 1000 7450 1000
$Comp
L stm32Logger-rescue:AP111733 U3
U 1 1 5AA0E88C
P 9650 2800
F 0 "U3" H 9750 2550 50  0000 C CNN
F 1 "AP111733" H 9650 3050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9650 2450 50  0001 C CNN
F 3 "" H 9750 2550 50  0000 C CNN
	1    9650 2800
	1    0    0    -1  
$EndComp
Text GLabel 9200 2800 0    60   Input ~ 0
+5V
Wire Wire Line
	9200 2800 9350 2800
Text GLabel 9650 3200 3    60   Input ~ 0
GND
Wire Wire Line
	9650 3100 9650 3200
$Comp
L stm32Logger-rescue:CONN_01X02 P5
U 1 1 5AA1033C
P 10200 3000
F 0 "P5" H 10200 3150 50  0000 C CNN
F 1 "CONN_01X02" V 10300 3000 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 10200 3000 50  0001 C CNN
F 3 "" H 10200 3000 50  0000 C CNN
	1    10200 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 2800 10150 2800
Text GLabel 10450 2800 2    60   Input ~ 0
VCC
Wire Wire Line
	10250 2800 10450 2800
Text GLabel 3300 950  0    60   Input ~ 0
LED2
$Comp
L device1:R R2
U 1 1 5AA18564
P 3600 950
F 0 "R2" V 3680 950 50  0000 C CNN
F 1 "1K" V 3600 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3530 950 50  0001 C CNN
F 3 "" H 3600 950 50  0000 C CNN
	1    3600 950 
	0    1    1    0   
$EndComp
$Comp
L device1:LED D2
U 1 1 5AA185E0
P 4050 950
F 0 "D2" H 4050 1050 50  0000 C CNN
F 1 "LED" H 4050 850 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 4050 950 50  0001 C CNN
F 3 "" H 4050 950 50  0000 C CNN
	1    4050 950 
	1    0    0    -1  
$EndComp
Text GLabel 4400 950  2    60   Input ~ 0
VCC
Wire Wire Line
	3300 950  3450 950 
Wire Wire Line
	3750 950  3900 950 
Wire Wire Line
	4200 950  4400 950 
Text GLabel 10500 6000 3    60   Input ~ 0
GND
Wire Wire Line
	10500 5900 10500 6000
Text GLabel 1950 4350 0    60   Input ~ 0
LED2
Wire Wire Line
	1950 4350 2350 4350
Wire Wire Line
	2350 4350 2350 4100
Wire Wire Line
	2350 4100 2600 4100
Wire Wire Line
	10350 4050 10400 4050
Wire Wire Line
	10300 4150 10400 4150
Wire Wire Line
	10000 5700 10000 5850
Wire Wire Line
	9900 5500 10100 5500
Wire Wire Line
	6800 5550 7050 5550
Wire Wire Line
	6800 5550 6800 5750
Wire Wire Line
	6550 5550 6800 5550
Wire Wire Line
	7050 5550 7300 5550
Wire Wire Line
	6550 6250 6800 6250
Wire Wire Line
	6800 6250 6800 6400
Wire Wire Line
	6800 6250 7050 6250
Wire Wire Line
	7050 6250 7300 6250
Wire Wire Line
	10150 1000 10800 1000
Wire Wire Line
	9800 1000 10000 1000
Wire Wire Line
	10000 1000 10150 1000
Wire Wire Line
	9800 1650 9800 1900
Wire Wire Line
	9150 1650 9150 1900
Wire Wire Line
	10150 1650 10150 1750
Wire Wire Line
	10800 1650 10800 1750
Wire Wire Line
	10150 1750 10150 1900
Wire Wire Line
	10800 1750 10800 1900
Wire Wire Line
	5400 5200 5400 5100
Wire Wire Line
	5400 5200 5500 5200
Wire Wire Line
	5400 1300 5400 1500
Wire Wire Line
	5400 1300 5500 1300
Wire Wire Line
	800  6900 800  6950
Wire Wire Line
	5500 5200 5600 5200
Wire Wire Line
	5500 1300 5600 1300
Text GLabel 8550 3500 2    50   Input ~ 0
Serial2RX
Wire Wire Line
	8400 3500 8550 3500
$Comp
L stm32Logger-rescue:CONN_01X04 P4
U 1 1 5CC0C9D3
P 8650 6100
F 0 "P4" H 8650 6350 50  0000 C CNN
F 1 "CONN_01X04" V 8750 6100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-04_04x2.54mm_Straight" H 8650 6100 50  0001 C CNN
F 3 "" H 8650 6100 50  0000 C CNN
	1    8650 6100
	1    0    0    -1  
$EndComp
Text GLabel 8350 5950 0    60   Input ~ 0
VCC
Text GLabel 8350 6250 0    60   Input ~ 0
GND
Text GLabel 8350 6150 0    60   Input ~ 0
MeterSerial
Text GLabel 8350 6050 0    50   Input ~ 0
Serial2RX
Wire Wire Line
	8350 5950 8450 5950
Wire Wire Line
	8350 6050 8450 6050
Wire Wire Line
	8350 6150 8450 6150
Wire Wire Line
	8350 6250 8450 6250
$EndSCHEMATC
