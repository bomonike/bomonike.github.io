workflows.md

Temporal Technologies (at <a target="_blank" href="https://www.Temporal.io/">Temporal.io</a>)
provides a scalable "orchestrator" that manages application states within distributed mission-critical workflows,
especially a set of <strong>long-running asynchronous</stong> services working together.

Temporal's job is to keep each service to a <strong>consistent state</strong>.

Temporal's application state tracking enables automatic retries, <a target="_blank" href="https://www.youtube.com/watch?v=JK7WLK3ZSu8">timeouts</a>, rollbacks due to process failures.

The system is a part of overall efforts toward <a target="_blank" href="https://www.mckinsey.com/capabilities/risk-and-resilience/our-insights/a-technology-survival-guide-for-resilience">organizations</a> <a target="_blank" href="https://www.forrester.com/report/assess-your-technology-resilience-maturity/RES179157">assessing their resilience maturity</a>.

Temporal is open-sourced under MIT licensing at
<a target="_blank" href="https://github.com/temporalio/temporal">https://github.com/temporalio/temporal</a>
so a self-hosted local environment can be setup locally instead of running
Temporal Services in the Temporal-managed Temporal Cloud.

Each Temporal Service coordinates the execution of app Workflows and Activities based on a pre-defined map.

Each <strong>Worker</strong> is a wrapper around compiled Workflow and Activity code.
A Worker's only job is to execute the Activity and Workflow functions and communicate the results back to the Temporal Server.

Temporal is like Istio for Kubernetes, which provides a proxy sidecar to handle communications so app developers don't need to write code in every program to detect and handle failures, and <strong>fail gracefully</strong> from server crashes or network outages. Temporal allows developers to "write code as if failures don't even exist" and focus more on business logic.

PROTIP: See the <a target="_blank" href="https://en.wikipedia.org/wiki/Mr_Bates_vs_The_Post_Office">ITV series</a> (<a target="_blank" href="https://www.pbs.org/wgbh/masterpiece/shows/mr-bates-vs-the-post-office/#">on US PBS</a>) about the UK Postal Service (between 1999 and 2015) wrongly <a target="_blank" href="https://inews.co.uk/news/politics/postmasters-wrongly-convicted-theft-faulty-600000-2625440">sent 900 workers to prison</a> for stealing when the problem was the system's failure to properly handle failed transactions, and the <a target="_blank" href="https://inews.co.uk/news/politics/postmasters-wrongly-convicted-theft-faulty-600000-2625440">government covered it up</a>.

Of course, developers still need to code for <strong>idempotent execution</strong>.

A <strong>Query</strong> is a synchronous operation used to report the state of a Workflow Execution.

Temporal and Durable Execution encapsulate most of the complexities of event-driven architecture.
This allow developers to focus on what matters: business logic.

Unlike <a target="_blank" href="https://wilsonmar.github.io/kubernetes/">Kubernetes</a>,
Temporal does not concern itself with containers but with REST/RPC services of any kind (which can be run within a container).


## Temporal people

Moscow-born and now Bellevue, Washington resident <a target="_blank" href="https://www.linkedin.com/in/fateev/">Maxim Fateev</a>, Temporal Co-Founder and CEO, worked at Google and Uber after working on the Amazon Queue Service, where he realized that <a target="_blank" href="https://www.youtube.com/watch?v=wIpz4ioK0gI&t=9m20s">VIDEO: "queues are not actually not a good way to link services together, if you have complex transactions"</a>.

He built the Temporal team partly with people who created Uber's Cadence system,
such as CTO <a target="_blank" href="https://www.linkedin.com/in/samar-abbas-381997/">Sama Abbas</a>, who worked on Microsoft's Azure Durable Functions.

Head of Product is <a target="_blank" href="https://www.linkedin.com/in/ryland-goldstein-3467b710a/">Ryland Goldstein</a>.

## Customers

