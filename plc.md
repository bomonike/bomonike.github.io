This is at <a target="_blank" href="https://bomonike.github.io/plc">https://bomonike.github.io/plc</a> from code at <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/plc.md">https://github.com/bomonike/bomonike.github.io/blob/master/plc.md</a>

## What's This?

<a target="_blank" href="https://www.youtube.com/watch?v=IAhxYsMi4e8">conceptual "Automation Pyramid":<br />
<img alt="ignition-pyramid-1495x816.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726755894/ignition-pyramid-1495x816_ehdnki.png"></a>

InductiveAutomation enables industrial companies to manage
* PLCs (Programmable Logic Controllers) that <strong>automate</strong> remote operation of equipment. Communication of inputs and outputs to and from each PLC is supervised by a
* SCADA (Supervisory Control and Data Acquisition) system.

Planning to coordinate minute-by-minute movement of material and work in process on the plant floor is done by a
* MES (Manufacturing Execution System).
Such a system makes more efficient use of limited capacity. MES reduces bottlenecks by calculating alternative routings in production.

Overall orchestration is done by an
* ERP (Enterprise Resource Planning) system that does long-range planning in industries with long lead time items or complex bills of materials (BoM) needed on the shop floor, along with some form of associated shop orders in manufacturing industries.

includes most accounting functions, including general ledger, as well as inventory management, and resource and inventory planning.

These systems help with ISO 9001 certification and compliance with FDA CFR 21 Part 11 Medical Device Manufacturing.

At the shop floor or Field Level, barcodes and weights and other measures are captured and displayed by a
* LIM (Laboratory Information Management) system.

<a target="_blank" href="https://libertyadvisorgroup.com/insight/manufacturing-execution-systems-erp-on-the-shop-floor/"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726635389/MESP_attributes_vd4tom.webp"></a>


## Product Architecture

<a target="_blank" href="https://inductiveuniversity.com/videos/ignition-system-architectures/8.1">
<img alt="ignition-components.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726755769/ignition-components_m8bxbr.png"></a>

A big part of InductiveAutomation's value proposition is that their <strong>Ignition Server</strong> provides a work-around to <strong>proprietary protocols</strong> imposed by vendors to lock their customers into expensive solutions (and higher profits for the vendor).

To communicate with PLCs (Programmable Logic Controllers) and DCS (Distributed Control System) that control industrial equipment, InductiveAutomation provides locally installed <strong>"Ignition"</strong> web servers called <strong>Gateways</strong> which run within Docker containers.

## Cloud Edition

Iginition is not a SaaS app like Salesforce.

The <a target="_blank" href="https://www.youtube.com/watch?v=DCixhDisHQ8">VIDEO</a>:
<a target="_blank" href="https://inductiveautomation.com/ignition/cloud-edition">Ignition Cloud Edition</a> obtained from the
<a target="_blank" href="https://aws.amazon.com/marketplace/pp/prodview-2rstgfnmrqc2o">AWS Marketplace</a> or <a target="_blank" href="https://azuremarketplace.microsoft.com/en-us/marketplace/apps/inductiveautomationllc1675268212292.ignition-cloud-edition?tab=Overview">Azure</a> installs on Ubuntu Linux servers from an (AMI) image, not as "serverless" functions.

"Auto-scaling" within a <a target="_blank" href="https://aws.amazon.com/solutions/partners/inductive-automation-ignition/">standalone AWS archicture</a> requires configuration of Auto Scaling Group (ASG) within a Bastion host in each of two Availability Zones. Configurations need to be <a target="_blank" href="https://aws-ia.github.io/cfn-ps-inductive-automation-ignition/">specified</a> in <a target="_blank" href="https://github.com/aws-ia/cfn-ps-inductive-automation-ignition/blob/main/scripts/creation_v2.sh">shell scripts</a> to define Security Groups, Public & Private subnets, NAT gateways, AWS KMS, CloudWatch, Amazon SNS, etc.

<img alt="ignition-aws-standalone-asg.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726757987/ignition-aws-standalone-asg_pxbwqq.png">

QUESTION: Can HashiCorp Terraform be used to stand up servers? That would enable identification of security and misconfiguration issues before resources are created.

## Security Alerts

Industrial Control Systems Advisories:

America's Cyber Defense Agency, CISA (Critical Infastructure Security and Resilience) has released <a target="_blank" href="https://www.cisa.gov/search?g=inductive-automation-ignition#gsc.tab=0&gsc.q=inductive-automation-ignition&gsc.page=1">security alerts about Ignition</a>.

