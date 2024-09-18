scada.md

This is at <a target="_blank" href="https://bomonike.github.io/scada">https://bomonike.github.io/scada</a> from code at <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/scada.md">https://github.com/bomonike/bomonike.github.io/blob/master/scada.md</a>

## InductiveAutomation.com

https://www.linkedin.com/in/traviscox-automation/
in Folsom, CA (Near Sacramento)
800-266-7798

https://www.youtube.com/@InductiveAutomation
points to https://ia.io/platform

<a target="_blank" href="https://www.youtube.com/watch?v=0SrEJuONDyc">VIDEO: Why? Overview</a>

People:
* https://www.linkedin.com/in/traviscox-automation/

Competitors include:
* Wonder ware
* SAP
* Oracle
* Siemens

<a target="_blank" href="https://www.youtube.com/watch?v=3325bTcuPKQ">Top Requirements for an effective SCADA</a>


## Induction's Product Architecture

<a target="_blank" href="https://inductiveuniversity.com/videos/ignition-system-architectures/8.1"><img alt="ignition-basic-arch-2726x1694.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726629808/ignition-basic-arch-2726x1694_carhxt.png"></a>

Induction Automation provides locally installed Java-based <strong>"Ignition"</strong> web servers (in Docker containers) to communicate with PLCs (Programmable Logic Controllers) and DCS (Distributed Control System) that control industrial equipment.
* 58 min course "Ignition with Docker" is a guided walkthrough of Ignition with Docker

<a target="_blank" href="https://www.youtube.com/watch?v=DCixhDisHQ8">Ignition Cloud</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=R65XegwK3Bk">VIDEO: Anywhere</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=0yKoEYPz5a4">VIDEO: Picking the right arch</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=Qzskv9O_zh0">VIDEO: shows screens</a>

Induction's "Ignition" product enables:
* HMI (Human-Machine Interface) to PLCs (Programmable Logic Controllers) IIoT
* SCADA (Supervisory Control and Data Acquisition), and
* MES (Manufacturing Execution System) to track material movement through the shop floor

The above work for the benefit of an ERP (Enterprise Resource Planning) system in a <a target="_blank" href="https://www.youtube.com/watch?v=IAhxYsMi4e8">conceptual "Automation Pyramid":<br />
<img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726661906/ignition-pyramid_ck0rrd.png"></a>

<img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726635389/MESP_attributes_vd4tom.webp">



## PLC Drivers

Ignition has <a target="_blank" href="https://inductiveuniversity.com/videos/about-ignitions-modules/8.1">drivers for manufacturers</a>:
* Allen-Bradley Logix 5000
* Modbus
* Siemens
* Omron
* Mitsubishi
* ABB?

* robots (from ABB, etc?)

Protocols:
* TCP (using the HSMS standard, SEMI E37)
* RS-232 based protocol (using the SECS-I standard, SEMI E4).
* <a target="_blank" href="https://en.wikipedia.org/wiki/MQTT">MQTT</a> (Message Queue Telemetry Transport), a lightweight, publish-subscribe, machine to machine network protocol for message queue/message queuing service. It was created to monitor oil pipelines within the SCADA industrial control system. SarkplugB format or add-in <a target="_blank" href="https://inductiveautomation.com/exchange/2670/overview">Vanilla Transmission</a>
* <a target="_blank" href="https://inductiveautomation.com/ignition/modules/opc-com">OPC-COM</a> for legacy OPC servers
* OPC-DA (Data Access) v2 & 3 for Windows
* OPC-HDA (Historical Data Access) v12
* <a target="_blank" href="https://inductiveautomation.com/ignition/modules/ignition-opc-ua">OPC-UA</a>

* SECS/GEM is the <a target="_blank" href="https://en.wikipedia.org/wiki/SECS-II">Equipment Communications Standard E5</a> / Generic Equipment Model (standard E30) protocol defined by the <a target="_blank" href="https://en.wikipedia.org/wiki/SEMI">SEMI (Semiconductor Equipment and Materials International)</a> organization for equipment-to-host data communications. In an automated fab, the interface can start and stop equipment processing, collect measurement data, change variables and select recipes for products.
* SMS (mobile) text notifications

