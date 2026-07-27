---
layout: post
date: "2026-07-26"
lastchange: "v001 init @openobserve.md"
url: https://bomonike.github.io/openobserve
file: "openobserve"
title: "Open Observability"
excerpt: "Prometheus logs, metrics, traces faster into a more compact database with built-in GUI instead of Grafana"
tags: [Prometheus, Metrics, Observability]
image:
# openobserve-1900x500.png
  feature: https://user-images.githubusercontent.com/300046/136715984-3033af38-810d-4b29-a555-aac392b374ac.png
  credit: openobserve.org
  creditlink: https://www.openobserve.ai/
comments: true
created: "2026-07-26"
---
<i>{{ page.excerpt }}</i>

<a target="_blank" href="https://openobserve.ai">openobserve.ai</a> (O2) 
is an "Open source observability platform for logs, metrics, traces, frontend monitoring, pipelines and LLM observability. A sophisticated, simple and highly performant alternative to Datadog, Splunk, and Elasticsearch with 140x lower storage costs and single binary deployment." Vs. LGTM, O2 has 1 binary or 1 Helm chart and a Single unified store (local disk, S3, GCS, Azure Blob) Uses PromQL (for metrics). "petabyte scale"

<a target="_blank" href="https://www.linkedin.com/in/isaacinmn/">Isaac Johnson</a> at Abbott in St. Paul 
<a target="_blank" href="https://freshbrewed.science/2026/07/16/openobs.html">presented this</a> showing large deployment costs vs. competitors GroundCover, DataDog, New Relic:<br />
<img alt="2026-07-openobserve-39.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785128397/2026-07-openobserve-39_sv7rme.png" /></a>
OpenObserve cost $255/mo for 250 GB of logs, 250 GB metrics, 10 GB traces with 30 hosts and 100 users, 

<a target="_blank" href="https://www.youtube.com/watch?v=SG0Vv0Gi43Q">VIDEO</a>: 
Founder <a target="_blank" href="https://www.linkedin.com/in/hiprabhat/">Prabhat Sharma</a> revealed that
OpenObserve was rewritten from Go into Rust for higher compression (~40x) using columnar storage with Apache Arrow Parquet SQL to achieve 140x lower storage cost vs. Elasticsearch. 
    * https://www.linkedin.com/company/openobserve/
    * https://openobserve.ai/
    * https://openobserve.ai/docs/

OpenObserve is open-sourced with a AGPL 3.0 license for local install from:
   * https://github.com/openobserve/openobserve
   * https://github.com/openobserve (organization) has 156 repos

1. Start Docker Desktop and configure for Kubernetes.
1. Download the Docker image is 309MB from:
   ```sh
   docker pull public.ecr.aws/zinclabs/openobserve:v0.91.2
   ```
1. To run using the default email and password:
    ```sh
    docker run -v $PWD/data:/data -e ZO_DATA_DIR="/data" -p 5080:5080 -e ZO_ROOT_USER_EMAIL="root@example.com" -e ZO_ROOT_USER_PASSWORD="Complexpass#123" public.ecr.aws/zinclabs/openobserve:v0.91.2
    20
    ```
1. Switch to an intenet browser to URL: 
   <a target="_blank" href="http://localhost:5080/web/login">http://localhost:5080/web/login</a>
1. Login with the default User Email and Password from above.

* https://github.com/openobserve/playwright-crx
* https://github.com/openobserve/sdr_patterns for Sensitive Data Redaction patterns
* https://github.com/openobserve/openobserve-helm-chart
* https://github.com/openobserve/openobserve-sdk-ios
* https://migration.openobserve.ai/


## The company

DelRel:
   * <a target="_blank" href=https://www.linkedin.com/in/manas-sharma-a49295220">Manas Sharma</a>
   * <a target="_blank" href="https://www.linkedin.com/in/gorakhnathyadav7">Gorakhnath Yadav</a>


<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785129967/o2-arch-before_qa77jh.png"><img alt="o2-arch-before.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785129967/o2-arch-before_qa77jh.png" /></a>

## Select geography & cloud

1. OpenObserve holds its users in several geographic ares within two cloud providers (AWS and Azure). So open a cloud account in AWS and/or Azure using the email you will use with OpenObserve.

