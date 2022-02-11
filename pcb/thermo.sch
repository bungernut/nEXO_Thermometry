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
L thermo-rescue:Teensy4.1-teensy MCU1
U 1 1 610D658F
P 5700 4400
F 0 "MCU1" H 5700 6965 50  0000 C CNN
F 1 "Teensy4.1" H 5700 6874 50  0000 C CNN
F 2 "Thermometry:Teensy41" H 5300 4800 50  0001 C CNN
F 3 "" H 5300 4800 50  0001 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
Entry Wire Line
	3100 2000 3200 2100
Entry Wire Line
	3100 1900 3200 2000
Entry Wire Line
	3100 6600 3200 6700
Entry Wire Line
	3100 6500 3200 6600
Entry Wire Line
	3100 6400 3200 6500
Entry Wire Line
	3100 6300 3200 6400
Entry Wire Line
	3100 5500 3200 5600
Entry Wire Line
	3100 5400 3200 5500
Entry Wire Line
	3100 5300 3200 5400
Entry Wire Line
	3100 5200 3200 5300
Entry Wire Line
	3100 4400 3200 4500
Entry Wire Line
	3100 4300 3200 4400
Entry Wire Line
	3100 4200 3200 4300
Entry Wire Line
	3100 4100 3200 4200
Entry Wire Line
	3100 3000 3200 3100
Entry Wire Line
	3100 3100 3200 3200
Entry Wire Line
	3100 3200 3200 3300
Entry Wire Line
	3100 3300 3200 3400
Text Label 2900 1900 0    50   ~ 0
CS_5
Text Label 2950 2000 0    50   ~ 0
SDI
Text Label 2950 2100 0    50   ~ 0
SDO
Text Label 2950 2400 0    50   ~ 0
GND
Text Label 2950 2500 0    50   ~ 0
VIN
Text Label 2950 3100 0    50   ~ 0
SDI
Text Label 2950 4200 0    50   ~ 0
SDI
Text Label 2950 5300 0    50   ~ 0
SDI
Text Label 2950 6400 0    50   ~ 0
SDI
Text Label 2950 3200 0    50   ~ 0
SDO
Text Label 2950 4300 0    50   ~ 0
SDO
Text Label 2950 5400 0    50   ~ 0
SDO
Text Label 2950 6500 0    50   ~ 0
SDO
Text Label 2950 3300 0    50   ~ 0
CLK
Text Label 2950 3500 0    50   ~ 0
GND
Text Label 2950 3600 0    50   ~ 0
VIN
Text Label 2950 6900 0    50   ~ 0
VIN
Text Label 2950 5800 0    50   ~ 0
VIN
Text Label 2950 4700 0    50   ~ 0
VIN
Text Label 2950 4600 0    50   ~ 0
GND
Text Label 2950 6800 0    50   ~ 0
GND
Text Label 2950 4400 0    50   ~ 0
CLK
Text Label 2950 5500 0    50   ~ 0
CLK
Text Label 2950 6600 0    50   ~ 0
CLK
Text Label 2900 3000 0    50   ~ 0
CS_4
Text Label 2900 4100 0    50   ~ 0
CS_3
Text Label 2900 5200 0    50   ~ 0
CS_2
Text Label 2900 6300 0    50   ~ 0
CS_1
Entry Wire Line
	4100 3450 4200 3550
Entry Wire Line
	4100 3350 4200 3450
Text Label 4200 3450 0    50   ~ 0
SDI
Text Label 4200 3550 0    50   ~ 0
SDO
Wire Wire Line
	4200 3450 4350 3450
Wire Wire Line
	4200 3550 4600 3550
Entry Wire Line
	7150 3550 7250 3650
Wire Wire Line
	7150 3550 7050 3550
Text Label 7050 3550 0    50   ~ 0
CLK
Text Label 6800 2350 0    50   ~ 0
GND
Entry Wire Line
	7650 1950 7750 2050
Entry Wire Line
	7650 2150 7750 2250
Entry Wire Line
	7650 2250 7750 2350
Entry Wire Line
	7650 2350 7750 2450
Entry Wire Line
	7650 2550 7750 2650
Wire Wire Line
	8150 2050 7750 2050
Wire Wire Line
	8150 2250 7750 2250
Wire Wire Line
	7750 2350 8150 2350
Wire Wire Line
	8150 2450 7750 2450
Wire Wire Line
	6800 2250 7150 2250
