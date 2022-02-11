#include <Adafruit_MAX31865.h>
#include <Adafruit_MAX31856.h>
#include <Adafruit_BME280.h>
#include <Wire.h>
#include <SPI.h>
#include "ILI9341_t3.h"
#include <NativeEthernet.h>
#include <Arduino.h>
#include <ArduinoRS485.h> // ArduinoModbus depends on the ArduinoRS485 library
#include <ArduinoModbus.h>

Adafruit_MAX31865 rtd01 = Adafruit_MAX31865(35);
Adafruit_MAX31865 rtd02 = Adafruit_MAX31865(41);
// Adafruit_MAX31865 rtd03 = Adafruit_MAX31865(18);
// Adafruit_MAX31865 rtd04 = Adafruit_MAX31865(34);
// Adafruit_MAX31865 rtd05 = Adafruit_MAX31865(33);
Adafruit_MAX31856 tcp01 = Adafruit_MAX31856(24);
// Adafruit_MAX31856 tcp02 = Adafruit_MAX31856(29);
Adafruit_BME280 bme(27); // hardware SPI

#define VERSION "nEXO Thermometry v1.1"
#define TFT_DC 36
#define TFT_CS 40
#define T_CS 37
#define T_IRQ 39
ILI9341_t3 tft = ILI9341_t3(TFT_CS, TFT_DC);

// The value of the Rref resistor. Use 430.0 for PT100 and 4300.0 for PT1000
#define RREF      430.0
// The 'nominal' 0-degrees-C resistance of the sensor
// 100.0 for PT100, 1000.0 for PT1000
#define RNOMINAL  100.0

// Enter a MAC address for your controller below.
byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
// The IP address will be dependent on your local network:
IPAddress ip(192, 168, 0, 242);

EthernetServer ethServer(502);
ModbusTCPServer modbusTCPServer;

uint32_t currentMillis;
uint32_t pollModbusMillis;
uint32_t updateSensorsMillis;
uint32_t updateClientMillis;
uint32_t updateSerialMillis;
uint32_t updateDisplayMillis;
// unsigned int  heartbeat;

// Global variables to make current sensor temps available to every function
float rtd01temp;
float rtd02temp;
float rtd03temp;
float rtd04temp;
float rtd05temp;
float tcp01temp;
float tcp02temp;
float bmeTemp;

//Modbus holding register address mapping
const int rtd01_reg = 0x00;
const int rtd02_reg = 0x01;
const int rtd03_reg = 0x02;
const int rtd04_reg = 0x03;
const int rtd05_reg = 0x04;
const int tcp01_reg1 = 0x05;
const int tcp01_reg2 = 0x06;
const int tcp02_reg1 = 0x07;
const int tcp02_reg2 = 0x08;
const int bme_reg1 = 0x09;
const int bme_reg2 = 0x010;
// const int tick_tock = 0x11;

void setup() {
  Serial.begin(115200);
//  while (!Serial) {
//    ; // wait for serial port to connect. Needed for native USB port only
//  }
  Serial.println(VERSION);
  rtd01.begin(MAX31865_3WIRE);  // set to 2WIRE or 4WIRE as necessary
  rtd02.begin(MAX31865_3WIRE);  // set to 2WIRE or 4WIRE as necessary
//  rtd03.begin(MAX31865_3WIRE);  // set to 2WIRE or 4WIRE as necessary
//  rtd04.begin(MAX31865_3WIRE);  // set to 2WIRE or 4WIRE as necessary
//  rtd05.begin(MAX31865_3WIRE);  // set to 2WIRE or 4WIRE as necessary
  tcp01.begin();
  tcp01.setThermocoupleType(MAX31856_TCTYPE_T);
//  tcp02.begin();
//  tcp02.setThermocoupleType(MAX31856_TCTYPE_T);
  tft.begin();

  Ethernet.begin(mac, ip);
  // Check for Ethernet hardware present
  if (Ethernet.hardwareStatus() == EthernetNoHardware) {
    Serial.println("Ethernet shield was not found.  Sorry, can't run without hardware. :(");
    while (true) {
      delay(1); // do nothing, no point running without Ethernet hardware
    }
  }
  // Keeps displaying error despite having thernet connection, commented out for now
  // if (Ethernet.linkStatus() == LinkOFF) {
  //   Serial.println("Ethernet cable is not connected.");
  // }

  // Start the server
  ethServer.begin();

  // start the Modbus TCP server
  if (!modbusTCPServer.begin()) {
    Serial.println("Failed to start Modbus TCP Server!");
    while (1);
  }

  // initialize BME280 sensor
  bme.begin();
//  if (!bme.begin()) {
//    Serial.println("Could not find a valid BME280 sensor, check wiring!");
//    while (1);
//  }

  // configure 12 holding registers at address 0x00
  modbusTCPServer.configureHoldingRegisters(0x00, 12);

  // Setup ILI9341 TFT LCD
  tft.fillScreen(ILI9341_BLACK);
  tft.setTextColor(ILI9341_WHITE);
  tft.setTextSize(3);
  tft.setRotation(3);
  tft.setCursor(10, 10);
  tft.println(VERSION);
  tft.fillScreen(ILI9341_BLACK);
}

