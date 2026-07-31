---
layout: post
date: "2026-07-30"
lastchange: "v009 + G2 @openobserve.md"
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


<a target="_blank" href="https://openobserve.ai">openobserve.ai</a> ("O2")
is an "Open source observability platform for logs, metrics, traces, frontend monitoring, pipelines and LLM observability."

<a target="_blank" href="https://www.g2.com/products/openobserve/reviews">g2.com/products/openobserve/reviews</a>
shows high 5/5 ratings. Put in a word if you're familiar with it. 

Here's what makes OpenObserve better and cheaper than Datadog, Splunk, Elasticsearch, Prometheus:
   * Being written in Rust enables higher performant alternative
   * Rust executables deploy as a single binary (without run-times like Java & Python)
   * Runs in Kubernetes from a single Helm chart 
   * Achieves "140x lower storage" from using new Parquet format data storage.
   * Unlike (now "traditional") Prometheus <a href="#LGTM">LGTM</a> which store logs and metrics in different data stores, O2 retrieves them into a "single unified store"
   * O2 has a substitute for Grafana dashboard, but still recognizes PromQL (Prometheus Query Language) specs.

<a target="_blank" href="https://www.linkedin.com/in/isaacinmn/">Isaac Johnson</a> 
presented his large deployment costs vs. competitors GroundCover, DataDog, New Relic:
<a target="_blank" href="https://freshbrewed.science/2026/07/16/openobs.html"><br />
<img alt="2026-07-openobserve-39.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785128397/2026-07-openobserve-39_sv7rme.png" /></a><br />
OpenObserve cost $255/mo for 250 GB of logs, 250 GB metrics, 10 GB traces with 30 hosts and 100 users, 

   <a target="_blank" href="https://openobserve.ai/docs/enterprise-setup/license-and-pricing/">Pricing</a>:
   Enterprise Edition is free continually for up to 50 GB/day (~1.5 TB/month) of data ingestion.
   But you can exceed your license limit up to 3 times per month before being blocked.

   Query is $0.01 per GB with 
   30-Day Non-metric (Logs, Traces) retention and 15-Month Metrics Retention.

## Architecture

1. What does OpenObseve (O2) provide over a traditional observability stack based on Prometheus/Grafana?

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785150905/o2-arch-before-1890x1356_tas5om.png"><img alt="o2-arch-before-1890x1356.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785150905/o2-arch-before-1890x1356_tas5om.png" /></a>

1. Instead of a separate <strong>Query Language</strong> design can run into bottlenecks:
   * Loki — bottlenecks on ingestion streams and chunk storage accessed using LogQL language
   * Tempo — bottlenecks on trace storage and block compaction accessed using TracQL language
   * Mimir — bottlenecks on series cardinality and query concurrency

1. These potential bottlenecks are addressed by the new architecture of OpenObserve's <strong>Unified Agent Ingestion</strong>.
   <a name="Arch"></a>
   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785149990/o2-arch-2258x1372_pqn05k.png"><img alt="o2-arch-2258x1372.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785149990/o2-arch-2258x1372_pqn05k.png" /></a>

1. Instead of a separate Grafana process to manage, OpenObserve provides its <strong>own built-in UI</strong>, all in a <strong>Kubernetes cluster</strong> created by a single <strong>Helm chart</strong>.
1. Within the cluster, OpenObserve is able to lower storage costs because it uses a <strong>Parquet-format Apache Arrow columnar database</strong>


## The company 

<a target="_blank" href="https://www.youtube.com/watch?v=SG0Vv0Gi43Q">VIDEO</a>: 
Founder <a target="_blank" href="https://www.linkedin.com/in/hiprabhat/">Prabhat Sharma</a> revealed that
OpenObserve was rewritten from Go into Rust for higher compression (~40x) using columnar storage with Apache Arrow Parquet SQL to achieve 140x lower storage cost vs. Elasticsearch. 
    * https://www.linkedin.com/company/openobserve/
    * https://openobserve.ai/
    * https://openobserve.ai/docs/

