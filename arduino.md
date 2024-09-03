This is at https://bomonike.github.io/arduino

There are two series of low-cost, low-power SOC (System on a Chip) microcontrollers.

Arduino, Inc. is an embedded hardware and software company founded in Italy.

Arduino is known for its microcontroller boards
named Uno, Mega, and Nano.
open-sourced at ???

ESP32 is by Espressif Systems based in Shanghi, China, selling chips created by TSMC using their 40 nm process.
The ESP32-WROOM-32 has dual-core 512kB SRAM on 160/240 MHz clock and Secure boot.
It includes 802.11 b/g/n wi-fi and Bluetooth 4.2+BLE.
Its proprietary ESP32-NOW protocol enables communication between ESP32 units.
It has a 12-bit SAR ADC up to 18 channels.
It has 2x8-bit DACs.
16-channel PWM output.
10x capacitive touch GPIOs.
4x SPI, 2x I2C, 2x I2S. 3x UART buses.
https://github.com/espressif/arduino-esp32
https://www.youtube.com/watch?v=UuxBfKA3U5M
Get from AliExpress

## Hardware

Shields

Hats

## Context

https://www.youtube.com/watch?v=p40OetppIDg
What's the difference? Arduino vs Raspberry Pi


## Projects

by Jeff Geerling
https://www.youtube.com/watch?v=LDTwgjvzu0I
12 NEW Arduino Projects!!! (2024 Edition)

https://www.youtube.com/watch?v=rS9CbsohFGk
Top 10 Raspberry Pi Projects for 2022

by Mark Rober
https://www.youtube.com/watch?v=yi29dbPnu28
22:12 Arduino 101- Crash Course

## Tutorials

https://support.arduino.cc/hc/


https://www.youtube.com/watch?v=BLrHTHUjPuw
A: Arduino MASTERCLASS | Full Programming Workshop in 90 Minutes!
https://bit.ly/get_Arduino_skills

https://www.youtube.com/watch?v=sTu3LwpF6XI
B: Making logic gates from transistors on a breadboard

https://www.youtube.com/watch?v=5vRAACeebjI
C: Fun with Transistors

## Breadboard

Q: What voltage do Ardino boards run on ?
    - 2.5 to 5 Volts

Q: What is the range of brightness ? A:47m36s
    - 0 - 255



Pins

## Cloud

Setup account to "CODE ONLINE" Arduino  - A:31m47s

1. https://www.arduino.cc (the official website)
2. Select "ARDUINO IN THE CLOUD" icons.
3. Create an account

   Try 30 days of Maker monthly plan for FREE with code HELLOSUMMER. Offer for first-time free users only. Cancel anytime.

4. Click TUTORIAL: Arduino Cloud Editor

4. Create Agent ???
5. Click GETTING STARTED

   Arduino Cloud provides apps, web services, and resources for developing Arduino projects with a wide range of devices.
   Through this get started guide, you will discover what Cloud can offer, using an Arduino board or a mobile phone.


OPTION B) SKILL: Install IDE2 29m21s

Q:Where do you go to view the path of where the IDE looks for scratch files? 30m8s
    - File -> Preferences

Q: What is the path of where the IDE looks for your scratch files? 30m8s
    - Different on Windows, Mac,


## Load a Sketch

Q: What is the action that means the same as "Set the switch ON" ? A:15m43s
    - Set it High

    https://www.youtube.com/watch?v=fXwSFhUVFmE
    Why can't computers use base 3 instead of binary? Voltage states explained

Q: How to make loading faster or slower ? A:52m18s
   - delay(30)


## Sketch C & C++ Programming

?
Arduino Reference Page

Q: What programming language is used to control Arduino ? A:4m32s
   -C or C++

https://www.youtube.com/watch?v=cwtpLIWylAw&list=PLhQjrBD2T381WAHyx1pq-sBfykqMBI7V4&index=2&t=1m
2h27m40s PREVIEW: Harvard CS50 on C programming:

Q: How to open a new Sketch ? A:34m55s
    - Menu: File --> New or press Control+N

Q: How are functions coded ? A:34m37s
    - () and {} curly braces

Q: What functions do every Arduino program have? A:34m37s
    - void setup() run once
    - void loop() containing main loop

Q: What are the types of variables (buckets to hold values) ? A:38m21s
   - Type, Name, assignment operator, value
   - boolean (True or False), byte (pin number), integer to 32,768, long 2,147,483,647, float, char, string



How to use variables

TOPIC: How to use control structures

TOPIC: The MOST important Arduino-specific functions


## Load a Sketch on Arduino

Q: What is the action that means the same as "Set it Low"? A:15m43s
    - Set the switch OFF

Q: What is "TX" and "RX"?
   - Transmit and Receive

Q: What is the name of a program code file written to control Arduino ? A:4m23s
   - A Sketch

Q: How to load a Sketch ? A:34m56s


## Online Simulators

Wokwi is a popular online Arduino simulator that allows you to prototype and test Arduino projects in your web browser. It supports various Arduino boards, including Uno, Mega, and Nano. Wokwi offers:
A user-friendly interface for writing and testing Arduino code
Simulation of various components and sensors
Support for multiple Arduino boards and other microcontrollers like ESP32 and STM32
A large collection of example projects to learn from
Tinkercad
Tinkercad, owned by Autodesk, provides an online Arduino simulator along with 3D design capabilities. It's particularly useful for beginners and offers:
Virtual circuit building and coding
A simple drag-and-drop interface for component placement
Basic Arduino programming capabilities
Arduino Cloud
Arduino offers its own online platform called Arduino Cloud, which provides:
Web-based IDE for writing and compiling Arduino code
Remote device management and monitoring
IoT project development capabilities
Custom templates for cloning and sharing projects
Other Online Resources
Circuito.io
While not a simulator, Circuito.io is an online tool that helps you design Arduino-based circuits. It provides:
Automatic generation of wiring diagrams
Bill of materials for your projects
Sample code to get started with your design
Learning Resources
Arduino's official website (arduino.cc) offers numerous tutorials, project ideas, and documentation to help you learn and practice Arduino programming online. Additionally, many online learning platforms provide Arduino courses that you can take to improve your skills without needing physical hardware.
By utilizing these online tools and resources, you can practice Arduino programming, design circuits, and simulate projects without the need for physical components, making it an excellent way to learn and experiment with Arduino technology.


https://www.youtube.com/watch?v=GrvvkYTW_0k&t=1m25s
MOSFET are all about Voltage
* Depletion type N-channel
* Enhancement type N and P channel - the most commonly used

Voltage

Resistance

Not all MOSFETs are "Logic Level" compatible.
Check what the BGS threshold is

https://www.youtube.com/watch?v=AwRJsze_9m4
5:13 / 20:13
How MOSFET Works - Ultimate guide, understand like a PRO

Resister

Potentiameter

https://www.youtube.com/watch?v=rkbjHNEKcRw
0:24 / 8:12
How Does a MOSFET Work?
N-type Pentavalent (5 Valence Electrons) - Majority: Electrons, Minority: Holes
P-type Trivalent (3 Valence Electrons) -  Majority: Holes, Minority: Electrons
VGS

https://www.youtube.com/watch?v=DLd5dUychY8
8:31
What is a MOSFET? How MOSFETs Work? (MOSFET
basic structure and working principle of MOSFETs used in switching, boosting or power balancing tasks in DC-DC converter circuits, motor driver circuits and many more power electronics circuits. MOSFETs are the most widely used field-effect transistors that operate with voltage control.

We can examine FETs in two groups. JFET and MOSFET comes from the initials of the Metal Oxide Semiconductor Field Effect Transistor words.