### Design Launcher

Those who design how Igition operates install the <strong>Design Launcher</strong> app on their workstations (laptops). There is also "WrapperSimpleApp" that has a Java icon.

“Perspective” is Induction’s design IDE.

Touch panels are also called "HMIs" (Human-Machine Interface) to PLCs (Programmable Logic Controllers).

The list of Connections on the Gateway's Status GUI
<img alt="ignition-Connections.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726741634/ignition-Connections_icmkss.png">


## InductiveAutomation.com

https://www.linkedin.com/in/traviscox-automation/
in Folsom, CA (Near Sacramento)
800-266-7798

https://www.youtube.com/@InductiveAutomation
points to https://ia.io/platform

<a target="_blank" href="https://www.youtube.com/watch?v=0SrEJuONDyc">VIDEO: Why? Overview</a>

Interactions:
* https://forum.inductiveautomation.com/

People:
* https://www.linkedin.com/in/traviscox-automation/
* Kevin McClusky is CTO

## Competition

InductiveAutomation's competitors include:
* Wonder ware
* eazyworks.com
* SAP
* Oracle
* Siemens

Unlike older competitors that use 15 inch monitors, inductiveautomation clients display at HD (1920x1080 pixel) resolution on 22+ inch monitors.

inductiveautomation charges by the number of servers installed for use by an <strong>unlimited number of clients</strong> at no additional licensing cost. <a target="_blank" href="https://www.youtube.com/watch?v=zH0m8Z0opyc">VIDEO</a>.

* <a target="_blank" href="https://www.youtube.com/watch?v=3325bTcuPKQ">Top Requirements for an effective SCADA</a>



Mobile using JavaScript?

Unlike legacy PLCs which use proprietary Assembly language, Ignition is customized using the Python language.





* https://www.youtube.com/watch?v=FDlxR2Ktoi4
* <a target="_blank" href="https://www.youtube.com/watch?v=R65XegwK3Bk">VIDEO: Anywhere</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=0yKoEYPz5a4">VIDEO: Picking the right arch</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=Qzskv9O_zh0">VIDEO: shows screens</a>


## Demo app

* <a target="_blank" href="https://www.youtube.com/watch?v=0SrEJuONDyc" title="18m22s">VIDEO</a>:

Turn off Dark Reader on your browser.

This does not require installation locally.

<a target="_blank" href="https://demo.inductiveautomation.com/">https://demo.inductiveautomation.com</a> works 2 hours at a time.

View source to see that it uses React, Mobx, Moment, XHR.
All HTML on the page is loaded dynamically.

The app can be configured to <a target="_blank" href="https://www.youtube.com/watch?v=0SrEJuONDyc&t=14m56s">add a tint to an svg image</a>.

## Modules

Modules selected for install and <a target="_blank" href="http://localhost:8088/web/status/sys.modules?12">listed in the Gateway</a> (alphabetically):

* Alarm Notification
* Enterprise Administration
* <a href="#OPC-UA">OPC-UA</a>
* Perspective
* Reporting
* <a href="#SFC">SFC</a>
* SMS Notification
* SQL Bridge (defined in the Designer to support Transaction Groups : units of execution that perform actions such as storing data historically, synchronizing database values to OPC, or loading recipe values)

* Serial Support Client (not selected at install)
* Serial Support Gateway (not selected at install)

* Symbol Factory
* Tag Historian
* UDP and TCP Drivers
* Vision
* Web Browser
* WebDev

There are also <a href="#PLCDrivers">PLC Driver modules</a> and Communication protocol modules (such as OPC-UA).

<a name="OPC-UA"></a>

Ignition's OPC-UA (Open Platform Communication United Architecture) <a target="_blank" href="https://inductiveautomation.com/ignition/modules/ignition-opc-ua">module</a> <a target="_blank" href="https://www.youtube.com/watch?v=3EREV8Q5PNU">VIDEO</a>:
* <a target="_blank" href="https://inductiveautomation.com/ignition/modules/opc-com">OPC-COM</a> for legacy OPC servers
* OPC-DA (Data Access) v2 & 3 for Windows
* OPC-HDA (Historical Data Access) v12
* OPC Tunneller ???


### Communication Protocol Modules