* <a target="_blank" href="https://en.wikipedia.org/wiki/DNP3#:~:text=Distributed%20Network%20Protocol%203%20(DNP3,as%20electric%20and%20water%20companies.">DNP3</a> (Distributed Network Protocol 3) used  in electric and water utilities
* EC 61850
* BACnet

<a target="_blank" href="https://inductiveautomation.com/exchange/">Induction's Exchange</a> website provides (at time of writing) 442 add-ons for download.

* Send message to Lark


## Scaling with MQTT

The <a target="_blank" href="https://inductiveautomation.com/ignition/modules/eam">Enterprise Administration Module (EAM)</a>
enables management of many Ignition installations from one location.

<a target="_blank" href="https://inductiveuniversity.com/videos/ignition-system-architectures/8.1"><img alt="ignition-arch-3024x1964.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726629243/ignition-arch-3024x1964_enzi0p.png"></a>

Ignition communicates using the MQTT with central administration of permissions.

Ignition uses JDBC to store and retrieve data in SQL databases which use compression algorithms (called "Historian").

Ignition's Reporting Engine creates dynamic PDF files.

Ignition's Alarming system sends out notifications via voice, SMS, email.


## Customer usage

https://inductiveautomation.com/resources/customerproject

<a target="_blank" href="https://www.youtube.com/watch?v=2ievolmYuw8" title="from 2020">VIDEO</a>
Raspberry Pi Ignition Edge Install

<a target="_blank" href="https://www.youtube.com/watch?v=RverIFT0D_A">ChatGPT to create Views</a>


## Software Stack

https://inductiveautomation.com/ignition/modules
<img alt="ignition-SoftwareStack-3200x1800.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726660786/ignition-SoftwareStack-3200x1800_llno0r.png"></a>
from <a target="_blank" href="https://assets.inductiveautomation.com/static/images/modules/SoftwareStack-Full@2x.f0b2ebbfd212.png">here</a>


## Ignition Modules

https://inductiveautomation.com/ignition/modules

<strong>"Perspective"</strong> is Induction's design IDE.

<img alt="ignition-integrations-1668x1338.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626234/ignition-integrations-1668x1338_gnji26.png">


<a target="_blank" href="https://inductiveuniversity.com/videos/what-is-ignition/8.1"><img alt="ignition-flow-2070x1304.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626278/ignition-flow-2070x1304_yfsdlh.png"></a>

* <strong>Gateway</strong> server executes modules, provides Launchers, then communicates with clients
Launched from the Gateway:
* Perspective Designer to configure and build projects
* Clients (runtimes of local Vision modules)
* Sessions are runtimes of the Perspective Module run in a browser.


## Reference Docs

https://docs.inductiveautomation.com/docs/8.1/intro
Ignition User Manual

https://account.inductiveautomation.com/

## Dev Build

https://github.com/inductiveautomation/ignition-sdk-training

## Tutorials

https://inductiveuniversity.com/

1. Begin with first lesson at https://inductiveuniversity.com/courses/ignition/ignition-overview/8.1

   https://inductiveuniversity.com/videos/what-is-ignition/8.1

2. Create Account and verify email.
3. Take Topic Challenge


* 3 hr 49 min course "Building in Perspective" to create your first Perspective project.

* 1 hr 28 min course "Design Fundamentals" takes a deep dive into the world of visual design - common design patterns and philosophies.

* 46 min course "Advanced Styling in Perspective" for  tips and tricks to take your Perspective projects to the next level.

* 1 hr 15 min course "Module Development with the Ignition SDK" opens up Ignition to user/organization extensions and customizations with SDK module development.

1. Watch overview https://www.inductiveuniversity.com/video/what-is-ignition/8.1

   Ignition Designer tool

https://inductiveuniversity.com/courses/elective-studies


### Install

* <a target="_blank" href="https://www.youtube.com/watch?v=fPCbJSt9CBA">VIDEO</a>: Time-saving hacks