<a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY">VIDEO: "Temporal in 7 Minutes - the TL;DR  Intro"</a> (in 2022) mentions that Netflix uses Temporal for its Spinniker product.
Other users are Stripe, Snap, etc. Customer presentations at Temporal's 2023 conference include
<a target="_blank" href="https://www.youtube.com/watch?v=3ybR_6dHkWM&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=5&pp=iAQB">JPMC</a>, <a target="_blank" href="https://www.youtube.com/watch?v=St5nSSZScHg&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=3&pp=iAQB">Yum! Brands</a>, <a target="_blank" href="https://www.youtube.com/watch?v=vRfbu5WFTDA&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=7&pp=iAQB">Twilio</a>, <a target="_blank" href="https://www.youtube.com/watch?v=vRfbu5WFTDA&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=7&pp=iAQB">HashiCorp</a>, <a target="_blank" href="https://www.youtube.com/watch?v=Nm35-TVp8kY&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=17&pp=iAQB">Instacart</a>.
<a target="_blank" href="https://www.youtube.com/watch?v=QDKhrfxg3yw">VIDEO</a>: DataDog is "one of the most aggressive users of Temporal".

## Cloud costs

Temporal makes money by providing a managed AWS cloud service (through AWS PrivateLink networking from <a target="_blank" href="https://docs.temporal.io/cloud/service-availability">12+ regions</a>) at <a target="_blank" href="https://temporal.io/cloud/">https://temporal.io/cloud</a> (documentation at <a target="_blank" href="https://docs.temporal.io/cloud">https://docs.temporal.io/cloud</a>) <a target="_blank" href="https://www.youtube.com/watch?v=MF6axzFZg7o">VIDEO</a>: building it.

   * Sign up to work in the Google or Microsoft Azure cloud with $1,000 Credits.
   * $0.042/GBhr is charged for Active Storage is the Event History size of running Workflows
   * $0.00042/GBhr is charged for Retained Storage is the size of closed Workflows during their retention period.

   * After 90 days, there is a <strong>$200 monthly fee</strong> ($2,000 for premium support) plus pay as you go fees of $25 per million <a href="#Actions">Actions</a> per month. <a target="_blank" href="https://www.youtube.com/watch?v=Uu11alfVdTU&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=7&pp=iAQB">VIDEO</a>: An Action is the fundamental pricing unit in Temporal Cloud.
   * Additional discounts are offered up to 70% with higher volume usage and credits purchase. See https://docs.temporal.io/cloud/pricing

Billing can be <a target="_blank" href="https://aws.amazon.com/marketplace/pp/prodview-hbcjz7wcl2mvu?sr=0-2&ref_=beagle&applicationId=AWSMPContessa">AWS Marketplace</a>

https://docs.temporal.io/self-hosted-guide

## Rate of processing

APS (Actions Per Second) measures how many <strong>high-level operations (Actions)</strong> are performed each second within a Temporal Cloud.
APS is the basis for throttling Actions such as starting or signaling a Workflow within the limits set for each Namespace.

RPS (Requests Per Second) measures how many <strong>low-level gRPC requests</strong> are issued in the Temporal Service, both in self-hosted Temporal and Temporal Cloud.
RPS is used to manage rates at the service level, such as the Frontend, History, or Matching Services.

## Latency

The Temporal Platform has built-in Visibility APIs to get the state of a Workflow Execution at any time, as well as metric endpoints to monitor the health of the platform.

<a target="_blank" href="https://docs.temporal.io/cloud/service-availability#latency">
"Temporal Cloud has a p99 latency SLO of 200ms per region."</a>

Temporal reports that, over a week-long period In March 2024, p90 and p99 latancy for starting and signaling Workflow Executions for specific Operations:
    * StartWorkflowExecution	24ms	54ms
    * SignalWorkflowExecution	14ms	40ms
    * SignalWithStartWorkflowExecution	24ms	61ms


## Glossary of Terms

https://docs.temporal.io/glossary defines terms such as:
    Activity Definition,
    Activity Execution,
    Advanced Visibility,
    Child Workflow Execution,
    Custom Data Converter,
    List Filters,
    Search Attributes,
    Side Effect,
    Task Queue,
    Temporal Client,
    Temporal Web UI,
    Worker,
    Workflow Definition,
    Workflow Execution,
    Workflow Id,
    Workflow Id Reuse Policy,
    Workflow Type