* TCP (using the HSMS standard, SEMI E37)
* <a target="_blank" href="https://en.wikipedia.org/wiki/MQTT">MQTT</a> (Message Queue Telemetry Transport), a lightweight, publish-subscribe, machine to machine network protocol for message queue/message queuing service. It was created to monitor oil pipelines within the SCADA industrial control system. SarkplugB format or add-in <a target="_blank" href="https://inductiveautomation.com/exchange/2670/overview">Vanilla Transmission</a>

* RS-232 based protocol (using the SECS-I standard, SEMI E4), SECS/GEM is the <a target="_blank" href="https://en.wikipedia.org/wiki/SECS-II">Equipment Communications Standard E5</a> / Generic Equipment Model (standard E30) protocol defined by <a target="_blank" href="https://en.wikipedia.org/wiki/SEMI">SEMI (Semiconductor Equipment and Materials International)</a> for equipment-to-host data communications. In an automated fab, the interface can start and stop equipment processing, collect measurement data, change variables and select recipes for products.

* SMS (mobile) text notifications

* <a target="_blank" href="https://en.wikipedia.org/wiki/DNP3#:~:text=Distributed%20Network%20Protocol%203%20(DNP3,as%20electric%20and%20water%20companies.">DNP3</a> (Distributed Network Protocol 3) used by electric and water utilities
* <a target="_blank" href="https://en.wikipedia.org/wiki/IEC_61850">EC 61850</a> - communication protocols for intelligent electronic devices at electrical substations.
* <a target="_blank" href="https://en.wikipedia.org/wiki/BACnet">BACnet</a> - a communication protocol for building automation and control (BAC) networks that use the ASHRAE, ANSI, and <a target="_blank" href="http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=37298">ISO 16484-5</a> standards protocol used by building automation and control systems for applications such as heating, ventilating, and air-conditioning control (HVAC), lighting control, access control, and fire detection systems and their associated equipment. The BACnet protocol provides mechanisms for computerized building automation devices to exchange information, regardless of the particular building service they perform.

* Send message to Lark

* ??? For interoperability among IoT devices, the <a target="_blank" href="https://en.wikipedia.org/wiki/Matter_(standard)">Matter</a> protocol under IP was developed by Amazon, Apple, Google, Samsung, and others with the Zigbee Alliance, at the <a target="_blank" href="https://en.wikipedia.org/wiki/Connectivity_Standards_Alliance">Connectivity Standards Alliance (CSA)</a>.
Version 1.0 of the spec and SDK was published 4 October 2022.
Matter uses as transport the <a target="_blank" href="https://www.threadgroup.org/What-is-Thread/Overview">Thread</a> <a target="_blank" href="https://en.wikipedia.org/wiki/Thread_(network_protocol)">IPv6 mesh protocol</a> for battery-powered devices,
supported by Apple iPhone 15 Pro, and all models of iPhone 16 and Google Pixel 9.

<a name="PLCDrivers"></a>

### PLC Driver modules

PROTIP: Don't select these modules during install unless you know you'll need them.

Ignition has <a target="_blank" href="https://inductiveuniversity.com/videos/about-ignitions-modules/8.1">drivers for manufacturers</a>, listed at

https://inductiveautomation.com/ignition/modules

* Allen-Bradley (Logix 5000)
* MODBUS
* Siemens
* Omron
* Logix
* Micro800
* Mitsubishi

* ABB ???
* Rockwell Automation ???

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

<a target="_blank" href="https://inductiveautomation.com/ignition/modules">
<img alt="ignition-SoftwareStack-3200x1800.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726660786/ignition-SoftwareStack-3200x1800_llno0r.png"></a>
from <a target="_blank" href="https://assets.inductiveautomation.com/static/images/modules/SoftwareStack-Full@2x.f0b2ebbfd212.png">here</a>


## Ignition Modules

https://inductiveautomation.com/ignition/modules

<!-- img alt="ignition-integrations-1668x1338.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626234/ignition-integrations-1668x1338_gnji26.png">
-->

* <strong>Gateway</strong> server executes modules, provides Launchers, then communicates with clients
Launched from the Gateway:
* <strong>Perspective Designer</strong> is inductiveautomation's HTML5-based design IDE to configure and build projects.
* Sessions are runtimes of the Perspective Module run in a browser.
* Vision clients are a legacy module superceded by Perspective.

<a target="_blank" href="https://inductiveuniversity.com/videos/what-is-ignition/8.1"><img alt="ignition-flow-2070x1304.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626278/ignition-flow-2070x1304_yfsdlh.png"></a>