At time of this writing, their <a target="_blank" href="https://www.linkedin.com/newsletters/the-observer-7467642363415347203/">"The Observer" newsletter had 1,737 subscribers</a> from 6,181 followers
DelRel:
   * <a target="_blank" href="https://www.linkedin.com/in/manas-sharma-a49295220">Manas Sharma</a>
   * <a target="_blank" href="https://www.linkedin.com/in/gorakhnathyadav7">Gorakhnath Yadav</a>

OpenObserve is open-sourced with a AGPL 3.0 license for local install from:
   * https://github.com/openobserve/openobserve
   * https://github.com/openobserve (organization) has 156 repos that include:

   * https://github.com/openobserve/playwright-crx
   * https://github.com/openobserve/sdr_patterns for Sensitive Data Redaction patterns
   * https://github.com/openobserve/openobserve-helm-chart
   * https://github.com/openobserve/openobserve-sdk-ios
   * https://migration.openobserve.ai/


## Quickstart demos

There are three ways to obtain a demo environment installer with credentials baked in, and install locally on a Mac:

1. Install Helm on your local machine being observed.
   ```sh
   brew install helm
   helm version
   ```
   <pre>
   version.BuildInfo{Version:"v4.2.3", GitCommit:"43e8b7feece8beb0fcba47059ec9b522fd929a64", GitTreeState:"clean", GoVersion:"go1.26.5", KubeClientVersion:"v1.36"}
   </pre>

1. Install OpenObserve demo locally:
    <a href="#DockerDemo">A. Docker demo image download</a><br />
    <a href="#curldemo">B. curl and run</a><br />
    <a href="#clouddemo">C. cloud run</a>
    
The software is localized in 11 languages: English, German, French, Italian, Japanese, Korean, Dutch, Portuguese, Spanish, Turkish, Chinese (Simplified)

If you have the demo environment already running, <a href="#RunDemo">go to Run Demo</a>.

<hr />

<a id="DockerDemo"></a>

### A. Docker demo image download & install

1. Install Docker Desktop, if you don't already have it.
1. Start Docker Desktop and configure for Kubernetes.
1. Download the Docker image:
   ```sh
   docker pull public.ecr.aws/zinclabs/openobserve:v0.91.2
   ```
1. Optionally, get the disk space used by the image:
   ```sh
   docker image ls | grep openobserve
   ```
   Observe the "309MB" in the response (at time of writing):
   <pre>
   public.ecr.aws/zinclabs/openobserve:v0.91.2        a39535f64535        309MB             0B   U
   </pre>

1. To run using default email, password, and configurations for a demo baked into the Docker image:
    ```sh
    docker run -v $PWD/data:/data -e ZO_DATA_DIR="/data" -p 5080:5080 -e ZO_ROOT_USER_EMAIL="root@example.com" -e ZO_ROOT_USER_PASSWORD="Complexpass#123" public.ecr.aws/zinclabs/openobserve:v0.91.2
    20
    ```
1. <a href="#RunLocalDemo">Go to Run Local Demo</a>.


<a id="curldemo"></a>

### B. curl and run demo locally

1. Create and navigate to a folder to receive the download, such as "o2".
1. Switch to an internet browser at:
   <a target="_blank" href="https://openobserve.ai/downloads/">https://openobserve.ai/downloads</a>

1. Select Edition: "Enterprise" and Deployment Mode: "Single Node".
1. Click operating system "MacOS".
1. If you want to confirm valid download, double-click the SHA256 UUID to copy to your Clipboard and switch to a CLI Terminal to save it in a file:
   ```sh
   export SHA1=$(pbpaste)
   ```