Temporal provides tutorial https://learn.temporal.io/getting_started/go/first_program_in_go/
to explore core terminology and concepts.

<a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY&t=5m43s">VIDEO</a>
<img width="935" alt="temporal-svcs-986x818.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723147127/temporal-svcs-986x818_q3rdx6.png"></a>

Unlike <a target="_blank" href="https://wilsonmar.github.io/airflow/">Apache Airflow</a>, which also offers <strong>Workflow as Code</strong>, Temporal doesn't run code but works as external observers. Also Temporal is multi-language while Airflow is Python only.


## Socials

* <a target="_blank" href="https://status.temporal.io/">Temporal Cloud status over last 90 days</a> (subscribe to updates)
* <a target="_blank" href="https://learn.temporal.io/assets/files/zines-6425991d04e05e05031aa2b4a2ccddf4.pdf">Zines</a> comics to introduce Durable Execution, What Happens If An External Service Goes Down?, and How Does The Event History Guarantee Durable Execution?
* <a target="_blank" href="https://temporal.io/how-temporal-works/">How Temporal Works</a>
* <a target="_blank" href="https://www.youtube.com/@Temporalio">YouTube channel</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=pfArIYRVsbo&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r">videos</a> from "Replay": Temporal's 3-day annual conference

* <a target="_blank" href="https://temporal.io/blog">Blog</a>
* <a target="_blank" href="https://docs.temporal.io/">Docs</a>
* <a target="_blank" href="https://learn.temporal.io/courses">courses</a> (requires login to separate temporal.talentlms.com) uses <a target="_blank" href="https://gitpod.io/#https://github.com/temporalio/edu-101-go-code">Gitpod</a> with its extension in VSCode online:
   * Temporal 101 <a target="_blank" href="https://temporal.talentlms.com/catalog/info/id:126">with Go</a> on  temporalio/edu-101-go-code
   * Temporal 102: Exploring Durable Execution
   * Versioning
   * Interacting with Workflows (search attributes, cancel workflow, Async Complete)
   * Securing Application Data
   * Introduction to Temporal Cloud

* <a target="_blank" href="https://www.glassdoor.com/Overview/Working-at-Temporal-WA-EI_IE6755876.11,22.htm">Glassdoor</a>
* <a target="_blank" href="https://www.indeed.com/cmp/Temporal-Technologies">Indeed</a> has no ratings.
* LinkedIn

* <a target="_blank" href="https://temporal.io/slack/">Slack</a>
* <a target="_blank" href="https://community.temporal.io/">Support forum</a>
* Discord community <a target="_blank" href="https://www.youtube.com/watch?v=MN30Xqk-Qxk">VIDEO</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=fcHEti0Doh8">VIDEO: Summer Camp</a>

* <a target="_blank" href="https://replay.temporal.io/">Replay conf. Seattle East Hyatt Regency Bellevue Sep 18-20, 2024</a> $350 + $100 workshops  (Promo: WEBINAR20) - <a target="_blank" href="https://replay2024.sched.com/">Schedule</a>

## Architecture

<a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY&t=1m46s">VIDEO:<br />
<img width="935" alt="temporal-arch-935x713.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723146777/temporal-arch-935x713_ulx8qp.png"></a>

1. Apps send commands
1. Queries
1. The Temporal Platform State Machines, Timers, Database, gRPC Gateway, Queues, Transactions
1. Temporal Workers

The Temporal Platform consists of a Temporal Service and Worker Processes.

Temporal uses "durable execution" abstraction to specify orchestration while airflow uses DAG. As durable execution is just code in a top level programming language it is much more powerful, user friendly and supports many more use cases than any DAG based system. BTW you can implement Airflow DAG on top of Temporal if needed. There are dozens of DSLs already implemented on top of it. Also Temporal scales many orders of magnitude better than Airflow.