* Images ???
* Projects
* Tags is how Ignition uniquely identifies each OPC-UA object which communicates with PLCs.
* Database connections use utility code to reach databases using the JDBC (Java Database Communications) protocol. Python programs use a library to mimic how Java programs communicate.

* SFC (Sequential Function Charts) is Ignition's implementation of <a target="_blank" href="https://www.wikiwand.com/en/articles/IEC_61131-3">IEC 61131-3</a> specifications for graphical design used instead of Python. SFCs remain running like Python programs. <a target="_blank" href="https://docs.inductiveautomation.com/docs/8.1/getting-started/modules-overview/core-modules/SFC-module">User Manual</a>
   PROTIP: SFCs

## Reference Docs

https://docs.inductiveautomation.com/docs/8.1/intro
Ignition User Manual

https://account.inductiveautomation.com/

## Dev Build

The current and prior releases (once per month) by QA Engineer <a target="_blank" href="https://www.linkedin.com/in/grossga/">Garth Gross</a> are at:
https://github.com/inductiveautomation/ignition-automation-tools/tags

Notice there is a different version for Ignition (8.1.39) and Perspective (2.1.39).

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


https://www.youtube.com/watch?v=ZkYZ1xTtzsg
Learning to Code Using Ignition!

### Install

The below is based on: https://docs.inductiveautomation.com/docs/8.1/getting-started/quick-start-guide/download-and-install

* <a target="_blank" href="https://www.youtube.com/watch?v=fPCbJSt9CBA">VIDEO</a>: Time-saving hacks

Ignition module <strong>skeletons</strong> work on Windows, Linux, macOS.

VIDEO: <a target="_blank" href="https://www.youtube.com/watch?v=spE6IpOU-2w">MQTT</a> demo project <a target="_blank" href="https://www.youtube.com/watch?v=2ievolmYuw8">on Raspberry Pi with Debian</a>

1. JDK does not need to be installed separately.
2. Install Python.
3. https://inductiveautomation.com/downloads/

   * macOS ignition-8.1.43-macos-64-installer.dmg Sep 17, 2024 was 1,644,383,679 bytes (1.64 GB on disk)
   * Linux  https://www.inductiveuniversity.com/videos/installing-ignition-on-linux/8.1
   * Windows  https://www.inductiveuniversity.com/videos/installing-ignition-on-windows/8.1

   CAUTION: On Windows, the path contains a space, so:<br />
   <tt>C:\Program Files\Inductive Automation\ignition</tt>

1. Installation Location on macOS:

   <tt>/usr/local/ignition</tt>

1. Installation Options: Custom (to install additional modules and adjust the default modules to install). Select from the <a href="#Modules">list of modules above</a>.
1. Install
1. Start Ignition Now
1. Uncheck Install Service.

   PROTIP: If on Windows, automatic start-up of the service is controlled at Start > Control Panel > Administrative Tools > Services > Ignition Gateway.

1. Finish and wait for the browser to pop-up.
1. Click "Standard Edition".
1. Click "I have read and agree with the terms and conditions".
1. In "Create a User", make up a Username and Password. Rootme

   PROTIP: <a target="_blank" href="https://inductiveuniversity.com/videos/password-reset-with-gwcmd/8.1">Password Reset with GWCMD</a> using <tt>./gwcmd.sh -p</tt> which restarts Gateway for new user/password entry.

1. Configure Ports Defaults:
   * HTTP Port: 8088
   * HTTPS Port: 8043
   * Gateway Network Port: 8060
1. Finish Setup.

   <a target="_blank" href="https://docs.inductiveautomation.com/docs/8.1/getting-started/quick-start-guide/launch-the-gateway">User Manual</a>

   ### Gateway LogIn & Status

1. Start Gateway. Wait.
1. Click "Yes, Enable Quick Start" for

   http://localhost:8088/web/home?3

1. Click the "Status" icon on the left menu.
1. Click "Log In".
1. Type the (Admin) Username you specified during install.


   ### Designer Launcher install

1. Get/Download the Designer Launcher,
1. Click blue "Download for macOS" : file designerlauncher.dmg.
1. Do not click green "Activate Ignition" unless you have purchased a license.
1. Switch to the macOS Finder.
1. Locate the file and double-click to open it.
1. Drag "Designer Launcher" and drop on the Applications folder icon.
1. Switch to Finder and right-click to Move it to "Move to Trash".
1. Navigate within the <tt>$HOME/Applications</tt> folder. Click the "Name" heading to sort by that. Type D.
   Notice its "Date Modified" is the date created, not the current date installed.

