This is at https://bomonike.github.io/openmct

<!-- "v003 + CCSDS agencies :openmct.md"
-->

From the same organization that brought you the first man on the moon,
the Space Station, landers and helicopters on Mars, etc. comes:

<a target="_blank" href="https://github.com/nasa/openmct/tree/master/src/images/favicons"><img align="right" alt="src/images/favicons/favicon-96x96.png" width="96" height="96" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1728842488/openmct-96x96_iqvflp.png"></a><strong>Open MCT (Mission Control Technologies)</strong> was developed at NASA (National Aeronautics and Space Administration) Ames Research Center in collaboration with the Jet Propulsion Laboratory.

Open MCT is among the most popular of NASA's open-source projects at <a target="_blank" href="https://code.nasa.gov/">code.nasa.gov</a>.

"Open MCT is designed to meet the rapidly evolving needs of mission control systems. At NASA, the requirements for Open MCT are being driven by a need to support distributed operations, access to data anywhere, data visualization for spacecraft analysis that spans multiple data sources, and flexible reconfiguration to support multiple missions and operator use cases."

## Overall architecture

<img alt="openmct-dataflow.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1728871283/openmct-dataflow_y0fhn2.png">

Open MCT is called "next generation" because it brings together many functions of mission operations so that operators no longer need to switch between different applications to view all data.


## Web Server Tech

Open MCT is a front-end web server display accessed by desktop and mobile devices over the public internet. The server currently runs NodeJs using Vue.js GUI components.

NOTE: As of 24-10-13, the <a target="_blank" href="https://github.com/scottbell/openmct-quickstart?tab=readme-ov-file#diagram">diagram on the openmct-quickstart repo on GitHub</a> for a previous version using Apache, NGINX, and Express.js now deprecated.

<img alt="openmct-docker.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1728871417/openmct-docker_fg5q1c.png">

<img alt="openmct-components.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1728871878/openmct-components_flsu0k.png">


## External Interfaces

