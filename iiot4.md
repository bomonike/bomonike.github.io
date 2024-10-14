
This is at <a target="_blank" href="https://bomonike.github.io/plc">https://bomonike.github.io/iiot4</a> from code at private repo <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/iiot4.md">https://github.com/bomonike/bomonike.github.io/blob/master/iiot4.md</a>


## MCU (Microprocessor Unit)

"MCU" here has nothing to do with the Marvel Cinematic Universe.

This article contains technical notes on HOW to construct and make use of Micro Computer Units (Arduino, Raspberry Pi, micro:bit, ESP32, Intel NUC, Zima, etc.).

They are cheap (around $30-200 each) and thus purchased by schools and hobbyists.

Unlike desktop computers one can purchase from Costco costing $1,000 or more,
the MCUs by definition do not have a large motherboard with components that can be taken out and replaced.

MCUs are cheap because their components are all on "System on a Chip" (SOC).


## References

https://www.rapidtables.com/electric/electrical_symbols.html

git@github.com:bomonike/IIOT-4.0-Project.git
https://github.com/CCC-Industry4/IIOT-4.0-Project
by https://www.linkedin.com/in/matthew-graff-1029a1159/

TODO: article on LinkedIn Medium, and Substack.

ESP32PLUS is a universal WIFI plus Bluetooth development board based on ESP32, integrated with ESP32-WOROOM-32 module and compatible with Arduino.
It has a hall sensor, high-speed SDIO/SPI, UART, I2S as well as I2C.
It runs the freeRTOS operating system.

## Assembly Strategies

How can a class of 10 people be all kept busy to assemble each kit?

"Choose one student to read aloud the instructions" while others listen with nothing else to do increases the chance of error and lack of full participation.

Here is my plan:

1. Procure parts (6 AA batteries)
1. Define teams that operate at the same time:

   <a href="#QATeam">A. QA Team</a> anticipates delays<br />
   <a href="#ComputerTeam">B. Computer Team</a> <br />
   <a href="#PartsTeam">C. Parts Team</a> assembles parts into sub-assembly bags<br />
   <a href="#BaseTeam">D. Base Team</a> assembles all the sub-assemblies together<br />
   <a href="#FloorTeam">E. Floor Teams</a> assembles each sub-assembly<br />

1. Have each participant wash their hands.
1. Clarify roles and interdependencies.
1. Practice assembly workflow by holding practice rounds using a picture of each part with its name.
1. Computer setup
1. QA Test signals
1. Connection to Ignition server for virtualization

### Sub-Assemblies

* Step 1 - panel K with LCD Dislay, buttons.
* Step 2 - roof with water & temp. sensors, and fan motor
* Step 3 - panel J with battery holder, Gas Sensor, buzzer.
* Step 4 - triangular tress panel H with RGB module
* Step 5,6,7 - panel F with servo and Acrylic board
* Step 8,9,10 - panel M with ESP Control Board on pillars + servo horn
* Step 19 - cogs C & D
* Step after 19 - wiring part
* Step 20 - roof
* QA Test
<hr />

### Workflow Dependencies

Preparations:
1. Obtain assembly bags.
1. QA Team prepares two sets of labels: on the tray and on each part.
2. Board team defines where each board would be placed and assembled.
3. Parts team assembles the nuts and bolts for each assembly in separate bags.
4. Practice workflow using