1. Double-click on "Designer Launcher" icon.
1. Click "Open" to confirm "downloaded from the internet".

1. Switch to click the red X at the upper-left to dismiss it.
1. Scroll down to Locations section and click the unmount icon to "Designer Launcher".

   ### Launch the Gateway


   ### Designer
   ### Vision Client Launcher
   ### Perspective Workstation
   ### Perspective Session Launcher

   ### Upgrade
   <a target="_blank" href="https://inductiveuniversity.com/videos/installing-or-upgrading-a-module/8.1">VIDEO</a>:
   At the Gateway:
1. Click the cog icon to "Config".
1. Login.
1. Modules

   https://localhost:8088/web/config/system.modules?5

   PROTIP: Module file names end with ".modi".

   The module is automatically signed with a certificate.

   QUESTION: Is there automatic upgrade of security patches?

   PROTIP: Upgrade of Ignition to several (not just the most recent) version.

1. Click "Backup/Restore" to Download Backup.
1. Some licenses do not permit major upgrade.

   ### Connect to a Device

   <a target="_blank" href="https://docs.inductiveautomation.com/docs/8.1/getting-started/quick-start-guide/connect-to-a-device">User Manual</a>

   <a target="_blank" href="https://docs.inductiveautomation.com/docs/8.1/ignition-modules/opc-ua/opc-ua-drivers/programmable-device-simulator">Programmable Device Simulator</a>

   ### Connect to a Database
   ### Open the Designer
   ### Create Tags
   ### Add History to Tags
   ### Add Components - Perspective Session

1. Switch to the "My Designers" dialog.

1. https://docs.inductiveautomation.com/docs/8.1/getting-started/quick-start-guide

6. <a target="_blank" href="https://www.inductiveuniversity.com/videos/installing-ignition-on-mac/8.1">VIDEO</a>: Select the "Maker Edition", a "free, limited version of Ignition for personal, non-commercial projects.

7. Create a User
8. Start Gateway.
9. Don't save password on browser.
1. "Get Started" web page on Localhost.

1. Download Launchers.
1. Create a project.
1. Download add-on extensions.

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

   <ul>OEE = Availability  x  Performance  x Quality</ul>

Because it exposes what actions to take against the underlying causes of lost productivity, the calculation above is preferred over calculation of OEE using the ratio of Fully Productive Time to Planned Production Time:

   <ul>OEE = (Good Count × Ideal Cycle Time) / Planned Production Time</ul>

Fully Productive Time is just another way of saying manufacturing only Good Parts as fast as possible (Ideal Cycle Time) with no Stop Time.

Schedule Loss is not part of OEE but is part of <a target="_blank" href="https://www.oee.com/teep/">TEEP (Total Effective Equipment Performance)</a>.

## Feedback Control Algorithms

To maintain a process variable such as ambiant temperature at a Setpoint, a PLC controller activates a heater or cooler based on sensor readings, in a feedback control loop. Other variables include regulating pressure and flow rate.
<a target="_blank" href="https://www.youtube.com/watch?v=IAhxYsMi4e8&t=1m47s">VIDEO</a> by <a target="_blank" href="https://www.realpars.com/">realpars.com</a>:
<img alt="plc-pid-feedback.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726664501/plc-pid-feedback_a5kvtj.png">

To dampen wild swings in actions and values, PLCs used the <a target="_blank" href="https://www.youtube.com/watch?v=sFqFrmMJ-sg&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl">PID (Proportional Integral Derivative)</a> approach
<a target="_blank" href="https://www.youtube.com/watch?v=lRZ4NT5DRk8&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl&index=7&t=53s">VIDEO</a>:
<a target="_blank" href="https://www.youtube.com/watch?v=_VzHpLjKeZ8">VIDEO</a>

Other approaches:
* Fuzzy Logic Control (FLC)
* <a target="_blank" href="https://www.youtube.com/watch?v=lRZ4NT5DRk8&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl&index=7&t=7m10s">Model Predictive Control (MPC)</a> works by using an algorithm based on a mathematical model to predict the behavior of process variables.
* Adaptive Control
* Neural Network Control


## Add-on packages

<a target="_blank" href="https://inductiveautomation.com/exchange/">inductiveautomation's Exchange</a> website provides (at time of writing) 442 add-ons for download.

