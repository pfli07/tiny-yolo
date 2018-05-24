# Intelligent protection system for forgetten children in vehicle
The "Intelligent protection system for forgetten children in vehicle" is based on ARC and FPGA heterogeneous platforms. Through intelligent sensor systems and image processing systems, vehicles are equipped with intelligent environmental awareness, target detection, remote alert, emergency help, and voice interaction. The system can automatically detect when a child is forgotten in the car and remotely reminds parents to return. The system is equipped with one-click assistance and dangerous time self-startup help functions. At the same time,it can be used as a vehicle environment monitor for real-time display of formaldehyde, temperature and other environmental information inside the vehicle and to remind the superscript, the owner can also use the voice interaction to query the car environment and control some equipment in the car.
* [Introduction](#introduction)
  * [Project context](#project-context)
  * [System Architecture](#system-architecture)
  * [Function](#function)
* [Hardware and Software Setup](#hardware-and-software-setup)
  * [Required Hardware](#required-hardware)
  * [Required Software](#required-software)
  * [Hardware Connection](#hardware-connection)
* [User Manual](#user-manual)
  * [Before Running This Application](#before-running-this-application)
  * [Run This Application](#run-this-application)
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
Download source code of Intelligent protection system for forgetten children in vehicle from github.Write FPGA image file to SD card, start FPGA.

The hardware resources are allocated as following table.

|  Hardware Resource  |            Function                                           |   
| ------------------- | ------------------------------------------------------------- |
|                     |                                                               |
|                     |                                                               |

### Run This Application


#### Makefile
- Target options about EMSK and toolchain:

                BOARD ?= emsk
                BD_VER ?= 22
                CUR_CORE ?= arcem11d
                TOOLCHAIN ?= gnu
                
- The relative series of the root directory, here the path of the Makefile is 

                #
                # root dir of embARC
                #
                EMBARC_ROOT = ../../../..
                
#### Driver
Placing the drivers' source code in `driver` folder, you can see there are subfolders for GPRS module, Formaldehyde module, Speech synthesis module，Placing the C source file and header file in the corresponding subfolder.

|  folder/file        |            Function           |
| ------------------- | ------------------------------|
|                     |                               |
|                     |                               |
|                     |                               |
|                     |                               |

