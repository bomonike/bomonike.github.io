---
esp32.md
---

<a target="_blank" href="https://bomonike.github.io/esp32"><img align="right" width="100" height="100" alt="esp32.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/esp32.png?raw=true" />

https://bomonike.github.io/esp332

This is at <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/esp32.md">https://github.com/bomonike/bomonike.github.io/blob/master/esp32.md</a>

## Hardware
ESP32 MCU (MicroController Unit) is from  Espressif Systems, a company based in Shanghai, China.

Espressif uses chips manufactured using the 40 nm process by TSMC in Taiwan, China.

Models:
* ESP32 is <a target="_blank" href="https://makeradvisor.com/tools/esp32-dev-board-wi-fi-bluetooth/">$9.99</a> It employs either a Tensilica Xtensa LX6 microprocessor in both dual-core and single-core variations, Xtensa LX7 dual-core microprocessor or a single-core RISC-V microprocessor and includes built-in antenna switches, RF balun, power amplifier, low-noise receive amplifier, filters, and power-management modules.
* ESP32-CAM
* ESP8266 is the successor to ESP32.

Data Sheet : https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf

ESP32 is a series of low-cost, low-power system on a chip microcontrollers with integrated Wi-Fi and dual-mode Bluetooth.



ChatGPT is an artificial intelligence (AI) chatbot developed by OpenAI and released in November 2022. The name "ChatGPT" combines "Chat", referring to its chatbot functionality, and "GPT", which stands for Generative Pre-trained Transformer, a type of large language model (LLM). ChatGPT is built upon OpenAI's foundational GPT models, specifically GPT-3.5 and GPT-4, and has been fine-tuned (an approach to transfer learning) for conversational applications using a combination of supervised and reinforcement learning techniques. ChatGPT was launched on November 30, 2022, and gained attention for its detailed and articulate responses spanning various domains of knowledge. However, a notable drawback has been its tendency to confidently provide inaccurate information. By January 2023, it had become the fastest-growing consumer software application in history, gaining over 100 million users and contributing to OpenAI's valuation growing to US$29 billion. The introduction of ChatGPT has spurred competition in the field, leading to the accelerated development of Google's chatbot Bard, initially based on LaMDA and later on PaLM, as well as Meta AI's foundation model LLaMA,[citation needed] which serves as a basis for other chatbot creations. The chatbot is operated on a freemium model, where users on the original, free tier only have access to GPT-3.5, while ChatGPT Plus users also have access to GPT-4, albeit on a limited basis.

ESP32 supports <a target="_blank" href="https://randomnerdtutorials.com/micropython-esp32-bluetooth-low-energy-ble/">Bluetooth</a> and WiFi built-in.
So ESP can be <a target="_blank" href="https://randomnerdtutorials.com/esp32-esp8266-micropython-ota-updates/">be updated via OTA</a> (Over the Air) from a PHP server, <a target="_blank" href="https://randomnerdtutorials.com/micropython-sensor-readings-email-esp32-esp826/">send sensor readings</a> via <a target="_blank" href="https://randomnerdtutorials.com/micropython-send-emails-esp32-esp826/">emails</a> and <a target="_blank" href="https://randomnerdtutorials.com/micropython-whatsapp-esp32-esp826/">WhatsApp messages</a>.

Unique with ESP32 is its "Near WiFi" that enables multiple units to communicate
with Espressif's proprietary protocol.

ESP32 is 32 bit vs. 16 bit on the Arduino.
So ESP32 has more granular  <a target="_blank" href="https://randomnerdtutorials.com/esp32-esp8266-pwm-micropython/">PWM (Pulse Width Modulation)</a> Analog-to-Digital (ADC) of
65,532 vs 4095 on the 12-bit Arduino.
* 16 PWM output channels

The ESP32 has 18 x 12 bits ADC 18 Analog-to-Digital Converter (ADC) input channels (while the <a href="https://randomnerdtutorials.com/esp8266-adc-reading-analog-values-with-nodemcu/">ESP8266 only has 1x 10 bits ADC</a>).

* 2 Digital-to-Analog Converters (DAC)

You can decide which pins are UART, I2C, SPI, PWM:
* 3 UART interfaces
* 2 I2C interfaces
* 2 I2S interfaces
* 3 SPI interfaces

10 Capacitive sensing GPIOs.

