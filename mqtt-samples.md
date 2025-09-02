---
layout: post
date: "2024-06-09"
last_change: "25-09-02 v001 + oreilly :mqtt-samples.md"
file: "mqtt-samples"
title: "MQTT samples"
excerpt: "Communicate with Palantir, Induction Ignition, and other Raspberry Pi IoT devices using the MQTT protocol Mosquito pub/sub server."
tags: [security, IoT]
# mqtt-pubsub-1024x320.png
image:
  feature: https://res.cloudinary.com/dcajqrroq/image/upload/v1756798389/mqtt-pubsub-1024x320_v462n8.png
  credit: mqtt.org
  creditlink: https://res.cloudinary.com/dcajqrroq/image/upload/v1756798389/mqtt-pubsub-1024x320_v462n8.png
comments: true
created: "2024-06-09"
---
<i>{{ page.excerpt }}</i>

<img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1756798389/mqtt-pubsub-1024x320_v462n8.png">

This article is a technical deep-dive into how to install a Mosquito pub/sub server on Raspberry Pi to set topics and publish messages to an MQTT Ignition server to show analytics about messages recieved over time.

The MQTT (Message Que Transport Telemetry) protocol was defined by <a href="#Arlon">Arlon Nipper</a> and Andy Clark at IBM's working with Phillips66 in the late 1990s. They sought to make use of low-speed (300 baud) real-time VSAT network in their SCADA systems. MQTT 3.1.1-2014 spec maintained by OASIS for vendor interoperability. Its definition of the protocol:

"MQTT is a Client-Server publish/subscribe messaging transport protocol. It is lightweight, open, simple, and designed to be easy to implement. These characteristics make it ideal for use in many situations, including constrained environments for communication in Machine to Machine (M2M) and Internet of Things (IoT) contexts where a small code footprint is required, and network bandwidth is at a premium."

Widely adopted in 2010's by Facebook Messenger, Google, etc. MQTT 5-2019 added metadata, etc. and is backward compatible.

## DevOps Workflow
 
1. Setup MQTT Broker <a href="#Mosquitto">Mosquitto</a> server app</a> on a Raspberry Pi within the firewall.

   (There is a broker on the internet at mqtt.groov.com)

2. Setup MQTT clients (Node-RED app)
   * https://www.youtube.com/watch?list=PLKYvTRORAnx6a9tETvF95o35mykuysuOw&v=3AR432bguOY Intro to Node-RED
2. Define case-sensitive <strong>Topics</strong> (in hierarchy levels that includes company, equipment Node, Site, etc.) per SparkPlug B spec to communicate MQTT data using UDT (User-defined Data Type). Used by industry and maintained by the Eclipse Foundation created by IBM and other vendors. Has QoS (Quality of Service) 2 for guarantee of delivery.
3. SparkPlug B clients subscribe to Topics on MQTT broker.
4. Publish instrumentation Messages (containing a Topic plus associated payload data)
5. Confirm forwarding of messages to subscribers
6. Publish command messages within a Topic (to turn on a lamp)
7. Identify group system health monitored by SparkPlug B "birth & death certificates"
8. Write from internal client to external clients

## Enterprise MQTT brokers
* Inductive Automation's Ignition server - <a target="_blank" href="https://inductiveautomation.com/resources/video/what-is-mqtt">VIDEO</a>
* SiriusLink Ignition SCADA
* HiveMQ
* <a target="_blank" href="">EMQX.io</a> MQTT
   * https://www.youtube.com/watch?v=kuyCd53AOtg MQTT Beginners Guide by Techletters


<a name="NodeRED"></a>

## NodeRED

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1756842510/mqtt-nodered-menu-162x704_gmmtrz.png"><img align="right" width="100" alt="mqtt-nodered-menu-162x704.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1756842510/mqtt-nodered-menu-162x704_gmmtrz.png" /></a>

NodeRED is a GUI editor to use low-code visual way to build event-driven flows that interconnect IoT devices to various <a href="#IoTClouds">IoT clouds</a> and databases for for home automation and industrial control systems.

NodeRED, being built using NodeJS, runs on Windows, macs, Linux Raspberry Pi, and industrial appliances (groov AR1), as a Docker container.

According to https://nodered.org/docs/getting-started/raspberrypi, install using:

bash <(curl -sL https://github.com/node-red/linux-installers/releases/latest/download/update-nodejs-and-nodered-deb)

Its default port is 1880.

To run Node-RED in the background when the Pi is turned on or re-booted:

<tt>sudo systemctl enable nodered.service</tt>

To disable the service:

<tt>sudo systemctl disable nodered.service</tt>


References:
   * https://www.youtube.com/watch?v=3AR432bguOY&list=PLKYvTRORAnx6a9tETvF95o35mykuysuOw by Opto Video


<a name="IoTClouds"></a>

## IoT Clouds

* <a target="_blank" href="https://flowfuse.com/docs/install/introduction/">FlowFuse</a> <a target="_blank" href="https://app.flowforge.com/account/create">$20/mo account</a> 
* Amazon Web services https://nodered.org/docs/getting-started/aws
* Microsoft Azure - https://nodered.org/docs/getting-started/azure
* IBM


<a name="Mosquitto"></a>

## Mosquitto MQTT Broker

On a Raspberry Pi OS, ( there is no "brew info mosquito").

1. Configure

   sudo nano mosquitto.conf


<a name="OPC-UA"></a>

## OPC-UA

"OPC-UA" (OLE for Process Control) is an extension of Microsoft OLE (Object Link & Embedding) by Rockwell Automation "is not an IIoT protocol". Defined by the industry consortium openfoundation.org "designed for vendor lock-in"
   * <a target="_blank" href="https://www.youtube.com/watch?v=ApxtnOTVbzY&list=PLGLQEZs6ivMpFMoTAcnRrTfmnNmuo4PbX&index=1&pp=iAQB">What is OPC?</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=6Fns92nrrYM&list=PLGLQEZs6ivMpFMoTAcnRrTfmnNmuo4PbX&index=2&pp=iAQB">Part II</a> Key Elements & How does it work?
   * <a target="_blank" href="https://www.youtube.com/watch?v=gNRHCQDPWNI&list=PLGLQEZs6ivMpFMoTAcnRrTfmnNmuo4PbX&index=6&pp=iAQB">OPC-UA vs MQTT 2 debate</a>
By Rajvir Singh at codeandcompile.com: 
   1. https://www.youtube.com/watch?v=3EREV8Q5PNU What is OPC UA?
   2. https://www.youtube.com/watch?v=yCd2j2WsgBM Server simulation
   <br /><br />


## References

Books:


<a name="Arlon"></a>
By Inductive Automation:
   * <a target="_blank" href="https://inductiveautomation.com/resources/video/what-is-mqtt">VIDEO</a> What is MQTT?
   * <a target="_blank" href="https://inductiveautomation.com/resources/video/how-mqtt-works">VIDEO</a> How MQTT Works
   * <a target="_blank" href="https://inductiveautomation.com/resources/video/mqtt-sparkplug-specification">VIDEO</a> MQTT Sparkplug Specification
   * <a target="_blank" href="https://inductiveautomation.com/resources/video/mqtt-ignition">VIDEO</a> MQTT & Ignition
By Opto Video: opt022.com PLCs
   * <a target="_blank" href="https://www.youtube.com/watch?v=WmKAWOVnwjE">What is an MQTT broker clearly</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=tQmXWNd1pNk">How to get started with MQTT</a> Node-RED
   * https://www.youtube.com/watch?v=WmKAWOVnwjE What is an MQTT Broker
By 4.0 Solutions: <a target="_blank" href="https://www.youtube.com/watch?v=ApxtnOTVbzY&list=PLGLQEZs6ivMpFMoTAcnRrTfmnNmuo4PbX">Playlist</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=KAYNg7meAdo&t=2m25s">Part I</a> What is MQTT? - The Foundation
   * <a target="_blank" href="https://www.youtube.com/watch?v=epx1Y5p4jtU&pp=0gcJCbIJAYcqIYzv">Part II</a> The MQTT Stack

   * CoAP
   * <a target="_blank" href="https://www.youtube.com/watch?v=-9vMAe7P25A&list=PLGLQEZs6ivMpFMoTAcnRrTfmnNmuo4PbX&index=5&pp=iAQB">Sparkplub A & B</a>  

By Gary Explains
   * https://www.youtube.com/watch?v=p3vJxGKWDIg
By The Hook Up:
   * https://www.youtube.com/watch?v=NjKK5ab0-Kk&pp=0gcJCbIJAYcqIYzv
By Learn Embedded Systems:
   * https://www.youtube.com/watch?v=_DO2wHI6JWQ&pp=0gcJCbIJAYcqIYzv
Others on YouTube:
   * https://www.youtube.com/watch?v=jTeJxQFD8Ak&list=PLRkdoPznE1EMXLW6XoYLGd4uUaB6wB0wd
   * https://www.youtube.com/watch?v=EIxdz-2rhLs&pp=ygUEbXF0dA%3D%3D 
   * <a target="_blank" href="https://www.youtube.com/watch?v=k2Pwbtj_APc">What I love and hate about UPC
   * https://www.youtube.com/watch?v=p3vJxGKWDIg
   * https://www.youtube.com/watch?v=_DO2wHI6JWQ
   * <a target="_blank" href="https://www.youtube.com/watch?v=wIiI1yaJ_9s">VIDEO</a>: Setting up Authentication for your Mosquitto MQTT Broker
   * <a target="_blank" href="https://www.youtube.com/watch?v=1egBm7u_fXg">VIDEO</a>: How to bridge two MQDD Mosquitto brokers (without exposing network)

* <a target="_blank" href="https://www.youtube.com/watch?v=uJvCVw1yONQ">VIDEO</a>: Raspberry Pi Alternatives.

* <a target="_blank" href="https://cults3d.com/en/3d-model/tool/raspberry-pi-camera-holder-duckling-camera-holder-for-octoprint">$1.71 3D model file</a> for RPi camera with ball bearing.