Game day:
1. Parts team places parts into bins with designated locations.
1. Base team receives boards and places them on their map.
1. QA Team and Parts Team switch tables (so parts don't move).
1. QA Team labels each item.


<hr />

<a name="QATeam"></a>

### QA team:

1. Track external shipping and receipt of the kits.
1. To practice assembly workflow without risk of damaging real parts, create a card to represent each item during practice.

1. Designate a table and chairs for each team.
1. Make a list of who is at each team table.
1. Take a picture of them holding, under their chin, a card with their name.

1. Preparation: Organize items. This is a strategy from the "S5" lean approach to enable visibility for fast and error-free selection of items.

   * ($2 from Walmart) plastic trays used to hold cutlery in kitchen drawers. The plastic is not conductive.
   * Get a box fishermen use to hold lures to hold small screws.
   * Static management

1. Create sticky lables for each part.
1. Make sure parts are kept in
1. Inspect finished items.


<a name="ComputerTeam"></a>

## Computer team:

1. Download the https://docs.keyestudio.com/projects/KS5009/en/latest/docs/index.html

1. Print out the Kit List in 3-hole punched paper. PROTIP: The PDF view has misshapen Parts List pages, so print pages 2-7 in the website view.

   https://docs.keyestudio.com/projects/KS5009/en/latest/docs/index.html#kit-list

1. Print out the instruction book (126 pages) in 3-hole punched paper and place it a notebook with tabs.

On Windows/Mac:
1. Install Arduino IDE from https://www.arduino.cc/

   On the Mac:
   ```
   brew info arduino
   ==> arduino: 1.8.19
   https://www.arduino.cc/
   Deprecated because it is discontinued upstream! it will be disabled on 2024-12-17.
   Not installed
   From: https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/a/arduino.rb
   ==> Name
   Arduino
   ==> Description
   Electronics prototyping platform
   ==> Artifacts
   Arduino.app (App)
   /Users/johndoe/Applications/Arduino.app/Contents/Java/arduino-builder (Binary)
   ==> Analytics
   insta
   ```

1. Install drivers
1. Configure Arduino IDE settings

1. Install MicroPython interpreter<a target="_blank" href="https://docs.keyestudio.com/projects/KS5009/en/latest/docs/Python/KS5009-Python.html">Thonny</a> (password necessary)

   ```
   brew info thonny ==> thonny: 4.1.6
   ```
1. Drag the icon to the sidebar. Open Thonny.

   <a target="_blank" href="https://www.youtube.com/watch?v=bdvYIumllx8">VIDEO: Thonny | Great Python IDE for beginners</a>

1. Click on lower-right "Configure". Select ESP32.
1. Right click to open in new tab:
   https://micropython.org/download/ESP32_GENERIC/
1. Select v.1.17 according to the Keystudio docs, which is NOT the "(latest)". Click ".bin" to download version at

   v1.23.0 (2024-06-02) .bin / [.app-bin] / [.elf] / [.map] / [Release notes] (latest)

1. Clicking "here" of "Program your board using the esptool.py program, found here." takes you to:

   https://github.com/espressif/esptool

   Its README says it's "A Python-based, open-source, platform-independent utility to communicate with the ROM bootloader in Espressif chips."

1. "Burn microPython firmware" means

   If you are putting MicroPython on your board for the first time then you should first erase the entire flash using:

   esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash

   From then on program the firmware starting at address 0x1000:

   esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 esp32-20190125-v1.10.bin

1. Use esptool.py to <a target="_blank" href="https://docs.keyestudio.com/projects/KS5009/en/latest/docs/Python/KS5009-Python.html#installing-firmware">install ESP32 WROOM firmware</a> from https://micropython.org/download/ESP32_GENERIC/

1. Install libraries: ESP32_AnalogWrite-0.1.0.zip 2018-10-28 4.20 KiB from

   https://www.arduinolibraries.info/libraries/esp32-analog-write

   It provides an analogWrite polyfill for the ESP32 Arduino framework by wrapping the LEDC library. It generates PWM (Pulse Width Modulation) signals on ESP32 pins using a familiar Arduino-style analogWrite syntax.

   https://github.com/erropix/ESP32_AnalogWrite/tree/master

1. "Connect the smart home to your computer with a USB."



## Arduino projects:

https://docs.keyestudio.com/projects/KS5009/en/latest/docs/Python/KS5009-Python.html#python-projects

* Project 1.1 LED Blink
* Project 1.1 LED Flashing
* Project 1.2 Breathing LED
* <a target="_blank" href="https://docs.keyestudio.com/projects/KS5009/en/latest/docs/Python/KS5009-Python.html#installing-firmware">Project 2.1 Read the Button</a>
* Project 2.2. Table Lamp
* Project 3.1 Read the PIR Motion Sensor
* Project 3.2 PIR Motion Sensor
* Project 4.1 Play Happy Birthday
* Project 4.2 Music Box
* Project 5.1 Control the Door
* Project 5.2 Close the Window
* Project 6.1 Control SK6812 (RGB LED)
* Project 6.2 Button
* Project 7.1 Control the Fan
* Project 7.2 Switch On or Off the Fan
* Project 8.1 Display Characters
* Project 8.2 Dangerous Gas Alarm
* Project 9 Temperature and Humidity Tester
* Project 10 Open the Door
* Project 11 Morse Code Open the Door
* Project 12.1 Smart Home
* Project 12.2 Control Smart Home
* Project 13.1: Mobile Phone APP test for APP network control.

On Raspberry Pi or Zima Linux machine:
1. Install Ignition to
1. MQTT??


<a name="PartsTeam"></a>

## Parts team:

1. Takes possession and safekeeping of inventory.
1. Take each item from the big box and gently lay them into the tray.

   PROTIP: Keep items in individual bags to decrease dirt and static electricity damage.

   Put excess bags in the delivery box.

2. Give wood pieces to the Base Team.
3. Inspect each piece for damage.
4. Take inventory to ensure that all items in the parts were received.

5. After use: return parts to holders.


<a name="BaseTeam"></a>

### Base team:

1. Create a printed mat where each board is placed (on the "factory floor"). This would involve taping sevaral sheets together or, if available, printing a large format "blueprint" paper.

   The floor plan may change over time with experience.

2. Place each board received on the designated spot on the printed mat.
3. As each panel is received, pop-out items from each board (A, E, F, H, L, M)
4. As each sub-assmbly parts bag is received, put on top of its associated board.

5. Report status to dashboard.

5. After use: disassemble and return parts.

<hr />

## KIT Ingredients

* Arduino ESP32s (32-bit ARM chips from Expressif China) built as a kit from  - [KEYESTUDIO ESP32 Smart House](https://www.keyestudio.com/products/keyestudio-esp32-smart-home-kit-for-esp32-diy-starter-kit-edu) - $55

   In the Arduino folder is a pins.h (C header file) referenced by the Arduino.ino file defining the behavior of each ESP32 component (WiFi, NeoPixel, Servo, xht11, etc.)

   Within the libs folder is a zip file for each component.

* In the ObjectDetection folder is an install.sh to install torchvision flask paho.mqtt opencv-python configparser. They control the camera.

* [Raspberry Pi](https://www.raspberrypi.org/) Pi 4 or Pi 400 - $100 to run the Ignition server and its QUESTION: SQLlite? database under Raspian (Debian).

   QUESTION: Whereis  MQTT broker runs ???

* Touchscreen Raspberry Pi 7" Touch Screen Display - $75 runs as HMI.

   The GUI folder contains files to run OpenGL using http://www.glfw.org
   OpenGL (Open Graphics Library) is a cross-platform, cross-language application programming interface (API) for a GPU to render 2D and 3D vector graphics.

* Running on Debian: an Ignition Gateway server from [Ignition by Inductive Automation](https://inductiveautomation.com/ignition/).

   In the Ignition folder, Ignition module I4Project_2024-08-12_1255.zip contains two folders: one each for reference by Vision and Perspective designers.

   tags.json is loaded into the Ignition tag database.

* Within the <strong>PCB</strong> folder are pdfs showing schematics of custom boards.

* [Case SmartiPi Touch 2](https://www.adafruit.com/product/4377?gad_source=1&gclid=CjwKCAjwqMO0BhA8EiwAFTLgIMRqNCXHAhp_l-yysnQuAGzoeCjPC7tV8XhQrg3Q21p99cGYjvx5rBoCb64QAvD_BwE) - $35

  <!-- <img src="https://github.com/user-attachments/assets/3f5fcbb1-25a9-42d6-ae0f-e2ca17844d25" style="width: 20%;" alt="4377-04">
  -->

* WiFi Router [GL.iNet GL-AR300M16-Ext](https://store-us.gl-inet.com/products/gl-ar300m16-mini-smart-router) or most any router - $30

   <!-- <img src="https://github.com/user-attachments/assets/8f36c3b7-f8ef-4a87-8133-f80b9922bc74" style="width: 20%;" alt="41gQQAA8ozL _AC_SL1000_">

   ![thumbnail_IMG_3054](https://github.com/user-attachments/assets/62ca498c-cfb3-4ad6-86ff-0716ecaad7cd)
   -->

* Opto 22 [GRV-RIO-LC](https://www.opto22.com/products/product-container/grv-rio-lc) - $1,095 for more advanced training in college programs.

   Opto22 hardened RaspberryPi to mimic a PLC.

   <!-- ![image](https://github.com/user-attachments/assets/baf884df-4738-427b-814a-6525a1b212ee)
   -->


## start.sh installs
* mosquitto is the MQTT ( Message Queuing Telemetry Transport) broker which runs on Debian/Ubuntu above the TCP/IP protocol as the standard messaging platform for the Internet of Things (IoT) as it's very lightweight. MQTT can run with minimal resources on devices with short battery life, limited network bandwidth, and unreliable internet connections.
Mosquitto application supports the publisher/subscriber topology.
mosquitto_pub: Command-line utility for publishing MQTT messages
mosquitto_sub: Command-line utility for subscribing to MQTT topics

https://docs.vultr.com/install-mosquitto-mqtt-broker-on-ubuntu-20-04-server
 disable anonymous connections

* node-red, a standard Debian package. It is not packaged as a standard .deb package in the Debian repositories, which is why alternative installation methods are needed. Always refer to the official Node-RED documentation for the most up-to-date installation instructions for your specific Debian version.
https://nodered.org/docs/getting-started/local
   * To install Node-RED you can use the npm command that comes with node.js:

sudo npm install -g --unsafe-perm node-red

* export DISPLAY=:1 && xinput set-prop 11 155 -1 0 1 0 -1 1 0 0 1

* cd /usr/local/ignition && sudo ./ignition.sh start && ./node-red

## Security

https://www.nexcom.com/news/Detail/industry-4-0-and-beyond-a-focus-on-exceptional-ot-network-security

* ISA 140 = Key Asset Protection IoT security gateway;
* ISA 141 = Wireless Networking Dual 5G/Wi-Fi security router;
* ISA 142 = Switch Networking High-density security gateway and switch.

## Training

Lorain County Community College in Ohio.
https://www.lorainccc.edu/engineering/industry-4-0-teacher-training/
uses Canvas LMS to present their <a target="_blank" href="https://www.lorainccc.edu/engineering/industry-4-0-teacher-training/">"Industry 4.0 Teacher Training Info Session"</a> October 3rd, 2024 11:00AM and October 17, 2024 3:30PM


##
<a target="_blank" href="https://www.linkedin.com/company/4point0solutions/">4.0 Solutions</a> by
<a target="_blank" href="https://www.linkedin.com/in/walkerdreynolds/">
Walker Reynolds</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=Qh_kdqs8PCk">Unified Namespace</a> references
* https://github.com/walker-reynolds/uns_workshop
* Discord
* <a target="_blank" href="https://www.youtube.com/watch?v=Qh_kdqs8PCk">VIDEO</a>: <a target="_blank" href="https://www.iiot.university/digital-mastermind">3-day Digital Factory Mastermind Program</a> September 24-26, 2024 for $3,000/year membership.

Looker studio

https://www.hivemq.com/resources/smart-manufacturing-using-isa95-mqtt-sparkplug-and-uns/First expounded in the book, Future Perfect by Stanley M. Davis in 1989, the concept of integrating an entire organisation’s value chain to the point of achieving lot size one manufacturing capabilities at costs similar to those of mass-produced products was put forward as being the holy grail of most manufacturing enterprises.

Node-RED exposes the interactions

 IEC 62264/ISA95 standard in the year 2000

 an MQTT Broker can be used as a centralised server for coordinating the exchange of ISA95 models implemented using Sparkplug, in a Unified Namespace architecture. ISA 95 does not impose a pyramidal network-and-system architectural approach for its implementation, as it is purely a functional modeling standard, not an inter-networking one.

    * https://www.hivemq.com/mqtt/mqtt-sparkplug-essentials
    * https://www.hivemq.com/mqtt/unified-namespace-uns-essentials-iiot-industry-40
    * https://www.hivemq.com/solutions/manufacturing
    * https://www.hivemq.com/blog/foundations-of-unified-namespace-architecture-iiot

 instructions on building Smart home:
https://docs.keyestudio.com/projects/KS5009/en/latest/docs/index.html

For downloading libraries and sample codes:
https://github.com/keyestudio/KS5009-Keyestudio-Smart-Home-Kit-for-ESP32

## House Pins Connections:

* io5 = Servo controlling windows

* io12 = Yellow led module
* io13 = Servo controlling doors
* io14 = PIR motion sensor
* io16 = Left button module
* io17 = Temperature and humidity
* Fan (IN- to io18，IN+ to io19)

* io23 = Gas sensor
* io25 = Buzzer sensor
* io26 = 6812RGB LED
* io27 = Right button module

* io34 = Steam sensor (used as touch sensor)

* BUS I2C = RFID module

* BUS I2C = LCD1602 display

## Cheatsheets

https://github.com/marcelpetrick/cheatsheets/blob/master/esp32.md

## Rust on

https://github.com/esp-rs/awesome-esp-rust

https://github.com/rust-embedded/awesome-embedded-rust
This is a curated list of resources related to embedded and low-level programming in the Rust programming language, including a selection of useful crates.

## MQTT

https://github.com/kevinkk525/micropython-mqtt