The following table shows what pins are best to use as inputs, outputs and which ones you need to be cautious. Pins highlighted in red are not recommended to use as inputs or outputs. Pins highlighted in green are OK to use. Pins highlighted in yellow are OK to use, but you need to pay attention because they may have an unexpected behavior mainly at boot.
<table><tbody><tr valign="top"><td><strong>GPIO</strong></td><td><strong>Input</strong></td><td><strong>Output</strong></td><td><strong>Notes</strong></td></tr>
<tr valign="top"><td><strong>0</strong></td><td><span class="rnthl rntcyellow">pulled up</span></td><td><span class="rnthl rntcyellow">OK</span></td><td>outputs PWM signal at boot, must be LOW to enter flashing mode</td><td>RTC_GPIO11 T1 ADC2_CH1</td></tr>
<tr valign="top"><td><strong>1</strong></td><td><span class="rnthl rntcred">TX pin</span></td><td><span class="rnthl rntcyellow">OK</span></td><td>debug output at boot </td></tr>
<tr valign="top"><td><strong>2</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>connected to on-board LED, must be left floating or LOW to enter flashing mode</td><td>RTC_GPIO12 T2 ADC2_CH2</td></tr>
<tr valign="top"><td><strong>3</strong></td><td><span class="rnthl rntcyellow">OK</span></td><td><span class="rnthl rntcred">RX pin</span></td><td> HIGH at boot </td></tr><tr valign="top"><td><strong>4</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>RTC_GPIO10 ADC2_CH0</td></tr><tr valign="top"><td><strong>5</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>outputs PWM signal at boot, strapping pin</td></tr>

<tr valign="top"><td><strong>6</strong></td><td><span class="rnthl rntcred">x</span></td><td><span class="rnthl rntcred">x</span></td><td valign="top" rowspan="6">connected to the integrated SPI flash</td><td>(SCK/CLK)</td></tr><tr valign="top"><td><strong>7</strong></td><td><span class="rnthl rntcred">x</span></td><td><span class="rnthl rntcred">x</span></td><td>(SDO/SD0)</td></tr><tr valign="top"><td><strong>8</strong></td><td><span class="rnthl rntcred">x</span></td><td><span class="rnthl rntcred">x</span></td><td>(SDI/SD1)</td></tr><tr valign="top"><td><strong>9</strong></td><td><span class="rnthl rntcred">x</span></td><td><span class="rnthl rntcred">x</span></td><td>(SHD/SD2)</td></tr><tr valign="top"><td><strong>10</strong></td><td><span class="rnthl rntcred">x</span></td><td><span class="rnthl rntcred">x</span></td><td>(SWP/SD3)</td></tr><tr valign="top"><td><strong>11</strong></td><td><span class="rnthl rntcred">x</span></td><td><span class="rnthl rntcred">x</span></td><td>(CSC/CMD)</td></tr>

<tr valign="top"><td><strong>12</strong></td><td><span class="rnthl rntcyellow">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>boot fails if pulled high, strapping pin</td><td>RTC_GPIO15 T5 ADC2_CH5</td></tr>
<tr valign="top"><td><strong>13</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td>T4</td></tr>
<tr valign="top"><td><strong>14</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>outputs PWM signal at boot</td><td>RTC_GPIO116 T6 ADC2_CH6</td></tr>
<tr valign="top"><td><strong>15</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>outputs PWM signal at boot, strapping pin</td><td>RTC_GPIO13 T1 ADC2_CH3</td></tr>
<tr valign="top"><td><strong>16</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td></td></tr><tr valign="top"><td><strong>17</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td></td></tr><tr valign="top"><td><strong>18</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td></td></tr><tr valign="top"><td><strong>19</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td></td></tr><tr valign="top"><td><strong>21</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>I2C SDA</td></tr><tr valign="top"><td><strong>22</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>I2C SCL</td></tr><tr valign="top"><td><strong>23</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td></td></tr><tr valign="top"><td><strong>25</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>RTC_GPIO6 DAC1 ADC2_CH8</td></tr><tr valign="top"><td><strong>26</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>RTC_GPIO7 DAC2 ADC2_CH9</td></tr>
<tr valign="top"><td><strong>27</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>RTC_GPIO17 T7 ADC2_CH7</td></tr>
<tr valign="top"><td><strong>32</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>RTC_GPIO9 T9 ADC1_CH4</td></tr>
<tr valign="top"><td><strong>33</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td><span class="rnthl rntcgreen">OK</span></td><td>RTC_GPIO8 T8 ADC1_CH5</td></tr>
<tr valign="top"><td><strong>34</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td><span class="rnthl rntcyellow">RTC_GPIO4 ADC1_CH6 input only</span></td></tr><tr valign="top"><td><strong>35</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td><span class="rnthl rntcyellow">RTC_GPIO5 ADC1_CH7 input only</span></td></tr>
<tr valign="top"><td><strong>36</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td><span class="rnthl rntcyellow">RTC_GPIO0 ADC1_CH0 input only</span> </td></tr>
<tr valign="top"><td><strong>37</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td><span class="rnthl rntcyellow">ADC1_CH1 input only</span> </td></tr>
<tr valign="top"><td><strong>38</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td><span class="rnthl rntcyellow">ADC1_CH2 input only</span> </td></tr>
<tr valign="top"><td><strong>39</strong></td><td><span class="rnthl rntcgreen">OK</span></td><td></td><td><span class="rnthl rntcyellow">RTC_GPIO3 ADC1_CH3 input only</span></td></tr>
</tbody></table>

