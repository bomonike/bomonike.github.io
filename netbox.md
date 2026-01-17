---
layout: post
date: "2026-01-17"
lastchange: "26-01-17 v002 + hero img :netbox.md"
url: https://bomonike.github.io/netbox
file: "netbox"
title: "netbox"
excerpt: "Web app to collaborate on a central source of truth for automating networks and data center specifics."
tags: [datacenter, apps]
image:
# feature: netbox-hero-1064x247.png
  feature: https://res.cloudinary.com/dcajqrroq/image/upload/v1768637768/netbox-hero-1064x247_kjyei3.png
  credit: netboxlabs.com
  creditlink: https://netboxlabs.com
comments: true
created: "2026-01-17"
---
<i>{{ page.excerpt }}</i>
{% include _toc.html %}


Instead of spreadsheets, NetBox provides a web app for data center and network operators to collaboratively build and manage complex networks -- across on‑prem, cloud, and hybrid -- by providing a central authoritative source of truth for access by network automation APIs and extensions -- the desired state of a network versus its operational state.

<img alt="netbox-concepts-1156x668.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1768635604/netbox-concepts-1156x668_kdpolg.png">


## Company

NetBox Labs (<a target="_blank" href="https://netboxlabs.com/">netboxlabs.com</a>) is the commercial steward of NetBox source code.

NetBox software was first open-sourced (under Apache 2) June, 2016 at

<a target="_blank" href="https://github.com/netbox-community/netbox">
https://github.com/netbox-community/netbox</a>

Developer Jeremy Stretch worked at DigitalOcean.

https://github.com/netbox-community/netbox/releases

netbox-community/netbox-docker
🐳 Docker Image of NetBox

https://www.linkedin.com/company/netboxlabs/

https://netdev-community.slack.com/join/shared_invite/zt-3m82tqfj9-kv_tBWr7fTE92y0FZ1NrlQ
Slack NetDev community

## NetBox videos

https://www.youtube.com/results?search_query=netboxlabs

https://www.youtube.com/watch?v=hAfCbB-4cyk
Intro to NetBox

<img align="right" alt="netbox-menu-4.3.3-254x770.png" width="254" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1768573255/netbox-menu-4.3.3-254x770_hjwdha.png">
Netbox is the successor to legacy IPAM (IP Address Management) and DCIM (Data Center Infrastructure Management) applications that inventory racks, devices, cabling, power feeds, and cooling.

NetBox provides an end‑to‑end view across service → device → port → cable → rack → power, cooling, plus its IPs and DNS. 


https://netboxlabs.com/docs/copilot/#what-is-netbox-copilot
NetBox AI Copilot enables users to use natural language to ask questions about their infrastructure.

https://netboxlabs.com/products/netbox-assurance/
The "NetBox Assurance" service continuously monitors network and infrastructure to detect and remediate operational drift, so deviations are quickly caught and corrected.

In 2024, NetBox released its Diode ingestion service to simplify bulk data import and keep your network source of truth accurate. 

Demo Data is reset nightly at 04:00 UTC.
From the footer "REST API" icon:
   * https://demo.netbox.dev/api/docs/?format=openapi swagger
   <br /><br />


## Pricing

Included in the NetBox Cloud free plan:
Private instance
* 100 devices plus $7.50 per hundred devices per month
* 500 IP addresses plus  $1.50 per hundred IP addresses per month
* 10k API requests per month plus $2 per thousand API requests per month
* Automatic upgrades and backups
* 2 Operational branches plus $10 per operational branch per month
* Up to 1 million AI credits per month

https://netboxlabs.com/pricing/
Helm Deployment & SAML requires a premium licence.


## Sign-Up Authentication

https://netboxlabs.com/products/free-netbox-cloud/

Limited to:
* https://auth.netboxlabs.com/u/login/password
* Google
* Microsoft Account
* GitHub
* (No Amazon, GCP, etc.)
<br /><br />

After email verification, open your authenticator app to add the "NS1." account. I got "Application error: a client-side exception has occurred (see the browser console for more information)."


## Code Open Source

NetBox is built on the Django Python 3.12, 3.13, 3.14 framework and utilizes a PostgreSQL 14+ database. It runs as a gunicorn or uWSGI WSGI service behind a nginx or Apache HTTP server. Task queuing uses Redis/django-rq 4.0+.

<a target="_blank" href="https://netboxlabs.com/docs/netbox/installation/">
<img alt="netbox_app_stack-647x390.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1768537591/netbox_app_stack-647x390_hm5zum.png" /></a>



## Setup Configuration

See <a target="_blank" href="https://www.apalrd.net/posts/2025/iaac_netbox/">Instructions</a> from <a target="_blank" href="https://www.youtube.com/watch?v=p3J3f2QWFGE">VIDEO</a> apalrd's adventures


<tt>$INSTALL_ROOT/netbox/netbox/configuration.py</tt> used by startup is based on the default <tt>configuration_example.py</tt> provided.

PROTIP: The value of peppers ( at least 50 characters in length) created by $INSTALL_ROOT/netbox/generate_secret_key.py to generate hases for  v2 API tokens should not be in the configuration file but referenced in system environment variables at initialization time.
https://github.com/Onemind-Services-LLC/netbox-secrets

Integrations include:

* https://github.com/e-breuninger/terraform-provider-netbox
* Ansible
* https://github.com/netbox-community/pynetbox the Python API client library for NetBox.

https://netboxlabs.com/plugins/
* https://github.com/FlxPeters/netbox-plugin-prometheus-sd


## Tutorials

<a target="_blank" href="https://www.youtube.com/watch?v=zT82jOUCcW4&list=PL7sEPiUbBLo_iTds-NV-9Tu05Gg2Aj8N7&index=1">VIDEO</a>: From 2023:
A short course designed to take new NetBox users from ‘Zero to Hero’,
referencing:
https://github.com/netbox-community/netbox-zero-to-hero

<a target="_blank" href="https://www.youtube.com/watch?v=p2FVzDbSkMo&list=PLxdX87ytOj-evp4ODJiaqH2Pxo4Xwomdn">"Packets to Purpose" YouTube channel</a>: Install on Ubuntu, Setup Orgs, Add Racks and devices, Patch Panels, 


## References

https://www.youtube.com/watch?v=b-H-tSlZmZA
Jeremy Cioara