Look for "Maker Edition Compatible" if you're running that.

A sample package is a zip file containing a README.md and MANIFEST file containing this example:
```
{
	"$schema": "http://json-schema.org/draft-07/schema#",
	"name": "Next Generation Dashboard",
	"ignition-version": "8.1.10",
	"version": "1.0.0",
	"modules": [{"name": "com.inductiveautomation.perspective"},{"name": "com.inductiveautomation.webdev"},{"name": "com.inductiveautomation.opcua"}]
}
```
Notice the file specifies the specific Ignition version.

The modules listed correspond to the folders at root:
* com.inductiveautomation.perspective
* com.inductiveautomation.vision is the older tech
* com.inductiveautomation.webdev

* com.inductiveautomation.opcua does not exist as a folder but mentioned in the project.json ???

In the Other folder are icons.zip and themes.zip.

The Projects folder holds a fonts.zip containing font files.

The core of the package is a file such as:

   <ul>dashboardKpi_20210922144324.zip<</ul>

Numbers in the file name is its date of creation.

The sample <tt>project.json</tt>
```
{
  "title": "KPI Dashboard",
  "description": "",
  "parent": "",
  "enabled": true,
  "inheritable": false
}
```
The ignition folder contains:
* designer-properties
* event-scripts
* global-props
* named-query
* script-python

The <tt>script-python</tt> contains folders:
* dashboard
* db
* KPIFramework/kpi
* tags

In each folder above is a resource.json such as:
```
{
  "scope": "A",
  "version": 1,
  "restricted": false,
  "overridable": true,
  "files": [
    "code.py"
  ],
  "attributes": {
    "lastModification": {
      "actor": "admin",
      "timestamp": "2021-09-21T21:51:47Z"
    },
    "lastModificationSignature": "bea61bf53cccfb3d2cb5e341bef1278049bd8ac4f44dc4b78bd948029b634872"
  }
}
```
The Signature is created during the build based on a Private key.

Right below copy and paste the icons from the ha_icons.svg file and save. Now we have new icons to play around with. The dashboard requires a few of these icons for the provided example.

Next, you need to import the project backup and tags provided by the resource. You can easily import both in the Ignition Designer. The tags are required for the example dashboard that is provided to show information.

Project backup and restoring from a project backup is referred to as Project Export and Import. Projects are exported individually, and only include project-specific elements visible in the Project Browser in the Ignition Designer. They do not include Gateway resources, like database connections, Tag Providers, Tags, and images. The exported file (.zip or .proj ) is used to restore / import a project.

    .zip = Ignition 8+
    ..proj = Ignition 7+

There are two primary ways to export and import a project:

    Gateway Webpage - exports and imports the entire project.
    Designer - exports and imports only those resources that are selected.

When you restore / import a project from an exported file in the Gateway Webpage, it will be merged into your existing Gateway. The import is located in:

Ignition Gateway > Configuration > System > Projects > Import Project Link

If there is a naming collision, you have the option of renaming the project or overwriting the project. Project exports can also be restored / imported in the Designer. Once the Designer is opened you can choose File > Import from the menu. This will even allow you to select which parts of the project import you want to include and will merge them into the currently open project.


The main view is Dashboard/Carousel. You can create a page (in Perspective page configuration) that uses that main view. You can easily configure the dashboard to modify the widgets and tags they point to. Simply open up the Carousel view and take a look at the Carousel component's "views" property.

Basically, the carousel can have multiple pages since views is an array. Each page uses the Dashboard/Dashboard view. The parameters dictate the widgets shown. The resource provides a set of standard widgets. You can easily create your own. The Standard widget is the most used. There are a ton of configuration options. Play around with the parameters to get an idea. If you want to see what parameters are possible, check out the widget view.


Ignition can export and import Tag configurations to and from the JSON (JavaScript Object Notation) file format. You can import XML (Extensible Markup Language) or CSV (Comma Separated Value) file formats as well, but Ignition will convert them to JSON format. Tag exports are imported in the Designer. Once the Designer is opened you can click on the import button in the Tag Browser panel.

<hr />

## Diagnostic Bundle

1. Unzip

   Folders in the bundle:

   * gateway-info.json
   * gateway-network-live-diagram.json
   * jetty-server-dump.txt
   * metrics.idb
   * system_logs.idb
   * thread-dump.json
   * wrapper.log