PROTIP: ADC2 pins cannot be used when Wi-Fi is used. So, if you’re using Wi-Fi and you’re having trouble getting the value from an ADC2 GPIO, use an ADC1 GPIO instead.

<img alt="esp-pins.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726462538/esp-pins_kglxaf.webp">

https://docs.espressif.com/projects/arduino-esp32/en/latest/tutorials/io_mux.html

## Proect Video

https://www.youtube.com/watch?v=tc3Qnf79Ny8
Getting Started with ESP32 - Step-By-Step Tutorial Oct 28, 2021.
by Tomasz Tarnowski
working on a Mac with
* VSCode
* PlatformIO Extension: https://platformio.org/platformio-ide

* CP210x Driver: https://www.silabs.com/developers/usb...
* CH340 Driver: https://learn.sparkfun.com/tutorials/how-to-install-ch340-drivers/all
or<br />https://www.wch-ic.com/downloads/CH341SER_ZIP.html

## Software

The ESP32 makes use of the C-language Arduino Framework & IDE.
* https://github.com/ttarnowski/get-started-with-esp32
* https://randomnerdtutorials.com/learn-esp32-with-arduino-ide/ ($26 3rd Edition Sep 2024)

MicroPython:
* https://randomnerdtutorials.com/projects-esp32-esp8266-micropython/
* https://randomnerdtutorials.com/getting-started-micropython-esp32-esp8266/
* https://randomnerdtutorials.com/micropython-programming-basics-esp32-esp8266/

There is a uPyCraft IDE for
* https://randomnerdtutorials.com/install-upycraft-ide-windows-pc-instructions/
* https://randomnerdtutorials.com/install-upycraft-ide-mac-os-x-instructions/
* https://randomnerdtutorials.com/install-upycraft-ide-linux-ubuntu-instructions/


USB to UART Driver

https://github.com/xaverh/vscode-clang-format#installing-clang-format
Clang-Format is a tool to format C/C++/Java/JavaScript/Objective-C/Objective-C++/Protobuf code from within Visual Studio Code at
https://marketplace.visualstudio.com/items?itemName=xaver.clang-format

* <a target="_blank" href="https://randomnerdtutorials.com/micropython-mqtt-esp32-esp8266/">Get started with MQTT</a>

## Parts List

For ESP32 and ESP8266 MCUs:

* https://randomnerdtutorials.com/solved-failed-to-connect-to-esp32-timed-out-waiting-for-packet-header/

* Add the BME680 Weather Station to report local Temperature, Humidity, Pressure, Gas using <a target="_blank" href="https://randomnerdtutorials.com/micropython-bme680-esp32-esp8266/">MicroPython</a>.
* The <a target="_blank" href="https://randomnerdtutorials.com/micropython-bme280-esp32-esp8266/">BME280</a> reports just Temperature, Humidity, Pressure.

* <a target="_blank" href="https://docs.ai-thinker.com/_media/esp32/docs/nodemcu-32s_product_specification.pdf">Node MCU-32S</a>

* Short USB-A to microUSB cable (one which supports data transfer)
* Short USB-C to microUSB cable

* ESP32 runs on 3.3V vs. 5V on the Arduino. See https://www.youtube.com/watch?v=F7tIs21Ar9s So to connect the two technologies together, a linear regulator converts the excess voltage into heat. It litteraly burns 1.7V. Get the $9.95 Step-Down Voltage Regulator at https://www.pololu.com/product/2830

* <img width="200" alt="ESP32-Cheap-Yellow-Display-Wi-Fi-Manager-Example.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726458277/ESP32-Cheap-Yellow-Display-Wi-Fi-Manager-Example_wpufy3.webp"><br />To attach a GUI (Graphical User Interface) for interaction with text dialogs, images,  charts, graphs, use the LVGL (Light and Versatile Graphics Library) C library control the ESP32 Cheap Yellow Display (CYD) and the TFT 2.8 inch ILI9341 Resistive Touchscreen Display. https://randomnerdtutorials.com/learn-lvgl-esp32-ebook/

## Tutorials

* <a target="_blank" href="https://www.dfrobot.com/blog-917.html">ESP32 Arduino Tutorial: Getting weather data from API</a> and https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json

   https://www.instructables.com/Get-Weather-Data-Using-Python-and-Openweather-API/

* $79.99 https://www.udemy.com/course/mastering-hardware-protocols-with-esp32-and-arduinos/

https://randomnerdtutorials.com/learn-esp32-with-arduino-ide/

https://makeradvisor.com/tools/esp32-dev-board-wi-fi-bluetooth/
$9.99

To build a Arduino Tutorial: Getting weather data from API
https://www.dfrobot.com/blog-917.html

https://github.com/CircuitSetup/Expandable-6-Channel-ESP32-Energy-Meter
CircuitSetup Expandable 6 Channel ESP32 Energy Meter