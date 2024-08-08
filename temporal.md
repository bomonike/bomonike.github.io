workflows.md

Temporal.io is a scalable orchestrator of the states within distributed mission-critical workflows,
especially multiple long-running asynchronous services which work together.

Temporal's job is to recover each service to a consistent state.

Temporal's application state tracking enables automatic retries, timeouts, rollbacks due to process failures.

Temporal and Durable Execution encapsulate most of the complexities of event-driven architecture and allow developers to focus on what matters: business logic.

Unlike <a target="_blank" href="https://wilsonmar.github.io/kubernetes/">Kubernetes</a>,
Temporal does not concern itself with containers but REST/RPC services of any kind.

Temporal is open-sourced under MIT licensing at
<a target="_blank" href="https://github.com/temporalio/temporal">https://github.com/temporalio/temporal</a>
and offers a managed cloud service at https://temporal.io/cloud (documentation at <a target="_blank" href="https://docs.temporal.io/cloud">https://docs.temporal.io/cloud</a>) <a target="_blank" href="https://www.youtube.com/watch?v=MF6axzFZg7o">VIDEO</a>: building it.

Moscow-born and now Bellevue, Washington resident <a target="_blank" href="https://www.linkedin.com/in/fateev/">Maxim Fateev</a>, Temporal Co-Founder and CEO, worked at Google and Uber after working on the Amazon Queue Service, where he realized that <a target="_blank" href="https://www.youtube.com/watch?v=wIpz4ioK0gI&t=9m20s">VIDEO: "queues are not actually not a good way to link services together, if you have complex transactions"</a>.

He built the Temporal team partly with people who created Uber's Cadence system,
such as CTO <a target="_blank" href="https://www.linkedin.com/in/samar-abbas-381997/">Sama Abbas</a>, who worked on Microsoft's Azure Durable Functions.

Head of Product is <a target="_blank" href="https://www.linkedin.com/in/ryland-goldstein-3467b710a/">Ryland Goldstein</a>.

<a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY">VIDEO: "Temporal in 7 Minutes - the TL;DR  Intro"</a> (in 2022) mentions that Netflix uses Temporal for its Spinniker product.
Other users are Stripe, Snap, etc. Customer presentations at Temporal's 2023 conference include
<a target="_blank" href="https://www.youtube.com/watch?v=3ybR_6dHkWM&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=5&pp=iAQB">JPMC</a>, <a target="_blank" href="https://www.youtube.com/watch?v=St5nSSZScHg&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=3&pp=iAQB">Yum! Brands</a>, <a target="_blank" href="https://www.youtube.com/watch?v=vRfbu5WFTDA&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=7&pp=iAQB">Twilio</a>, <a target="_blank" href="https://www.youtube.com/watch?v=vRfbu5WFTDA&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=7&pp=iAQB">HashiCorp</a>, <a target="_blank" href="https://www.youtube.com/watch?v=Nm35-TVp8kY&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r&index=17&pp=iAQB">Instacart</a>.
<a target="_blank" href="https://www.youtube.com/watch?v=QDKhrfxg3yw">VIDEO</a>: DataDog is "one of the most aggressive users of Temporal".

<a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY&t=1m46s">VIDEO</a>
<img width="935" alt="temporal-arch-935x713.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723146777/temporal-arch-935x713_ulx8qp.png"></a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=xu-TaN60ssk">VIDEO</a>: Cloud Multi-region Namespaces.
   <br /><br />

Unlike <a target="_blank" href="https://wilsonmar.github.io/airflow/">Apache Airflow</a>, which is also offers <strong>Workflow as Code</a>, Temporal doesn't run code but works as external observers. Also Temporal is multi-language while Airflow is Python only.

Temporal uses "durable execution" abstraction to specify orchestration while airflow uses DAG. As durable execution is just code in a top level programming language it is much more powerful, user friendly and supports many more use cases than any DAG based system. BTW you can implement Airflow DAG on top of Temporal if needed. There are dozens of DSLs already implemented on top of it. Also Temporal scales many orders of magnitude better than Airflow.

