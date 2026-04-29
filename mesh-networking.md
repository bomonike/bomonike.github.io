---
layout: post
date: "2026-04-28"
lastchange: "26-04-28 v003 md heading @mesh-networking.md"
url: "https://bomonike.github.io/mesh-networking"
file: "mesh-networking"
title: "Meshtastic and MeshNode on Reticulum"
excerpt: "IoT devices for Meschtastic can be flashed to use Mesh Node access by Reticulum gateway to wifi thru the internet."
tags: [Security, Networking, IoT]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-04-15"
---
<a target="_blank" href="https://bomonike.github.io/mesh-networking"><img align="right" width="100" height="100" alt="mesh-networking.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/mesh-networking.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

## Why?

Although the internet being down may be unimaginable, it does happen.

LoRa was designed to operate over long distances at extremely low bandwidth power,  ith very high latency.

Coverage can be wide when there are enough <strong>Repeaters</strong> which forward messages between Rnodes.

Text messaging without the Internet.

https://unsigned.io/contact.html#reticulum:matrix.org



## Architecture

Meshtastic (at meshtastic.org) created open-sourced <strong>firmware</strong> as a volunteer community. The firmware is flashed onto off-the-shelf LoRa radio hardware, creating a mesh communication network.

MeshCore competes with Meshtastic.

<a target="_blank" href="https://en.wikipedia.org/wiki/Draft:Reticulum_(networking)">Reticulum</a> is a <a target="_blank" href="https://github.com/markqvist/Reticulum">Python module</a> which runs in a Raspberry Pi or ESP32 board with radio chips that transmit LoRA messages. Reticulum was created by <a target="_blank" href="https://github.com/markqvist">Mark Qvist</a> (LXMF at 8dd57a738226809646089335a6b03695)

QUESTION: Run on Mac Mini?

Conceptually, Reticulum runs on top of Meshtastic, Mesh Core, and WiFi, thus bridging the techologies and provides a gateway to the regular wide-area internet.

Reticulum wraps its packets into Meshtastic messages, sends them over LoRa, then unwraps them back into Reticulum on the other side.

REMEMBER: Reticulum does not use IP addresses and ports known from IP, TCP and UDP.
Reticulum packets transmitted do not include information about where they originated from. 

This enables destination identities to be "self soverign" rather than assigned by a central bureaucracy. Thus, Reticulum are networks without kill-switches, surveillance, censorship and control: networks that can freely interoperate, associate and disassociate with each other. 

Reticulumi recognizes each <strong>destination apps</strong> that use Reticulum to receive data as a <strong>16-byte hash</strong> derived from cryptographic identity characteristics. 

All communication is secured with strong, modern encryption by default.
<a target="_blank" href="https://markqvist.github.io/Reticulum/manual/">BLOG</a>:
Reticulum is a cryptography-based networking stack offering end-to-end encryption (using Ed25519 Signatures), initiator anonymity, autoconfiguring cryptographically backed multi-hop transport, and unforgeable delivery acknowledgements.

### Clients used by

https://reticulum.network/

uses the peer-to-peer and distributed messaging system LXMF (Lightweight Extensible Message Format) defined at https://github.com/markqvist/lxmf
There is no sign-up, no service providers, no "end-user license agreements", no data theft and no surveillance. You own the system.

* MeshChat
* pip install nomadnet  # Nomad Network
* <a target="_blank" href="https://www.youtube.com/watch?v=Vv-GbmlvPn4&pp=ygUJcmV0aWN1bHVt">VIDEO<a>: https://github.com/markqvist/Sideband is an extensible LXMF messaging and LXST telephony client, situational awareness tracker and remote control and monitoring system for Android, Linux, macOS and Windows.
It communicates over Reticulum networks using LoRa, Packet Radio, WiFi, I2P, or anything else Reticulum supports.

Each LXMF message is identified by its message-id constructed from a SHA-256 hash of the Destination, Source and Payload.

1. Install LXMF to run in an isolated environment:
   ```bash
   pip install lxmf
   ```
1. Example receiver Python code at
   https://github.com/markqvist/LXMF/blob/master/docs/example_receiver.py
1. Example sender Python code at
   https://github.com/markqvist/LXMF/blob/master/docs/example_sender.py

1. <a target="_blank" href="https://youtube.com/shorts/FcW732Hxz5c?si=hcMjVG1l3BU7uYLB">VIDEO</a>: https://github.com/fotografm/rns-map Simon Phillip's 
   to bridge from laptop to PiZero:
   ```bash
   ssh jump
   ```

## Meshtastic Hardware

* LILYGO T-Beam, T-Echo, T3S3 — most popular boards that most start with it
* Heltec WiFi LoRa 32 v3 v4 , Wireless Tracker, Vision Master
* RAK Wireless WisBlock Meshtastic Starter Kit
* Seeed Studio SenseCAP Card Tracker, XIAO ESP32 boards (from China)
* Nano-G seriesNano-G1, Nano-G2 (community designed)
* B&Q Consulting Mesh devices sold pre-flashed
<br /><br />