Temporal makes use of open-source observability platforms <a target="_blank" href="https://wilsonmar.github.io/prometheus/">Prometheus</a> and dashboarding with Grafana.
Temporal senses and logs delays, back-pressure, failures, retries, time-outs, etc.
into an <strong>Elastic database</strong>.

   * <a target="_blank" href="https://www.youtube.com/watch?v=b31gqZCLFTA&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=21&pp=iAQB">Cloud Security</a>

   * <a target="_blank" href="https://www.youtube.com/watch?v=cah5DWnY8t8&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=18&pp=iAQB">Observability to Tuning Workers</a>
   <br /><br />

Temporal Clients communicate with a Temporal Service using a language-specific Temporal SDK library that offers APIs

construct and use a ??? develop Workflow Definitions, and develop Worker Programs.

<img alt="temporal-work-svc.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723226028/temporal-work-svc_khvlpu.png"></a>


### Saga Pattern

A very unique feature of the Temporal Platform is that its Timers support business processes that could <strong>span decades</strong>.

<img alt="temporal-saga.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723226057/temporal-saga_ozq0v2.png"></a>


The project mimics a "money transfer" application with a single <strong>Workflow function</strong> orchestrating the execution of Withdraw() and Deposit() functions. Temporal calls these functions <strong>Activity</strong> functions.

The word Temporal refers to a scalable and reliable runtime for Reentrant Processes called Temporal Workflow Executions.

A "Temporal Application" is a set of Temporal Workflow Executions, which are reliable, durable function executions. Workflow Executions orchestrate the execution of Activities, which execute a single, well-defined action, such as calling another service, transcoding a media file, or sending an email message.

An Activity Task contains the context needed to make an Activity Task Execution.

An Activity Task Execution occurs when a Worker uses the context provided from the Activity Task and executes the Activity Definition.

An Activity Heartbeat is a ping from the Worker that is executing the Activity to the Temporal Service.
Each ping informs the Temporal Service that the Activity Execution is making progress and the Worker has not crashed.
The Temporal Server is a grouping of four horizontally scalable services.

Archival is a feature specific to a Self-hosted Temporal Service that automatically backs up Event Histories from Temporal Service persistence to a custom blob store after the Closed Workflow Execution retention period is reached.

To start the money transfer, a message is sent to the Temporal Cluster.
   * https://docs.temporal.io/references/configuration
   * https://docs.temporal.io/references/dynamic-configuration
   <br /><br />

BTW The term "Temporal Cluster" is being phased out, replaced with the term <strong>Temporal Service</strong>.

A Temporal Service is a Temporal Server paired with Persistence and Visibility stores.

The Temporal Server tracks the progress of Workflow function execution.

Temporal Service configuration is the setup and configuration details of a Temporal Service, defined using YAML.

A Worker is a wrapper around compiled Workflow and Activity code.

Workers only execute the Activity and Workflow functions and communicate the results back to the Temporal Server.

## Install CLI

PROTIP: Don't install static versions of programs by using download links such as:
    * https://temporal.download/cli/archive/v0.11.0?platform=darwin&arch=arm64<br />for Intel Macs (with AMD processors)
    * https://temporal.download/cli/archive/v0.11.0?platform=darwin&arch=amd64<br />for Apple Silicon Macs (with ARM processors)
It's because we want a easy way to update to the latest version with the latest security patches.

1.  Temporal's documentation doesn't mention this, but there is a Homebrew package for Temporal which automatically detects Intel Macs vs Apple Silicon Macs.
    ```
    brew info Temporal
    ```
    ```
    ==> temporal: stable 1.0.0 (bottled), HEAD
    Command-line interface for running and interacting with Temporal Server and UI
    https://temporal.io/
    Not installed
    From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/t/temporal.rb
    License: MIT
    ==> Dependencies
    Build: go ✔
    ==> Options
    --HEAD
        Install HEAD version
    ==> Analytics
    install: 1,319 (30 days), 3,403 (90 days), 9,568 (365 days)
    install-on-request: 1,320 (30 days), 3,391 (90 days), 9,526 (365 days)
    build-error: 0 (30 days)
    ```