Text Label 7750 1950 0    50   ~ 0
GND
Text Label 6950 4350 0    50   ~ 0
CS_1
Text Label 6900 4250 0    50   ~ 0
TFT_DC
Text Label 6950 3750 0    50   ~ 0
CS_2
Text Label 6950 3050 0    50   ~ 0
CS_3
Text Label 6950 4450 0    50   ~ 0
CS_4
Entry Wire Line
	7150 4150 7250 4250
Entry Wire Line
	7150 4250 7250 4350
Wire Wire Line
	6800 4150 7150 4150
Wire Wire Line
	7150 4250 6800 4250
Text Label 4200 4250 0    50   ~ 0
CS_7
Text Label 4200 3750 0    50   ~ 0
CS_6
Entry Wire Line
	7150 4350 7250 4450
Wire Wire Line
	7150 4350 6800 4350
Text Label 6900 3850 0    50   ~ 0
TFT_CS
Connection ~ 7250 1650
Wire Bus Line
	5850 1650 7250 1650
Wire Bus Line
	4100 1650 7250 1650
Wire Bus Line
	7250 1650 7650 1650
Text Label 7750 2050 0    50   ~ 0
TFT_CS
Text Label 7750 2150 0    50   ~ 0
VIN
Text Label 7750 2250 0    50   ~ 0
TFT_DC
Text Label 7750 2350 0    50   ~ 0
SDI
Text Label 7750 2450 0    50   ~ 0
CLK
Text Label 7750 2650 0    50   ~ 0
SDO
Wire Wire Line
	5050 6150 5050 6550
Text Label 5650 6300 1    50   ~ 0
VIN
Text Label 4250 6300 1    50   ~ 0
GND
Text Label 4450 6300 1    50   ~ 0
VIN
Text Label 5450 6300 1    50   ~ 0
GND
Connection ~ 3400 6800
Wire Wire Line
	3400 6800 3400 7100
$Comp
L power:GND #PWR01
U 1 1 61101346
P 3400 7100
F 0 "#PWR01" H 3400 6850 50  0001 C CNN
F 1 "GND" H 3405 6927 50  0000 C CNN
F 2 "" H 3400 7100 50  0001 C CNN
F 3 "" H 3400 7100 50  0001 C CNN
	1    3400 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61101E9E
P 7400 2050
F 0 "#PWR04" H 7400 1800 50  0001 C CNN
F 1 "GND" H 7405 1877 50  0000 C CNN
F 2 "" H 7400 2050 50  0001 C CNN
F 3 "" H 7400 2050 50  0001 C CNN
	1    7400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6900 3550 5800
$Comp
L power:+3.3V #PWR02
U 1 1 6110DF41
P 3550 2300
F 0 "#PWR02" H 3550 2150 50  0001 C CNN
F 1 "+3.3V" H 3565 2473 50  0000 C CNN
F 2 "" H 3550 2300 50  0001 C CNN
F 3 "" H 3550 2300 50  0001 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
Connection ~ 3550 5800
Wire Wire Line
	4450 5800 5650 5800
$Comp
L Connector:Barrel_Jack J2
U 1 1 611393FD
P 5450 1150
F 0 "J2" H 5507 1475 50  0000 C CNN
F 1 "Barrel_Jack" H 5507 1384 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 5500 1110 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/cui-devices/PJ-002A/96962" H 5500 1110 50  0001 C CNN
	1    5450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2000 1350 3550
Wire Wire Line
	1350 3550 1250 3550
Wire Wire Line
	1400 2100 1400 3650
Wire Wire Line
	1400 3650 1250 3650
Wire Wire Line
	1450 2300 1450 3750
Wire Wire Line
	1450 3750 1250 3750
Wire Wire Line
	1500 3100 1500 3850
Wire Wire Line
	1500 3850 1250 3850
Wire Wire Line
	1550 3200 1550 3950
Wire Wire Line
	1550 3950 1250 3950
Wire Wire Line
	1600 3400 1600 4050
Wire Wire Line
	1600 4050 1250 4050
Wire Wire Line
	1250 4150 1800 4150
Wire Wire Line
	1800 4150 1800 4200
Wire Wire Line
	1250 4250 1750 4250
Wire Wire Line
	1750 4250 1750 4300
Wire Wire Line
	1750 4350 1750 4500
Wire Wire Line
	1250 4350 1750 4350
Wire Wire Line
	1250 4450 1600 4450
Wire Wire Line
	1600 4450 1600 5300
Wire Wire Line
	1350 6700 1350 4950
Wire Wire Line
	1350 4950 1250 4950
Wire Wire Line
	1400 6500 1400 4850
Wire Wire Line
	1400 4850 1250 4850
