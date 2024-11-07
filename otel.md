<!-- otel.md
change: "otel.md"
-->

## What is OpenTelemetry?

<a target="_blank" href="https://www.linkedin.com/in/ryangoins/">Ryan Goins</a>, Product Manager at https://observiq.com/
created a <a target="_blank" href="https://www.youtube.com/watch?v=JmO2jyhLjxc&list=PLdtG-L_eQ9Mx2yTfD2kEuN-zys8AJJ3s-">series</a> of explainer videos about Otel in 2024:
1. <a target="_blank" href="https://www.youtube.com/watch?v=JmO2jyhLjxc&t=4m5s">OpenTelemetry 101</a> with CEO Michael Kelly:
   1. 5:47 Agenda
   1. 06:21 What is OpenTelemetry
   1. 7:56 Why use OpenTelemetry
   1. 9:47 Stability of Signals
   1. 11:19 OpenTelemetry in Production Overview
   1. 12:27 Getting Started
   1. 15:56 Choosing your Collector Distribution
   1. 22:57 Deployment Patterns
   1. 28:58 Migration Strategies
   1. 29:55 OpenTelemetry in Production
   1. 33:01 Other Considerations

2. <a target="_blank" href="https://www.youtube.com/watch?v=N3bSvnpKiVE">The OpenTelemetry Collector: A Deep Dive</a>
3. <a target="_blank" href="https://www.youtube.com/watch?v=GNdJAXHW-fI">Building a Custom OTel Collector: A Step-by-Step Guide</a>
4. <a target="_blank" href="https://www.youtube.com/watch?v=M1aitc50W18">Constructing an Observability Pipeline with OpenTelemetry</a>
5. <a target="_blank" href="https://www.youtube.com/watch?v=h0b8i24k240">Managing High Volume with OpenTelemetry</a>
6. <a target="_blank" href="https://www.youtube.com/watch?v=gNpaCePcPak">Instrumenting your Codebase with OpenTelemetry</a>
7. <a target="_blank" href="https://www.youtube.com/watch?v=B43v6Of5buk&list=PLdtG-L_eQ9Mx2yTfD2kEuN-zys8AJJ3s-&index=7&pp=iAQB">How OTel Empowers You to Handle Unified Data</a>
8. <a target="_blank" href="https://www.youtube.com/watch?v=BoYyIp_Zgfc&list=PLdtG-L_eQ9Mx2yTfD2kEuN-zys8AJJ3s-&index=8&pp=iAQB">Strategies for Lowering Observability Costs</a>

NGINX:
* <a target="_blank" href="https://www.youtube.com/watch?v=Txe4ji4EDUA">How to Get Started with OpenTelemetry</a>

OpAMP (the Open Agent Management Protocol) is a network protocol for remote control of large fleets of data collection agents.


## Observiq for production

PROTIP: Don't trouble developers to custom code inside every program they write
algorithms for masking and cleasing the telementry they emit.
What is filtered and redacted changes over time as regulations (such as GDPR) are revised.
Over time, changes in management and mergers often result in changes to what tools are used to display metrics: from Grafana to Splunk, etc.

Changes in enterprise policies on how data is managed CANNOT be quickly and thoroughly implemented when changes require changes to all app code.

PROTIP: In order to get enterprise policies quickly and thoroughly implemented,
<strong>enable specialists</strong> to "de-sensitize" data.
Have app developers code their apps to send logs, metrics, and traces to a <strong>central router (Operations Platform)</strong>.

The BindPlane OP (Observability Platform)</a> from <a target="_blank" href="https://observiq.com/">ObservIq</a> is such a platform.
BindPlane is marketed as "Your Unified Telemetry Platform", but I think it is better described as a "Telemetry Management Router":
* It routes telemetry from any source to the desired destination by managing the entire fleet of agents
* Redact, Edit, mask & encrypt sensitive data
* Reduce log and metric volume by efficiently filtering unnecessary log data. That reduces resource management and enhances system performance, thus
* reduce observability costs.


The challenge for the community of administrators is inserting themselves earlier in the development lifecycle.