1. Install:
    ```
    brew install temporal
    ```
    ```
    ==> Downloading https://formulae.brew.sh/api/formula.jws.json
    ########################################################################################### 100.0%
    ==> Downloading https://formulae.brew.sh/api/cask.jws.json
    ########################################################################################### 100.0%
    ==> Downloading https://ghcr.io/v2/homebrew/core/temporal/manifests/1.0.0
    ########################################################################################### 100.0%
    ==> Fetching temporal
    ==> Downloading https://ghcr.io/v2/homebrew/core/temporal/blobs/sha256:e7e5a6383d9aff3b052c4770293
    ########################################################################################### 100.0%
    ==> Pouring temporal--1.0.0.arm64_sonoma.bottle.tar.gz
    ==> Caveats
    Bash completion has been installed to:
    /opt/homebrew/etc/bash_completion.d
    ==> Summary
    🍺  /opt/homebrew/Cellar/temporal/1.0.0: 9 files, 71MB
    ==> Running `brew cleanup temporal`...
    Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
    Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
    ```
    PROTIP: Brew installs onto folder "/opt/homebrew/Cellar/" on Apple Silicon, unlike folder "/usr/local/bin" with manual installs in Temporal docs.

1.  Start-dev sets up the Web UI, creates the default Namespace, and establishes an in-memory database:
    ```
    temporal server start-dev --ui-port 8233 --db-filename temporal.db
    ```
    ```
    time=2024-08-12T04:38:12.684 level=ERROR msg="service failures" operation=GetSystemInfo error="Frontend is not healthy yet"
    time=2024-08-12T04:38:12.685 level=WARN msg="error creating sdk client" service=worker error="failed reaching server: Frontend is not healthy yet"
    CLI 1.0.0 (Server 1.24.2, UI 2.28.0)
    &nbsp;
    Server:  localhost:7233
    UI:      http://localhost:8233
    Metrics: http://localhost:53787/metrics
    ```
1.  Switch to a brower to view the Temporal Web UI at its default port:
    <a target="_blank" href="http://localhost:8233">http://localhost:8233</a>

    <img alt="temporal-ui-first.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723459559/temporal-ui-first_fj9b6h.png">

1.  View the Temporal Service at:
    <a target="_blank" href="http://localhost:8233">http://localhost:7233</a>

1.  View the log stream at:
    <a target="_blank" href="http://localhost:53787/metrics">http://localhost:53787/metrics</a>

1.  To stop it, press CTRL+C at the Terminal.


## Temporal SDKs

Temporal SDKs (as <a target="_blank" href="https://www.youtube.com/watch?v=JQ6FRTnQWFI">VIDEO</a>: as career)

   The basic building blocks of a Temporal Application are Workflows, Activities execution, and Worker processess.

   The Temporal Client connect to a Temporal Service (Cloud) and start a Workflow Execution.

1. Create/navigate to the folder where you download from GitHub:
   ```
   mkdir -p ~/my-github
   ```
1. View the repo at:

   <a target="_blank" href="https://github.com/temporalio/money-transfer-project-template-go">https://github.com/temporalio/money-transfer-project-template-go</a>

1. If you want to fork the repo to your own account, click that "Fork" button. But also specify your account name for commands in the remainder of this document:
   ```
   GH_ACCT="temporalio"
   ```
1. <a target="_blank" href="https://www.youtube.com/watch?v=-KWutSkFda8">VIDEO</a>: To download the Go example:
   ```
   git clone "https://github.com/$GH_ACCT/money-transfer-project-template-go"
   cd money-transfer-project-template-go
   ```
   INFO: The sample application in this tutorial models a money transfer between two accounts. Money comes out of one account and goes into another. However, there are a few things that can go wrong with this process. If the withdrawal fails, then there's no need to attempt a deposit. But if the withdrawal works but the deposit fails, then the money needs to go back to the original account.