Wire Wire Line
	1450 6400 1450 4750
Wire Wire Line
	1450 4750 1250 4750
Wire Wire Line
	1500 5600 1500 4650
Wire Wire Line
	1500 4650 1250 4650
Wire Wire Line
	1550 5400 1550 4550
Wire Wire Line
	1550 4550 1250 4550
Wire Wire Line
	5650 5800 5650 6550
Connection ~ 3200 6050
Wire Wire Line
	6800 2350 6950 2350
Wire Wire Line
	7150 1050 6900 1050
Wire Wire Line
	5750 1250 6000 1250
Wire Wire Line
	7150 1050 7150 2250
Text Label 7000 2250 0    50   ~ 0
5V
Text Label 7050 1050 0    50   ~ 0
5V
$Comp
L power:+3.3V #PWR0101
U 1 1 6118AE35
P 7550 1550
F 0 "#PWR0101" H 7550 1400 50  0001 C CNN
F 1 "+3.3V" H 7565 1723 50  0000 C CNN
F 2 "" H 7550 1550 50  0001 C CNN
F 3 "" H 7550 1550 50  0001 C CNN
	1    7550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 611C1A8C
P 7100 2500
F 0 "#PWR0102" H 7100 2350 50  0001 C CNN
F 1 "+3.3V" H 7115 2673 50  0000 C CNN
F 2 "" H 7100 2500 50  0001 C CNN
F 3 "" H 7100 2500 50  0001 C CNN
	1    7100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 611DBC4A
P 6950 2350
F 0 "#PWR0103" H 6950 2100 50  0001 C CNN
F 1 "GND" H 6955 2177 50  0000 C CNN
F 2 "" H 6950 2350 50  0001 C CNN
F 3 "" H 6950 2350 50  0001 C CNN
	1    6950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 611ECB88
P 6000 1300
F 0 "#PWR0104" H 6000 1050 50  0001 C CNN
F 1 "GND" H 6005 1127 50  0000 C CNN
F 2 "" H 6000 1300 50  0001 C CNN
F 3 "" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2050 7400 1950
Text Label 7750 2550 0    50   ~ 0
VIN
Text Label 2950 5700 0    50   ~ 0
GND
$Comp
L Connector:RJ45_LED Teensy_Ethernet1
U 1 1 612014A3
P 8250 4950
F 0 "Teensy_Ethernet1" H 8250 5500 50  0000 C CNN
F 1 "RJ45_LED" H 8100 4500 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Cetus_J1B1211CCD_Horizontal" V 8250 4975 50  0001 C CNN
F 3 "~" V 8250 4975 50  0001 C CNN
	1    8250 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 5200 6950 5200
Wire Wire Line
	6950 5200 6950 5750
Wire Wire Line
	8750 5750 8750 5250
Wire Wire Line
	8750 5250 8650 5250
Wire Wire Line
	7400 5050 7850 5050
Wire Wire Line
	7850 4750 7400 4750
Wire Wire Line
	7400 4750 7400 5050
Connection ~ 7400 5050
Wire Wire Line
	6800 5300 7250 5300
Wire Wire Line
	7250 5300 7250 4950
Wire Wire Line
	7250 4950 7850 4950
Wire Wire Line
	6800 4800 7200 4800
Wire Wire Line
	7200 4800 7200 5150
Wire Wire Line
	7200 5150 7850 5150
Wire Wire Line
	7150 4850 7150 5100
Wire Wire Line
	6800 5100 7150 5100
Wire Wire Line
	7150 4850 7850 4850
Wire Wire Line
	6800 5000 6950 5000
Wire Wire Line
	7050 4900 7050 5550
Wire Wire Line
	6800 4900 7050 4900
Wire Wire Line
	7050 5550 7400 5550
Connection ~ 7400 5550
Wire Wire Line
	7400 5550 7850 5550
Wire Wire Line
	7850 5350 7850 5550
Wire Wire Line
	7400 5550 7400 5500
Wire Wire Line
	7400 5650 8650 5650
Wire Wire Line
	7400 5550 7400 5650
Wire Wire Line
	8650 5350 8650 5650
Wire Wire Line
	6950 5750 8750 5750
Wire Wire Line
	6950 5000 6950 4750