1. Click "Log In" to select a geographic area within a cloud vendor (AWS or Azure).
   <img alt="o2-geo-clouds.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785124209/o2-geo-clouds_fqc0bh.png" />

1. Provide your cloud email, password, 2FA, and consent for the cloud you selected.
1. If you selected Azure, you'll arrive at
   <a target="_blank" href="https://us2.openobserve.ai/web/">https://us2.openobserve.ai/web</a>
1. Click "Start your 14-day Trial". Note the date in your secrets vault utility.

   Observe that no credit card is requested before a subscribing.

   ## Configure Dashboard

   At the OpenObserve dashboard:

1. Click the user icon at the upper-right to "Manage Theme". 
1. Select "Dark", then "O2 Signature" or your Custom Color. Click "X" to exit.

   ### Organization, Users

1. Click the "default" pull down at the top-right. Observe that the URL of the page is the "org_identitifier=" string.
1. Bookmark the URL with the org_identifier.

   ### Menu

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785125785/o2-menu-data-321x761_yk4ch5.png"><img align="right" width="321" src="o2-menu-data-321x761.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785125785/o2-menu-data-321x761_yk4ch5.png" /></a>
1. Click "IAM" at the bottom of the left menu.
1. Click "Organizations" to optionally click the pencil icon to change from "Default" to your preferred name.
1. Optionally, click "New organization".

1. Add User Groups, Users, Roles, Invitations for each organization.
1. CLick "Create New Token" to create an "Ingestion Tokens" for each injestion service.

1. Click "Settings" at the bottom of the left menu.
1. Here is where you can delete an organization.

1. Click on the left menu any item ("Logs, Metrics, Traces, AI, RUM, Dashboards, Alerts, Incidents, Data") for "Data sources" to appear


   ### Features

1. Click "OpenObserve Features" for this pop-up:
   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785124347/o2-features-1399x705_doafqw.png"><img src="o2-features-1399x705.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785124347/o2-features-1399x705_doafqw.png" /></a>

## Cloud signup

Learn how to ingest data, create your first dashboard, and configure alerts in 15 minutes with OpenObserve. Join for access to 30+ prebuilt dashboards to kickoff your observability strategy. Additionally, we will walk through some of the most popular and lesser-known capabilities of the platform, and answer your questions live.

## Local install

1. At https://openobserve.ai/downloads/ select Edition: "Enterprise" and Deployment Mode: "Single Node".
1. Click operating system "MacOS".
1. If you want to confirm valid download, double-click the SHA256 UUID and switch to your utility and paste.
1. Click the copy icon for the curl command.

   REMEMBER: There is not "brew install openobserve".

1. SECURITY PROTIP: To protect your password, create a shell file to run OpenObserver after looking up  passwords and other secrets from a secrets vault and peform the export instead of exposing commands such as:
   ```
   export ZO_ROOT_USER_EMAIL=root@example.com
   export ZO_ROOT_USER_PASSWORD=Complexpass#123
   ```
1. The shell would execute:
   ```sh
   ./openobserve
   ```

1. Get a license key for your business email: ???

   https://openobserve.ai/docs/enterprise-setup/license-and-pricing/
   Enterprise Edition is free for up to 50 GB/day (~1.5 TB/month) of data ingestion.
   But you can exceed your license limit up to 3 times per month before being blocked.

   Query is $0.01 per GB with 
   30-Day Non-metric (Logs, Traces) retention and 15-Month Metrics Retention.

1. View one analyst's cost comparison of OpenObserve vs. New Relic, DataDog, GroundCover at
   https://freshbrewed.science/2026/07/16/openobs.html
   shows OpenObserve costing $10/mo for 10 GB/mo of logs and 5 GB/mo for metrics with 8 hosts and 7 users.

   


<img alt="o2-data-menu-1051x91.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785128358/o2-data-menu-1051x91_whwkyu.png" />


## Tutorials


https://www.udemy.com/course/data-analysis-with-polars-and-python/
$12.99 at Udemy for 22 hours on-demand video course "Data Analysis with Polars and Python"
by Boris Paskhaver

https://github.com/paskhaver/data-analysis-with-polars-and-python

## References

https://freshbrewed.science/2026/07/16/openobs.html


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