1.  Let's view the repo:
    ```
    ls
    ```
    The .go programs:
    * activity.go
    * banking-client.go
    * shared.go

    * <a target="_blank" href="https://github.com/temporalio/money-transfer-project-template-go/blob/main/workflow.go">workflow.go</a>
    * workflow_test.go

    * start/main.go
    * worker/main.go

    * go.mod
    * go.sum

1.  edit go.mod

1.  View each of the files. NOTE: The first time you open a .go program in Visual Studio Code, accept the Install.

    In workflow.go, the Workflow Definition defines the Workflow Execution's constraints. A Workflow Definition in Go is a regular Go function that accepts a Workflow Context and some input values.

    Workflow Executions orchestrate the execution of Activities, which execute a single, well-defined action, such as calling another service, transcoding a media file, or sending an email message.

    A Temporal Application is a set of Temporal Workflow Executions, which are reliable, durable function executions.

1.  Create a new Terminal window and navigate to your project folder.

    This tutorial uses a separate start/main.go program to start the Workflow. But most real applications start a Workflow as part of another program. For example, you might start the Workflow in response to a button press or an API call.

    You can make the call synchronously or asynchronously. Here we do it synchronously by fetching the return value of the Workflow execution with we.Get. This call waits for the Workflow execution to complete before continuing.

1.  Start the app for the first time:
    ```
    go run start/main.go
    ```
    Go might download some dependencies initially, but after those downloads complete, you'll see output that looks like the following:
    ```
    2022/11/14 10:52:20 INFO  No logger configured for temporal client. Created default one.
    2022/11/14 10:52:20 Starting transfer from account 85-150 to account 43-812 for 250
    2022/11/14 10:52:20 WorkflowID: pay-invoice-701 RunID: 3312715c-9fea-4dc3-8040-cf8f270eb53c
    ```
    The RunID will be different each time.

1.  To see the Workflow, switch to the browser view of the Temporal Web UI at its default port and press Refresh:
    <a target="_blank" href="http://localhost:8233">http://localhost:8233</a>

1.  There is a "Start Workflow" button at the upper-right.

    There is a <tt>tctl</tt> command-line tool to start a Temporal Workflow.
    In this tutorial the SDK starts the Workflow, which is how most Workflows get started in a live environment.

    To start a Workflow Execution, you connect to the Temporal Cluster, specify the Task Queue the Workflow should use, and start the Workflow with the input parameters it expects.

    In a real application, you may invoke this code when someone submits a form, presses a button, or visits a certain URL. In this tutorial, you'll create a small command-line program that starts the Workflow Execution.

    The Task Queue is where Temporal Workers look for Workflows and Activities to execute. You define Task Queues by assigning a name as a string. You'll use this Task Queue name when you start a Workflow Execution, and you'll use it again when you define your Workers. To ensure your Task Queue names are consistent, place the Task Queue name in a variable you can share across your project.

    In this project, the Task Queue name is defined in a shared location: file <tt>shared.go</tt> which contains:

    <tt>const MoneyTransferTaskQueueName = "TRANSFER_MONEY_TASK_QUEUE"</tt>

    ```
    type PaymentDetails struct {
        SourceAccount string
        TargetAccount string
        Amount        int
        ReferenceID   string
    }
    ```
    https://github.com/temporalio/money-transfer-project-template-go


### Java:

1. <a target="_blank" href="https://www.youtube.com/watch?v=1RY2lWSuJaA&list=PLl9kRkvFJrlQ8KsM6m9cFfCeQegq_B8x4&pp=iAQB">VIDEO</a>: Java example:

   https://learn.temporal.io/getting_started/java/

   https://github.com/tsurdilo/temporal-java-workshop

1. The Python example: https://www.youtube.com/watch?v=jxqPWS_LRzw&t=1166s&pp=ygUMVGVtcG9yYWwgMTAx

   https://learn.temporal.io/getting_started/python/

1. The PHP example:

   https://learn.temporal.io/getting_started/php/

1. The .NET example:

   https://learn.temporal.io/getting_started/dotnet/

