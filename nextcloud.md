---
layout: post
date: "2026-06-23"
lastchange: "26-06-23 v003 install macos @nextcloud.md"
url: https://bomonike.github.io/nextcloud
file: "nextcloud"
title: "NextCloud"
excerpt: "Host your photos on NextCloud instead of paying Apple every money."
tags: [cloud, security, management, ai]
comments: true
created: "2025-01-25"
---
<a target="_blank" href="https://bomonike.github.io/nextcloud"><img align="right" width="100" height="100" alt="nextcloud.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/nextcloud.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

## Community

<a target="_blank" href="https://www.linkedin.com/events/7455578654925041664/" title="Nextcloud Hub 26 Spring June 9, 2026">VIDEO</a>:
NextCloud GmbH began in 2016 in Germany with 12 founders.
NextCloud now has 165 employees, called "Nextclouders":
   * Frank Karlitschek, CEO
   * Jos Poortvliet, VP Communications
   * Arthur Schiwon, Productivity Team Lead
   * <a target="_blank" href="https://www.linkedin.com/in/anna-larch/">Anna Larch</a>, DevRel at Innsbruck
   <br /><br />

https://nextcloud.com/blog/nextcloud-conference-2026-call-for-speakers/
proposals by July 15, 2026 for
https://nextcloud.com/conference-2026/
#NextcloudConf2026 (NextCloud Annual Conference) 
September 19–20, 2026 at <a target="_blank" href="https://maps.app.goo.gl/YiLV7rt5Ze5kVaSm9">CIC Berlin, Lohmühlenstraße 65, 12435 SE Berlin</a>

September 21–25, 2026 is Contributor week

* https://www.youtube.com/@Nextcloud
* https://www.linkedin.com/company/nextcloud-gmbh/posts/

* https://docs.nextcloud.com
* https://github.com/nextcloud/documentation

https://www.linkedin.com/posts/wilsonmar_even-if-news-of-europeans-switching-out-of-activity-7470233202050158592-Wdaq

<a target="_blank" href="https://icecofreezer.com/products/58qt-apl55-dual-zone-12-volt-fridge-refrigerator-iceco">
$959 with free ship</a> 58quarts holds 76 cans or 47x550ml bottles or 12x750ml bottles

## Architecture

The core programming code for the server is open-sourced with 1,048 contributors at:
<ul>
   https://github.com/nextcloud/server
   NOTE the types of files in the repo:
</ul>
   * PHP 56.8%
   * JavaScript 34.3%
   * Vue 3.7%
   * TypeScript 3.4%
   * Gherkin 1.2%
   * SCSS 0.3%
   * Other 0.3%
   <br /><br />

Symfony or Laravel or CodeIgniter?

