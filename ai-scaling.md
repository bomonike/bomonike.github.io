---
layout: post
date: "2025-04-27"
lastchange: "v002 + summary :ai-scaling.md"
url: "https://bomonike.github.io/ai-scaling"
file: "ai-scaling"
title: "Scaling dynamic AI infrastructure"
excerpt: "We dynamically setup and scale AI apps running locally and within AWS, Azure, GCP, and other clouds, using free open-source software (Ray.io, Anyscale, PyTorch)"
tags: [cloud, functions]
image:
# feature: pic green matrix hallway 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14623876/07afd066-0593-11e6-933a-2e596511ac67.jpg
  credit:
  creditlink:
comments: true
created: "2025-04-27"
---
<a target="_blank" href="https://bomonike.github.io/palantir"><img align="right" width="100" height="100" alt="palantir.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/palantir.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include _toc.html %}


## Dive in

1. Signup
1. Take the [Intro to Ray](https://courses.anyscale.com/courses/take/intro-to-ray/lessons/60941277-welcome-to-this-course) 
   by Max (author of OReilly book "Ray: A Distributed Computing Framework for Python")

1. Anyscale provides free tutorial and certification.

1. Setup our own Ray.io instance locally on Wilson's MacMini.
1. Install MCP with agents within our local Ray.io instance.
   * Azure MCP 
   * Anthropic Reference MCP

1. Setup in cloud Digital Ocean or Hetzner.

1. What useful app? ____ written in Python in Docker image
   * https://res.cloudinary.com/dcajqrroq/image/upload/v1716481274/odoo-docker-officialapps-240522_tkt77p.png
   * Calendaring AI - what are available?
   * For Provost office to scour market trends - YouTube video about coding univ camps

## Marketing:
1. Blog for Anyscale as Partners/resellers
1. Blog for MCP
1. Article - LinkedIn, DEv.to, Medium
1. YouTube video
1. Udemy
1. Market to colleges


## Ray.io by Anyscale hosted platform

Ray is a high-performance distributed execution framework targets large-scale machine learning and reinforcement learning applications. Ray's MLOps ecosystem includes features for:
   * Developer tools
   * Labeling
   * Experiment tracking
   * Model Registry
   * Orchestration
   * Monitoring
   * Feature Stores

Ray was first developed by UC Berkeley’s <a target="_blank" href="https://rise.cs.berkeley.edu/" title="REAL-TIME INTELLIGENT SECURE EXPLAINABLE SYSTEMS">RISELab</a>. 
It's now open-sourced (with 36.8k stars) at:

   <ul><a target="_blank" href="https://github.com/ray-project/ray">https://github.com/ray-project/ray</a><br />
   "Ray is an AI compute engine. Ray consists of a core distributed runtime and a set of AI Libraries for accelerating ML workloads."
   
   The most active contributor is Anyscale employee (since Sep 2024) <a target="_blank" href="https://www.linkedin.com/in/srinath-krishnamachari/">
   Srinath Krishnamachari</a>, who also created https://github.com/srinathk10/ray_mac_dev
   </ul>

## Anyscale

Anyscale is the commercial enhancement built on top of Ray to provide:
* RayTurbo: Anyscale’s optimized engine for Ray, delivering improved performance, scale, efficiency, and reliability
* Interactive notebooks and workspaces
* Enterprise governance and security
* Seamless integrations

## Ray's AI libraries

Built on top of Ray Core,
Ray's AI libraries <a target="_blank" href="https://docs.ray.io/en/latest/ray-overview/getting-started.html#libraries-quickstart">Quikstart</a>
target <strong>Workload Optimization</strong>. By order of usage during dev lifecycle) scales ML workloads:
   * RLib (Ray Library)
   * Data loading - Ingest and transform raw data; perform batch inference by mapping the checkpointed model to batches of data.
   * Train models - use Trainer to scale XGBoost model training
   * Tune models - use Tuner to scale hyperparameter tuning
   * Serve models to clients - Deploy the model for online inference

### Sample Code Programming Ray

Ray is a distributed execution framework to scale Python applications.
```
pip install 'ray[default]'
```
Ray is coded as a wrapper around app functions implemented in C++ and Python:
   * @ray.init() - Initialize Ray runtime
   * @ray.remote - converts functions/classes into distributed units
   * @ray.remote() - Launches asynchronous tasks
   * ray.get - retrieve results from remote tasks

So Ray is "invasive". Once Ray is used, you're all in.

Here's a Basic Ray Task Example in Python, using Ray.io for distributed computing, incorporating key concepts from the documentation:

```
import time
import ray

# Initialize Ray runtime (automatically uses available cores):
ray.init()

# Convert function to distributed task:
@ray.remote
def process_data(item):
    time.sleep(item / 10)  # Simulate work
    return f"Processed {item}"

# Launch parallel tasks
results = ray.get([process_data.remote(i) for i in range(5)])

print(results)
# Output: ['Processed 0', 'Processed 1', 'Processed 2', 'Processed 3', 'Processed 4']
```

Actor Pattern Example:

```
@ray.remote
class DataTracker:
    def __init__(self):
        self.count = 0
    
    def increment(self):
        self.count += 1
    
    def get_count(self):
        return self.count

# Usage:
tracker = DataTracker.remote()
ray.get([tracker.increment.remote() for _ in range(10)])
print(ray.get(tracker.get_count.remote()))  # Output: 10
```

Advanced Pattern (Data Sharing)

```
# Store large data in shared memory:
data_ref = ray.put(list(range(1000)))

@ray.remote
def process_chunk(ref, start, end):
    data = ray.get(ref)
    return sum(data[start:end])

# Process chunks in parallel:
results = ray.get([
    process_chunk.remote(data_ref, i*100, (i+1)*100)
    for i in range(10)
])
print(sum(results))  # Sum of all chunks
```

For cluster deployment, add ray.init(address='auto') to connect to existing clusters
. The examples demonstrate task parallelism, stateful actors, and data sharing - fundamental patterns for distributed computing with Ray.



"Ray’s features make it suitable for any Python-based application that needs cluster-wide scalability. 
PyTorch.

## Components

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1745808403/anyscale-arch-7680x4320_go2co5.png"><img width="300" align="right" alt="anyscale-arch-7680x4320.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1745808403/anyscale-arch-7680x4320_go2co5.png" /></a>

<strong>Compute Observability</strong>

<a target="_blank" href="https://docs.ray.io/en/latest/ray-overview/getting-started.html"><img align="right" width="300" alt="ray-map-798x1058.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1745807563/ray-map-798x1058_e6s4ce.png" /></a>

Ray Core <a target="_blank" href="https://docs.ray.io/en/latest/ray-overview/getting-started.html#ray-core-quickstart">Quickstart</a>
scales Python apps with distributed parallelism

Debugging and monitoring <a target="_blank" href="https://docs.ray.io/en/latest/ray-overview/getting-started.html#debugging-and-monitoring-quickstart">Quickstart</a> 

Ray Cloud <a target="_blank" href="https://docs.ray.io/en/latest/ray-overview/getting-started.html#ray-cluster-quickstart">Quickstart</a>
enables use of GPUs being managed as clusters of containers managed by Kubernetes.

"Ray meets the needs of ML/AI applications—without requiring the skills and DevOps effort typically required for distributed computing.





* anyscale.com/academy written by Dean Wampler
* https://docs.ray.io/en/latest/ray-overview/getting-started.html
* https://docs.ray.io/en/latest/ray-core/examples/overview.html

### Social

* ray-distributed.slack.com
* anyscale.com/events
* raysummit.org

* online and in-person Ray Summit conferences (http://raysummit.org), speaking at and sponsoring other conferences, tutorial development, webinars, blog posts, advertising, etc.

### Anyscale People

<a target="_blank" href="https://www.linkedin.com/in/robert-nishihara-b6465444/">
Robert Nishihara</a>

On <a target="_blank" href="https://learning.oreilly.com/videos/-/0636920487463/" title="Dean Wampler on Scaling ML/AI Applications with Ray">video October 5 2020</a> Dean Wampler</a> (<a target="_blank" href="https://deanwampler.com">deanwampler.com</a>) Head of DevRel at Anyscale, said "The biggest use uer of Ray is Ant Financial in China. It's like the Stripe/Paypal of China, running thousands of nodes."
He's <a target="_blank" href="https://www.linkedin.com/in/deanwampler/">now IBM's chief technical representative to the AI Alliance (@the-aialliance)</a>. 
    * Author of "Programming Scala, Third Edition", 2021
    * polyglotprogramming.com/talks

## Competitors:
* DaSC distributed arrays - visualization of its direct-to-disk piece and click graph
* MXNet (now Apache TVM)
* NVIDIA
* ex Facebook

## Simulator

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1716481274/odoo-docker-officialapps-240522_tkt77p.png"><img alt="odoo-docker-officialapps-240522.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1716481274/odoo-docker-officialapps-240522_tkt77p.png" /></a>

## References


https://learning.oreilly.com/library/view/-/9781633437203/
LLMs in Production