1. <a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY&list=PLl9kRkvFJrlQ33RWSj12U3JshJ9kouaTn&pp=iAQB">VIDEO</a>: The TypeScript example: (JavaScript) <a target="_blank" href="https://www.youtube.com/watch?v=CeHSmv8oF_4">VIDEO: complete intro</a>

   https://learn.temporal.io/getting_started/typescript/


### Namespace and recovery

A Namespace is a unit of isolation within the Temporal Platform

<a target="_blank" href="https://www.youtube.com/watch?v=xu-TaN60ssk">VIDEO</a>: Cloud Multi-region Namespaces.

A Global Namespace is a Namespace that duplicates data from an active Temporal Service to a standby Service using the replication to keep both Namespaces in sync. Global Namespaces are designed to respond to service issues like network congestion. When service to the primary Cluster is compromised, a Failover transfers control from the active to the standby cluster.

A multi-region Namespace (MRN) is a Temporal Cloud Namespace that is configured to work across an active region and a standby region. Each region corresponds to a dedicated Temporal Cloud Service. Temporal Cloud automatically replicates Workflow Executions and metadata from the active to the standby region. MRNs are designed to respond to service issues as they arise. In the event that the Namespace's performance is compromised, a Failover transfers control from the active to the standby region.


<a target="_blank" href="https://www.youtube.com/watch?v=X1hMWY1xxzc&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=9&pp=iAQB">VIDEO</a>: Availability and Disaster Recvoery in Temporal Cloud
<a target="_blank" href="https://www.youtube.com/watch?v=MF6axzFZg7o&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=12&pp=iAQB">Building</a>

Multi-Cluster Replication asynchronously replicates Workflow Executions from active Clusters to other passive Clusters, for backup and state reconstruction.




## Demo

1. <a target="_blank" href="https://www.youtube.com/watch?v=wIpz4ioK0gI&t=15m42s">VIDEO: demo</a> show starting the local server <a target="_blank" href="https://www.youtube.com/watch?v=2mDmXtLmX5o&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=13&pp=iAQB">VIDEO</a>
   ```
   temporal server start-dev
   ```
   or on macOS:
   ```
   brew install temporal
   ```

1. Temporal provides Dev tools, including its <tt>tcld</tt> <a target="_blank" href="https://docs.temporal.io/cloud/tcld">(Temporal Cloud command-Line interface) CLI</a> commands tcld version, login, logout, user, account, feature, apikey, generate-certificates, namespace, request.

   https://docs.temporal.io/cli/tcld

1. Web UI/<tt>tctl</tt>

1. "Temporal Go SDK" is the framework for authoring workflows and activities using
Temporal was developed using <a target="_blank" href="https://wilsonmar.github.io/golang">Go language</a>

   https://github.com/temporalio/go-sdk

   https://docs.temporal.io/workflows

   * <a target="_blank" href="https://www.youtube.com/watch?v=uHDQMfOMFD4">VIDEO</a>: Sagas


1. Sample application: https://github.com/temporalio/background-checks, at https://learn.temporal.io/examples/

   https://learn.temporal.io/examples/go/background-checks/

   a long-running <a target="_blank" href="https://www.youtube.com/watch?v=XnlZyW0xkGU&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=17&pp=iAQB">human-driven</a> workflow, described in <a target="_blank" href="https://www.youtube.com/watch?v=-YYtRwArSQM">VIDEO</a>: Learning Paths


## Debugging

Temporal has built-in debugging and troubleshooting tools, such as “replays” that allow developers to step through an execution to see what happened.

<a target="_blank" href="https://www.youtube.com/watch?v=3IjQde9HMNY&list=PLl9kRkvFJrlTn2blb5FG0aBrkLcrr_18F&index=22&pp=iAQB">VIDEO</a>: Debug with the Temporal VS Code extension


## Workflow Diagram Service

Give it SW JSON/YAML, get back diagram SVG. By Tihomir Surdilovic.
https://github.com/tsurdilo/workflow-diagram-service

https://github.com/tsurdilo/my-temporal-dockercompose

https://github.com/tsurdilo/temporal-patient-onboarding