Temporal makes use of open-source observability platforms <a target="_blank" href="https://wilsonmar.github.io/prometheus/">Prometheus</a> and dashboarding with Grafana.
Temporal senses and logs delays, back-pressure, failures, retries, time-outs, etc.
into an <strong>Elastic database</strong>.

<a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY&t=5m43s">VIDEO</a>
<img width="935" alt="temporal-svcs-986x818.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1723147127/temporal-svcs-986x818_q3rdx6.png"></a>


## Socials

* <a target="_blank" href="https://temporal.io/how-temporal-works/">How Temporal Works</a>
* <a target="_blank" href="https://www.youtube.com/@Temporalio">YouTube channel</a>
* <a target="_blank" href="https://www.youtube.com/watch?v=pfArIYRVsbo&list=PLl9kRkvFJrlREHL7fiEKBWTp5QuFeYS2r">videos</a> from "Replay": Temporal's annual conference

* <a target="_blank" href="https://temporal.io/blog">Blog</a>
* <a target="_blank" href="https://docs.temporal.io/">Docs</a>
* <a target="_blank" href="https://learn.temporal.io/courses">courses</a>

* <a target="_blank" href="https://www.glassdoor.com/Overview/Working-at-Temporal-WA-EI_IE6755876.11,22.htm">Glassdoor</a>
* <a target="_blank" href="https://www.indeed.com/cmp/Temporal-Technologies">Indeed</a> has no ratings.
* LinkedIn

* <a target="_blank" href="https://temporal.io/slack/">Slack</a>
* <a target="_blank" href="https://community.temporal.io/">Support forum</a>
* Discord community <a target="_blank" href="https://www.youtube.com/watch?v=MN30Xqk-Qxk">VIDEO</a>


## Demo

1. <a target="_blank" href="https://www.youtube.com/watch?v=wIpz4ioK0gI&t=15m42s">VIDEO: demo</a> show starting the server
   ```
   temporal server start-dev
   ```
   or on macOS:
   ```
   brew install temporal
   ```
1. Notice the language is in Java.
1. Temporal provides Dev tools, including its <tt>tctl</tt> CLI.
1. "Temporal Go SDK" is the framework for authoring workflows and activities using
Temporal was developed using <a target="_blank" href="https://wilsonmar.github.io/golang">Go language</a>

   https://github.com/temporalio/go-sdk

1. Temporal SDKs (as <a target="_blank" href="https://www.youtube.com/watch?v=JQ6FRTnQWFI">VIDEO</a>: as career)
   * <a target="_blank" href="https://www.youtube.com/watch?v=-KWutSkFda8">VIDEO</a>: Go,
   * <a target="_blank" href="https://www.youtube.com/watch?v=1RY2lWSuJaA&list=PLl9kRkvFJrlQ8KsM6m9cFfCeQegq_B8x4&pp=iAQB">VIDEO</a>: Java,
   * <a target="_blank" href="https://www.youtube.com/watch?v=2HjnQlnA5eY&list=PLl9kRkvFJrlQ33RWSj12U3JshJ9kouaTn&pp=iAQB">VIDEO</a>: TypeScript (JavaScript) <a target="_blank" href="https://www.youtube.com/watch?v=CeHSmv8oF_4">VIDEO: complete intro</a>
   * PHP
   * Python?

   * <a target="_blank" href="https://www.youtube.com/watch?v=uHDQMfOMFD4">VIDEO</a>: Sagas

1. https://learn.temporal.io/getting_started/go/first_program_in_go/

   Explore Temporal's core terminology and concepts.

   Complete several runs of a Temporal Workflow application using a Temporal Cluster and the Go SDK.

   Practice reviewing the state of the Workflow.

   Understand the inherent reliability of Workflow functions.


1. Sample application: https://github.com/temporalio/background-checks, a long-running human-driven workflow, described in <a target="_blank" href="https://www.youtube.com/watch?v=-YYtRwArSQM">VIDEO</a>: Learning Paths
