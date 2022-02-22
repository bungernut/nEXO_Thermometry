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
#include <Watchdog_t4.h>

WDT_T4<WDT1> wdt;

#define RREF      430.0
#define RNOMINAL  100.0
Adafruit_MAX31865 rtd01 = Adafruit_MAX31865(35);
Adafruit_MAX31865 rtd02 = Adafruit_MAX31865(41);
Adafruit_MAX31865 rtd03 = Adafruit_MAX31865(18);
Adafruit_MAX31865 rtd04 = Adafruit_MAX31865(34);
Adafruit_MAX31865 rtd05 = Adafruit_MAX31865(33);
// Adafruit_MAX31856 tcp01 = Adafruit_MAX31856(24);
// Adafruit_MAX31856 tcp02 = Adafruit_MAX31856(29);
// Adafruit_BME280 bme(27); // hardware SPI

#define VERSION "nEXO Thermometry v1.3"
#define TFT_DC 36
#define TFT_CS 40
#define T_CS 37
#define T_IRQ 39
ILI9341_t3 tft = ILI9341_t3(TFT_CS, TFT_DC);

// Enter a MAC address for your controller below.
byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
// The IP address will be dependent on your local network:
IPAddress ip(192, 168, 1, 81);

EthernetServer ethServer(502);
ModbusTCPServer modbusTCPServer;

uint32_t currentMillis;
uint32_t wdtfeedMillis;
uint32_t pollModbusMillis;
uint32_t updateSensorsMillis;
uint32_t updateClientMillis;
uint32_t updateDisplayMillis;

// Global variables to make current sensor temps available to every function
uint16_t rawRTD01;
uint16_t rawRTD02;
uint16_t rawRTD03;
uint16_t rawRTD04;
uint16_t rawRTD05;
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


void setup() {
  WDT_timings_t WDTconfig;
  WDTconfig.timeout = 10; /* in seconds, 0->128 */
  //WDTconfig.trigger = 2; /* in seconds, 0->128 */
  //WDTconfig.callback = myCallback;
  wdt.begin(WDTconfig);
  
  tft.begin();
  tft.fillScreen(ILI9341_BLACK);
  tft.setTextColor(ILI9341_WHITE);
  tft.setTextSize(3);
  tft.setRotation(3);
  tft.setCursor(10, 10);
  tft.println(VERSION);
  tft.setTextSize(1);
  tft.println("Waiting for Ethernet Connection");

  rtd01.begin(MAX31865_3WIRE);
  rtd02.begin(MAX31865_3WIRE);
  rtd03.begin(MAX31865_3WIRE);
  rtd04.begin(MAX31865_3WIRE);
  rtd05.begin(MAX31865_3WIRE);
  //tcp01.begin();
  //tcp01.setThermocoupleType(MAX31856_TCTYPE_T);
  //tcp02.begin();
  //tcp02.setThermocoupleType(MAX31856_TCTYPE_T);
  //bme.begin();
  
  // Get the current values for the sensors before serving crap data
  readSensors();
  updateClient(); 

  Ethernet.begin(mac, ip);
  // Check for Ethernet hardware present
  if (Ethernet.hardwareStatus() == EthernetNoHardware) {
    tft.println("Ethernet shield not found.");
    while (true) {
      delay(1); // do nothing, no point running without Ethernet hardware
    }
  }

  // Start the server
  ethServer.begin();
  modbusTCPServer.begin();
  // configure 12 holding registers at address 0x00
  modbusTCPServer.configureHoldingRegisters(0x00, 11);
}


void loop() {
  currentMillis = millis();
  EthernetClient client = ethServer.available();
  // listen for incoming clients
  if (client) {
    modbusTCPServer.accept(client);
    while (client.connected()) {
      
      modbusTCPServer.poll();
      /*
      if (currentMillis - pollModbusMillis > 1000) {
        // poll for Modbus TCP requests, while client connected
        modbusTCPServer.poll();
        pollModbusMillis = currentMillis;
      }
      */
      if (currentMillis - updateSensorsMillis > 500) {
        readSensors();
        updateSensorsMillis = currentMillis;
      }
      if (currentMillis - updateClientMillis > 500) {
        updateClient();
        updateClientMillis = currentMillis;
      }
      if (currentMillis - updateDisplayMillis > 2000) {
        updateDisplay();
        updateDisplayMillis = currentMillis;
      }
    }
  }
  else {
    // backup for if client disconnects, display still runs
    if (currentMillis - updateDisplayMillis > 2000) {
      readSensors();
      updateDisplay();
      updateDisplayMillis = currentMillis;
    }
  }
  if (currentMillis - wdtfeedMillis > 1000){
    // Feed the dog
    wdt.feed();
    wdtfeedMillis = currentMillis;
  }
}