Ignition module skeletons works on Windows, Linux, macOS.

1. Install JDK 11.
2. Verify: java -v
3. https://inductiveautomation.com/downloads/

   * macOS ignition-8.1.43-macos-64-installer.dmg Sep 17, 2024 was 1,644,383,679 bytes (1.64 GB on disk)
   * Linux  https://www.inductiveuniversity.com/videos/installing-ignition-on-linux/8.1
   * Windows  https://www.inductiveuniversity.com/videos/installing-ignition-on-windows/8.1

   CAUTION: On Windows, the path has a space:
   <tt>C:\Program Files\Inductive Automation\ignition</tt>

4. GUI

5. https://docs.inductiveautomation.com/docs/8.1/getting-started/quick-start-guide

6. <a target="_blank" href="https://www.inductiveuniversity.com/videos/installing-ignition-on-mac/8.1">VIDEO</a>: Select the "Maker Edition", a "free, limited version of Ignition for personal, non-commercial projects.

7. Create a User
8. Start Gateway.
9. Don't save password on browser.
10. "Get Started" web page on Localhost.

11. Stop the Gateway server.
12. To stop the Gateway from starting upon startup, ???

## Dev

<a target="_blank" href="https://www.youtube.com/watch?v=ZkYZ1xTtzsg">VIDEO</a>:
Learning to code in Ignition

https://github.com/inductiveautomation
organization by <a target="_blank" href="https://www.linkedin.com/in/perryaj/">Perry Arellano-Jones</a> and <a target="_blank" href="https://www.linkedin.com/in/thirdgen88/">Kevin Collins</a>

* https://github.com/inductiveautomation/ignition-module-tools
* https://github.com/inductiveautomation/ignition-sdk-training uses Gradle processing Java and Kotlin

* <a target="_blank" href="https://github.com/inductiveautomation/kindling">Kindling</a>

https://github.com/orgs/ignition-devs/repositories?type=all


## OPC

Real-time OPC (Open Process Control) servers.

https://www.wikiwand.com/en/articles/Open_Platform_Communications

<a target="_blank" href="https://www.opcdatahub.com/WhatIsOPC.html#note1">Object Linking and Embedding OPC</a>

https://www.udemy.com/course/mastering-opc-ole-for-process-control/

## OEE Loss Calculations

https://www.oee.com/calculating-oee/

The MES module calculates the three loss-related factors:

   OEE = Availability  x  Performance  x Quality

Because it exposes what actions to take against the underlying causes of lost productivity, it is preferred over calculation of OEE using the ratio of Fully Productive Time to Planned Production Time.

OEE = (Good Count × Ideal Cycle Time) / Planned Production Time

Fully Productive Time is just another way of saying manufacturing only Good Parts as fast as possible (Ideal Cycle Time) with no Stop Time.

Schedule Loss is not part of OEE but
is part of <a target=="_blank" href="https://www.oee.com/teep/">TEEP (Total Effective Equipment Performance)</a>.

## Feedback Control Algorithms

To maintain a process variable such as ambiant temperature at a Setpoint, a PLC controller activates a heater or cooler based on sensor readings, in a feedback control loop. Other variables include regulating pressure and flow rate.
<a target="_blank" href="https://www.youtube.com/watch?v=IAhxYsMi4e8&t=1m47s">VIDEO</a> by <a target="_blank" href="https://www.realpars.com/">realpars.com</a>:
<img alt="plc-pid-feedback.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726664501/plc-pid-feedback_a5kvtj.png">

To dappen wild swings in actions, PLCs used the <a target="_blank" href="https://www.youtube.com/watch?v=sFqFrmMJ-sg&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl">PID (Proportional Integral Derivative)</a> approach
<a target="_blank" href="https://www.youtube.com/watch?v=lRZ4NT5DRk8&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl&index=7&t=53s">VIDEO</a>:

Other approaches:
* Fuzzy Logic Control (FLC)
* Model Predictive Control (MPC)
* Adaptive Control
* Neural Network Control