<a target="_blank" href="https://www.amazon.com/stores/page/8B465D3E-B182-40BC-AF87-7F38070BCC6A">MakerHawk</a> 
<a target="_blank" href="https://www.amazon.com/ESP32-Development-1100mAh-Battery-Protect/dp/B0DP6BNZ4M/">$34.99</a> Heltec
<a target="_blank" href="https://www.amazon.com/Waveshare-SX1262-LoRa-HAT-Modulation/dp/B07VS1S2P7/">$35.99</a> Waveshare Raspberry Pi LoRa HAT based on SX1262, covers <strong>915MHz</strong> frequency band antenna. It allows data transmission up to 5km through serial port.
Its standard Raspberry Pi 40PIN GPIO extension header supports Raspberry Pi series boards Onboard CP2102 USB TO UART converter, for serial debugging Brings the UART control interface, for connecting host boards like Arduino/STM32. It has 4x LED indicators to check the module status LoRa spread spectrum modulation technology, up to 81 available signal channel, longer communication distance, more robust to interference Auto multi-level repeating, suit for ultra long range communication, allows multi network on the same region


## Reticulum Install

1. <a target="_blank" href="https://markqvist.github.io/Reticulum/manual/gettingstartedfast.html">BLOG</a>: Install Reticulum's module from PyPi.org:
   Option A: Install the package which require no external dependencies:
   ```bash
   uv add rnspure
   ```
   Option B: The '`rns` package requests dependency downloads dynamically:
   ```bash
   uv add rns    # = pip install 
   ```
1. The rns package enables


## Reticulum Configuration

1. Generate a detailed example file at `~/.reticulum/config` (to learn from):
   ```bash
   bashrnsd --exampleconfig
   ```
   The default configuration provides basic connectivity to other locally reachable Reticulum peers. Example:
   ```
    ini[reticulum]
    enable_transport = No

    [interfaces]

    [[AutoInterface]]
    type = AutoInterface
    enabled = yes
   ```
1. Add a global distributed backbone of Reticulum transport nodes from among interface definitions for connecting to this backbone on websites such as https://directory.rns.recipes and https://rmap.world. Example: Add a TCP connection to a public node in your config, such as:
   ```
    ini[[RNS Testnet billings]]
    type = TCPClientInterface
    enabled = yes
    target_host = billings.connect.reticulum.network
    target_port = 4965
   ```

1. If you don't have transceiver hardware, you can build an <strong>RNode</strong> — a general-purpose long-range digital radio transceiver that integrates easily with Reticulum — by installing custom firmware on a supported LoRa development board using an auto-install script or web-based flasher.
   ---bash
   pip install rnodeconf
   rnodeconf --autoinstall   # flash a LILYGO or Heltec board
   ```
1. Add to config:
    ```
    ini[[RNode LoRa]]
    type = RNodeInterface
    enabled = yes
    port = /dev/ttyUSB0
    frequency = 868000000
    bandwidth = 125000
    txpower = 7
    spreadingfactor = 8
    codingrate = 5
    ```


1. Run the included rnsd command to start Reticulum as a service. When rnsd is running, it keeps all configured interfaces open, handles transport if enabled, and allows any other programs to immediately use the Reticulum network. Reticulum Network
   ```bash
   rnsd -d     # run as daemon (background)
   rnsd        # run in foreground
   ```
   This locks the CLI window.


## Software Install


## Commands

Commands rnstatus and  rnsd   and lxmd commands

* LXMF (Lightweight Extensible Message Format) at https://github.com/markqvist/lxmf is a distributed, delay and disruption tolerant message transfer protocol built on Reticulum.



LXST

https://github.com/landandair/RNS_Over_Meshtastic

## Integrations

MCP AI Agent Protocol

Whatsapp Communications


## Accounting System

   https://www.gnucash.org/
   "is personal and small-business financial-accounting software
   developed, maintained, documented, and translated entirely by volunteers."

   GNU General Public License, Version 2, or (at your option) Version 3.

1. Install on MacOS:
   ```
   brew info GnuCash

    ==> gnucash ✘: 5.15-1
    https://www.gnucash.org/
    Not installed
    From: https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/g/gnucash.rb
    ==> Name
    GnuCash
    ==> Description
    Double-entry accounting program
    ==> Requirements
    Required: macOS >= 11 ✔
    ==> Artifacts
    Gnucash.app (App)
    ==> Downloading https://formulae.brew.sh/api/cask/gnucash.json
    ==> Analytics
    install: 125 (30 days), 444 (90 days), 2,006 (365 days)

brew install GnuCash
open -a gnucash.app
```
1. GitHub code releases
   https://github.com/Gnucash/gnucash/releases
   5.15
   WARNING: code.gnucash.org/website/ no longer works.

1. User tutorials at
   ```bash
   open -a gnucash.app
   ```
   file:///Users/johndoe/Applications/Gnucash.app/Contents/Resources/en.lproj/GnuCash%20Guide/index.html

1. Menu:
   Gnucash File Edit View <strong>Actions Business Reports Tools</strong> Windows Help




<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