$Comp
L power:GND #PWR0105
U 1 1 6113FF3C
P 7400 3750
F 0 "#PWR0105" H 7400 3500 50  0001 C CNN
F 1 "GND" H 7405 3577 50  0000 C CNN
F 2 "" H 7400 3750 50  0001 C CNN
F 3 "" H 7400 3750 50  0001 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3650 7400 3750
Text Label 7400 3650 0    50   ~ 0
GND
$Comp
L Device:C 0.1uF1
U 1 1 6114C13E
P 7400 5350
F 0 "0.1uF1" H 7515 5396 50  0000 L CNN
F 1 "C1" H 7515 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7438 5200 50  0001 C CNN
F 3 "Digikey BC1084CT-ND" H 7400 5350 50  0001 C CNN
	1    7400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5050 7400 5200
Connection ~ 7400 5200
Wire Wire Line
	7400 5200 7400 5250
$Comp
L Device:CP1 CP1
U 1 1 6115A1EB
P 6450 1200
F 0 "CP1" H 6565 1246 50  0000 L CNN
F 1 "47uF" H 6565 1155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6450 1200 50  0001 C CNN
F 3 "2368-VHT47M25-ND" H 6450 1200 50  0001 C CNN
	1    6450 1200
	1    0    0    -1  
$EndComp
Connection ~ 6450 1050
Wire Wire Line
	6450 1050 5750 1050
Wire Wire Line
	6000 1250 6250 1250
Wire Wire Line
	6250 1250 6250 1350
Wire Wire Line
	6250 1350 6450 1350
Connection ~ 6000 1250
Connection ~ 7550 1850
Wire Wire Line
	7550 1850 7550 2150
Wire Wire Line
	7550 1550 7550 1850
Wire Wire Line
	7550 1850 8150 1850
Text Label 7750 1850 0    50   ~ 0
VIN
Wire Wire Line
	2850 6500 3100 6500
Wire Wire Line
	1450 6400 1950 6400
Wire Wire Line
	1400 6500 1950 6500
Wire Wire Line
	1350 6700 1950 6700
Connection ~ 3400 5700
Wire Wire Line
	3100 5400 2850 5400
Wire Wire Line
	1500 5600 1950 5600
Wire Wire Line
	1550 5400 1950 5400
Wire Wire Line
	1600 5300 1950 5300
Connection ~ 3550 4700
Wire Wire Line
	3550 4700 3550 5800
Connection ~ 3400 4600
Wire Wire Line
	3400 4600 3400 5700
Wire Wire Line
	3100 4300 2850 4300
Wire Wire Line
	1800 4200 1950 4200
Wire Wire Line
	1750 4300 1950 4300
Wire Wire Line
	1750 4500 1950 4500
Connection ~ 3550 2500
Wire Wire Line
	3550 2500 3550 3600
Text Label 2950 2200 0    50   ~ 0
CLK
Entry Wire Line
	3100 2100 3200 2200
Entry Wire Line
	3100 2200 3200 2300
Wire Wire Line
	3100 2100 2850 2100
Wire Wire Line
	1450 2300 1950 2300
Wire Wire Line
	1400 2100 1950 2100
Wire Wire Line
	1350 2000 1950 2000
Wire Wire Line
	1500 3100 1950 3100
Wire Wire Line
	1550 3200 1950 3200
Wire Wire Line
	1600 3400 1950 3400
Wire Wire Line
	2850 3200 3100 3200
Wire Wire Line
	3400 2400 3400 3500
Connection ~ 3400 3500
Wire Wire Line
	3400 3500 3400 4600
Connection ~ 3550 3600
Wire Wire Line
	6000 1250 6000 1300
$Comp
L thermo-rescue:MAX31865-max31865 ADC1
U 1 1 612B3A94
P 2300 6550
F 0 "ADC1" H 2150 7050 50  0000 C CNN
F 1 "PT100" H 2450 6050 50  0000 C CNN
F 2 "Thermometry:MAX31865" H 2300 6100 50  0001 C CNN
F 3 "" H 2300 6100 50  0001 C CNN
	1    2300 6550
	1    0    0    -1  
$EndComp
$Comp
L thermo-rescue:MAX31865-max31865 ADC2
U 1 1 612B65CD
P 2300 5450
F 0 "ADC2" H 2150 5950 50  0000 C CNN
F 1 "PT100" H 2450 4950 50  0000 C CNN
F 2 "Thermometry:MAX31865" H 2300 5000 50  0001 C CNN
F 3 "" H 2300 5000 50  0001 C CNN
	1    2300 5450
	1    0    0    -1  
