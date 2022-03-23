# nNEXO_Microcontroller_Temp
Using Teensy 4.1 and Arduino Mega to collect temperatures using PT100's and thermocouples

This program requires several libraries to be compiled. 
All but the WDT is installable via the Arduino library manager. 
Since the project is built on a Teensy4.1 it also naturally also reduires Teensyduino.
- Adafruit BME280
- Adafruit MAX31865
- Adafruit MAX31856
- WDT_T4 (https://github.com/tonton81/WDT_T4)

Current TODO:
- Fix NativeEthernet locking issue
- Prevent LCD burn in (partially done)

Future feature adds:
- Utilize ILI9341 touch feature for interactive display

Schematic of PCB
![Thermometry_SCH](https://user-images.githubusercontent.com/3258779/155235979-8a6f9ab8-8063-4b4c-9ad0-8a209429a6cb.png)

PCBnew
![Thermometry_PCB](https://user-images.githubusercontent.com/3258779/155236105-86f3ebac-597b-4e5d-be76-18cac1bc43cf.png)


PCB Version 1.2  
https://oshpark.com/shared_projects/bG9Ms06A (untested)


Parts:
| LOC | Part | Digikey PN |
| -- | -- | -- |
| J1 |  DB15 | LD15S33E4GV00LF-ND | 
| J2 | Barrel 2x5.5mm | CP-002A-ND |
| Ethernet | 100 Base T | 1278-1052-ND |
| LCD Conn | 2x CONN HEADER 14POS | AE11367-ND|
| R1-12 | 22 Ohm 0805 | A126437CT-ND |
| R13 | 0 Ohm 0805 | A106066CT-ND |
| CP1 | 47 uF 1206 | ?? |
| F1 | 1A Fuse | F6777CT-ND |
| C1 | 0.1 uF Ethernet Cap | BC1084CT-ND |
| MCU1 | 2x 24POS Recpt | SAM1093-24-ND |