PROTIP: Stand up a way to receive the telemetry for dev/test use. This minimizes the hassle and time for developers to create the infrastructure to collect telemetry. Use of ObserIq provides richer GUI during demos of progress. Since metrics usually need to be integrated with existing ones for management review, this also makes for quicker pivot to productive use throughout the organization. This also enables quicker and easier response to changes in metric infrastructure over time.

QUESTION: docs about using ObserIq with Kubernetes and Istio?


## Social media

* https://www.youtube.com/@observiq


## Competitors

Observiq competes with other start-ups:
Cribl, Edge Delta, Mezmo, Calyptia.

## Install Demo

PROTIP: Below is an enhanced version of what's at https://opentelemetry.io/docs/demo/

1. Install Docker Compose
1. Navigate to a folder which accepts new repos from GitHub.
1. Clone the Demo repository and Change to the demo folder:
   ```
   git clone https://github.com/open-telemetry/opentelemetry-demo.git --depth 1
   cd opentelemetry-demo/
   ```
   Receiving objects: 100% (534/534), 2.16 MiB | 6.82 MiB/s, done.

1. View the folder:
   ```
    CHANGELOG.md                              ide-gen-proto.sh
    CONTRIBUTING.md                           internal
    LICENSE                                   kubernetes
    Makefile                                  package-lock.json
    README.md                                 package.json
    docker-compose-tests.yml                  pb
    docker-compose-tests_include-override.yml renovate.json5
    docker-compose.minimal.yml                src
    docker-compose.yml                        test
   ```
1. FIXME: Stop other granfana services running to avoid error:
   ```
   lsof -i -P | grep LISTEN | grep grafana
   brew services stop grafana
   ```
   This avoids error later:
   ```
    Error response from daemon: Conflict. The container name "/grafana" is already in use by container "d3196718d6799ec05d70bdd2277f62616d6a801bd8dfa255eca7317c107c7fdb". You have to remove (or rename) that container to be able to reuse that name.
    make: *** [start] Error 1
   ```