$EndComp
$Comp
L thermo-rescue:MAX31865-max31865 ADC3
U 1 1 612B6EF2
P 2300 4350
F 0 "ADC3" H 2150 4850 50  0000 C CNN
F 1 "PT100" H 2450 3850 50  0000 C CNN
F 2 "Thermometry:MAX31865" H 2300 3900 50  0001 C CNN
F 3 "" H 2300 3900 50  0001 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
$Comp
L thermo-rescue:MAX31865-max31865 ADC4
U 1 1 612B754B
P 2300 3250
F 0 "ADC4" H 2150 3750 50  0000 C CNN
F 1 "PT100" H 2450 2750 50  0000 C CNN
F 2 "Thermometry:MAX31865" H 2300 2800 50  0001 C CNN
F 3 "" H 2300 2800 50  0001 C CNN
	1    2300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5800 4450 6550
Wire Bus Line
	3200 1650 4100 1650
Connection ~ 4100 1650
Wire Wire Line
	3550 5800 4450 5800
Connection ~ 4450 5800
$Comp
L thermo_max31856:thermo_max31856 ADC7
U 1 1 611B07C0
P 5250 6900
F 0 "ADC7" V 4950 7350 50  0000 R CNN
F 1 "thermocouple2" V 4950 6800 50  0000 R CNN
F 2 "Thermometry:MAX31856" H 5250 6450 50  0001 C CNN
F 3 "" H 5250 6450 50  0001 C CNN
	1    5250 6900
	0    -1   -1   0   
$EndComp
$Comp
L thermo_bme280:thermo_bme280 U1
U 1 1 611B16E5
P 6400 6900
F 0 "U1" V 6100 7300 50  0000 R CNN
F 1 "BME280" V 6100 6800 50  0000 R CNN
F 2 "Thermometry:BME280" H 6400 6450 50  0001 C CNN
F 3 "" H 6400 6450 50  0001 C CNN
	1    6400 6900
	0    -1   -1   0   
$EndComp
Connection ~ 5650 5800
Text Label 6700 6300 1    50   ~ 0
VIN
Wire Wire Line
	6700 5800 6700 6550
Wire Wire Line
	3400 5700 3400 5950
Wire Wire Line
	3400 5950 3400 6800
Connection ~ 3400 5950
Wire Wire Line
	3400 5950 4250 5950
Wire Wire Line
	4250 5950 4250 6550
Connection ~ 4250 5950
Wire Wire Line
	4250 5950 5450 5950
Wire Wire Line
	5650 5800 6700 5800
Wire Wire Line
	6500 5950 6500 6550
Wire Wire Line
	5450 5950 5450 6550
Connection ~ 5450 5950
Text Label 6500 6300 1    50   ~ 0
GND
Wire Wire Line
	5450 5950 6500 5950
Entry Wire Line
	3750 6050 3850 6150
Entry Wire Line
	3850 6050 3950 6150
Entry Wire Line
	3950 6050 4050 6150
Entry Wire Line
	4050 6050 4150 6150
Wire Wire Line
	3850 6150 3850 6550
$Comp
L thermo_max31856:thermo_max31856 ADC6
U 1 1 61166772
P 4050 6900
F 0 "ADC6" V 3750 7350 50  0000 R CNN
F 1 "thermocouple1" V 3750 6800 50  0000 R CNN
F 2 "Thermometry:MAX31856" H 4050 6450 50  0001 C CNN
F 3 "" H 4050 6450 50  0001 C CNN
	1    4050 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 6550 3950 6150
Wire Wire Line
	4050 6150 4050 6350
Wire Wire Line
	4150 6550 4150 6150
Text Label 4150 6300 1    50   ~ 0
CLK
Text Label 4050 6300 1    50   ~ 0
SDO
Text Label 3950 6300 1    50   ~ 0
SDI
Text Label 3850 6350 1    50   ~ 0
CS_6
Text Label 5050 6350 1    50   ~ 0
CS_7
Entry Wire Line
	4950 6050 5050 6150
Entry Wire Line
	5050 6050 5150 6150
Entry Wire Line
	5150 6050 5250 6150
Entry Wire Line
	5250 6050 5350 6150
Wire Wire Line
	5150 6150 5150 6550
Wire Wire Line
	5350 6150 5350 6550
Text Label 5150 6300 1    50   ~ 0
SDI
Text Label 5250 6300 1    50   ~ 0
SDO
Text Label 5350 6300 1    50   ~ 0
CLK
Entry Wire Line
	6000 6050 6100 6150
Entry Wire Line
	6100 6050 6200 6150
Entry Wire Line
	6200 6050 6300 6150
Entry Wire Line
	6300 6050 6400 6150
Wire Wire Line
	6400 6150 6400 6550
Wire Wire Line
	6200 6150 6200 6550
Wire Wire Line
	6100 6550 6100 6150