1. Click the copy icon for the curl command to capture the Quick Install Script into your Clipboard.

   REMEMBER: There is not "brew install openobserve" available instead.

   ```sh
   curl -L https://raw.githubusercontent.com/openobserve/openobserve/main/downloadO2.sh | sh -s o2-enterprise v0.91.3
   ```
   Observe that the latest version available (v0.91.3 at the time of this writing) has been automatically updated from https://github.com/openobserve/openobserve/releases/
   <pre>
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                      Dload  Upload   Total   Spent    Left  Speed
    100  1445  100  1445    0     0   5023      0 --:--:-- --:--:-- --:--:--  5034
    Detecting platform...
    Platform: darwin
    Detecting architecture...
    Architecture: arm64
    Downloading: https://downloads.openobserve.ai/releases/o2-enterprise/v0.91.3/openobserve-ee-v0.91.3-darwin-arm64.tar.gz
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                      Dload  Upload   Total   Spent    Left  Speed
    100  124M  100  124M    0     0  10.8M      0  0:00:11  0:00:11 --:--:-- 11.4M
    Extracting...
    ✅ Download and extraction complete!
    </pre>

1. Optionally, generate a SHA256 for the downloaded file and compare versus the previous SHA saved to variable SHA1 :
   ```sh
   export SHA2=$(shasum -a 256 openobserve | awk '{print $1}')
   diff <(echo "$SHA1") <(echo "$SHA2")
   ```

1. Run openobserve for demo purposes using default credentials within the file:
   ```sh
   export ZO_ROOT_USER_EMAIL=root@example.com
   export ZO_ROOT_USER_PASSWORD=Complexpass#123
   ./openobserve
   ```
   SECURITY PROTIP: The above exposes secrets. Instead, during regular/production usage, to protect your password, create a shell file to run OpenObserver after looking up  passwords and other secrets from a secrets vault and peform the export.

1. Click "Allow" to the pop-up message "Do you want the application "openobserve" to accept incoming network connections? Clicking Deny may limit the application’s behavior. This setting can be changed in the Firewall pane of Network Settings."

1. <a href="#RunLocalDemo">Go to Run Local Demo</a>.



<a id="clouddemo"></a>

### C. cloud run your own account

OpenObserve holds its users in several geographic ares within two cloud providers (AWS and Azure). So open a cloud account in AWS and/or Azure using the email you will use with OpenObserve.

1. Switch to an internet browser at:
   <a target="_blank" href="https://openobserve.ai/downloads/">https://openobserve.ai/downloads</a>

1. Click "Log In" to select a geographic area within a cloud vendor (AWS or Azure).
   <img width="200" alt="o2-geo-clouds.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785124209/o2-geo-clouds_fqc0bh.png" />

1. Provide your cloud email, password, 2FA, and consent for the cloud you selected.
1. If you selected Azure, you'll arrive at
   <a target="_blank" href="https://us2.openobserve.ai/web/">https://us2.openobserve.ai/web</a>
1. Click "Start your 14-day Trial". Note the date in your secrets vault utility.

   Observe that no credit card is requested before a subscribing.

1. <a href="#RunLocalDemo">Go to Run Local Demo</a>.


<a id="RunLocalDemo"></a>

## Run Local Demo

1. Switch to an intenet browser to URL: 
   <a target="_blank" href="http://localhost:5080/web/login">http://localhost:5080/web/login</a>

1. Double-click the default User Email and Password baked into the installer and paste to Login:
   * User Email: root@example.com
   * Password: Complexpass#123

1. Follow instructions illustrated at<br />
   <a target="_blank" href="https://freshbrewed.science/2026/07/16/openobs.html#windows-logs">here<br />
   https://freshbrewed.science/2026/07/16/openobs.html#windows-logs</a>


<a id="configacct"></a>

## Configure Dashboard

When you're ready to use your own account:

1. Look at the documentation website:<br />
   <a target="_blank" href="https://openobserve.ai/docs/">https://openobserve.ai/docs</a>

At the OpenObserve dashboard:

1. Click the user icon at the upper-right to "Manage Theme". 
1. Select "Dark", then "O2 Signature" or your Custom Color. Click "X" to exit.

   ### Menu

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785125785/o2-menu-data-321x761_yk4ch5.png"><img align="right" width="321" src="o2-menu-data-321x761.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785125785/o2-menu-data-321x761_yk4ch5.png" /></a>

1. Menu items "AI", "Incidents", and "Billing" may not appear in your menu.

   ### Organization, Users

1. Click the "default" pull down at the top-right. Observe that the URL of the page is the "org_identitifier=" string.
1. Bookmark the URL with the org_identifier.

1. Click "IAM" at the bottom of the left menu.
1. Click "Organizations" to optionally click the pencil icon to change from "Default" to your preferred name.
1. Optionally, click "New organization".

1. Add User Groups, Users, Roles, Invitations for each organization.
1. CLick "Create New Token" to create an "Ingestion Tokens" for each injestion service.

1. Click "Settings" at the bottom of the left menu.
1. Here is where you can delete an organization.

1. Click on the left menu any item ("Logs, Metrics, Traces, AI, RUM, Dashboards, Alerts, Incidents, Data") for "Data sources" to appear.
1. Configured Kubernetes to run within
   three major operating sytems:
   * Windows
   * Linux
   * macOS
1. O2 also runs within the three major clouds:
   * Amazon Web Services (AWS)
   * Google Cloud Platform (GCP)
   * Microsoft Azure
1. Configure Traces with OpenTelemetry spans
1. Configure Real User Monitoring (RUM)

   ### Data Sources

   <img alt="o2-data-menu-1051x91.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785128358/o2-data-menu-1051x91_whwkyu.png" />

   These were identified in the <a href="#Arch">Architecture diagram above</a> and documentation at<br />
   <a target="_blank" href="https://openobserve.ai/docs/ingestion/">https://openobserve.ai/docs/ingestion</a>

1. Configure Data Source for macOS. Click the icon to get the code to "Install the Agent":
   ```sh
   curl -sSL https://raw.githubusercontent.com/openobserve/o2-datasource/main/k8s/install.sh | bash -s --    --cluster-name=cluster1   --o2-url=http://localhost:5080   --org-id=default   --access-key=...
   ```
   <pre>
   ✓ cert-manager installation initiated
   ℹ Waiting for cert-manager webhook to be ready (timeout: 300s)...
   </pre>

1. Click "Test" button to "Verify Data in OpenObserve".
1. Click "Dashboards" menu, "New Dashboard", named "???.
1. Click "Add panel". TODO:


## Unified Log setting

The unified log is high volume. To reduce it, set LEVEL or PREDICATE in
   ```
   /opt/openobserve-collector/macos-unified-log.sh 
   ```
and run:
   ```
   sudo launchctl kickstart -k system/ai.openobserve.macos-unified-log
   ```


### Specific O2 Features

1. Click "OpenObserve Features" for this pop-up:
   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1785124347/o2-features-1399x705_doafqw.png"><img src="o2-features-1399x705.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1785124347/o2-features-1399x705_doafqw.png" /></a>

   OpenObserver provides access to 30+ prebuilt dashboards to kickoff your observability strategy. 

## VRL

VRL (Vector Remap Language) is a stateless scripting language initiated by Datadog's open-source team for transforming and processing observability data (logs, metrics, and traces): parse, filter, enrich, or reshape telemetry events before they reach storage or dashboards. 

<a target="_blank" href="https://github.com/vectordotdev/vrl">https://github.com/vectordotdev/vrl</a>
is built using Rust as a <a target="_blank" href="https://crates.io/crates/vrl">https://crates.io/crates/vrl</a>

Play on the <a target="_blank" href="https://playground.vrl.dev/">vrl.dev Playground</a>

https://github.com/vectordotdev/vrl/blob/main/examples/simple.rs


## Tutorials

TODO:

## References

TODO:


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
