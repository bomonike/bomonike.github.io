---
layout: post
date: "2023-06-05"
lastchange: "v011 + from wilsonmar :neo4j.md"
file: "neo4j"
title: "Neo4j graph database introduction"
excerpt: "Don't use this if you're fond of SQL joins and static schemas"
tags: [Database, Mac]
image:
# feature: pic white robots woman 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622167/45abd918-0585-11e6-8537-a58e0b55e3ec.jpg
  credit: Cyberconstruct.be
  creditlink: http://cyberconstruct.be/2015/02/digital-job-crafting/
comments: true
created: "2019-12-29"
---
<a target="_blank" href="https://bomonike.github.io/neo4j"><img align="right" width="100" height="100" alt="neo4j.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/neo4j.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

<!-- Neo4j has grown up a lot. I had once abandoned it because I found the product to be too difficult to figure out for me, with not enough support nor documentation. The killer for me is not being able to get pass the password on initial use.
-->

{% include whatever.html %}

This tutorial is a hands-on introduction to <a href="#Install">install Neo4J</a>, <a href="#Configure">configure</a>, <a href="#CreateDB">create a database from commands</a>,<a href="LoadData">load data</a>, etc. Rather than innudating you with facts and conceptual words to remember, commentary here is provided after you take some action, step-by-step. Like a guided walking tour. So you learn by doing. "PROTIP" flags unique or important information.

The contribution of this article is a maticulously sequenced presentation that curates a concise yet deep tidbits from the many resources about this topic.

Before reading this, read <a target="_blank" href="https://wilsonmar.github.io/graph-databases">my notes on graph databases</a>.