Text Label 6100 6350 1    50   ~ 0
CS_8
Text Label 6300 6300 1    50   ~ 0
SDO
Text Label 6400 6300 1    50   ~ 0
CLK
Wire Wire Line
	7550 2150 7550 2550
Connection ~ 7550 2150
Entry Wire Line
	7650 3050 7750 3150
Entry Wire Line
	7650 2950 7750 3050
Entry Wire Line
	7650 2850 7750 2950
Entry Wire Line
	7650 2750 7750 2850
Entry Wire Line
	7650 2650 7750 2750
Wire Wire Line
	7750 2750 8150 2750
Wire Wire Line
	8150 2850 7750 2850
Wire Wire Line
	7750 2950 8150 2950
Wire Wire Line
	7750 3150 8150 3150
Text Label 7750 2750 0    50   ~ 0
CLK
Text Label 7750 2850 0    50   ~ 0
T_CS
Text Label 7750 2950 0    50   ~ 0
SDI
Text Label 7750 3050 0    50   ~ 0
SDO
Text Label 7750 3150 0    50   ~ 0
T_IRQ
Entry Wire Line
	7150 4450 7250 4550
Wire Wire Line
	6800 4450 7150 4450
Wire Wire Line
	7850 4650 7300 4650
Wire Wire Line
	7300 4650 7300 4750
Wire Wire Line
	7300 4750 6950 4750
Entry Wire Line
	7150 4550 7250 4650
Wire Wire Line
	7150 4550 6800 4550
Text Label 6950 3950 0    50   ~ 0
T_IRQ
$Comp
L Device:Fuse_Small F1
U 1 1 6114F94B
P 6800 1050
F 0 "F1" H 6800 865 50  0000 C CNN
F 1 "1A" H 6800 956 50  0000 C CNN
F 2 "Thermometry:thermo_fuse" H 6800 1050 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/littelfuse-inc/0154001-DRTL/2520456" H 6800 1050 50  0001 C CNN
	1    6800 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 1050 6700 1050
$Comp
L Device:R_Small_US R1
U 1 1 61176F95
P 4450 3450
F 0 "R1" V 4400 3550 50  0000 C CNN
F 1 "22" V 4500 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4450 3450 50  0001 C CNN
F 3 "~" H 4450 3450 50  0001 C CNN
	1    4450 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 3600 3550 4700
Wire Wire Line
	4550 3450 4600 3450
$Comp
L Device:R_Small_US R2
U 1 1 6116511A
P 6950 3550
F 0 "R2" V 6900 3450 50  0000 C CNN
F 1 "22" V 7000 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6950 3550 50  0001 C CNN
F 3 "~" H 6950 3550 50  0001 C CNN
	1    6950 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3550 6850 3550
$Comp
L Device:R_Small_US R3
U 1 1 61174551
P 2750 3200
F 0 "R3" V 2700 3300 50  0000 C CNN
F 1 "22" V 2800 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 3200 50  0001 C CNN
F 3 "~" H 2750 3200 50  0001 C CNN
	1    2750 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3000 3100 3000
Wire Wire Line
	2650 3100 3100 3100
Wire Wire Line
	2650 3300 3100 3300
Wire Wire Line
	2650 3500 3400 3500
Wire Wire Line
	2650 3600 3550 3600
$Comp
L thermo-rescue:MAX31865-max31865 ADC5
U 1 1 612B7D2F
P 2300 2150
F 0 "ADC5" H 2150 2650 50  0000 C CNN
F 1 "PT100" H 2450 1650 50  0000 C CNN
F 2 "Thermometry:MAX31865" H 2300 1700 50  0001 C CNN
F 3 "" H 2300 1700 50  0001 C CNN
	1    2300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 3550 2500
Wire Wire Line
	2650 2400 3400 2400
Wire Wire Line
	2650 2200 3100 2200
Wire Wire Line
	2650 2000 3100 2000
Wire Wire Line
	2650 1900 3100 1900
$Comp
L Device:R_Small_US R4
U 1 1 611F5925
P 2750 2100
F 0 "R4" V 2700 2200 50  0000 C CNN
F 1 "22" V 2800 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 2100 50  0001 C CNN
F 3 "~" H 2750 2100 50  0001 C CNN
	1    2750 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4100 3100 4100
Wire Wire Line
	2650 4400 3100 4400
Wire Wire Line
	2650 4200 3100 4200
Wire Wire Line
	2650 4600 3400 4600
Wire Wire Line
	2650 4700 3550 4700