NOTE: Although PHP is now an archaic language (https://pypl.github.io/PYPL.html?country)
However, there is a large code base that needs maintenance work. <a target="_blank" href="https://w3techs.com/technologies/overview/programming_language">71% of all websites were written in PHP</a>.
And PHP runs faster than Python.
Web clients for Python are clumsy.
Nevertheless, AI capabilities can be called from PHP code.

* https://nextcloud.com/changelog/ shows NextCloud version 34 was released June 9, 2026.
* <a target="_blank" href="https://www.youtube.com/watch?v=aORBb6Vs-EA">How Nextcloud does Free Software right</a>

* Identity and Access Management
   * Univention
   * nubus
   * Microsoft Entra integration
   * https://github.com/nextcloud/user_saml auth
   * https://github.com/nextcloud/user_oidc
* Assistant (AI Assistant)
   * https://nextcloud.com/assistant/
* Files
   * https://nextcloud.com/files/
* Flow (process automation powered by Windmill)
   * https://nextcloud.com/flow/
* <a href="#Groupware">Groupware</a> (Calendar, Contacts, Mail)
   * https://nextcloud.com/groupware/
   * https://github.com/nextcloud/contacts
   * https://github.com/nextcloud/calendar
   * https://github.com/nextcloud/mail

   * <a target="_blank" href="https://nextcloud.com/roundcube/">Roundcube</a> email webapp https://apps.nextcloud.com/apps/mail_roundcube
   * Mail server dovecot
   * Mail server Stalwart
   * Microsoft Exchange integration
* Office (powered by Collabra & EuroOffice)
   * https://nextcloud.com/office/
* Talk (video conferencing, chat, whiteboarding)
* Task
* Deck for project management
* Collectives for Knowledge Management


## ISV program
   * Conduction municipalities
   * HKN Germany AI apps https://www.hkn.de
   * VoxCloud Denmark Sharepoint-like
   * <a target="_blank" href="https://www.leviia.com/en/why-leviia/">Leviia.com</a>
   <br /><br />

## Licensing

Their sign-up pages do not accept Proton and other free accounts.

Up to 100 users are free, more are possible with Nextcloud Enterprise

There are Standard, Premium, Ultimate level licenses.

They take payments in Euros via Paypal. 
PROTIP: Use a Visa/Mastercard that does not charge extra outside the US.


## Hardware

* Unraid
   * <a target="_blank" href="https://www.youtube.com/watch?v=U47nvwXrAOo">VIDEO</a>: "Effortless Nextcloud AIO Setup on Unraid – Complete Stack with Office & Talk" by Spaceinvader One

* Synology DSM - https://x.com/mariushosting?lang=en and 
   * <a target="_blank" href="https://mariushosting.com/how-to-install-outline-on-your-synology-nas/">Synology via Portainer</a>

* TrueNAS SCALE




<a name="Groupware"></a>

## Office Groupware

   * https://github.com/ONLYOFFICE/onlyoffice-nextcloud
   * https://github.com/nextcloud/passman
   * https://github.com/nextcloud/bookmarks
   * https://github.com/alainm23/planify
   * https://github.com/nextcloud/richdocuments = Collabra
   * https://github.com/SergeyMosin/Appointments
   * https://github.com/nextcloud/polls
   * https://github.com/nextcloud/tasks
   * https://github.com/mwalbeck/nextcloud-breeze-dark theme
   * https://github.com/nextcloud/forms
   * https://github.com/nextcloud/deck = 🗂 Kanban-style project & personal management tool for Nextcloud, similar to Trello
   * https://github.com/nextcloud/registration

In June, 2026, Euro-Office was added to NextCloud as part of the 
Edit Word and Excel documents locally, with no Office 365 subscription and my documents staying on my own hardware.
Euro-Office is a AGPLv3 fork of ONLYOFFICE's editor code (in Latvia with Russian origins).
<a target="_blank" href="https://www.linkedin.com/pulse/when-stack-you-built-splits-nextcloud-onlyoffice-peter-von-kaenel-3klae/?trackingId=4o%2B5hc%2FyJY23mD%2Fx8gwIBg%3D%3D">BLOG</a>:

## Install

https://nextcloud.com/devices/

NextCloud provides installers for the full gamut of platforms:

* Clients: Linux, macOS, Windows, Android, iPhone
   * https://github.com/nextcloud/android
   * https://github.com/nextcloud/ios
   * https://github.com/nextcloud/nextcloudpi for Raspberry Pi https://nextcloudpi.com/

Server:
   * https://github.com/nextcloud/docker
   * https://github.com/nextcloud/helm for K8s
   * https://github.com/nextcloud/server is coded in JavaScript using Vue for GUI.
   * https://github.com/nextcloud/app_api
   * VM instance
   * https://github.com/nextcloud/all-in-one (AIO) 📦 The official Nextcloud installation method.
   * https://github.com/ReinerNippes/nextcloud = Ansible playbook to install nextcloud, php, nginx or apache, mariadb or postgres, redis-server, onlyoffice or collabora office

   * https://github.com/nextcloud-libraries/nextcloud-vue
   * https://github.com/nextcloud/notify_push

Integrations:
   * <a target="_blank" href=" https://community.gaia-x.eu/.">Gaia-X</a> federated data infrastructure ecosystem for Europe since 2021.
   * https://github.com/nextcloud/integration_google
   * XWIKI
   * OpenProject
   * Miro
   * Notion
   * Jira
   * WebEX

Apps:
   * https://github.com/nextcloud/nextcloud-docker-dev = Nextcloud development environment using docker-compose
   * https://github.com/nextcloud/ocsms =  Nextcloud/ownCloud PhoneSync server application
   * https://github.com/PaulLereverend/NextcloudVideo_Converter
   * https://github.com/cbcoutinho/nextcloud-mcp-server
   * https://github.com/xperimental/nextcloud-exporter
   * https://github.com/nextcloud/tables
   * https://github.com/nextcloud/notifications
   * https://github.com/nextcloud/activity

   * 1:12:50 Week Planner app
   * 1:13:45 Pantry app & Cookbook


## NextCloud Server Install on macOS

These instructions are an enhanced from Community walkthrough (OrbStack on macOS) at<br />
https://help.nextcloud.com/t/installing-aio-on-mac-os-with-orbstack/238845

PROTIP: Instead of Docker Desktop — https://www.docker.com/products/docker-desktop/
1. If you have an existing Docker: Migrate from Docker Desktop: orb docker migrate
1. Uninstall Docker Desktop:
   ```bash
   brew uninstall --force docker-desktop
   ```

1. Install the OrbStack Docker engine for macOS (lighter, popular for AIO on Mac) — https://orbstack.dev
   ```
   brew install orbstack
   ```
1. Stop Docker Desktop to save resources.
   REMEMBER: Docker Desktop doesn't need to be uninstalled to use OrbStack - a drop-in replacement that works alongside Docker Desktop, and switching is seamless once you open OrbStack.
1. Use Docker context to switch to use orbstack:
   ```bash
   docker context use orbstack
   ```
   <pre>Current context is now "orbstack"</pre>

   ```bash
   docker context ls
   ```
   <pre>
   NAME            DESCRIPTION                               DOCKER ENDPOINT                                   ERROR
   default         Current DOCKER_HOST based configuration   unix:///var/run/docker.sock                       
   desktop-linux   Docker Desktop                            unix:///Users/johndoe/.docker/run/docker.sock     
   orbstack *      OrbStack                                  unix:///Users/johndoe/.orbstack/run/docker.sock   
   </pre>

1. Remove the old Docker Desktop context:
   ```bash
   docker context rm desktop-linux
   ```
   REMEMBER: The default Docker context name is "docker-linux" even though it's running on macOS because Orbstack emulates by default Linux Ubuntu.
1. Start (pop-up) the OrbStack engine to finish setup:
   ```bash
   open -a OrbStack
   ```
   Alternately:
   ```bash
   orb start
   ```
1. In the browser window that opens up, Sign-Up/Sign-in. remember to save your assigned password in a Password Manager.
1. In the app that opens, you can switch back to the website by clicking your user name at the lower-left at 
   https://orbstack.dev/dashboard

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1781161717/nextcloud-orbstack_tpljby.png"><img alt="nextcloud-orbstack.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1781161717/nextcloud-orbstack_tpljby.png" /></a>

1. Switch back to CLI.
1. View the latest release in the browser pop-up:
   ```bash
   open https://github.com/nextcloud/all-in-one/releases
   ```
1. Switch back to CLI.
1. Update to latest version:
   ```bash
   docker version
   orb update
   ```
1. Switch to the app and click "Update".

1. Confirm OrbStack is working and data migrated: Make sure containers, images, and volumes you care about are present:
   ```bash
   docker ps -a
   ```
   <pre>
   CONTAINER ID   IMAGE                                          COMMAND       CREATED       STATUS                   PORTS                                                                                                                                     NAMES
   ffa432a3bf7a   ghcr.io/nextcloud-releases/all-in-one:latest   "/start.sh"   12 days ago   Up 2 minutes (healthy)   0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:8443->8443/tcp, [::]:8443->8443/tcp, 9000/tcp, 0.0.0.0:8081->8080/tcp, [::]:8081->8080/tcp   nextcloud-aio-mastercontainer
   </pre>

1. List images downloaded:
   ```bash
   docker images
   ```
   <pre>
   IMAGE                                               ID             DISK USAGE   CONTENT SIZE   EXTRA
   ghcr.io/nextcloud-releases/aio-domaincheck:latest   e3d1e0ad5836         19MB             0B        
   ghcr.io/nextcloud-releases/all-in-one:latest        f7aa470b2456        272MB             0B    U   
   </pre>
1. List images downloaded:
   ```bash
   docker volume ls
   ```
   <pre>
   DRIVER    VOLUME NAME
   local     nextcloud_aio_mastercontainer
   </pre>

1. Verify Docker works immediately by downloading the default getting-started image:
   ```bash
   docker run -p 80:80 docker/getting-started
   ```
1. List machines: 
   ```bash
   orb list
   ```
   <pre>
      ╭───────────────────────────────────────────────────────╮
      │                                                       │
      │              OrbStack update available!               │
      │              Run "orb update" to update.              │
      │                                                       │
      │  Updates include improvements, features, and fixes.   │
      │                                                       │
      ╰───────────────────────────────────────────────────────╯
   &nbsp;
   NAME    STATE    DISTRO  VERSION  ARCH   SIZE      IP
   ----    -----    ------  -------  ----   ----      --
   ubuntu  running  ubuntu  plucky   arm64  704.7 MB  192.168.???.???
   </pre>

1. Live resources:
   ```bash
   orb top
   ```
   <pre>
   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                         
     8 root      20   0 1245640  15168   6136 S   0.0   0.1   0:00.02 orbstack-agent:  
   </pre>
   REMEMBER: Press control+C to exit.
   
1. Create a Linux machine: 
   ```bash
   orb create ubuntu ci-runner
   ```

1. Restart Docker engine: 
   ```bash
   orb restart docker
   ```

1. Start the AIO mastercontainer using commands that differs from Linux:
   ```bash
   /var/run/docker.sock.raw -e DOCKER_SOCKET_PATH="/var/run/docker.sock.raw"
   ```
1. Make a folder located at variable NEXTCLOUD_DATADIR
   ```bash
   mkdir -p "$HOME/nextcloud-data"
   ```
   REMEMBER: This same folder is referenced by custom Xapps running in Docker containers containing SDK code written in Python, Rust, Typescript, Go. 1:15:39 <a target="_blank" href="https://www.youtube.com/watch?v=9O99bpmTkLo">VIDEO</a>
   See https://nexcloud.com/developer

1. 📦 The official Nextcloud installation method:
   ```bash
   docker run \
   --init \
   --sig-proxy=false \
   --name nextcloud-aio-mastercontainer \
   --restart always \
   --publish 80:80 \
   --publish 8081:8080 \
   --publish 8443:8443 \
   -e DOCKER_SOCKET_PATH="/var/run/docker.sock.raw" \
   -e NEXTCLOUD_DATADIR="/Users/johndoe/nextcloud-data" \
   --volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
   --volume /var/run/docker.sock.raw:/var/run/docker.sock:ro \
   ghcr.io/nextcloud-releases/all-in-one:latest
   ```
   NOTE: Unable to find image 'ghcr.io/nextcloud-releases/all-in-one:latest' it would be pulled locally automatically.

1. Confirm it's running:
   ```bash
   docker ps --filter "name=nextcloud-aio-mastercontainer" --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
   ```
   
   <a id="WebUI"></a>
   
   ## WebUI

1. Open your default browser to open the AIO web interface:
   ```bash
   open https://localhost:8081/login
   ```
1. Click "Advanced" & "Proceed to localhost (unsafe)".

1. Use the IP/localhost form (not a domain) for port 8081 to avoid HSTS issues later. 
1. Accept the self-signed certificate warning
1. Copy the initial password shown and paste in your password manager.
1. Paste the password to log in at <tt>https://localhost:8081/containers</tt>

1. Click the Orb icon at the top of the screen for:
   <img alt="nextcloud-orbstack-menu.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1782240957/nextcloud-orbstack-menu_dbszqx.png" /></a>

1. In that, click "nextcloud-aio", mastercontainer for:
   <img alt="nextcloud-aio-mastercontainer.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1782241466/nextcloud-aio-mastercontainer_klypjs.png" />

   ## Complete the setup wizard:

1. If you don't have a public domain, follow the local-instance guide: 
   https://github.com/nextcloud/all-in-one/blob/main/local-instance.md

1. In the AIO interface, enter a domain (see note below for local-only use).
   AIO won't accept bare IPs or localhost for the Nextcloud instance itself. 
   So a local-only instance still needs a domain that resolves to this machine; 
   
   NOTE: AIO normally wants a real domain with a valid certificate, and it does not support self-signed certs or bare IP addresses for the Nextcloud instance itself. If you only want a local instance with no public exposure, follow the official local-instance guide, which covers setting APACHE_PORT and using a local reverse proxy:<br />
   https://github.com/nextcloud/all-in-one/blob/main/local-instance.md

1. Read the README documentation at:<br />
   https://github.com/nextcloud/all-in-one

1. Adjust the configuration parameters defined by system variables.

1. Set your timezone.
1. Install backup, database(such as PostgreSQL), integrations
1. Install optional add-ons — Office, Talk, ClamAV, Imaginary, etc.) 