1. Start the Docker daemon app.
1. Start the demo1:
   ```
   ENVOY_PORT=8080 make start
   ```
   ```
make start
docker compose --env-file .env --env-file .env.override up --force-recreate --remove-orphans --detach
[+] Running 234/25
 ✔ flagd Pulled                                                                           126.0s
 ✔ accountingservice Pulled                                                                46.3s
 ✔ emailservice Pulled                                                                     70.8s
 ✔ imageprovider Pulled                                                                    82.4s
 ✔ valkey-cart Pulled                                                                     190.7s
 ✔ grafana Pulled                                                                         231.7s
 ✔ frauddetectionservice Pulled                                                            43.8s
 ✔ checkoutservice Pulled                                                                  72.8s
 ✔ frontend Pulled                                                                        156.8s
 ✔ currencyservice Pulled                                                                  44.6s
 ✔ productcatalogservice Pulled                                                            73.3s
 ✔ shippingservice Pulled                                                                 118.2s
 ✔ prometheus Pulled                                                                      253.0s
 ✔ frontendproxy Pulled                                                                   154.4s
 ✔ adservice Pulled                                                                        79.3s
 ✔ jaeger Pulled                                                                          168.5s
 ✔ kafka Pulled                                                                           179.5s
 ✔ opensearch Pulled                                                                      255.6s
 ✔ paymentservice Pulled                                                                   57.2s
 ✔ loadgenerator Pulled                                                                    44.7s
 ✔ otelcol Pulled                                                                         197.0s
 ✔ quoteservice Pulled                                                                    124.9s
 ✔ cartservice Pulled                                                                     129.4s
 ✔ recommendationservice Pulled                                                           164.4s
 ! flagd-ui Warning         manifest unknown                                                1.1s
[+] Building 58.2s (19/19) FINISHED                                         docker:desktop-linux
 => [flagd-ui internal] load build definition from Dockerfile                               0.0s
 => => transferring dockerfile: 637B                                                        0.0s
 => [flagd-ui internal] load metadata for docker.io/library/node:20-alpine                  1.1s
 => [flagd-ui internal] load metadata for docker.io/library/node:20                         1.1s
 => [flagd-ui internal] load .dockerignore                                                  0.0s
 => => transferring context: 1.18kB                                                         0.0s
 => [flagd-ui builder 1/6] FROM docker.io/library/node:20@sha256:a5e0ed56f2c20b9689e0f7dd  30.5s
 => => resolve docker.io/library/node:20@sha256:a5e0ed56f2c20b9689e0f7dd498cac7e08d2a3a283  0.0s
 => => sha256:a5e0ed56f2c20b9689e0f7dd498cac7e08d2a3a283e92d9304e7b9b83e3c 6.41kB / 6.41kB  0.0s
 => => sha256:bd35ad381a72b8e86be94d1eb8db22d595f77c25b52950ae180894b145fe 2.50kB / 2.50kB  0.0s
 => => sha256:85f76d7c2b89b3e545565c80ac1a21b5bb57f90095a8e09cdeb03b503950 6.62kB / 6.62kB  0.0s
 => => sha256:c1e0ef7b956a07c7b090256aa16cbb0550a34d0625d1d23c5b1a76e92a 49.58MB / 49.58MB  9.8s
 => => sha256:95b894d63c771a6056bc65ff25192b251413259ba7d160b0076f0f5d79 23.59MB / 23.59MB  4.5s
 => => sha256:cb5594266b1bacf9ad6855b00d9c5c98e721001eb115218eda673e548 64.35MB / 64.35MB  14.3s
 => => sha256:59d4884f85282b9a352dbcedf2cccd073a63e60b151be84375ce927 202.64MB / 202.64MB  23.2s
 => => extracting sha256:c1e0ef7b956a07c7b090256aa16cbb0550a34d0625d1d23c5b1a76e92a58d01e   1.8s
 => => sha256:4767b1635f4a478c9c34f6169008202af623e1c05ea663f697e49bbb25a 3.33kB / 3.33kB  10.5s
 => => sha256:54b03e66776a3dc3f59563bd7ed7312bc6bfb4a32d91e96baaef7cb84 48.18MB / 48.18MB  17.5s
 => => extracting sha256:95b894d63c771a6056bc65ff25192b251413259ba7d160b0076f0f5d7975dc39   0.5s
 => => sha256:36ee4db2c5c58c29030967bde0def18ee575891b59fef27cd97e708752b 1.25MB / 1.25MB  14.8s
 => => extracting sha256:cb5594266b1bacf9ad6855b00d9c5c98e721001eb115218eda673e548e04fdbf   2.8s
 => => sha256:a2a0e0d46948addadab310b4a1b882aff84d7507730aa3f2a28c361fe4338b8 443B / 443B  15.1s
 => => extracting sha256:59d4884f85282b9a352dbcedf2cccd073a63e60b151be84375ce9279dec1c553   4.9s
 => => extracting sha256:4767b1635f4a478c9c34f6169008202af623e1c05ea663f697e49bbb25ac0166   0.0s
 => => extracting sha256:54b03e66776a3dc3f59563bd7ed7312bc6bfb4a32d91e96baaef7cb84e3af1ac   1.9s
 => => extracting sha256:36ee4db2c5c58c29030967bde0def18ee575891b59fef27cd97e708752b7653a   0.0s
 => => extracting sha256:a2a0e0d46948addadab310b4a1b882aff84d7507730aa3f2a28c361fe4338b8b   0.0s
 => [flagd-ui stage-1 1/7] FROM docker.io/library/node:20-alpine@sha256:c13b26e7e602ef2f10  0.1s
 => => resolve docker.io/library/node:20-alpine@sha256:c13b26e7e602ef2f1074aef304ce6e9b7dd  0.0s
 => => sha256:c13b26e7e602ef2f1074aef304ce6e9b7dd284c419b35d89fcf3cc8e44a8 7.67kB / 7.67kB  0.0s
 => => sha256:ee22b0b70c205b955e7e9b5e77df20e54cba896772ee59c961e5dd107968 1.72kB / 1.72kB  0.0s
 => => sha256:42a11884cc26d32a8b22253756d067af46119ee6c0624e9c6a8f731a1036 6.30kB / 6.30kB  0.0s
 => [flagd-ui internal] load build context                                                  0.1s
 => => transferring context: 216.50kB                                                       0.0s
 => [flagd-ui stage-1 2/7] WORKDIR /app                                                     0.2s
 => [flagd-ui stage-1 3/7] COPY ./src/flagd-ui/package*.json ./                             0.0s
 => [flagd-ui stage-1 4/7] RUN npm ci --only=production                                    18.8s
 => [flagd-ui builder 2/6] WORKDIR /app                                                     0.4s
 => [flagd-ui builder 3/6] COPY ./src/flagd-ui/package*.json ./                             0.0s
 => [flagd-ui builder 4/6] RUN npm ci                                                       9.4s
 => [flagd-ui builder 5/6] COPY ./src/flagd-ui/. ./                                         0.0s
 => [flagd-ui builder 6/6] RUN npm run build                                               14.5s
 => [flagd-ui stage-1 5/7] COPY --from=builder /app/src/instrumentation.ts ./instrumentati  0.0s
 => [flagd-ui stage-1 6/7] COPY --from=builder /app/next.config.mjs ./next.config.mjs       0.0s
 => [flagd-ui stage-1 7/7] COPY --from=builder /app/.next ./.next                           0.1s
 => [flagd-ui] exporting to image                                                           1.7s
 => => exporting layers                                                                     1.7s
 => => writing image sha256:86dc1120f392564d8bb02989b9dbdb87d714db5ee4ded0f58384fdaac900ee  0.0s
 => => naming to ghcr.io/open-telemetry/demo:latest-flagd-ui                                0.0s
[+] Running 1/0
 ✔ Network opentelemetry-demo  Created                                                      0.0s
 ⠋ Container jaeger            Creating                                                     0.0s
 ⠋ Container grafana           Creating                                                     0.0s
 ⠋ Container flagd             Creating                                                     0.0s
 ⠋ Container opensearch        Creating                                                     0.0s
 ⠋ Container kafka             Creating                                                     0.0s
 ⠋ Container valkey-cart       Creating                                                     0.0s
 ⠋ Container prometheus        Creating                                                     0.0s
   ```