The great thing about Neo4j is that it can provide future flexibility with multi-platform data access without being locked in. This means if you want to use a different language (such as C#) next year, you can access the same database (using a plugin for that language). If your data volume scales massively, you can easily switch to a cloud-based Neo4j database. That's not the case with Python data dictionaries. If data expands, you would need to either need to get a larger machine or rewrite to access databases.

There are several ways to use Neo4j:

* <a href="https://neo4j.com/sandbox-v2/">Online Sandbox</a> showcasing <a href="#Bloom">Bloom visualization</a> and other use cases

* <a href="#DockerInstall">Install Docker image of server</a>
* <a href="#Install">Install on a Mac</a> using Homebrew:
   * Install Desktop using Homebrew
   * Install Neo4j server locally using Homebrew
* <a target="_blank" href="https://neo4j.com/aura/">Neo4j's own Aura cloud offering</a> runs on GCP (Google Cloud Platform).
* Install Neo4j server in an EC2 instance

If you're on Windows, <a target="_blank" href="https://www.linkedin.com/pulse/how-kill-neo4j-soon-you-start-g%C3%A1bor-imre-bata-kov%C3%A1cs/">
   read this</a>.


## Neo4j and its Cypher language

Neo4j is a product from Neo Technology, Inc. since 2007.

<a target="_blank" href="https://www.neo4j.com/">neo4j.com</a>
started as neo4j.org but now Neo4j installers include a Enterprise edition which requires buying a license (unless the application built on top of it is also open-sourced) to unlock limitations, allowing for LDAP role-based and subgraph access control, lock manager, clustering, hot backups of Causal Clustering using Raft protocol, and monitoring. See https://neo4j.com/startup-program/

Flagship customers include<a target="_blank" href="https://db-engines.com/en/system/Neo4j#a35">*</a> Walmart, eBay, Cisco, Citibank, ING, UBS, HP, CenturyLink, Telenor, TomTom, Telia, Comcast, Scripps Interactive Networks, The National Geographic Society, Airbus, Orange, AT&T, Verizon, DHS, US Army, Pitney Bowes, Vanguard, Microsoft, IBM, Thomson Reuters, Amadeus Travel, Caterpillar, Volvo, and many more.   

Neo4j open-sourced (at <a target="_blank" href="https://github.com/neo4j/neo4j">github.com/neo4j/neo4j</a>) their "Cypher" OpenCypher query language in 2015. Among their <a target="_blank" href="https://neo4j.com/docs/">docs</a> is a <a target="_blank" href="https://neo4j.com/docs/cypher-refcard/3.5/">"Refcard" of commands</a> that are <strong>declarative</strong> (the database figures out how to do the fetching).


### Developer Certification

Neo currently sends you a certificate for <strong>free</strong> if you answer 80% of 80-questions in their 60 minute on-line exam (by classmarker.com). It covers these 105 points by subject category:

   * 44 - Cypher syntax, including creation and querying of data
   * 11 - Developer - Developing with Neo4j
   * 35 - Intro 
   * 15 - Modeling (The property graph model)
   <br /><br />

After going through materials below, <a target="_blank" href="https://neo4j.com/graphacademy/neo4j-certification/">sign up and take the exam at neo4j.com/graphacademy/neo4j-certification</a>. At this time, you can take as many tries as you want, so use it to prompt your research.

What about the blue t-shirt?


<hr />

## Visual diagrams and ASCII art

   Neo4j databases can be defined as both visual diagrams and by ASCII art.

   <a target="_blank" href="https://www.youtube.com/watch?v=oRtVdXvtD3o&time=23m50s" title="Mar 14, 2019 by David Allen">[23:50] into VIDEO</a>:<br />
   <a target="_blank" href="https://user-images.githubusercontent.com/300046/69848665-b01f2d80-1248-11ea-8e89-fa5eef226f2e.jpg"><img alt="neo4j-2350-loves-907x427.jpg" src="https://user-images.githubusercontent.com/300046/69848665-b01f2d80-1248-11ea-8e89-fa5eef226f2e.jpg"></a>

   Each node can be labeled (such as entity type "Person"), have an identifier (id), and contain properties (attributes).

   <ul><pre>(graphs)-[:ARE]->(everywhere)</pre>
   </ul>

Its relationships from the movie "Matrix". [13:26]

   <pre>MATCH path = (:Person)-[:ACTED_IN]->(:Movie)
   RETURN path</pre>
<br />
   <tt>MATCH</tt> and <tt>RETURN</tt> are Cypher keywords that perform some action. Ironically, these are in all-caps but can be like "maTch" or "return" (are case-insensitive). However, others are case sensitive.
   
   * <tt>path</tt> is a variable.
   * <tt>:Movie</tt> is a node label.
   * <tt>:ACTED_IN</tt> is a relationship type.

   * Parentheses define <strong>nodes</strong>.

   * Square brackets provide details such as an action verb.

   "->" arrows define one-way relationships between nodes, with <strong>Patterns</strong> drawn by connecting nodes and relationships.


In <a target="_blank" href="https://www.youtube.com/watch?v=qiqLhlG4CkU" title="Mar 23, 2017">
VIDEO: What are Graph Databases and Why should I care?</a>,
Dave Bechberger (@bechbd of <a target="_blank" href="http://graph.experolabs.com/">Expero Labs</a> and <a target="_blank" href="https://www.youtube.com/watch?v=yOYodfN84N4" title="">VIDEO: A Skeptic's Guide to Graph Databases</a>) explains that with Neo4j, one can easilly "travese" a graph with arbitrary hops such as "similar" to identify a recommandation:

![neo4j-lunchbox-hops-866x365-48889](https://user-images.githubusercontent.com/300046/34469032-106f48f0-eed3-11e7-8dbc-780e3dda5a25.jpg)

With Neo4j, one can "travese" a graph with arbitrary hops such as "similar"
without the need to build foreign key joins or bridge tables.

PLUG: Moreover, as more relationships are added in Neo4j, performance is not degraded with joins.


## Sample graph and code in legacy Console

<a target="_blank" href="http://console.neo4j.org/">http://console.neo4j.org</a> 
is a legacy UI that displays a sample graph defined by this Cypher code:

<pre>create (Neo:Crew {name:'Neo'}), (Morpheus:Crew {name: 'Morpheus'}), (Trinity:Crew {name: 'Trinity'}), (Cypher:Crew:Matrix {name: 'Cypher'}), (Smith:Matrix {name: 'Agent Smith'}), (Architect:Matrix {name:'The Architect'}),
(Neo)-[:KNOWS]->(Morpheus), (Neo)-[:LOVES]->(Trinity), (Morpheus)-[:KNOWS]->(Trinity),
(Morpheus)-[:KNOWS]->(Cypher), (Cypher)-[:KNOWS]->(Smith), (Smith)-[:CODED_BY]->(Architect)
</pre>

Note the commas separating commands.

<a target="_blank" href="https://user-images.githubusercontent.com/300046/69890649-de425300-12c4-11ea-9a77-81905f0df86d.png"><img alt="neo4j-matrix-257x236.png" width="257" src="https://user-images.githubusercontent.com/300046/69890649-de425300-12c4-11ea-9a77-81905f0df86d.png"></a>

Query:
<pre>match (n:Crew)-[r:KNOWS*]-(m) where n.name='Neo' return n as Neo,r,m</pre>

Note spaces separating commands.


## Use cases in new Sandbox

1. In a Chrome browser, go to <a target="_blank" href="https://neo4jsandbox.com/">neo4jsandbox.com</a>, which provides built-in guides and sample datasets for popular use cases for a limited time:

   <a name="Bloom"></a>

   ### Bloom visualization

2. Select the <a href="#Bloom">Bloom</a> "springy" UI for Visual Discovery (a good first one to view)

   Neo4j's <a target="_blank" href="https://neo4j.com/bloom/">Bloom visualization</a> is a web GUI that allows "near natural language" filter text to control what is visualized from the database (<a target="_blank" href="https://neo4j.com/docs/#bloom">docs</a>)  

   <a target="_blank" href="https://www.youtube.com/watch?v=_FIrp84K7xE" title="May 4, 2018">VIDEO preview based on the Beers database</a>.

   <a target="_blank" href="https://www.youtube.com/watch?v=9rL8O0lsuDc">Near Natural Language Search in Bloom</a>

   <a target="_blank" href="https://www.youtube.com/playlist?list=PL9Hl4pk2FsvWqH11v_WXVNIgb4iHjqHgs">VIDEOS playlist</a> 

   Different "Perspectives" show different information depending on permissions level.

   <a target="_blank" href="https://www.youtube.com/watch?v=fIjQ1__Z2Ww">VIDEO: Neo4j Bloom Data Visualization for everyone</a>

   <a target="_blank" href="https://www.youtube.com/watch?v=5wluUfomasg">VIDEO: Ontologies in Neo4j: Semantics and Knowledge Graphs</a>



### Parent/Child in Sample Recommendations

In <a target="_blank" href="https://www.youtube.com/watch?v=GekQqFZm7mA&t=7m49s">
VIDEO: Graph Databases Will Change Your Freakin' Life</a> Nov 28, 2016, Ed Finkler (CTO of Cloud SaaS vendor <a target="_blank" href="https://graphstory.com/">GraphStory.com</a>)
   presents this sample graph:<br />
![neo4j-child-of-484x177-27830](https://user-images.githubusercontent.com/300046/34467745-77068856-eeb7-11e7-835c-923f9f673764.jpg)

The arrow in the relationship line points from the "CHILD_OF" in the direction of the parent.
A property of this relationship (named "Created") is when the relationship was established (in "2002").



### Prior Cyber Console Online

Prior to the Sandbox was <a target="_blank" href="http://console.neo4j.org/">http://console.neo4j.org</a>, still available.


### Other Use cases in sandbox

Also on <a target="_blank" href="https://neo4jsandbox.com/">neo4jsandbox.com</a>

   * Spreadsheets Grapher (load Google Sheets)
   * Graph Algorithms
   * Legis Graph? (models US Congress bills, members, votes)

   * Recommendation engines
   * Crime investigation uses a <a target="_blank" href="https://guides.neo4j.com/sandbox/pole/index.html">"POLE" model (Persons, Objects, Locations, Events)</a> applicable to most forensics
   * Sports (Women's World Cup 2019)

   * Paradise Papers by ICIJ (offshore account info leaked) <a target="_blank" href="https://www.youtube.com/watch?v=2ZzGMzitNgo" title="Nov 7, 2018 [23:06]by CEO Emil Eifrem">VIDEO: "Graph databases: The best kept secret for effective AI"</a>
   * Russian Twitter Trolls
   * Twitter (analysis)
   * Trumpworld (from Buzzfeed)

   * Conference (GraphConnect 2018 schedule)
   * Network/IT management
   
   * Blank sandbox
   * Neo4j 3.3
   * Neo4j 3.4
   * Neo4j 3.5.3
   <br /><br />

Additional use cases from <a target="_blank" href="https://www.youtube.com/watch?v=lb90EBfAj0o">VIDEO: "Neo4j Top Use Cases"</a>, etc:

   * Geography (Euler's 7 bridges of Kunisberg)
   * Internet of Things(IoT)
   * fraud detection, 
   * Artificial Intelligence 
   * Knowledge graph
   * Centrality and Clustering
   * Master data
   <br /><br />

<a name="SampleDBs"></a>

   * <a target="_blank" href="https://www.youtube.com/watch?v=78r0MgH0u0w&time=38m45s" title="Mar 25, 2015">Episodes of Dr. Who</a>, mentioned by Ian Robertson, Neo4j Lead Engineer. 


<hr />

<a name="Install"></a>

<a name="DockerInstall"></a>

## Docker Install

   PROTIP: Alternately, rather than doing the above by hand,
   I recommend that you create and store in GitHub a shell script that does the above, then execute it a single command. 

1. Create or navigate to an account folder, such as:

   <pre>~/gits/$GITHUB_USER</pre>

1. Clone the whole repo, which creates the repo's folder,

   <pre>git clone https://github.com/wilsonmar/pyneo.git
   cd pyneo
   </pre>

1. Set permissions, then run <a target="_blank" href="https://github.com/wilsonmar/pyneo/blob/master/neo4j-docker.sh">neo4j-docker.sh cloned from GitHub</a>:

   <pre><strong>chmod +x neo4j-docker.sh
   ./neo4j-docker.sh
   </strong></pre>

1. Set permissions, then run it:

   <pre><strong>chmod +x neo4j-docker.sh
   ./neo4j-docker.sh -a -v
   </strong></pre>

   `-a` actually runs the docker run command.

1. When you see this, you're within the Docker container:

   <pre>root@db39751a2f11:/var/lib/neo4j#</pre>

   Optionally, you can exit the script here by typing <strong>exit</strong>.

1. Set permissions, then run Neo4j's Cyhper shell:

   <pre><strong>cypher-shell -u neo4j -p test
   </strong></pre>

1. Type in Neo4j Cypher commands as described below.

   Optionally, you can exit here by typing <strong>:exit</strong>,
   the exit the Docker container with <strong>exit</strong>.

<hr />

Alternately, there is a Docker image at <a target="_blank" href="https://hub.docker.com/_/neo4j">https://hub.docker.com/_/neo4j</a>

   <pre>docker pull neo4j</pre>




## Install on Mac using Homebrew

   PROTIP: Its better to install on you local laptop, which does not expire, as <a href="#use-cases-in-new-sandbox"> Sandbox instances</a> do after 10 days.

   PROTIP: If you're installing on your laptop, I recommend use of Homebrew for its ease-of-use, even though its version can be behind the official website.

1. In a Terminal:

   ### Pre-requsite Java

1. Install pre-requisite AdoptOpenJDK 8 with Homebrew Cask:

   PROTIP: Neo4j is multi-platform because it is written in Java.

   <pre><strong>brew install --cask adoptopenjdk8
   </strong></pre>

   Response:

   <pre>==> Tapping homebrew/cask-versions
Cloning into '/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask-versions'...
remote: Enumerating objects: 191, done.
remote: Counting objects: 100% (191/191), done.
remote: Compressing objects: 100% (188/188), done.
remote: Total 191 (delta 13), reused 39 (delta 0), pack-reused 0
Receiving objects: 100% (191/191), 82.30 KiB | 4.84 MiB/s, done.
Resolving deltas: 100% (13/13), done.
Tapped 160 casks (208 files, 321.3KB).
==> Downloading https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/downl
==> Downloading from https://github-production-release-asset-2e65be.s3.amazonaws
######################################################################## 100.0%
==> Verifying SHA-256 checksum for Cask 'adoptopenjdk8'.
==> Installing Cask adoptopenjdk8
==> Running installer for adoptopenjdk8; your password may be necessary.
==> Package installers may write to any location; options such as --appdir are i
Password:
installer: Package name is AdoptOpenJDK
installer: Installing at base path /
installer: The install was successful.
🍺  adoptopenjdk8 was successfully installed!
   </pre>

1. Verify:

   <pre><strong>java -version
   </strong></pre>

   Troubleshoot if you don't see:

   <pre>openjdk version "1.8.0_232"
OpenJDK Runtime Environment (AdoptOpenJDK)(build 1.8.0_232-b09)
OpenJDK 64-Bit Server VM (AdoptOpenJDK)(build 25.232-b09, mixed mode)
   </pre>

   ### To avoid Desktop database creation error
   
   Using Mac Finder:
   
1. Navigate to the directory where the jre is installed, in my case it was in:
C:\Program Files (x86)\Java\jre1.8.0_201\bin
2 - Within this directory create a folder called server
3 - Still in the bin directory, go to the client directory
4 - Copy all content from the client folder into the sever folder
5 - Restart Neo4J Desktop as administrator
6 - Try again to create the database



   ### Install server

1. From any folder:

   <pre><strong>brew search neo4j
   </strong></pre>

   The response shows that there is both a cask (UI) and command-line neo4j avialable:

   <pre>==> Formulae
neo4j
==> Casks
neo4j</pre>

   ### Cask install Desktop on Mac

1. From any folder:

   <pre><strong>brew cask info neo4j
   </strong></pre>

   <pre>neo4j: 1.2.3
https://neo4j.com/download/
Not installed
From: https://github.com/Homebrew/homebrew-cask/blob/master/Casks/neo4j.rb
==> Name
Neo4j Desktop
==> Artifacts
Neo4j Desktop.app (App)
   </pre>

1. Install the latest version:

   <pre><strong>brew install --cask neo4j
   </strong></pre>

   <pre>Updating Homebrew...
==> Downloading https://neo4j.com/artifact.php?name=neo4j-desktop-offline-1.2.3.
######################################################################## 100.0%
==> Verifying SHA-256 checksum for Cask 'neo4j'.
==> Installing Cask neo4j
==> Purging files for version 1.2.3 of Cask neo4j
   </pre>

1. In the Mac's Finder app, navigate to your <tt>/Applications</tt> folder. Scroll to see "Neo4j Desktop".

   PROTIP: Here is where you'll remove the program by right-clicking and selecting "Move to Trash".

   Alternately, pinch 4 fingers together on the Mac's Touchpad to swipe until you see the Neo4j logo.

1. Click on the logo. You should see this:

   ![neo4j-desktop-797x599](https://user-images.githubusercontent.com/300046/71557591-5f485380-2a05-11ea-93ec-ffc2c12bf945.png)
   


   ### Enable offline mode

1. Click the "gear" icon on the left menu.
1. Check "Enable offline mode.

   ### Define Graph database

1. Click the "Graph" panel.
1. Click "Create a Local Graph".
1. Click "Graph" next to the database "sandwich" icon.
1. Replace "Graph" with "Dr.Who" or other name for <a href="#SampleDBs">sample database</a>.
1. Click in the Set Pasword field and type a password ("password").
1. Click "Create".

   ### Browser

1. Click "Neo4j Browser" for a pop-up dialog:

   ![neo4j-desktop-browser-conn-failed-674x436](https://user-images.githubusercontent.com/300046/71558386-fa462b00-2a0f-11ea-9492-79cd02aaf825.png)

1. Click the documentation icon for a list of Documents to read:

   ![neo4j-desktop-docs-265x576](https://user-images.githubusercontent.com/300046/71558457-e64ef900-2a10-11ea-9824-3a942e5318b4.png)

1. Next, <a href="#AfterDesktopInstall">work with databases</a>.


<a name="DesktopInstall"></a>

### Install Enterprise Desktop GUI

   Alternately:

1. <a target="_blank" href="https://neo4j.com/download/">https://neo4j.com/download</a>
2. Select Save file such as neo4j-desktop-offline-1.2.3.dmg.
3. From Finder, invoke the installer.
4. Authorize the Desktop App by copying and pasting the <strong>Desktop key</strong> and pasting it in the app's Authorization field.
5. Create a database per instructions.
   


   ### Install server CLI on Mac using Homebrew

   If you want programs making calls to a Neo4j server:

1. From any folder, get information about it:

   <pre><strong>brew info neo4j
   </strong></pre>

   PROTIP: Notice in the response "Required: java = 1.8 ✔" that a JVM is a pre-requisite for Neo4j server:

   <pre>neo4j: stable 3.5.12
Robust (fully ACID) transactional property graph database
https://neo4j.com/
/usr/local/Cellar/neo4j/3.5.12 (141 files, 163.6MB) *
  Built from source on 2019-11-28 at 00:27:37
From: https://github.com/Homebrew/homebrew-core/blob/master/Formula/neo4j.rb
==> Requirements
Required: java = 1.8 ✔
==> Caveats
To have launchd start neo4j now and restart at login:
  brew services start neo4j
Or, if you don't want/need a background service you can just run:
  neo4j start
==> Analytics
install: 1,953 (30 days), 5,351 (90 days), 18,320 (365 days)
install-on-request: 1,736 (30 days), 4,684 (90 days), 15,963 (365 days)
build-error: 0 (30 days)</pre>

1. Install the latest version:

   <pre><strong>brew install neo4j
   </strong></pre>

   The response presents tips for starting the server:

   <pre>
==> Downloading https://neo4j.com/artifact.php?name=neo4j-community-3.5.12-unix.
######################################################################## 100.0%
==> Caveats
To have launchd start neo4j now and restart at login:
  brew services start neo4j
Or, if you don't want/need a background service you can just run:
  neo4j start
==> Summary
🍺  /usr/local/Cellar/neo4j/3.5.12: 138 files, 163.6MB, built in 24 seconds
   </pre>

1. Remember the path above for the forthcoming step:

   <pre>/usr/local/Cellar/neo4j/3.5.12</pre>

1. Verify version:

   <pre><strong>neo4j version</stro ng></pre>

   The response at time of this writing was:

   <pre>neo4j 3.5.12</pre>


   <a name="EnvVar"></a>

   ### Configure Environment Variable

   PROTIP: The Summary response provides a hint of where Neo4j's binary is located.

4. Create an environment in <strong>~/.bash_profile</strong> to hold the curerent version:

   <pre><strong>export NEO4J_VER="3.5"
   echo $NEO4J_VER
   </strong></pre>

4. Create an environment in <strong>~/.bash_profile</strong> to hold a path to the goodies:

   <pre><strong>export NEO4J_HOME="/usr/local/Cellar/neo4j/3.5.12/libexec/"
   echo $NEO4J_HOME
   ls $NEO4J_HOME
   </strong></pre>

   The response should be:

   <pre>LICENSES.txt	bin		data		lib		plugins
UPGRADE.txt	conf		import		logs		run
   </pre>

   ### Install utilities

   Install the Apoc neo4j-contrib library of community-contributed code:

1. Identify the latest release in community-contributed jar from <a target="_blank" href="https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases">https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases</a>

1. Navigate to the plugins folder temporarily to obtain the url to the latest release to download, such as:

   <pre><strong>pushd plugins
   curl -O https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.6/apoc-3.5.0.6-all.jar
   popd
   </strong></pre>

   <a target="_blank" href="https://www.youtube.com/watch?v=V1DTBjetIfk&list=PL9Hl4pk2FsvXEww23lDX_owoKoqqBQpdq">VIDEO</a>: Neo4j APOC Utility Library HowTo Series

1. Edit $NEO4J_HOME/conf/neo4j.conf 
1. Whitelist only specific procedures and functions (rather than all) to be loaded:
 
   <pre>dbms.security.procedures.whitelist=apoc.coll.*,apoc.load.*</pre>

1. Save and exit the text editor.

   <a target="_blank" href="https://medium.com/neo4j/streaming-graph-loading-with-neo4j-and-apoc-triggers-188ed4dd40d5">
   Streaming Graph Loading with Neo4j and APOC Triggers</a> by David Allen

   <a target="_blank" href="https://markhneedham.com/blog/tag/apoc/">
   APOC Articles by Mark Needham</a>

   See https://medium.com/neo4j/efficient-neo4j-data-import-using-cypher-scripts-7d1268b0747

   Now skip to the <a href="#Invoke">Invoke</a> section. 


   Alternately:

   ### Manual download back version

   You may want to install a back version if you want to follow along an older tutorial:
   <a target="_blank" href="https://www.pluralsight.com/courses/graph-databases-neo4j-introduction">"Introduction to Graph Databases and Neo4j</a>
   2h Pluralsight video course 
   by Microsoft MVP Roland Guijt (@RolandGuijt, rmgsolutions.nl)
   released February 5, 2015 while using Neo4j version 2.1.3 on Windows.
   So the UI has changed. 
   
1. In an internet browser, go to Neo4j's <strong>Other Releases</strong> to download:

   <a target="_blank" href="
   https://neo4j.com/download/other-releases/">
   https://neo4j.com/download/other-releases/</a>

2. Find the link for the version you want to use.
3. Click the "Download" button for sign-ups
4. Get the OReilly book.


   ### Manual install

   neo4j-desktop-?.?.?.dmg

5. Click "Open" to "Are you sure you want to open it?".
6. Click "I Agree".
7. Login using your email or through social media.

   NOTE: It says Java 8 is downloaded if it doesn't exist, but I got errors.

8. Set the $NEO4J environment variable to point to where Neo4j is installed.

   <a name="Invoke"></a>

   ### Invoke

1. For a menu, invoke the neo4j CLI executable without any parameters:

   <pre><strong>neo4j
   </strong></pre>

   The help response lists the sub-commands:

   <pre>Usage: neo4j { console | start | stop | restart | status | version }   
   </pre>

3. Initially we don't want/need a background service, so:

   <pre><strong>neo4j start
   </strong></pre>

   If you had installed using Homebrew:

   <pre>Active database: graph.db
Directories in use:
  home:         /usr/local/Cellar/neo4j/3.5.12/libexec
  config:       /usr/local/Cellar/neo4j/3.5.12/libexec/conf
  logs:         /usr/local/var/log/neo4j
  plugins:      /usr/local/Cellar/neo4j/3.5.12/libexec/plugins
  import:       /usr/local/Cellar/neo4j/3.5.12/libexec/import
  data:         /usr/local/var/neo4j/data
  certificates: /usr/local/Cellar/neo4j/3.5.12/libexec/certificates
  run:          /usr/local/Cellar/neo4j/3.5.12/libexec/run
Starting Neo4j.
Started neo4j (pid 3336). It is available at http://localhost:7474/
There may be a short delay until the server is ready.
See /usr/local/var/log/neo4j/neo4j.log for current status.
   </pre>

   Alternately, to start neo4j now and automatically restart at login:

   <pre><strong>brew services start neo4j
   </strong></pre>

   Add <tt>sudo</tt> before the command if you get this error:

   <pre>Error: Permission denied @ rb_sysopen - /Users/wilson_mar/Library/LaunchAgents/homebrew.mxcl.neo4j.plist
   </pre>
   
   The expected response (at time of writing):

   <pre>Password:
Warning: Taking root:admin ownership of some neo4j paths:
  /usr/local/Cellar/neo4j/3.5.12/bin
  /usr/local/Cellar/neo4j/3.5.12/bin/neo4j
  /usr/local/opt/neo4j
  /usr/local/opt/neo4j/bin
  /usr/local/var/homebrew/linked/neo4j
This will require manual removal of these paths using `sudo rm` on
brew upgrade/reinstall/uninstall.
==> Successfully started `neo4j` (label: homebrew.mxcl.neo4j)
   </pre>

1. Verify:

   <pre><strong>brew services list
   </strong></pre>

   You should see:

   <pre>Name    Status  User Plist
neo4j   started root /Library/LaunchDaemons/homebrew.mxcl.neo4j.plist
   </pre>

1. Open in the default internet browser:

   <pre><strong>open http://localhost:7474/browser/
   </strong></pre>

   ### Restart server

   <pre><strong>bash ./bin/neo4j restart
   </strong></pre>

   <pre>Neo4j not running
Starting Neo4j.
Started neo4j (pid 29227). It is available at http://localhost:7474/
There may be a short delay until the server is ready.
See /usr/local/var/log/neo4j/neo4j.log for current status.
   </pre>

   ### Stop server

1. To get the PID for the Neo4j process, widen the Terminal screen, then:

   <pre><strong>ps -al
   </strong></pre>
   
   Remember the PID on the line containing this CMD:

   <pre>/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin/java -cp /usr/local/Cellar/neo4j/3.5.12/libexec/plugins:/usr/l</pre>

1. Stop it:

   <pre><strong>brew services stop neo4j
   </strong></pre>

   

   <a name="Configure"></a>

   ### Edit Config for upgrade

4. Within a Terminal, edit the configuration file using "subl" or substituting "vi", "nano", or your preferred text editor (Visual Studio Code, which is invoked by the code command):

   <pre><strong>echo "NEO4J_HOME=$NEO4J_HOME"
   code $NEO4J_HOME/conf/neo4j.conf
   </strong></pre>

   See a description of the dozens of keys at:
   <a target="_blank" href="https://neo4j.com/docs/operations-manual/3.5/reference/configuration-settings/">https://neo4j.com/docs/operations-manual/3.5/reference/configuration-settings</a>

5. Find text "dbms.allow_upgrade=" within the file.
6. Remove the # comment so your database upgrades automatically in case its built version is older than your current Neo4j version:

   <pre>dbms.allow_upgrade=true
   </pre>

7. Set logging specifications: TODO:

   <pre>???=true
   </pre>

7. Change the password:

   <pre>call dbms.security.changePassword('Pa$$word1');
   </pre>


   ### Connect to Neo4j

   <tt>Database access not available. Please use   to establish connection. There's a graph waiting for you.</tt>

1. Type the default username and password of "neo4j" and "neo4j".
1. Click "Connect".

   BLAH

Graph database can store any kind of data using these concepts:

   * Nodes - graph data records
   * Relationships - connect nodes
   * Properties - named data values
   <br /><br />

https://diseaseknowledgebase.etriks.org/metabolic/browser/


   ### Query Logging

8. Query logging must be enabled by setting the parameter to:

   <pre>dbms.logs.query.enabled=true</pre>
 
   To set all queries to be logged:

   <pre>dbms.logs.query.threshold=0</pre>

   Alternately, set a threshold for the number of seconds before logging, such as 7:

9. There are <a target="_blank" href="https://neo4j.com/docs/operations-manual/current/monitoring/logging/query-logging/">additional logging parameters</a> that are false by default:

   <pre>dbms.logs.query.parameter_logging_enabled=true
dbms.logs.query.time_logging_enabled=true
dbms.logs.query.allocation_logging_enabled=true
dbms.logs.query.page_logging_enabled=true
   </pre>


1. Save the file and exit the editor.


   <a name="Console"></a>

   ### Start Browser Console

   When your Neo4j instance is ready:

9. Open the Neo4j Browser client:

   PROTIP: So you can quickly switch among the two using Command+Tab, open a browser different than the one used to display this tutorial (perhaps Firefox instead of Chrome), then
   go to the default URL:

   <a target="_blank" href="
   http://localhost:7474/">
   http://localhost:7474</a>



   From https://neo4j.com/developer/docker-run-neo4j/

   <pre>docker run \
    --name testneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $HOME/neo4j/data:/data \
    -v $HOME/neo4j/logs:/logs \
    -v $HOME/neo4j/import:/var/lib/neo4j/import \
    -v $HOME/neo4j/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:latest
   </pre>

   
   
   Alternately, when <a target="_blank" href="https://neo4j.com/docs/operations-manual/3.2/installation/docker/">running within Docker Machine</a>, open the Neo4j Browser client using your default browser. On a Mac:

   <pre><strong>open http://$(docker-machine ip default):7474
   </strong></pre>


   ### Ports (within Docker)

   PROTIP: By default the Docker image for Neo4j exposes three ports for remote access:

   <pre>
docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$HOME/neo4j/data:/data \
    --volume=$HOME/neo4j/logs:/logs \
    neo4j:3.2
    </pre>

   * 7474 for HTTP
   * 7473 for HTTPS
   * 7687 for Bolt
   <br /><br />

   ### Bolt Network Protocol

   PROTIP: Although Neo4j as a transactional http/https versioned endpoint, the Neo4j database (since v3) by default communicates using the <strong>Bolt</strong> binary protocol (for multi-cluster routing) based on Packetstream. Much like JDBC for relational databases, Bolt operates over a TCP connection or WebSocket. Built-in Auth and TLS. It's defined at <a target="_blank" href="https://boltprotocol.org/">Bolt network protocol</a>. Connection credentials are stored in your web browser, such as:

   <pre>from py2neo import Database
   db = Database("bolt://ws-10-0-1-64-32989.neo4jsandbox.com:443")</pre>

   To use the default bolt:

   <pre>default_db = Database()</pre>

   Confirm:

   <pre>default_db</pre>
   returns:
   <pre>&LT;Database uri='bolt://localhost:7687'.</pre>

   Currently, Neo4j only supports one Graph per Database.


   <a name="Commands"></a>

   ### Browser Commands

   <strong>Commands</strong> can be entered in the Editor field at the top which begins with a dollar sign in gray.

1. Click the top command entry field to the right of the dollar sign, type the first letter of commands, a colon (:), for auto-completion list of most common commands:

    <pre><a target="_blank" href="https://user-images.githubusercontent.com/300046/34472118-7f27bd18-ef28-11e7-8247-9277afcdcb32.png"><img width="603" alt="neo4j-commands-1206x800" src="https://user-images.githubusercontent.com/300046/34472118-7f27bd18-ef28-11e7-8247-9277afcdcb32.png"><br /><small>Click image for larger image pop-up.</small></a>
    </pre>


   ### Dark theme color for commands

   <a name="SampleConsole"></a>

1. Click the gear icon near the lower-left corner among menu icons.

    <pre><a target="_blank" href="https://user-images.githubusercontent.com/300046/34465151-4dc9ded8-ee5e-11e7-87d8-e3a92d459795.png"><img width="603" alt="neo4j-console" src="https://user-images.githubusercontent.com/300046/34465151-4dc9ded8-ee5e-11e7-87d8-e3a92d459795.png"><br /><small>Click image for larger image pop-up.</small></a></pre>

1. Click Theme Dark.
1. Click the icon again to dismiss menu contents. (it's a toggle)

   ### Play intro

1. Click the icon that looks like a book (previously this was an i icon for information).
1. Click "Getting Started".

   Notice that these commands appear in the command field:

   <pre><strong>:play intro
   </strong></pre>

   Notice that the commands now have different colors.

1. To submit the command, press Enter or click the arrow icon at the upper-right corner.

   The page says for multi-line commands to press Shift+Enter to enter multi-line mode,
   then press Ctrl+Enter instead of the arrow icon.

1. Scroll down the page to see that the new response is added above the previous frame, as in a stack as a stream.
1. Click the gray X to dismiss a content frame.
1. Click "Operations Manual" under Useful Resources to pop up a new browser tab to the version installed: 

   <a target="_blank" href="https://neo4j.com/docs/operations-manual/">https://neo4j.com/docs/operations-manual</a>.


   <a name="Monitoring"></a>
   
   ### Monitoring limits

1. Type command <tt><strong>:sysinfo</strong></tt> and press Enter for:

   <a target="_blank" href="https://user-images.githubusercontent.com/300046/34470659-576f0598-ef04-11e7-8016-e5d76b352895.png">
   <img width="650" alt="neo4j-sysinfo-1530x596" src="https://user-images.githubusercontent.com/300046/34470659-576f0598-ef04-11e7-8016-e5d76b352895.png"></a>

   PROTIP: Execute this on a schedule to ensure that more space is allocated before need. 


   ### Manage users and roles

   PROTIP: Passwords can be changed in the command line. See:
   https://neo4j.com/docs/operations-manual/3.2/reference/user-management-community-edition/#userauth-list-all-users-ce

   https://neo4j.com/docs/operations-manual/3.2/tutorial/role-based-access-control/
 
   The Enterprise edition of ???

   <pre>CALL dbms.security.listUsers()
   </pre>


   ### Change password

1. Per <a target="_blank" href="https://neo4j.com/docs/operations-manual/current/configuration/set-initial-password/">documentation</a>:

   <pre>neo4j-admin set-initial-password h6u4%kr</pre>

1. http://boopathi.me/blog/reset-neo4j-graph-database-password/


1. Notice in the <a href="#SampleConsole">sample console image</a> that the password is blank.

19. In the Password field, type the default "neo4j" (lower case).
20. Type your own password. Twice.

   Note in the response your user name is "neo4j".

<hr />

<a name="AfterDesktopInstall"></a>

After desktop install:

Database failed to create: Error: Could not change password
https://github.com/neo4j/neo4j/issues/11429

<a name="CreateDB"></a>
   
## Database creation commands

   Neo4j comes with several databases.

1. Click "Write Code" and press Enter to invoke <tt><strong>:play write code</strong></tt>.

   ![neo4j-starter-650x208-37863](https://user-images.githubusercontent.com/300046/34470618-831965d6-ef03-11e7-951a-e911cd737109.jpg)


   ### Movie sample creation

2. See instructions to build a relationship graph about among actors and directors:

   <pre><strong>:play movie graph
   </strong></pre>

   The "Create" pane appears with code that begins with command "CREATE".

3. Click the code for it to be posted in the command line.

4. Click the full screen icon.

   ![neo4j-fullscreen-510x142-5114](https://user-images.githubusercontent.com/300046/34470744-494adf94-ef06-11e7-8d50-0d8f62799462.png)

5. BLAH: Drag and drop items to arrange the graph to your asthetic taste.

   <a target="_blank" href="https://user-images.githubusercontent.com/300046/34470717-c7b80a1a-ef05-11e7-9f9d-2fa35ee496e2.png">
   <img width="838" alt="neo4j-movie-graph-1676x702-144758" src="https://user-images.githubusercontent.com/300046/34470717-c7b80a1a-ef05-11e7-9f9d-2fa35ee496e2.png"></a>

   This is like ER (Entity-Relation) diagrams for SQL databases.

   PROTIP: Neo4J data is stored the same way as illustrated by the data model, whereas with SQL data is stored in separate tables joined together.

4. The gray controls appear after you click on an object (the red colored dot labeled "The Polar Express").

5. Click the "X" in the wheel to delete the node.

   PLUG: Thus, Neo4j is naturally adaptive.
   Entities can be added dynamically, without schema migrations required in SQL databases.

6. Click the database icon at the top of the left menu to view a list of 
 
   * Node Labels
   * Relationship Types
   * Property Keys
   <br /><br />

   ![neo4j-db-info-734x978-42810](https://user-images.githubusercontent.com/300046/34472337-0ef40a46-ef2e-11e7-8b1a-6cf7ee061a31.png)

1. Create an entry:

   <pre>CREATE (m:Movie {title:'Mystic River', released:2003})
   RETURN m</pre>

1. On Create, time stamp: [40:40]

   <pre>MERGE (p:Person {name: 'Your Name'})
   ON CREATE p.created = timestamp(), p.updated = 0
   ON MATCH SET p.updated = p.updated + 1
   RETURN p.created, p.updated</pre>

1.  Modify an existing entry with a tagline: [37:11]

   <pre>MATCH (m:Movie {title:'Mystic River'})
   SET m.tagline = 'We bury our sins here, Dave. We wash them clean.'
   RETURN m</pre>

1. Create a relationship: [37:31]

   <pre>MATCH (m:Movie {title:'Mystic River'})
   MATCH (p:person {name: 'Kevin Bacon'})
   CREATE (p-[r:ACTED_IN {roles: ['Sean']}])->(m)
   RETURN p, r, m</pre>


   ### Northwind sample creation

   <a target="_blank" href="https://www.youtube.com/watch?v=NO3C-CWykkY&index=4&list=PL9Hl4pk2FsvWM9GWaguRhlCQ-pa-ERd4U&t=12m42s">VIDEO</a>:

   PROTIP: Relations are not "first-class citizens" in a relational database.
   But they are in graph databases.

   https://github.com/neo4j-contrib/developer-resources/tree/gh-pages/data/northwind

1. Open the <a target="_blank" href="https://wilsonmar.com/northwind/">"Northwind" sample database</a> which Microsoft provides with its SQL database.

   <pre><strong>:play northwind graph
   </strong></pre>

   This is a more complex database with data common to business accounting.

   <pre>LOAD CSV WITH HEADERS FROM "http://data.neo4j.com/northwind/products.csv" AS row
CREATE (n:Product)
SET n = row,
  n.unitPrice = toFloat(row.unitPrice),
  n.unitsInStock = toInteger(row.unitsInStock), n.unitsOnOrder = toInteger(row.unitsOnOrder),
  n.reorderLevel = toInteger(row.reorderLevel), n.discontinued = (row.discontinued &LT;> "0")
  </pre>

  <pre>LOAD CSV WITH HEADERS FROM "http://data.neo4j.com/northwind/categories.csv" AS row
CREATE (n:Category)
SET n = row</pre>

   <pre>CREATE INDEX ON :Product(productID)
CREATE INDEX ON :Category(categoryID)
CREATE INDEX ON :Supplier(supplierID)</pre>


   ### Indexes

   Indexes are used to find the starting point for queries to traverse (where by contrast SQL uses indexes to look up rows in tables)

   PROTIP: Cypher keywords ENDS, WITH, and CONTAINS are, as of v3, index-backed.
   Neo4j uses "index read adjacency" to make itself quicker to traverse nodes
   instead of slower index lookups in SQL.

   To improve performance, indexes in Neo4j can be backed by Lucene index type.

1. To schedule resampling of an index:

   <pre><strong>db.resampleIndex(":Person(name)")
   </strong></pre>


<hr />

<a name="LoadData"></a>

## Load data

1. First, stop the service:

   <a name="StopBrowser"></a>

   ### Stop Browser

2. Open a Terminal window to issue command:

   <pre><strong>neo4j stop
   </strong></pre>

   The response:

   <pre>Stopping Neo4j.. stopped
   </pre>

   Now you can backup and dump the database.

3. Switch to or open a Mac/Linux Terminal instance and:

   <pre><strong>cd $NEO4J_HOME/data/Databases
   ls -al
   cd graph.db
   ls -al
   </strong></pre>

   Notice <strong>graph.db</strong>.

   PROTIP: In the Neo4j world, a physical database consists of files stored under a folder named with a .db suffix. A "graph" references a physical Neo4j database that stores data.

   <a name="BackupDB"></a>

   ### Backup default database

   See https://neo4j.com/docs/operations-manual/3.2/tools/dump-load/
   for the various attributes to add.


   <a name="DownloadSampleDB"></a>

   ### Download sample DrWho database

   With the server stopped:

1. Open a new browser tab to download a zip file containing a sample database from:

    <a target="_blank" href="
    https://neo4j.com/developer/example-data/">
    https://neo4j.com/developer/example-data</a>

1. Right-click to <strong>Save Link as...</strong> (download) the Jim Webber’s Doctor Who Data Set <strong>drwho.zip</strong> file to your Downloads folder.
1. Unzip the file to create folder <strong>drwho</strong>.
1. Look into the folder index.

   PROTIP: Neo4j uses Lucene to index, same as ElasticSearch and others.

1. Copy the drwho folder within the Neo4j database folder:

   <pre><strong>cp ~/Downloads/drwho  /usr/local/Cellar/neo4j/3.3.0/libexec/data/Databases
   ls
   </strong></pre>

   ### Check db consistency

1. See https://neo4j.com/docs/operations-manual/3.2/tools/consistency-checker/


   <hr />

   ### Use cases

   Recommendations can be made. You like Tom Hanks? Here are his other movies.

   More sophisticated versions of such a database are being used to detect fraud. See 
   https://t.co/OMHaHOrYtq

   <a target="_blank" href="https://www.youtube.com/watch?v=-dCeFEqDkUI&t=4m41s&list=PL9Hl4pk2FsvWM9GWaguRhlCQ-pa-ERd4U&index=2">
   Video of use cases</a> 
   "What SQL had to process in batch can now be processed in real-time with Neo4j."

   https://www.youtube.com/watch?v=lb90EBfAj0o

   https://maxdemarzi.com/2017/11/21/mutual-fund-benchmarks-with-neo4j/


   ### Graph Gists

   The developer community's repository of sample data models and queries for a variety of use cases at <a target="_blank" href="https://portal.graphgist.org">portal.graphgist.org</a> is showcased on the <a target="_blank" href="https://neo4j.com/graphgists/">neo4j.com/GraphGists</a> web page. 

   Any developer can create a GraphGist. Reach out to devrel@neo4j.com.

   Building a graph of your data is fairly simple as the graph structure represents the real world much better than columns and rows of data. 

   ### Mental Illnesses
   
   The Open Source Mental Illness Neo4j database is at:
   https://github.com/OSMIHelp/osmi-survey-graph


   <a target="_blank" href="https://www.youtube.com/watch?v=-dCeFEqDkUI&list=PL9Hl4pk2FsvWM9GWaguRhlCQ-pa-ERd4U&index=2">VIDEO:</a> datasets are easily accessible using the blue "Write Code" button under the "Jump into Code" section of the guides.


<a name="Query"></a>

## Cypher Query

https://www.opencypher.org/#resources

A big innovation by Neo4j is that it provides programmers with a flexible network structure of nodes and relationships rather than static SQL tables.

Cypher is a language akin to SQL.

<a target="_blank" href="https://s3.amazonaws.com/artifacts.opencypher.org/M08/docs/style-guide.pdf">
Cypher Style Guide (for M08), a 10-page pdf</a>
covers Indentation and line breaks, Meta-characters, Casing, Patterns Spacing. The document presents this classical piece by Mark Needham:
as a "sane query":

<pre><strong>MATCH (member:Member {name: 'Mark Needham'})
      -[:HAS_MEMBERSHIP]->()-[:OF_GROUP]->(:Group)-[:HAS_TOPIC]->(topic)
WITH member, topic, count(*) AS score
MATCH (topic)<-[:HAS_TOPIC]-(otherGroup:Group)
WHERE NOT (member)-[:HAS_MEMBERSHIP]->(:Membership)-[:OF_GROUP]->(otherGroup)
RETURN otherGroup.name, collect(topic.name), sum(score) AS score
ORDER BY score DESC
</strong></pre>

   PROTIP: Do not use a semicolon at the end of the statement.

  execution plan with EXPLAIN and PROFILE.

https://www.youtube.com/watch?v=1TSBXZMv6tc

https://neo4j.com/download-thanks-desktop/docs/developer-manual/current/cypher/#how-do-i-profile-a-query

   Neo4j is considered among other "NOSQL" database tech that include
   Key-Value Stores, Column-Family Stores, and Document Databases.
   But these others use aggregate data models whereas graph databases
   such as Neo4j work with simple records and complex interactions.

   Instead of SQL union statements.
   an example of code is:

   <pre>(graphs)-[:ARE]->(everywhere)
   </pre>

### Direction

   Neo4j API allow developers to completely ignore relationship direction
   when querying the graph.

   <pre>MATCH (boss)-[:MANAGES*0..3]->(sub),
      (sub)-[:MANAGES*1..3]->(report)
   WHERE boss.name = "John Doe"
   RETURN sub.name AS subordinate,
   count(report) AS Total
   </pre>

https://www.youtube.com/watch?v=NH6WoJHN4UA&index=3&list=PL9Hl4pk2FsvWM9GWaguRhlCQ-pa-ERd4U


## Fast?

   For many applications, Neo4j offers orders of magnitude performance advantage compared to relational DBs. Each index and join adds to the time needed.

   * Antlr grammar
   * EBNF (Extened Backus–Naur Form) metasyntax notation is used to make a formal description of a formal (computer programming) language . "Extended" refers to its pedigree from Niklaus Wirth's BNF syntax which consists of some of the concepts, but with a different syntax and notation. See https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form

   * Railroad diagrams   https://s3.amazonaws.com/artifacts.opencypher.org/M08/railroad/Cypher.html

   * Grammar specification
   * TCK (Technology Compatibility Kit) specification



<hr />

<a name="Importing"></a>

## Importing data

Michael Hungar, Neo4j Developer Evangelist, wrote <a target="_blank" href="https://github.com/jexp/batch-import">

Michael started the <a target="_blank" href="https://github.com/neo4j-contrib/">https://github.com/neo4j-contrib</a> "Apoc" add-on library for Neo4j <a target="_blank" href="https://github.com/neo4j-contrib/neo4j-apoc-procedures">neo4j-apoc-procedures</a>. It provides <a target="_blank" href="https://neo4j.com/docs/labs/apoc/current/overview/">hundreds of procedures and functions</a> adding a lot of useful functionality. It is available in all Neo4j Sandboxes and in the Neo4j Cloud.
It can also be installed with a single click in Neo4j Desktop.
It's described with <a target="_blank" href="https://www.youtube.com/watch?v=V1DTBjetIfk&list=PL9Hl4pk2FsvXEww23lDX_owoKoqqBQpdq">videos</a> at <a target="_blank" href="https://neo4j.com/labs/apoc/">neo4j.com/labs/apoc</a> and <a target="_blank" href="https://neo4j.com/developer/neo4j-apoc/">in the Developer Guide</a> which references <a target="_blank" href="https://github.com/neo4j-contrib/developer-resources">https://github.com/neo4j-contrib/developer-resources</a>.

We build something similar to <strong>apoc.load.json</strong> just for YAML. You can create a GH issue there and ask for guidance.

<a target="_blank" href="https://www.youtube.com/watch?v=oRtVdXvtD3o&time=23m40s">VIDEO:</a> <a target="_blank" href="https://www.linkedin.com/in/ehacks/">Ambrose Leung</a> at Microsoft Seattle wrote <a target="_blank" href="https://aka.ms/csv2graph/">aka.ms/csv2graph</a> program to load CSV files using API calls. 

1. Click the star icon on the menu to reveal the import area to drag files.

   <img width="235" alt="neo4j-import-drop" src="https://user-images.githubusercontent.com/300046/34465239-ba7669b2-ee62-11e7-87f9-f0c01e4688d9.png">

   Only text files are dropped there, not images of Neo4j databases (.db files).

 
   ### Import your own data

   http://guides.neo4j.com/fundamentals/import.html

   Import data from CSV files using <a target="_blank" href="https://neo4j.com/docs/developer-manual/3.5/cypher/#query-load-csv">Cypher LOAD CSV command</a> in the <a target="_blank" href="https://neo4j.com/developer/guide-import-csv/">developer guide</a>
   [49:12]

   <pre>[USING PERIODIC COMMIT]  // optional transaction batching
   LOAD CSV
   WITH HEADERS  // first header row as keys in "row" map
   FROM "url"
   AS row
   FIELDTERMINATOR ";"
   ...</pre>


   ### Polyglot

   Neo4j believes in polyglot persistence (multiple ways to store connected data), with columnar, tabular and document data stored elsewhere. The various types of data integrations possible with Neo4j is at: https://neo4j.com/developer/integration/

   For information about importing transactions into the database, see:
   https://neo4j.com/docs/operations-manual/3.2/tools/import/
   https://neo4j.com/docs/operations-manual/3.2/tutorial/import-tool/

   The above links are for a specific version, so can becone outdated.

    <a target="_blank" href="
    https://neo4j.com/developer/guide-importing-data-and-etl/">
    https://neo4j.com/developer/guide-importing-data-and-etl</a>

   <pre>cycli -f import-file.cypher
   </pre>

   <a target="_blank" href="https://www.youtube.com/watch?v=oRtVdXvtD3o&time=41:25">[41:25]</a>


<hr />

## Optimizing Cypher Queries

<a target="_blank" href="https://www.javacodegeeks.com/2013/01/optimizing-neo4j-cypher-queries.html">
Optimizing Neo4j Cypher queries</a>


## Programming


A "hello world" example of a @userfunction:

   <pre>WITH ['Hello','World'] as words
   RETURN apoc.test.join(words,' ')</pre>

   ==> "Hello World"

Example of making a call in Cypher:

   <pre>CALL
   apoc.index.nodes('User','name:Brook*')
   YIELD node, score
   RETURN node.name, node.age, score</pre>


## Language Extensions

To extend Cypher with user-defined procedures in JavaScript, C# .NET, Python, and Community drivers such as R, see 
<a target="_blank" href="https://neo4j.com/developer/language-guides">
https://neo4j.com/developer/language-guides</a>


### Python

   <pre>pip install neo4j
pip install -r docs_requirements.txt
make -C docs html
   </pre>

   * git clone https://github.com/neo4j/neo4j-python-driver
   * <a target="_blank" href="https://www.youtube.com/watch?v=nJEfq8qduKA">Graph Databases in Python</a> from 2012
   * https://github.com/neo4j/neo4j-python-driver
   <br /><br />

1. Install Python driver:

   <pre><strong>pip install neo4j-driver</strong></pre>

   The response (at time of writing):

   <pre>Collecting neo4j-driver
  Downloading https://files.pythonhosted.org/packages/0e/96/bc81664d87975948713f7e4d3d4c3a21a3a6a813d03a161637573a587817/neo4j-driver-1.7.6.tar.gz
Requirement already satisfied: neobolt~=1.7.15 in /usr/local/lib/python3.7/site-packages (from neo4j-driver) (1.7.16)
Requirement already satisfied: neotime~=1.7.1 in /usr/local/lib/python3.7/site-packages (from neo4j-driver) (1.7.4)
Requirement already satisfied: pytz in /usr/local/lib/python3.7/site-packages (from neotime~=1.7.1->neo4j-driver) (2019.1)
Requirement already satisfied: six in ./Library/Python/3.7/lib/python/site-packages (from neotime~=1.7.1->neo4j-driver) (1.13.0)
Building wheels for collected packages: neo4j-driver
  Building wheel for neo4j-driver (setup.py) ... done
  Created wheel for neo4j-driver: filename=neo4j_driver-1.7.6-cp37-none-any.whl size=32641 sha256=d9193b86dcfc42c27af73bdb026be1290521411e6e96678103fb8b3f0a4b8fa1
  Stored in directory: /Users/wilson_mar/Library/Caches/pip/wheels/8b/bf/07/48400007240b3dbb8bd336fdbba1a99c890144a3ba83fdfc38
Successfully built neo4j-driver
Installing collected packages: neo4j-driver
Successfully installed neo4j-driver-1.7.6
   </pre>


<a name="JavaCoding"></a>

### Java coded queries

Neo4j provides Native server-side extensions in Java. 

https://neo4j.com/blog/efficient-graph-algorithms-neo4j/

For large amounts of data, Cypher run time performance may be slower than Java API coding of traversals and writes. So do massive writes by writing a Java API program to read and query using parameterized Cypher queries.

Get the official drivers for Javascript, Java, .NET, and Python

   https://neo4j.com/docs/developer-manual/current/drivers/#driver-get-the-driver

Additionally, the community has built a wide variety of other drivers in languages like PHP, Ruby, Go, Haskell and more.

   https://neo4j.com/developer/language-guides/

https://neo4j.com/docs/developer-manual/current/procedures/


## Awesome Procedures

APOC (Awesome Procedures on Cypher) are complex implementations that can't be expressed directly on Cypher. They support data integration, graph algorithms, data conversion.

   <a target="_blank" href="https://neo4j-contrib.github.io/neo4j-apoc-procedures/index32.html">https://neo4j-contrib.github.io/neo4j-apoc-procedures/index32.html</a>

refers to the code repository at:

   <a target="_blank" href="https://github.com/neo4j-contrib/neo4j-apoc-procedures">https://github.com/neo4j-contrib/neo4j-apoc-procedures</a>



<hr />

## Social

1. <a target="_blank" href="https://community.neo4j.com/">community.neo4j.com</a> provides weekly news and highlights popular community content.

1. Sign up for events at <a target="_blank" href="https://neo4j.com/events/world/all/">neo4j.com/events/world/all</a>

1. Sign up for http://neo4j.com/slack at http://neo4j-users-slack-invite.herokuapp.com/

1. Join https://groups.google.com/forum/#!forum/neo4j

1. Subcribe to <a target="_blank" href="https://www.youtube.com/channel/UCvze3hU6OZBkB1vkhH2lH9Q">Neo4j's YouTube channel</a> and view videos.

1. Click the icon at the bottom-left corner among menu icons.

   <a target="_blank" href="https://user-images.githubusercontent.com/300046/34465151-4dc9ded8-ee5e-11e7-87d8-e3a92d459795.png">
   <img width="1174" alt="neo4j-console" src="https://user-images.githubusercontent.com/300046/34465151-4dc9ded8-ee5e-11e7-87d8-e3a92d459795.png"><br /><small>Click image for larger image pop-up.</small></a>

1. Q&A on http://stackoverflow.com/questions/tagged/neo4j

1. Visit a Meetup group - https://www.meetup.com/Neo4j-Online-Meetup/

1. Tweet to https://twitter.com/neo4j - #GraphViz #Neo4j #GraphDatabases

1. Read https://neo4j.com/blog/

1. Read https://en.wikipedia.org/wiki/Neo4j


### Live in person

https://www.meetup.com/pro/neo4j/

* Travel to the https://neo4j.com/GraphTour

* http://datadaytexas.com/2018/graphday (<a target="_blank" href="https://twitter.com/GraphDay
">@GraphDay) was Saturday, Jan. 27, 2018 in Austin, TX #ddtx18.



### Rockstars

Michael Hunger (@mesiri), Neo4j developer evangelist in Dresden, Germany

   * <a target="_blank" href="https://neo4j.com/graphgist/first-steps-with-cypher">First Steps with Cypher</a>
   * <a target="_blank" href="https://stackoverflow.com/users/728812/michael-hunger">StackOverflow profile</a>
   * <a target="_blank" href="https://github.com/jexp">https://github.com/jexp</a>
   * <a target="_blank" href="http://jexp.de/">http://jexp.de</a> (personal website)
   <br /><br />

Jim Webber provides "koan" style tutorial presents a set of databases which have something not right, so students learn to fix things. Brilliant approach and a great learning tool:

   * <a target="_blank" href="https://github.com/jimwebber/neo4j-tutorial">https://github.com/jimwebber/neo4j-tutorial</a>
   <br /><br />

Ryan Boyd (<a target="_blank" href="https://www.linkedin.com/in/ryguyrg/">LinkedIn</a>)
a SF-based ex-Googler, now Neo4j Head of Developer Relations.

   * <a target="_blank" href="http://datadayseattle.com/ddsea17/sessions#boyd">
   Combining graph analytics with real-time graph query workloads for solving business problems</a>
   * <a target="_blank" href="https://www.youtube.com/playlist?list=PL9Hl4pk2FsvWM9GWaguRhlCQ-pa-ERd4U">5 short videos</a> from March 2016 annotated in the <a target="_blank" href="https://neo4j.com/graphacademy/online-training/introduction-to-neo4j/">Intro to Graph Databases</a>
   <br /><br />

William Lyon (@lyonwj, lyonwj.com), software developer on the Developer Relations team, he works primarily on integrating Neo4j with other technologies, building demo apps, helping other developers build applications with Neo4j, and writing documentation. Applying an active learning algorithm for entity de-duplication in graph data.

   * https://www.slideshare.net/neo4j/building-a-graphql-service-backed-by-neo4j
   * https://github.com/neo4j-graphql/neo4j-graphql
   * https://grandstack.io (GraphQL, React, Apollo, Neo4j)
   <br /><br />


Emil Eifrem (@emileifrem, emil@neotechnologies.com), CEO

   * <a target="_blank" href="https://www.youtube.com/watch?v=UodTzseLh04">
   Introduction to Graph Databases</a> Jul 14, 2011
   * <a target="_blank" href="https://www.zdnet.com/article/graph-for-the-mass-market-neo4j-launches-aura-on-google-cloud/" title="Nov 7, 2019">Graph for the mass market: Neo4j launches Aura on Google Cloud</a>
   <br /><br />

Mark Needham and Amy E. Hodler 

   * <a target="_blank" href="https://neo4j.com/graph-algorithms-book/?ref=db-engines">DOWNLOAD O'Reilly BOOK:</a> Graph Algorthms: Practical examples in Apache Spark and Neo4j
   * https://neo4j.com/docs/graph-algorithms/current/
   <br /><br />

Tim Ward (@jerrong, tiw@CluedIn.com)

   * <a target="_blank" href="https://www.youtube.com/watch?v=jiE3wsrVUQs">
   Using Neo4j and Machine Learning to Create a Decision Engine</a>
   https://www.slideshare.net/neo4j/graphconnect-europe-2017-using-neo4j-and-machine-learning-to-create-a-decision-engine-cluedin
   <br /><br />

Mats Rydberg living in Sweden

   * <a target="_blank" href="https://github.com/opencypher">https://github.com/opencypher</a>
   Mats-SX
   * https://github.com/opencypher/openCypher/blob/master/tools/tck/README.adoc
   <br /><br />
 
Johan Svensson, CTO 

Philip Rathle, products VP

Neo4j, Inc. board of directors includes Rod Johnson (founder of the Spring Framework).

@GraphCurmudgeon



Rik van Bruggen


## References and tutorials

<a target="_blank" href="https://neo4j.com/graphacademy/online-training/introduction-graph-databases/">https://neo4j.com/graphacademy/online-training/introduction-graph-databases</a>

   O'Reilly's Graph Databases 211 page ebook from May 2015 with NeoLoad 2.2:
   * <a target="_blank" href="https://go.neo4j.com/rs/710-RRC-335/images/Graph_Databases_2e_Neo4j.pdf">.pdf</a>
   * <a target="_blank" href="https://go.neo4j.com/rs/710-RRC-335/images/Graph_Databases_2e_Neo4j.epub">.epub for Android iBooks on iPhone/iPad</a>
   * <a target="_blank" href="https://go.neo4j.com/rs/710-RRC-335/images/Graph_Databases_2e_Neo4j.mobi">.mobi for Kindle</a>

   https://github.com/graphaware/neo4j-nlp
   Implementation of Microsoft Concept Graph

   https://www.experfy.com/training/courses/an-introduction-to-neo4j#description
   $80 class

<img width="1250" alt="neo4j-hierarchy-graph-1250x476" src="https://user-images.githubusercontent.com/300046/34467712-90b67140-eeb6-11e7-9fa6-8b8794b743d3.png">
From https://neo4j.com/blog/7-ways-data-is-graph/

<a target="_blank" href="https://www.quackit.com/neo4j/tutorial/">quackit.com/neo4j/tutorial</a>
contains lots of ads, but is a nicely formatted tutorial if you don't mind clicking after reading a few lines.


https://buff.ly/2w9PQFy 
The Top 13 Resources for Understanding Graph Theory & Algorithms

https://r.neo4j.com/2iSaBRi 
Geocoding #ParadisePapers Addresses in #Neo4j to Build Interactive Geographical Data Visualizations

https://www.slideshare.net/bachmanm/modelling-data-in-neo4j-plus-a-few-tips
neo4j-property-graph-pulp-fiction.png

https://www.slideshare.net/KennyBastani/building-a-graph-based-analytics-platform?next_slideshow=1

* https://www.youtube.com/watch?v=78r0MgH0u0w

* https://www.youtube.com/watch?v=vJcxRjJ982k

* https://www.youtube.com/watch?v=NO3C-CWykkY&index=4&list=PL9Hl4pk2FsvWM9GWaguRhlCQ-pa-ERd4U


<a name="Triplestore"></a>
## Triplestore

Triplestore is based on the semantic web W3C RDF (Resource Definition Framework) for inter-connection

It is based on the subject - object - predicate triples
where each property is a vertex (node).

An example is airline flight information <a target="_blank" href="https://www.youtube.com/watch?v=yOYodfN84N4&time=34m04s" title="by @bechbd">VIDEO</a>:

<a target="_blank" href="https://user-images.githubusercontent.com/300046/70391620-1886b100-19a5-11ea-8c69-8a67b1a8ee10.png">
<img alt="triplestore-flights-920x928.png" width="920" src="https://user-images.githubusercontent.com/300046/70391620-1886b100-19a5-11ea-8c69-8a67b1a8ee10.png"></a>

Graph databases are used by inference engines to discover relationship insights not easily found using traditional approaches. Thus, it is popular among (crime) forensic scientists.


### Aggregate functions

<a target="_blank" href="https://www.youtube.com/watch?v=V1DTBjetIfk&time=1m30s" title="Jun 27, 2018">VIDEO</a>

Aggregates in Cypher do not require a "GROUP BY" keyword as in SQL.

A node and relationship are essentially a container of properties.

See the one-page Cyhper Refcard.

@UserAggregationFunctions need to keep state (the aggregates).


### Timings / State

![neo4j-timings-850x776](https://user-images.githubusercontent.com/300046/71552007-86286a80-29b0-11ea-81e8-a8d1b7f4a4fb.jpg)


## More info

https://github.com/elementsinteractive/flask-graphql-neo4j
https://medium.com/elements/diving-into-graphql-and-neo4j-with-python-244ec39ddd94
makes use of docker-compose based on
https://hub.docker.com/_/neo4j/

https://github.com/wgwz/flask-neo4j-demo
by Kyle Lawlor
https://github.com/wgwz/flask-py2neo

https://www.youtube.com/watch?v=78r0MgH0u0w
Tips and Tricks for Graph Data Modeling
Mar 25, 2015

<a target="_blank" href="https://app.pluralsight.com/library/courses/graph-databases-neo4j-introduction/exercise-files/">
VIDEO: Introduction to Graph Databases, Cypher, and Neo4j</a>
October 2018 by <a target="_blank" href="https://www.RolandGuijt.com/">Roland Guijt</a> (@RolandGuijt) in the Netherlands.



### https://github.com/neo4j-examples

<a target="_blank" href="https://github.com/neo4j-examples">github.com/neo4j-examples</a> contains several

   * <a target="_blank" href="https://github.com/neo4j-examples/neo4j-movies-template">neo4j-movies-template</a>, presented at <a target="_blank" href="http://neo4jmovies.herokuapp.com/">http://neo4jmovies.herokuapp.com</a> returns an application error.

https://diseaseknowledgebase.etriks.org/metabolic/browser/

http://boopathi.me/blog/category/neo4j/

<a target="_blank" href="https://learning.oreilly.com/library/view/neo4j-high-performance/9781783555154/">Neo4j High Performance</a>
(Packt, March 2015)
by Sonal Raj covers:

* Query Neo4j using Cypher, and optimize your data model and queries to improve Cypher's performance
* Migrate from existing SQL stores and data import/export techniques
* Explore the data modeling concepts and techniques associated with graph data in Neo4j
* Develop applications with Neo4j to handle high volumes of data
* Define how to develop an efficient architecture and transactions in a scalable way
* Study the in-built graph algorithms for better traversals and discover Spring-Data-Neo4j
* Look under the hood of Neo4j, covering concepts from the core classes in the source to the internal storage structure, caching, transactions, and related operations
<br /><br />

<a target="_blank" href="https://www.youtube.com/watch?v=_IgbB24scLI">
5-hr VIDEO: Neo4j Course for Beginners</a> with Java Spring Boot and React. 
by Farhan Chowdhury and Gavin Lon.

https://www.youtube.com/watch?v=7PKiBX_zMeQ

https://www.youtube.com/watch?v=E3eXSdeNYsk


## More about Python

This is one of a series about Python:

{% include python_links.html %}