1. Click Start containers — downloads and starts everything (~10 min).

1. In the GUI, Containers section, click the arrow to start a stopped container. Example:
   <img alt="nexcloud-containers.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1782241698/nexcloud-containers_z70opz.png">


## Access WebDAV 

WebDAV enables real-time collaborative workspace like Google Drive, Calendar. Create new files, delete old ones, move them around into folders, and edit existing files directly on the server.

WebDAV is an extention to HTTP to over the standard web ports (80 for HTTP, 443 for HTTPS),
so no special network configuration is needed.
WebDAV adds new methods:
   * PUT for upload
   * MKCOL for mkdir: Create a new folder (collection).
   * COPY / MOVE: Copy or move files from one location to another.
   * LOCK / UNLOCK: Prevent other people from editing a file while you are working on it (preventing overwrites).
   * PROPFIND for list: Get detailed information about a file (like its size, creation date, or author).

SETTING - VALUE
* WebDAV Endpoint	/remote.php/dav/files/{username}/{path}
* Auth:	Basic Auth (use App Password, not account password)
* Success Codes:	201 Created, 204 No Content

To setup:
1. Edit <tt>Crate.toml</tt> to add [dependencies]:
   ```toml
   [package]
   name = "nextcloud-uploader"
   version = "0.1.0"
   edition = "2021"

   [dependencies]
   reqwest = { version = "0.12", features = ["blocking", "stream"] }
   tokio = { version = "1", features = ["full"] }
   serde = { version = "1", features = ["derive"] }
   serde_json = "1"
   base64 = "0.22"
   mime_guess = "2"
   anyhow = "1"
   ```
1. Login to <a href="#WebUI">Nextcloud web UI</a>
1. Go to Settings → Security
1. Under Devices & sessions, click Create new app password
1. Use this password in your Rust code (more secure than your main password)
WebDAV allows for file locking, which is great for collaborative work.



```bash
# Build and run:
cargo run

# Or for production, create a release:
cargo build --release
./target/release/nextcloud-uploader
```


## Collabra

* https://apps.nextcloud.com/categories/integration apps QUESTION: Collabra?



## NextCloud Talk – chat, video & audio calls

* https://apps.nextcloud.com/apps/spreed
* https://nextcloud.com/talk
* https://github.com/nextcloud/spreed
* https://github.com/nextcloud/desktop contains the source

1. https://nextcloud.com/install/#desktop-talk to download or
   ```bash
   brew install --cask nextcloud-talk
   brew remove --cask nextcloud-talk
   ```
   REMEMBER: This creates folder <strong>./Nextcloud</strong>

1. REMEMBER: Use double quotes because there a space in the app name:
   ```bash
   open "$HOME/Applications/Nextcloud Talk.app"
   ```
1. Created with install:
   ```bash
   ls -al "$HOME/Library/Application Support/Nextcloud Talk/config.json"
   ```

<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>