# Vehicl intelligent protection system for children
The “Intelligent Protection System for Children Detained in Vehicles” is based on ARC and FPGA heterogeneous platforms. Through smart sensor systems and image processing systems, the vehicle is equipped with intelligent environmental awareness, target detection, remote reminding, emergency assistance, and voice interaction capabilities. Automatically detect whether there are children in the car in a timely manner, promptly remind parents to rush back to deal with remotely, and the system is provided with a key to help and start the emergency help function from the time of danger. Considering this work as an intelligent vehicle-borne system, this system can also be used as an in-vehicle environment monitor during the daily driving process of the vehicle owner, real-time monitoring of environmental information such as formaldehyde, temperature, etc. in the vehicle and displaying and exceeding the notification, while the owner can voice Interactively check the interior environment of the vehicle and control some equipment in the car.
* [Introduction](#introduction)
  * [Project context](#project-context)
  * System Architecture
  * Function
* Hardware and Software Setup
  * Required Hardware
  * Required Software
  * Hardware Connection
* User Manual
  * Before Running This Application
  * Run This Application
## Introduction
### Project context
With the rapid popularity of automobiles in the world, it brings great convenience to people and also brings many security risks. Among them, accidents caused by the parents’ negligence have caused children to be locked in cars. When the vehicle is parked, once the child is trapped in the vehicle for a long time, dehydration, heat stroke, high temperature, and even suffocation are easily caused by changes in the temperature inside the vehicle and the accumulation of harmful gases, and because the child does not have a certain self-rescue capability, Can not take appropriate measures, plus most of the windows posted a film, it is difficult for passersby to see the situation from inside.
![0](https://github.com/pfli07/tiny-yolo/blob/master/Project%20context.png)
According to statistics, from 1998 to 2017, there were 709 children in the United States who were confirmed to have died of high temperature and death from motor vehicles. On average, 37 children died each year. In recent years, there have been similar situations in China. It has important practical significance to solve the problem of children's safety in the vehicle.
### System Architecture
![00](https://github.com/pfli07/tiny-yolo/blob/master/yingwen1.png)
### Function
In-vehicle detention smart protection system is divided into parking and driving modes, both of which can be switched freely. 
* Parking Away Mode
  * Detained children test (by moving target detection and infrared body sensing)
  * Remote SMS and phone alerts
  * Emergency help (by flashing light and whistle alarm)
  * Temperature monitoring
* Driving mode
  * Environmental information monitoring (real-time monitoring of formaldehyde concentration and temperature)
  * Voice interactive control system (with voice recognition function, can achieve control of vehicle equipment)
## Hardware and Software Setup
### Required Hardware
* 1 DesignWare ARC EM Starter Kit(EMSK)
* 1 ZYNQ Development Platform (ES-288)
* 1 OV7670 camera
* 1 infrared human body induction module
* 1 temperature detection module
* 1 GPRS module
* 1 SIM card
* 1 formaldehyde module
* 1 speech recognition module
* 1 speech synthesis module
* 1 OLED display
* 2 Relays
* 3 LED lights
* 1 cooling fan
* 2 SDCard
* 2 mobile power
### Required Software
* Metaware or ARC GNU Toolset
* Serial port terminal, such as putty, tera-term or minicom
* Vivado
* Vivado HLS
* Vivado SDK
### Hardware Connection
1. Connect GPRS, OLED display, FPGA development board and other devices to the corresponding interface of EMSK to realize the functions:
   - Connect **GPRS module** to **J1** (Using UART0 interface)
   - Connect **OLED screen** to **J2** (Using IIC0 interface)
   - Connect **Speech recognition module** to **J3** (Using GPIO interface)
   - Connect **Infrared human body sensing module** to **J3** (Using GPIO interface)
   - **Formaldehyde module**, **temperature detection module**, **speech synthesis module** are all connected to **J4** (Using IIC1 interface)
   - Connect **FPGA Development Board** to **J6** via DuPont Line
   - Connect **OV7670 camera** to **FPGA Development Board**
   - Connect **Relays** and **LED lights** to **J5**
2. Configure your EMSKs with proper core configuration.
## User Manual
### Before Running This Application

The hardware resources are allocated as following table.

|  Hardware Resource  |            Function                                           |   
| ------------------- | ------------------------------------------------------------- |
|  iLight bar         |        integrated module                                      |
|  BLE HM-10 module   |        Provide Bluetooth Connection                           |
