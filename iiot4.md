iiot4.md

git@github.com:bomonike/IIOT-4.0-Project.git
https://github.com/CCC-Industry4/IIOT-4.0-Project
by https://www.linkedin.com/in/matthew-graff-1029a1159/

## Ingredients

* Arduino ESP32s (32-bit ARM chips from Expressif China) built as a kit from  - [KEYESTUDIO ESP32 Smart House](https://www.keyestudio.com/products/keyestudio-esp32-smart-home-kit-for-esp32-diy-starter-kit-edu) - $55

   In the Arduino folder is a pins.h (C header file) referenced by the Arduino.ino file defining the behavior of each ESP32 component (WiFi, NeoPixel, Servo, xht11, etc.)

   Within the libs folder is a zip file for each component.

* In the ObjectDetection folder is an install.sh to install torchvision flask paho.mqtt opencv-python configparser. They control the camera.

* [Raspberry Pi](https://www.raspberrypi.org/) Pi 4 or Pi 400 - $100 as the MQTT broker

* Touchscreen Raspberry Pi 7" Touch Screen Display - $75

   The GUI folder contains files to run OpenGL using http://www.glfw.org
   OpenGL (Open Graphics Library) is a cross-platform, cross-language application programming interface (API) for a GPU to render 2D and 3D vector graphics.

* Running on Debian: an Ignition Gateway server from [Ignition by Inductive Automation](https://inductiveautomation.com/ignition/).

   In the Ignition folder, Ignition module I4Project_2024-08-12_1255.zip contains two folders: one each for reference by Vision and Perspective designers.

   tags.json is loaded into the Ignition tag database.

* Within the <strong>PCB</strong> folder are pdfs showing schematics of custom boards.

* [Case SmartiPi Touch 2](https://www.adafruit.com/product/4377?gad_source=1&gclid=CjwKCAjwqMO0BhA8EiwAFTLgIMRqNCXHAhp_l-yysnQuAGzoeCjPC7tV8XhQrg3Q21p99cGYjvx5rBoCb64QAvD_BwE) - $35

  # <img src="https://github.com/user-attachments/assets/3f5fcbb1-25a9-42d6-ae0f-e2ca17844d25" style="width: 20%;" alt="4377-04">

* WiFi Router [GL.iNet GL-AR300M16-Ext](https://store-us.gl-inet.com/products/gl-ar300m16-mini-smart-router) or most any router - $30

   # <img src="https://github.com/user-attachments/assets/8f36c3b7-f8ef-4a87-8133-f80b9922bc74" style="width: 20%;" alt="41gQQAA8ozL _AC_SL1000_">

   # ![thumbnail_IMG_3054](https://github.com/user-attachments/assets/62ca498c-cfb3-4ad6-86ff-0716ecaad7cd)

* Opto 22 [GRV-RIO-LC](https://www.opto22.com/products/product-container/grv-rio-lc) - $1,095 for more advanced training for college programs.  This system shows how industry deploys Industry 4.0 technology.
   # ![image](https://github.com/user-attachments/assets/baf884df-4738-427b-814a-6525a1b212ee)


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