void loop() {
  EthernetClient client = ethServer.available();
  // listen for incoming clients
  if (client) {
    Serial.println("Client Connected");
    modbusTCPServer.accept(client);

    while (client.connected()) {
      currentMillis = millis();

      if (currentMillis - pollModbusMillis > 1000) {
        // poll for Modbus TCP requests, while client connected
        modbusTCPServer.poll();
        pollModbusMillis = currentMillis;

//         if (heartbeat > 65000) {
//           heartbeat = 1;
//         } else if (heartbeat % 2 == 1) {
//           modbusTCPServer.holdingRegisterWrite(tick_tock, 1);
//           heartbeat = 0;
//         } else {
//           modbusTCPServer.holdingRegisterWrite(tick_tock, 0);
//           heartbeat = 1;
//         }
      }

      if (currentMillis - updateSensorsMillis > 250) {
        rtd01temp = rtd01.temperature(RNOMINAL, RREF);
        rtd02temp = rtd02.temperature(RNOMINAL, RREF);
//        rtd03temp = rtd03.temperature(RNOMINAL, RREF);
//        rtd04temp = rtd04.temperature(RNOMINAL, RREF);
//        rtd05temp = rtd05.temperature(RNOMINAL, RREF);
        tcp01temp = tcp01.readThermocoupleTemperature();
//        tcp02temp = tcp02.readThermocoupleTemperature();
        bmeTemp = bme.readTemperature();

        // Change Celsius to Kelvin
        rtd01temp += 273.15;
        rtd02temp += 273.15;
        rtd03temp += 273.15;
        rtd04temp += 273.15;
        rtd05temp += 273.15;
        tcp01temp += 273.15;
        tcp02temp += 273.15;
        bmeTemp += 273.15;

        updateSensorsMillis = currentMillis;
      }

      if (currentMillis - updateClientMillis > 1000) {
        updateClient(tcp01temp, bmeTemp);
//        updateClient(tcp01temp, tcp02temp);
        updateClientMillis = currentMillis;
      }

      if (currentMillis - updateSerialMillis > 2000) {
        updateSerial(rtd01temp, rtd02temp, tcp01temp, bmeTemp);
//        updateSerial(rtd01temp, rtd02temp, rtd03temp, rtd04temp, rtd05temp, tcp01temp, tcp02temp, bmeTemp);
        updateSerialMillis = currentMillis;
      }

      if (currentMillis - updateDisplayMillis > 1000) {
        updateDisplay(rtd01temp, rtd02temp, tcp01temp, bmeTemp);
//        updateDisplay(rtd01temp, rtd02temp, rtd03temp, rtd04temp, rtd05temp, tcp01temp, tcp02temp, bmeTemp);
        updateDisplayMillis = currentMillis;
      }
    }
  }
  // backup for if client disconnects, display still runs
  rtd01temp = rtd01.temperature(RNOMINAL, RREF);
  rtd02temp = rtd02.temperature(RNOMINAL, RREF);
//  rtd03temp = rtd03.temperature(RNOMINAL, RREF);
//  rtd04temp = rtd04.temperature(RNOMINAL, RREF);
//  rtd05temp = rtd05.temperature(RNOMINAL, RREF);
  tcp01temp = tcp01.readThermocoupleTemperature();
//  tcp02temp = tcp02.readThermocoupleTemperature();
  bmeTemp = bme.readTemperature();

  // Change Celsius to Kelvin
  rtd01temp += 273.15;
  rtd02temp += 273.15;
  rtd03temp += 273.15;
  rtd04temp += 273.15;
  rtd05temp += 273.15;
  tcp01temp += 273.15;
  tcp02temp += 273.15;
  bmeTemp += 273.15;

  updateDisplay(rtd01temp, rtd02temp, tcp01temp, bmeTemp);
//  updateDisplay(rtd01temp, rtd02temp, rtd03temp, rtd04temp, rtd05temp, tcp01temp, tcp02temp, bmeTemp);
  delay(250); // TODO Change to millis
}

union {
    float asFloat;
    uint16_t asInt[2];
} flreg;

