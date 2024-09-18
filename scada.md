scada.md

## InductiveAutomation.com

https://www.linkedin.com/in/traviscox-automation/
in Folsom, CA (Near Sacramento)
800-266-7798

People:
* https://www.linkedin.com/in/traviscox-automation/

Competitors include:
* SAP
* Oracle
* Allen-Bradley

## Products

<strong>"Perspective"</strong> is Induction's design IDE.

<strong>"Ignition"</strong> is Induction's web server product for
* HMI (Human-Machine Interface) to PLCs (Programmable Logic Controllers) IIoT
* SCADA (Supervisory Control and Data Acquisition), and
* MES (Manufacturing Execution System) to track material movement through the shop floor.

It runs under Docker container.
* 58 min course "Ignition with Docker" is a guided walkthrough of Ignition with Docker

Communicates using the MQTT with central administration of permissions.

Ignition uses JDBC to store and retrieve data in SQL databases which use compression algorithms (called "Historian").

Ignition's Reporting Engine creates dynamic PDF files.

Ignition's Alarming system sends out notifications via voice, SMS, email.


<img alt="ignition-integrations-1668x1338.png" alt="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626234/ignition-integrations-1668x1338_gnji26.png">

Ignition's components:

<img alt="ignition-flow-2070x1304.png" alt="https://res.cloudinary.com/dcajqrroq/image/upload/v1726626278/ignition-flow-2070x1304_yfsdlh.png">

* <strong>Gateway</strong> server executes modules, provides Launchers, then communicates with clients
Launched from the Gateway:
* Perspective Designer to configure and build projects
* Clients (runtimes of local Vision modules)
* Sessions are runtimes of the Perspective Module run in a browser.

## Reference Docs

https://docs.inductiveautomation.com/docs/8.1/intro
Ignition User Manual

## Tutorials

https://inductiveuniversity.com/

1. Begin with first lesson at https://inductiveuniversity.com/courses/ignition/ignition-overview/8.1

   https://inductiveuniversity.com/videos/what-is-ignition/8.1

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

https://inductiveautomation.com/downloads/

* macOS ignition-8.1.43-macos-64-installer.dmg Sep 17, 2024 was 1,644,383,679 bytes (1.64 GB on disk)

https://github.com/inductiveautomation
* https://github.com/inductiveautomation/ignition-module-tools
* https://github.com/inductiveautomation/ignition-sdk-training uses Gradle processing Java and Kotlin


https://github.com/orgs/ignition-devs/repositories?type=all

## OPC

Real-time OPC (Open Process Control) servers.

https://www.wikiwand.com/en/articles/Open_Platform_Communications

<a target="_blank" href="https://www.opcdatahub.com/WhatIsOPC.html#note1">Object Linking and Embedding OPC</a>

https://www.udemy.com/course/mastering-opc-ole-for-process-control/