Displays are used by spacecraft missions to visualize and analyze telemetry data  from systems such as:
   * YAMCS (Yet Another Mission Control System at https://yamcs.org/ under a GNU Affero GPL license at https://github.com/akhenry/openmct-yamcs), a Java-based open-source mission control system framework developed by Space Applications Services, a Belgian company. It's designed for monitoring and controlling spacecraft, satellites, payloads, ground stations and ground equipment. It supports space industry standards like CCSDS protocols.
   * AIT
   * AMPCS
   * ITOS
   * ROS (Robotic Operating System)
   <br /><br />

Space Standards at <a target="_blank" href="https://www.ccsds.org">CCSDS.org</a> (Consultative Committee for Space Data Systems):

   * CCSDS/OMG XML Telemetric and Command Exchange (XTCE) v1.1 and v1.2
   * CCSDS 133.0-B-2 Space Packet Protocol
   * CCSDS Space Data Link Protocols (AOS/TM/USLP/TC frames)
   * CCSDS 232.1-B-2 Communications Operation Procedure (COP-1)
   * CCSDS File Delivery Protocol (CFDP)
   * CCSDS Space Link Extension (FCLTU/RAF/RCF)

As of February 2021:
CCSDS Member Agencies:
    *  Agenzia Spaziale Italiana (ASI)/Italy.
    *  Canadian Space Agency (CSA)/Canada.
    *  Centre National d’Etudes Spatiales (CNES)/France.
    *  China National Space Administration (CNSA)/People’s Republic of China.
    *  Deutsches Zentrum für Luft- und Raumfahrt (DLR)/Germany.
    *  European Space Agency (ESA)/Europe.
    *  Federal Space Agency (FSA)/Russian Federation.
    *  Instituto Nacional de Pesquisas Espaciais (INPE)/Brazil.
    *  Japan Aerospace Exploration Agency (JAXA)/Japan.
    *  National Aeronautics and Space Administration (NASA)/USA.
    *  UK Space Agency/United Kingdom.
CCSDS Observer Agencies:
    *  Austrian Space Agency (ASA)/Austria.
    *  Belgian Science Policy Office (BELSPO)/Belgium.
    *  Central Research Institute of Machine Building (TsNIIMash)/Russian Federation.
    *  China Satellite Launch and Tracking Control General, Beijing Institute of Tracking and Telecommunications Technology (CLTC/BITTT)/China.
    *  Chinese Academy of Sciences (CAS)/China.
    *  China Academy of Space Technology (CAST)/China.
    *  Commonwealth Scientific and Industrial Research Organization (CSIRO)/Australia.
    *  Danish National Space Center (DNSC)/Denmark.
    *  Departamento de Ciência e Tecnologia Aeroespacial (DCTA)/Brazil.
    *  Electronics and Telecommunications Research Institute (ETRI)/Korea.
    *  European Organization for the Exploitation of Meteorological Satellites (EUMETSAT)/Europe.
    *  European Telecommunications Satellite Organization (EUTELSAT)/Europe.
    *  Geo-Informatics and Space Technology Development Agency (GISTDA)/Thailand.
    *  Hellenic National Space Committee (HNSC)/Greece.
    *  Hellenic Space Agency (HSA)/Greece.
    *  Indian Space Research Organization (ISRO)/India.
    *  Institute of Space Research (IKI)/Russian Federation.
    *  Korea Aerospace Research Institute (KARI)/Korea.
    *  Ministry of Communications (MOC)/Israel.
    *  Mohammed Bin Rashid Space Centre (MBRSC)/United Arab Emirates.
    *  National Institute of Information and Communications Technology (NICT)/Japan.
    *  National Oceanic and Atmospheric Administration (NOAA)/USA.
    *  National Space Agency of the Republic of Kazakhstan (NSARK)/Kazakhstan.
    *  National Space Organization (NSPO)/Chinese Taipei.
    *  Naval Center for Space Technology (NCST)/USA.
    *  Netherlands Space Office (NSO)/The Netherlands.
    *  Research Institute for Particle & Nuclear Physics (KFKI)/Hungary.
    *  Scientific and Technological Research Council of Turkey (TUBITAK)/Turkey.
    *  South African National Space Agency (SANSA)/Republic of South Africa.
    *  Space and Upper Atmosphere Research Commission (SUPARCO)/Pakistan.
    *  Swedish Space Corporation (SSC)/Sweden.
    *  Swiss Space Office (SSO)/Switzerland.
    *  United States Geological Survey (USGS)/USA


## User Groups

Open MCT provides integrated situational awareness, health monitoring and <strong>telemetry</strong> display to many segments of rover mission teams, including operators, instrument specialists and strategic planners.

Open MCT is currently <a target="_blank" href="https://nasa.github.io/openmct/whos-using-open-mct/">in use supporting multiple missions at NASA including</a>:

    * <a target="_blank" href="https://www.jpl.nasa.gov/cubesat/missions/asteria.php">ASTERIA</a>,
    * <a target="_blank" href="https://coldatomlab.jpl.nasa.gov/">Cold Atom Laboratory</a> operating on the ISS, and
    * <a target="_blank" href="https://www.jpl.nasa.gov/cubesat/missions/marco.php">Mars Cube One</a>, which played an integral role supporting the InSight lander on Mars.

"VISTA" is a multi-mission operations system built with Open MCT.

## Demo

There was a demo of Mars Science Laboratory dashboard at

https://openmct-demo.herokuapp.com

A snapshot recoverd from The Mars Weather Display:
<img alt="OpenMCT-demo-weather.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1728870429/OpenMCT-demo-weather_xwwzvb.webp">
On the bottom is the selection of timeframe shown in charts.<br />
On the left bottom is a list of "My items"
   * Rover Operator Display Layout
   * Mars Weather Display Layout
   * Edit Display Layout Example
   * Planning
   * Real-time Plots
Above it are details of each item.<br />
Lines in the middle-right:
   * "Air Temperature" (Min. in green and Max. in turquoise)
   * "Ground Temperature"
   * "Atmospheric Pressure" which osillates between 722 and 935
On the upper-right is a map "Where is Curiosity" with track trace labeled at each waypoint.<br />
On the lower-right are details of "Atmospheric Pressure" for each time stamp.<br />
On the far-right is the "INSPECTION" pane to display "PROPERTIES".<br />

Possibly
<img alt="openmct-small.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1728869690/openmct-small_mjnss5.png">
"announcement" on the middle-bottom indicate that the dashboard is
part of a pretend universe of various science fiction fandoms.

On the left, lines over the same time span:
* "online" hours?
* "Station Power" load, with low and high bars
* "Temperature"
In the middle:
* "Internet" kdg_rx/tx & ipb_rx/tx (receive & transmit)
* "Humidity" in workshop, welbenbau, mainhall
On the right:
* "open" at nominal 0 with occassional spikes to 1.0.
* "Replicator Status"
* "vacuum" from -1 to 2, averaging 0.
* "all motion sensors" (from zero) in mainhall, workshop, wellerbau


## Generalized Usage

Open MCT was open-sourced for generalizable use for building applications for planning, operation, and analysis of ANY system producing telemetry data. Interfaces have been built for:

* <a target="_blank" href="https://www.youtube.com/watch?v=4MYQjq1y41A">VIDEO</a>: Build a space program, construct powerful spacecraft, and navigate expansive celestial bodies as you explore cosmic mysteries. <a target="_blank" href="https://www.kerbalspaceprogram.com/games-kerbal-space-program-2">Version 2</a> of the Kerbal Space Program (KSP) non-violent cartoon adventure game plays <a target="_blank" href="https://store.steampowered.com/app/954850/Kerbal_Space_Program_2/">on Steam</a>. Version 1 plays on Windows 10.

* ROS (Robotic Operating System)

* PROTIP: I'm working on sending data from <strong>micro:bit</stong>

Open MCT is a next-generation mission operations data visualization framework. Web-based, for desktop and mobile.

Open MCT could be adapted <a target="_blank" href="https://nasa.github.io/openmct/about-open-mct/">for applications such as</a>:

   * Monitoring of IOT devices
   * Drones
   * Cubesats
   * Robotics
   * High altitude balloons
   * Electronic health monitoring
   * Computer and network performance monitoring
   * Enterprise data visualization
   * Process control monitoring
   <br /><br />


## Plugins

Plugins are bundles of software components used to extend Open MCT by defining new capabilities such as telemetry sources, object providers or new telemetry visualizations. Some Open MCT plugins are packaged along with Open MCT, with others are available for you to download from
https://nasa.github.io/openmct/plugins/

    *  Views and Visualizations
    *  Telemetry Adapters
    *  Object Types
    *  Object Providers
    *  Actions
    *  Toolbars
    *  User Notifications
    *  Indicators
    *  Many others...

Configure at:
https://github.com/nasa/openmct/blob/master/index.html

Create your own Plugin at:
https://nasa.github.io/openmct/plugins-documentation/


## Alternatives

* Grafana was created for displaying Kubernetes
* Ignition from Inductive is part of an enterprise with links to SAP, specifically for Process Control of IIoT (Industrial Internet of Things)
* rocket.watch at the European Space Agency ERASMUS Center is no longer at    http://rocket.watch
* <a target="_blank" href="https://github.com/nasa/openmct/discussions/5076">COSMOS</a> for  software service telemetry


## Social Interactions

https://github.com/nasa/openmct/discussions

https://openplanetary.discourse.group/

https://news.ycombinator.com/item?id=40077048
   * Open Source Mission Control Software from NASA - https://news.ycombinator.com/item?id=25950487 - Jan 2021 (48 comments)
   * Open Source Mission Control Software for Web, Desktop and Mobile – By NASA - https://news.ycombinator.com/item?id=18864485 - Jan 2019 (1 comment)
   * A web-based mission control framework by NASA - https://news.ycombinator.com/item?id=18429909 - Nov 2018 (67 comments)
   * Integrate Kerbal Space Program Telemetry Data into NASA's Open MCT - https://news.ycombinator.com/item?id=12411333 - Sept 2016 (1 comment)
   * NASA's Web-Based Mission Control Framework - Open Sourced on GitHub - https://news.ycombinator.com/item?id=12369073 - Aug 2016 (2 comments)
   * Open MCT – Open-Source Mission Control Software - https://news.ycombinator.com/item?id=12339966 - Aug 2016 (14 comments)
   * NASA funding line called Tipping Point used to commercialize NASA tech

Kerbal Space https://github.com/hudsonfoo/kerbal-openmct
https://store.privatedivision.com/game/buy-kerbal-space-program-ksp#compare-editions


## Try it Out!

https://nasa.github.io/openmct/


## Install

Here are my modifications piercing together several documents:
    * <a target="_blank" href="https://github.com/nasa/openmct-tutorial">https://github.com/nasa/openmct-tutorial</a>
    * https://github.com/nasa/openmct/
    * https://ntrs.nasa.gov/api/citations/20150021313/downloads/20150021313.pdf

<hr />

1. Install Docker and Docker Compose.

   QUESTION: Who keeps Docker images up to date and how long is the lag?

1. PROTIP: Do not install the latest using <tt>brew install nodejs</tt> as instructed in the tutorial, which installs the absolute latest version:

1. Install the Node Version Manager (nvm) to install a specific version and then switch to it. On macOS:
   ```
   brew install nvm
   ```
   FIXME: This did not work on my macOS.

1. Follow caveat instructions to onfigure your .bash_profile or .zshrc.
1. Exit the Terminal and restart.

1. Identify the version of NodeJs Open MCT currently supports by viewing:

   https://github.com/nasa/openmct.git

   Specifying the back version of Nodejs avoids this error upon <tt>npm install</tt>:

   ```
   npm error notsup Required: {"node":">=18.14.2 <22"}
   npm error notsup Actual:   {"npm":"10.8.3","node":"v22.9.0"}
   ```
   That means the latest release for <strong>version 21</strong>.

   CAUTION: Regularly update your Node.js version to take advantage of the latest features, security patches, and performance improvements. It’s recommended to stay up to date with the LTS (Long-Term Support) versions if stability is a priority.

1. Pick the specific release at:
   https://nodejs.org/en/about/previous-releases

   In a Terminal, define the specific version of NodeJs:
   ```
   NODE_VER=21.7.3
   echo "${NODE_VER}"
   ```

1. PROTIP: Brew normally enables install of back versions using a command such as:
   ```
   brew install node@21
   ```
   However, as of 24-10-13, there is " No available formula with the name "node@21".

   So the manual fall-back approach is all of the following:

   So we can try to install a specific version of NodeJs using the command nvm install:
   ```
   nvm install "${NODE_VER}"
   ```

   Then switch to that version using the command:
   ```
   nvm use "$NODE_VER"
   ```

1. click "Releases" on the same line as <strong>v21.7.3</strong> dated "2024-04-10" at

   <a target="_blank" href="https://nodejs.org/download/release/v21.7.3/">https://nodejs.org/download/release/v21.7.3/</a>

1. Replace "X.X.X" with the actual version number you want, click to download the link such as,<br />on macOS:
   ```
   "https://nodejs.org/download/release/v${NODE_VER}/node-v${NODE_VER}-darwin-arm64.tar.gz"
   ```
   on Linux:
   ```
   "https://nodejs.org/download/release/v${NODE_VER}/node-v${NODE_VER}-linux-arm64.tar.gz"
   ```
1. Switch to a CLI Terminal and navigate to the Downloads folder:
   ```
   cd ~/Downloads
   ```
1. Verify the download (167_229_440 bytes):
   ```
   ls -al "node-v${NODE_VER}-darwin-arm64.tar"
   ```
1. Extract the contents of the .tar.gz file:
   ```
   tar -xzf "node-v${NODE_VER}-darwin-arm64.tar"
   ```
   No response is a good response.
1. Verify:
   ```
   ls -al "node-v${NODE_VER}-darwin-arm64"
   ```
1. Move.<br />If on ARM64 machine:
   ```
   sudo mv "node-v${NODE_VER}-darwin-arm64" /usr/local/node
   ```
   If on Intel AMD64 machine:
   ```
   sudo mv "node-v${NODE_VER}-darwin-amd64" /usr/local/node
   ```
   Type the Password when prompted.

1. Verify:
   ```
   ls -al /usr/local/node/bin/node
   ```
   Expect to see (for v21.7.3):
   ```
   -rwxr-xr-x@ 1 johndoe  staff  100725664 Apr 10  2024 node
   ```

1. Add Node.js to your PATH by editing your shell configuration file.<br />If you are using ~/.zshrc
   ```
   echo 'export PATH="/usr/local/node/bin:$PATH"' >> ~/.zshrc
   ```
   Alternately, on ~/.bash_profile:
   ```
   echo 'export PATH="/usr/local/node/bin:$PATH"' >> ~/.bash_profile
   ```
1. FIXME: If you get permission error on macOS:

   xattr -d com.apple.quarantine  /usr/local/node/bin/node

1. Verify the current Node.js version:
   ```
   node -v
   ```

   ### Apple Malicious Software

   To the pop-up "“node” can’t be opened because Apple cannot check it for malicious software."

1. Click "OK"
1. Click the Apple icon to go to System Preferences > Security & Privacy > General tab.
1. Look for a message about the blocked application and click "Open Anyway" or "Allow".
1. Right-click to Open

   Instead of double-clicking, right-click (or Control-click) on the application and select "Open".

   You'll see a security warning, but you'll have the option to open the app anyway.

   For developers or advanced users, you can temporarily disable Gatekeeper using Terminal commands.
   However, this is not recommended for most users as it reduces system security.



1. PROTIP: Do not specify <tt>\-\-depth 1</tt> to limit branches downloaded because the tutorial addresses a specific back branch.

   ```
   git clone https://github.com/nasa/openmct.git
   cd openmct
   npm install
   ```

1. Start the dev server process running locally on your laptop:

   ```
   npm start
   ```
   PROTIP: Production servers have a different procedure.

1. Docker Compose ???

   https://github.com/scottbell/openmct-quickstart/blob/main/openmct/Dockerfile

1. View the GUI using its default port with no SSL certificate:

   <a target="_blank" href="http://localhost:8080">http://localhost:8040</a>

1. Enter the username/password testuser/NasaIsCool!

   Hosted websites are available at the following URLs:

   The OpenMCT web application is served from http://localhost:8040

   openmct builds the Open MCT web application into a shared volume (and quits).

   ## Web server status

   The Apache HTTP server used to serve the Open MCT web application, and to proxy requests to YAMCS and CouchDB.

   The Apache server status is served from

   http://localhost:8040/server-status

   ## Database

   The CouchDB web application is served from

   http://localhost:8040/couchdb/_utils

   (with username admin and password password)

   ## Simulator

   A simple python simulator that generates telemetry data for YAMCS to serve.

   ## Retrieve Telemetry Data

   Telemetry is retrieved from the YAMCS telemetry & commanding server ???

   http://localhost:8040/yamcs


1. Configuring Persistence
1. Run a Web Server
1. Viewing in Browser

To do List
* Step 1. Create the Plugin
* Step 2. Add a Domain Object Type
* Step 3. Add a View
* Step 4. Add a Controller
* Step 5. Support Editing
* Step 6. Customizing Look and Feel

Bar Graph
* Step 1. Define the View
* Step 2. Add a Controller
* Step 3. Using Telemetry Data
* Step 4. View Configuration

Telemetry Adapter
* Step 0. Expose Your Telemetry
* Step 1. Add a Top level Object
* Step 2. Expose the Telemetry Dictionary
* Step 3. Historical Telemetry
* Step 4. Real time Telemetry