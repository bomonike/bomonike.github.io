scada.md

This is at <a target="_blank" href="https://bomonike.github.io/scada">https://bomonike.github.io/scada</a> from code at <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/scada.md">https://github.com/bomonike/bomonike.github.io/blob/master/scada.md</a>

## InductiveAutomation.com

https://www.linkedin.com/in/traviscox-automation/
in Folsom, CA (Near Sacramento)
800-266-7798

People:
* https://www.linkedin.com/in/traviscox-automation/

Competitors include:
* SAP
* Oracle
* Siemens

## Induction's Product Architecture

<a target="_blank" href="https://inductiveuniversity.com/videos/ignition-system-architectures/8.1"><img alt="ignition-basic-arch-2726x1694.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726629808/ignition-basic-arch-2726x1694_carhxt.png"></a>

Induction Automation provides locally installed (not SaaS) Java-based <strong>"Ignition"</strong> web servers (in Docker containers) to communicate with PLCs (Programmable Logic Controllers) that control industrial equipment.

* 58 min course "Ignition with Docker" is a guided walkthrough of Ignition with Docker

Induction's "Ignition" product enables:
* HMI (Human-Machine Interface) to PLCs (Programmable Logic Controllers) IIoT
* SCADA (Supervisory Control and Data Acquisition), and
* MES (Manufacturing Execution System) to track material movement through the shop floor

Ignition has <a target="_blank" href="https://inductiveuniversity.com/videos/about-ignitions-modules/8.1">drivers for manufacturers</a>:
* Allen-Bradley Logix 5000
* Modbus
* Siemens
* DNP3
* Omron

* robots (from ABB, etc?)

Protocols:
* TCP & UDP
* MQTT
* OPC-COM
* OPC-UA
* SECS/GEM
* SMS text notifications

## Scaling with MQTT

<a target="_blank" href="https://inductiveuniversity.com/videos/ignition-system-architectures/8.1"><img alt="ignition-arch-3024x1964.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726629243/ignition-arch-3024x1964_enzi0p.png"></a>

Ignition communicates using the MQTT with central administration of permissions.

Ignition uses JDBC to store and retrieve data in SQL databases which use compression algorithms (called "Historian").

Ignition's Reporting Engine creates dynamic PDF files.

Ignition's Alarming system sends out notifications via voice, SMS, email.


## Customer usage

https://inductiveautomation.com/resources/customerproject

<strong>"Perspective"</strong> is Induction's design IDE.

<img alt="ignition-integrations-1668x1338.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626234/ignition-integrations-1668x1338_gnji26.png">

Ignition's components:

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

Their Ignition module skeletons works on Windows, Linux, macOS.

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

https://github.com/inductiveautomation
* https://github.com/inductiveautomation/ignition-module-tools
* https://github.com/inductiveautomation/ignition-sdk-training uses Gradle processing Java and Kotlin


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