$Comp
L Device:R_Small_US R5
U 1 1 612429F9
P 2750 4300
F 0 "R5" V 2700 4400 50  0000 C CNN
F 1 "22" V 2800 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 4300 50  0001 C CNN
F 3 "~" H 2750 4300 50  0001 C CNN
	1    2750 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5200 3100 5200
Wire Wire Line
	2650 5300 3100 5300
$Comp
L Device:R_Small_US R6
U 1 1 6125C382
P 2750 5400
F 0 "R6" V 2700 5500 50  0000 C CNN
F 1 "22" V 2800 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 5400 50  0001 C CNN
F 3 "~" H 2750 5400 50  0001 C CNN
	1    2750 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5500 3100 5500
Wire Wire Line
	2650 5700 3400 5700
Wire Wire Line
	2650 5800 3550 5800
$Comp
L Device:R_Small_US R7
U 1 1 6128253D
P 2750 6500
F 0 "R7" V 2700 6600 50  0000 C CNN
F 1 "22" V 2800 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 6500 50  0001 C CNN
F 3 "~" H 2750 6500 50  0001 C CNN
	1    2750 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 6400 3100 6400
Wire Wire Line
	2650 6300 3100 6300
Wire Wire Line
	2650 6800 3400 6800
Wire Wire Line
	2650 6600 3100 6600
Wire Wire Line
	2650 6900 3550 6900
$Comp
L Device:R_Small_US R8
U 1 1 612DA6D5
P 4050 6450
F 0 "R8" V 4000 6550 50  0000 C CNN
F 1 "22" V 4100 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4050 6450 50  0001 C CNN
F 3 "~" H 4050 6450 50  0001 C CNN
	1    4050 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 612DB8DC
P 5250 6450
F 0 "R9" V 5200 6550 50  0000 C CNN
F 1 "22" V 5300 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5250 6450 50  0001 C CNN
F 3 "~" H 5250 6450 50  0001 C CNN
	1    5250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6150 5250 6350
Text Label 6200 6300 1    50   ~ 0
SDI
$Comp
L Device:R_Small_US R10
U 1 1 612F54EE
P 6300 6450
F 0 "R10" V 6250 6550 50  0000 C CNN
F 1 "22" V 6350 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6300 6450 50  0001 C CNN
F 3 "~" H 6300 6450 50  0001 C CNN
	1    6300 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6150 6300 6350
Wire Wire Line
	3550 2300 3550 2500
$Comp
L Connector_Generic:Conn_01x14 ILI9341TFT1
U 1 1 6110AE8C
P 8350 2450
F 0 "ILI9341TFT1" H 8500 3150 50  0000 C CNN
F 1 "Conn_01x14" H 8500 1650 50  0000 C CNN
F 2 "Thermometry:ILI9341_2x7_connector" H 8350 2450 50  0001 C CNN
F 3 "~" H 8350 2450 50  0001 C CNN
	1    8350 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x14 ILI9341TFT2
U 1 1 611F021F
P 9300 2450
F 0 "ILI9341TFT2" H 9150 3150 50  0000 C CNN
F 1 "Conn_01x14" H 9150 1650 50  0000 C CNN
F 2 "Thermometry:ILI9341_2x7_connector" H 9300 2450 50  0001 C CNN
F 3 "~" H 9300 2450 50  0001 C CNN
	1    9300 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x14 ILI9341TFT3
U 1 1 611EC952
P 10000 2450
F 0 "ILI9341TFT3" H 10150 3150 50  0000 C CNN
F 1 "Conn_01x14" H 10150 1650 50  0000 C CNN
F 2 "Thermometry:ILI9341_1x14_connector" H 10000 2450 50  0001 C CNN
F 3 "~" H 10000 2450 50  0001 C CNN
	1    10000 2450
	1    0    0    -1  
$EndComp
Text Label 9450 1850 0    50   ~ 0
VIN
Text Label 9450 1950 0    50   ~ 0
GND
Text Label 9450 2050 0    50   ~ 0
TFT_CS
Text Label 9450 2150 0    50   ~ 0
VIN
Text Label 9450 2350 0    50   ~ 0
SDI
Text Label 9450 2250 0    50   ~ 0
TFT_DC
Text Label 9450 2450 0    50   ~ 0
CLK
Text Label 9450 2550 0    50   ~ 0
VIN
Text Label 9400 2650 0    50   ~ 0
SDO
Text Label 9450 2750 0    50   ~ 0
CLK
Text Label 9450 2850 0    50   ~ 0
T_CS
Text Label 9450 2950 0    50   ~ 0
SDI
Text Label 9400 3050 0    50   ~ 0
SDO
Text Label 9450 3150 0    50   ~ 0
T_IRQ
Text Label 4200 4050 0    50   ~ 0
CS_8
$Comp
L Device:R_Small_US R11
U 1 1 612455D8
P 9650 2650
F 0 "R11" V 9600 2750 50  0000 C CNN
F 1 "22" V 9700 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9650 2650 50  0001 C CNN
F 3 "~" H 9650 2650 50  0001 C CNN
	1    9650 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 61264A06