void readSensors() {
  rawRTD01 = rtd01.readRTD();
  rawRTD02 = rtd02.readRTD();
  rawRTD03 = rtd03.readRTD();
  rawRTD04 = rtd04.readRTD();
  rawRTD05 = rtd05.readRTD();
  
  rtd01temp = rtd01.temperature(RNOMINAL, RREF);
  rtd02temp = rtd02.temperature(RNOMINAL, RREF);
  rtd03temp = rtd03.temperature(RNOMINAL, RREF);
  rtd04temp = rtd04.temperature(RNOMINAL, RREF);
  rtd05temp = rtd05.temperature(RNOMINAL, RREF);
  //tcp01temp = tcp01.readThermocoupleTemperature();
  //tcp02temp = tcp02.readThermocoupleTemperature();
  //bmeTemp = bme.readTemperature();

  // Change Celsius to Kelvin
  rtd01temp += 273.15;
  rtd02temp += 273.15;
  rtd03temp += 273.15;
  rtd04temp += 273.15;
  rtd05temp += 273.15;
  //tcp01temp += 273.15;
  //tcp02temp += 273.15;
  //bmeTemp += 273.15;
}


void updateClient() {
  if(!rtd01.readFault()){ 
    modbusTCPServer.holdingRegisterWrite(rtd01_reg, rawRTD01);
  }
  else {
    modbusTCPServer.holdingRegisterWrite(rtd01_reg, 0);
    rtd01.clearFault();  
  }
  
  if(!rtd02.readFault()){ 
    modbusTCPServer.holdingRegisterWrite(rtd02_reg, rawRTD02);
  }
  else {
    modbusTCPServer.holdingRegisterWrite(rtd02_reg, 0);
    rtd02.clearFault();
  }
  
  if(!rtd03.readFault()){ 
    modbusTCPServer.holdingRegisterWrite(rtd03_reg, rawRTD03);
  }
  else {
    modbusTCPServer.holdingRegisterWrite(rtd03_reg, 0);
    rtd03.clearFault();
  }
  
  if(!rtd04.readFault()){ 
    modbusTCPServer.holdingRegisterWrite(rtd04_reg, rawRTD04);
  }
  else {
    modbusTCPServer.holdingRegisterWrite(rtd04_reg, 0);
    rtd04.clearFault();
  }
  
  if(!rtd05.readFault()){ 
    modbusTCPServer.holdingRegisterWrite(rtd05_reg, rawRTD05);
  }
  else {
    modbusTCPServer.holdingRegisterWrite(rtd05_reg, 0);
    rtd05.clearFault();
  }

  //flreg.asFloat = tcp01temp;
  //modbusTCPServer.holdingRegisterWrite(tcp01_reg1, flreg.asInt[1]);
  //modbusTCPServer.holdingRegisterWrite(tcp01_reg2, flreg.asInt[0]);
  //flreg.asFloat = tcp02temp;
  //modbusTCPServer.holdingRegisterWrite(tcp02_reg1, flreg.asInt[1]);
  //modbusTCPServer.holdingRegisterWrite(tcp02_reg2, flreg.asInt[0]);
  //flreg.asFloat = bmeTemp;
  //modbusTCPServer.holdingRegisterWrite(bme_reg1, flreg.asInt[1]);
  //modbusTCPServer.holdingRegisterWrite(bme_reg2, flreg.asInt[0]);
}


void updateDisplay() {
  tft.fillScreen(ILI9341_BLACK);
  tft.setTextSize(3);
  tft.setTextColor(ILI9341_WHITE, ILI9341_BLACK);
  tft.setCursor(10, 10);
  if(!rtd01.readFault()){ 
    tft.print("RTD_01:"); tft.print(rtd01temp); tft.println(" K");
  }
  else {
    tft.print("RTD_01:"); tft.print("--"); tft.println(" K");
    rtd01.clearFault();
  }
  
  tft.setCursor(10, 40);
  if(!rtd02.readFault()){ 
    tft.print("RTD_02:"); tft.print(rtd02temp); tft.println(" K");
  }
  else {
    tft.print("RTD_02:"); tft.print("--"); tft.println(" K");
    rtd02.clearFault();
  }  
  
  tft.setCursor(10, 70);
  if(!rtd03.readFault()){ 
    tft.print("RTD_03:"); tft.print(rtd03temp); tft.println(" K");
  }
  else {
    tft.print("RTD_03:"); tft.print("--"); tft.println(" K");
    rtd03.clearFault();
  }
  
  tft.setCursor(10, 100);
  if(!rtd04.readFault()){ 
    tft.print("RTD_04:"); tft.print(rtd04temp); tft.println(" K");
  }
  else {
    tft.print("RTD_04:"); tft.print("--"); tft.println(" K");
    rtd04.clearFault();
  }

  tft.setCursor(10, 130);
  if(!rtd05.readFault()){ 
    tft.print("RTD_05:"); tft.print(rtd05temp); tft.println(" K");
  }
  else {
    tft.print("RTD_05:"); tft.print("--"); tft.println(" K");
    rtd05.clearFault();
  }  

  tft.setTextColor(ILI9341_YELLOW, ILI9341_BLACK);
  tft.setCursor(10, 160);
  tft.print("TCP_01:"); tft.print(tcp01temp); tft.println(" K");
  tft.setCursor(10, 190);
  tft.print("TCP_02:"); tft.print(tcp02temp); tft.println(" K");

  tft.setTextColor(ILI9341_WHITE, ILI9341_BLACK);
  tft.setCursor(10, 220);
  tft.setTextSize(2);
  tft.print("BME_280:"); tft.print(bmeTemp); tft.println(" K");
}


union {
    float asFloat;
    uint16_t asInt[2];
} flreg;