1. Open a web browser to verify the web store and Telemetry:

   Once the images are built and containers are started you can access:

   * http://localhost:8080/ Web store
   * http://localhost:8080/grafana/ Grafana:
   * http://localhost:8080/loadgen/ Load Generator UI:
   * http://localhost:8080/jaeger/ui/ Jaeger UI:
   * http://localhost:11633/ Tracetest UI: when using make run-tracetesting

1. (Optional) Enable API observability-driven testing1:
   ```
   make run-tracetesting
   ```


## Open Sourced to OpenTelemetry

Standardize your observability on , an open source standard, and avoid vendor lock-in.
 a collaborative project founded by the Cloud Native Computing Foundation to create industry-wide standards that will benefit all cloud service providers and observability users with high-quality, ubiquitous, and scalable telemetry.

metrics, logs, and traces


https://github.com/observIQ

* <a target="_blank" href="https://github.com/observIQ/opentelemetry-demo">opentelemetry-demo</a> contains the OpenTelemetry Astronomy Shop, a microservice-based distributed system intended to illustrate the implementation of OpenTelemetry in a near real-world environment.
* https://opentelemetry.io/docs/demo/services/recommendation/
* monitoring-dashboard-samples in TypeScript

* terraform-provider-bindplane-enterprise

* opamp-spec Public Forked from open-telemetry/opamp-spec for OpAMP Specification
* bindplane-agent
* bindplane-agent-ansible
* bindplane-op-helm
* bindplane-op-action

* stanza - Fast and lightweight log transport and processing.
* stanza-plugins

* opentelemetry-specification
* opentelemetry-collector Forked from open-telemetry/opentelemetry-collector
* opentelemetry-operations-collector Forked from GoogleCloudPlatform/opentelemetry-operations-collector
* opentelemetry-collector-contrib Public Forked from open-telemetry/opentelemetry-collector-contrib

https://opentelemetry.io/docs/demo/services/recommendation/