P 9650 3050
F 0 "R12" V 9600 3150 50  0000 C CNN
F 1 "22" V 9700 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9650 3050 50  0001 C CNN
F 3 "~" H 9650 3050 50  0001 C CNN
	1    9650 3050
	0    1    1    0   
$EndComp
$Comp
L Connector:DB15_Female_MountingHoles J1
U 1 1 61279AC2
P 950 4250
F 0 "J1" H 800 3400 50  0000 L CNN
F 1 "DB15_Female" H 800 5100 50  0000 L CNN
F 2 "Thermometry:D15_Female_Horizontal" H 950 4250 50  0001 C CNN
F 3 " ~" H 950 4250 50  0001 C CNN
	1    950  4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 6128BCED
P 950 3250
F 0 "R13" V 900 3350 50  0000 C CNN
F 1 "0" V 1000 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 950 3250 50  0001 C CNN
F 3 "~" H 950 3250 50  0001 C CNN
	1    950  3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6128CFEA
P 1150 3000
F 0 "#PWR03" H 1150 2750 50  0001 C CNN
F 1 "GND" H 1155 2827 50  0000 C CNN
F 2 "" H 1150 3000 50  0001 C CNN
F 3 "" H 1150 3000 50  0001 C CNN
	1    1150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3150 950  3000
Wire Wire Line
	950  3000 1150 3000
Wire Wire Line
	7750 2650 8150 2650
Wire Wire Line
	7750 3050 8150 3050
Wire Wire Line
	9100 1850 9800 1850
Wire Wire Line
	9100 1950 9800 1950
Wire Wire Line
	9100 2050 9800 2050
Wire Wire Line
	9100 2150 9800 2150
Wire Wire Line
	9100 2250 9800 2250
Wire Wire Line
	9100 2350 9800 2350
Wire Wire Line
	9100 2450 9800 2450
Wire Wire Line
	9100 2550 9800 2550
Wire Wire Line
	9100 2750 9800 2750
Wire Wire Line
	9100 2850 9800 2850
Wire Wire Line
	9100 2950 9800 2950
Wire Wire Line
	9100 3150 9800 3150
Wire Wire Line
	9750 3050 9800 3050
Wire Wire Line
	9750 2650 9800 2650
Wire Wire Line
	9100 2650 9550 2650
Wire Wire Line
	9100 3050 9550 3050
Wire Wire Line
	6800 2450 6850 2450
Wire Wire Line
	6850 2450 6850 2600
Wire Wire Line
	6850 2600 7100 2600
Wire Wire Line
	7100 2600 7100 2500
Entry Wire Line
	7150 3050 7250 3150
Wire Wire Line
	7150 3050 6800 3050
Entry Wire Line
	7150 3750 7250 3850
Wire Wire Line
	6800 3750 7150 3750
Entry Wire Line
	4100 3650 4200 3750
Entry Wire Line
	4100 4150 4200 4250
Wire Wire Line
	4200 3750 4600 3750
Wire Wire Line
	4200 4250 4600 4250
Entry Wire Line
	7150 3850 7250 3950
Wire Wire Line
	6800 3850 7150 3850
Text Label 6950 4150 0    50   ~ 0
T_CS
Text Label 6950 4550 0    50   ~ 0
CS_5
Entry Wire Line
	4100 3950 4200 4050
Wire Wire Line
	4200 4050 4600 4050
Entry Wire Line
	7150 3950 7250 4050
Wire Wire Line
	6800 3950 7150 3950
Wire Wire Line
	7550 2550 8150 2550
Wire Wire Line
	7550 2150 8150 2150
Wire Wire Line
	7400 1950 8150 1950
Wire Wire Line
	6800 3650 7400 3650
Wire Bus Line
	3200 6050 3200 6700
Wire Bus Line
	4100 1650 4100 4150
Wire Bus Line
	7650 1650 7650 3050
Wire Bus Line
	7250 1650 7250 4650
Wire Bus Line
	3200 6050 6300 6050
Wire Bus Line
	3200 1650 3200 6050
$EndSCHEMATC