void updateClient(float tcp01temp, float bmeTemp) {
  uint16_t rawRTD01 = rtd01.readRTD();
  uint16_t rawRTD02 = rtd02.readRTD();
//  uint16_t rawRTD03 = rtd03.readRTD();
//  uint16_t rawRTD04 = rtd04.readRTD();
//  uint16_t rawRTD05 = rtd05.readRTD();
  modbusTCPServer.holdingRegisterWrite(rtd01_reg, rawRTD01);
  modbusTCPServer.holdingRegisterWrite(rtd02_reg, rawRTD02);
//  modbusTCPServer.holdingRegisterWrite(rtd03_reg, rawRTD03);
//  modbusTCPServer.holdingRegisterWrite(rtd04_reg, rawRTD04);
//  modbusTCPServer.holdingRegisterWrite(rtd05_reg, rawRTD05);

  flreg.asFloat = tcp01temp;
  modbusTCPServer.holdingRegisterWrite(tcp01_reg1, flreg.asInt[1]);
  modbusTCPServer.holdingRegisterWrite(tcp01_reg2, flreg.asInt[0]);
//  flreg.asFloat = tcp02temp;
//  modbusTCPServer.holdingRegisterWrite(tcp02_reg1, flreg.asInt[1]);
//  modbusTCPServer.holdingRegisterWrite(tcp02_reg2, flreg.asInt[0]);
  flreg.asFloat = bmeTemp;
  modbusTCPServer.holdingRegisterWrite(bme_reg1, flreg.asInt[1]);
  modbusTCPServer.holdingRegisterWrite(bme_reg2, flreg.asInt[0]);
}

void  updateSerial(float rtd01temp, float rtd02temp, float tcp01temp, float bmeTemp) {
//  uint16_t rtd = rtd01.readRTD();
//  Serial.print("RTD value: "); Serial.println(rtd);
//  float ratio = rtd;
//  ratio /= 32768;
//  Serial.print("Ratio = "); Serial.println(ratio,8);
//  Serial.print("Resistance = "); Serial.println(RREF*ratio,8);
  Serial.print("RTD01 temperature : "); Serial.println(rtd01temp);
  Serial.print("RTD02 temperature : "); Serial.println(rtd02temp);
//  Serial.print("RTD03 temperature : "); Serial.println(rtd03temp);
//  Serial.print("RTD04 temperature : "); Serial.println(rtd04temp);
//  Serial.print("RTD05 temperature : "); Serial.println(rtd05temp);
  Serial.print("TC01 Temperature:   "); Serial.println(tcp01temp);
//  Serial.print("TC02 Temperature:     "); Serial.println(tcp02temp);
//  Serial.print("TC Cold Junction:   "); Serial.println(tcp01.readCJTemperature());
  Serial.print("BME280 Temperature: "); Serial.println(bmeTemp);
  Serial.println();
}

void updateDisplay(float rtd01temp, float rtd02temp, float tcp01temp, float bmeTemp) {
  tft.setTextSize(3);
  tft.setTextColor(ILI9341_WHITE, ILI9341_BLACK);
  tft.setCursor(10, 10);
  tft.print("RTD_01:"); tft.print(rtd01temp); tft.println(" K");
  tft.setCursor(10, 40);
  tft.print("RTD_02:"); tft.print(rtd02temp); tft.println(" K");
  tft.setCursor(10, 70);
  tft.print("RTD_03:"); tft.print("--"); tft.println(" K");
  tft.setCursor(10, 100);
  tft.print("RTD_04:"); tft.print("--"); tft.println(" K");
  tft.setCursor(10, 130);
  tft.print("RTD_05:"); tft.print("--"); tft.println(" K");

  tft.setTextColor(ILI9341_YELLOW, ILI9341_BLACK);
  tft.setCursor(10, 160);
  tft.print("TCP_01:"); tft.print(tcp01temp); tft.println(" K");
  tft.setCursor(10, 190);
  tft.print("TCP_02:"); tft.print("--"); tft.println(" K");

  tft.setTextColor(ILI9341_WHITE, ILI9341_BLACK);
  tft.setCursor(10, 220);
  tft.setTextSize(2);
  tft.print("BME_280:"); tft.print(bmeTemp); tft.println(" K");
}

void checkPTFault() {
  // Check and print any faults
  uint8_t fault = rtd01.readFault();
  if (fault) {
    Serial.print("Fault 0x"); Serial.println(fault, HEX);
    if (fault & MAX31865_FAULT_HIGHTHRESH) {
      Serial.println("RTD High Threshold");
    }
    if (fault & MAX31865_FAULT_LOWTHRESH) {
      Serial.println("RTD Low Threshold");
    }
    if (fault & MAX31865_FAULT_REFINLOW) {
      Serial.println("REFIN- > 0.85 x Bias");
    }
    if (fault & MAX31865_FAULT_REFINHIGH) {
      Serial.println("REFIN- < 0.85 x Bias - FORCE- open");
    }
    if (fault & MAX31865_FAULT_RTDINLOW) {
      Serial.println("RTDIN- < 0.85 x Bias - FORCE- open");
    }
    if (fault & MAX31865_FAULT_OVUV) {
      Serial.println("Under/Over voltage");
    }
    rtd01.clearFault();
  }
}
