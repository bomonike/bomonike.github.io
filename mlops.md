---
layout: post
date: "2025-02-24"
lastchange: "v005 + code test cases :mlops.md"
file: "mlops"
title: "MLOps (Machine Learning Operations) & AIOps (AI Operations)"
excerpt: "Comparing productivity from MLFlow and TFX from Google vs. others"
tags: [apple, mac, setup, cloud]
image:
# apple-black-pins-1900x500.png
  feature: https://i.pinimg.com/originals/03/73/a3/0373a3d465688b2570b2903191b307db.jpg
  credit:
  creditlink:
comments: true
created: "2023-01-16"
---
<a target="_blank" href="https://bomonike.github.io/mlops"><img align="right" width="100" height="100" alt="mlops.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/mlops.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

MLOps makes machine learning workloads robust and reproducible. For example, you'll be able to monitor, retrain, and redeploy a model whenever needed while always keeping a model in production.

{% include whatever.html %}

## Generic MLOps Lifecycle

Machine Learning Operations (MLOps) makes the machine learning lifecycle scalable using DevOps principles and tools.

NOTE: ML pipeline workflows are, as of this writing, almost always one-way DAGs.

This reference flow from the <a target="_blank" href="https://cd.foundation/blog/2020/02/11/announcing-the-cd-foundation-mlops-sig/">CD Foundation</a>:
<a target="_blank" href="https://user-images.githubusercontent.com/300046/118411245-c8f3ec80-b650-11eb-974b-bb22a4abe417.png">><img alt="mlops-cdfnd-1603x599" src="https://user-images.githubusercontent.com/300046/118411245-c8f3ec80-b650-11eb-974b-bb22a4abe417.png">
<em>Click image for full screen</em></a>

is shown in the <a target="_blank" href="https://www.coursera.org/learn/machine-learning-data-lifecycle-in-production/lecture/gzWZQ/ml-pipelines">DeepLearning.ai course</a>.

<a target="_blank" href="https://github.com/cdfoundation/cdf-landscape">https://github.com/cdfoundation/cdf-landscape</a>

"Inner loop":<br />
   1). Train model
   * Plan model requirements and performance metrics
   * Create model (and scoring scripts)
   * Verify code and model quality
   * Configure: Standardize infra configuration with Infrastructure as Code (IaC)

"Outer loop":<br />
   2). Package model<br />
   3). Validate model<br />
   4). Deploy & Release model (to production)<br />
   5). Monitor model (in productive use)<br />
   6). Retrain model<br />

Workflow Topics:

### Model Deployment

1. New product
2. Automate/assist with manual task
3. Replace previous system - gradual ramp-up, roll-back
<br /><br />

Canary deployment first to a small fraction of traffic.

PROTIP: Shadow-mode allows human in parallel.
ML output not used for any decisions during this phase.

AI assistance -> Partial automation -> Full automation

### Logging & Monitoring

* Software metrics: Memory, compute, latancy, throughput, server load
* Input metrics: Avg. input length, volume, num missing values, Avg image brightness
* Output metrics: # times return null, user redoes search, switches to typing

### Data Versioning

managing large-sized datasets (100TB+) in cloud storage systems like S3

* Realtime or batch?
* Cloud vs. Edge/Browser
   * Less network bandwidth needed
   * Lower latency
   * Can function even if network connection is down
* Compute resources (CPU/GPU/memory)
* Latency, Throughput (QPS)
* Security and privacy
<br /><br />

Monitor for concept and data drift

Practices for first deployment is different than later.

### Traceability

OpenTelemetry?

<hr />

## Cloud-specific workflows:

* <a href="#TFX">TFX (TensorFlow eXtended)</a>
* <a href="#AzureDevOps">Microsoft Azure DevOps</a>
* <a href="#MLFlow">MLFlow</a> for Google
* <a href="#AutoML">AutoML</a> for AWS SageMaker


<hr />

## Security Mitigations

One of the main reasons to provide a Machine Learning pipeline for Data Scientists to run is that security processes are automatically included without as much manual toil.

Mitre (a non-profit research lab funded by the US government) defined their Mitre ATT&CK to present -- for each stage in a typical "kill chain" -- the <strong>TTPs (Tactics + Techniques + Procedures)</strong> adversaries use to attack computer systems. Use it to analyze the <strong>kill chain</strong> adversaries could possibly use to get in, do damage, and cover their tracks. All to prevent that in the future.

<a target="_blank" href="https://atlas.mitre.org/">https://atlas.mitre.org</a> adds columns for AI & ML (Machine Learning):

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1706116271/attack-atlas-2401240-3628x770_oevrcg.png"><img alt="attack-atlas-2401240-3628x770.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1706116271/attack-atlas-2401240-3628x770_oevrcg.png">
   <em>Click diagram for full screen</em></a>

   * <a target="_blank" href="https://www.youtube.com/watch?v=3FN9v-y-C-w">VIDEO: Intro</a>
   * <a target="_blank" href="https://www.linkedin.com/in/christina-liaghati/">Dr. Christina Liaghati</a> <a target="_blank" href="https://www.youtube.com/watch?v=rm1ECOgG6Bg">explains</a> the <a target="_blank" href="https://www.youtube.com/watch?v=adUifZ_E208">MLSecOps</a> needed to <a target="_blank" href="https://www.youtube.com/watch?v=BTN3WDl8sNs">harden</a> against the TTPs
   * <a target="_blank" href="https://www.youtube.com/watch?v=h7j7zl6xrdc">AI Threats & Vulnerabilities</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=qHPil2DwqW8&t=4m43s" title="Feb 6, 2024">SANS AI Security Trends</a> by Kirk Trychel
   <br /><br />

Below presents <a target="_blank" href="https://atlas.mitre.org/mitigations/">ATLAS Mitigations</a>
without the need to click around:

<table border="1" cellpadding="4" cellspacing="0">
<tr><th> Mitigation Name </th><th> Description </th><th> Mechanisms </th></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0000">
   Limit Release of Public Information</a>
   </td><td> Limit the public release of technical information about the machine learning stack used in an organization's products or services. Technical knowledge of how machine learning is used can be leveraged by adversaries to perform targeting and tailor attacks to the target system. Additionally, consider limiting the release of organizational information - including physical locations, researcher names, and department structures - from which technical details such as machine learning techniques, model architectures, or datasets may be inferred.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0001">
   Limit Model Artifact Release</a>
   </td><td> Limit public release of technical project details including data, algorithms, model architectures, and model checkpoints that are used in production, or that are representative of those used in production.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0002">
   Passive ML Output Obfuscation</a>
   </td><td> Decreasing the fidelity of model outputs provided to the end user can reduce an adversaries ability to extract information about the model and optimize attacks for the model.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0003">
   Model Hardening</a>
   </td><td> Use techniques to make machine learning models robust to adversarial inputs such as adversarial training or network distillation.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0004">
   Restrict Number of ML Model Queries</a>
   </td><td> Limit the total number and rate of queries a user can perform.
   </td><td> API Gateway </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0005">
   Control Access to ML Models and Data at Rest</a>
   </td><td> Establish access controls on internal model registries and limit internal access to production models. Limit access to training data only to approved users.
   </td><td> IAM & PAM </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0006">
   Use Ensemble Methods</a>
   </td><td> Use an ensemble of models for inference to increase robustness to adversarial inputs. Some attacks may effectively evade one model or model family but be ineffective against others.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0007">
   Sanitize Training Data</a>
   </td><td> Detect and remove or remediate poisoned training data. Training data should be sanitized prior to model training and recurrently for an active learning model.
   Implement a filter to limit ingested training data. Establish a content policy that would remove unwanted content such as certain explicit or offensive language from being used.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0008">
   Validate ML Model</a>
   </td><td> Validate that machine learning models perform as intended by testing for backdoor triggers or adversarial bias. Monitor model for concept drift and training data drift, which may indicate data tampering and poisoning.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0009">
   Use Multi-Modal Sensors</a>
   </td><td> Incorporate multiple sensors to integrate varying perspectives and modalities to avoid a single point of failure susceptible to physical attacks.
   </td><td> Data Cleansing </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0010">
   Input Restoration</a>
   </td><td> Preprocess all inference data to nullify or reverse potential adversarial perturbations.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0011">
   Restrict Library Loading</a>
   </td><td> Prevent abuse of library loading mechanisms in the operating system and software to load untrusted code by configuring appropriate library loading mechanisms and investigating potential vulnerable software.
   File formats such as pickle files that are commonly used to store machine learning models can contain exploits that allow for loading of malicious libraries.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0012">
   Encrypt Sensitive Information</a>
   </td><td> Encrypt sensitive data such as ML models to protect against adversaries attempting to access sensitive data.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0013">
   Code Signing</a>
   </td><td> Enforce binary and application integrity with digital signature verification to prevent untrusted code from executing. Adversaries can embed malicious code in ML software or models. Enforcement of code signing can prevent the compromise of the machine learning supply chain and prevent execution of malicious code.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0014">
   Verify ML Artifacts</a>
   </td><td> Verify the cryptographic checksum of all machine learning artifacts to verify that the file was not modified by an attacker.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0015">
   Adversarial Input Detection</a>
   </td><td> Detect and block adversarial inputs or atypical queries that deviate from known benign behavior, exhibit behavior patterns observed in previous attacks or that come from potentially malicious IPs. Incorporate adversarial detection algorithms into the ML system prior to the ML model.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0016">
   Vulnerability Scanning</a>
   </td><td> Vulnerability scanning is used to find potentially exploitable software vulnerabilities to remediate them.

   File formats such as pickle files that are commonly used to store machine learning models can contain exploits that allow for arbitrary code execution. Both model artifacts and downstream products produced by models should be scanned for known vulnerabilities.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0017">
   Model Distribution Methods</a>
   </td><td> Deploying ML models to edge devices can increase the attack surface of the system. Consider serving models in the cloud to reduce the level of access the adversary has to the model. Also consider computing features in the cloud to prevent gray-box attacks, where an adversary has access to the model preprocessing methods.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0018">
   User Training</a>
   </td><td> Educate ML model developers on secure coding practices and ML vulnerabilities.
   </td><td> - </td></tr>
<tr valign="top"><td> <a target="_blank" href="https://atlas.mitre.org/mitigations/AML.M0019">
   Control Access to ML Models and Data in Production</a>
   </td><td> Require users to verify their identities before accessing a production model. Require authentication for API endpoints and monitor production model queries to ensure compliance with usage policies and to prevent model misuse.
   </td><td> - </td></tr>
</table>


<a name="TFX"></a>

## TFX for ML

<a target="_blank" href="https://www.youtube.com/watch?v=Mxk4qmO_1B4&list=RDCMUC0rqucBdTuFTjJiefW5t-IQ&start_radio=1">VIDEO</a>:
<a target="_blank" href="https://www.tensorflow.org/tfx">
TFX (TensorFlow eXtended)</a> is an open-source end-to-end platform for deploying production ML pipelines. It's created and used at Google and other Alphabet companies as well as Twitter, AirBnB, PayPal.

Modules (each a different GitHub repo):
   * TF ML Metadata
   * TF Data Validation
   * TF Transform
   * TF Model Analysis
   * TF Serving
   <br /><br />

Static datasets are used in prototyping and ML research.
Dynamic datasets are used in production.

TensorFlow Lite deploys to mobile devices.

<a target="_blank" href="http://bit.ly/ml-techdebt">Hidden technical debt in ML systems</a>

Konstantinos, Katsiapis, Karmarkar, A., Altay, A., Zaks, A., Polyzotis, N., … Li, Z. (2020). Towards ML Engineering: A brief history of TensorFlow Extended (TFX). http://arxiv.org/abs/2010.02013



<hr />

<a name="AzureDevOps"></a>

## Microsoft Azure DevOps

On Azure, MLOps makes use of Azure DevOps, which includes Boards, Repos, Pipelines.
After Microsoft bought GitHub, DevOps now also includes GitHub repos and Actions CI/CD.

   * https://azure.microsoft.com/services/devops/?portal=true
   <br /><br />

Setup by Administrator: sets up the DevOps environment and manages the tools.
   1. Connect Azure Machine Learning with either Azure DevOps or GitHub.
   1. When an Azure DevOps project is created, you can connect to an existing Azure Machine Learning workspace:
   1. Within a project, go to Project Settings.
   1. Select service connections and create a new one.
   1. Choose Azure Resource Manager.
   1. Choose to authenticate with an automatic Service Principal.
   1. Set the scope level to Machine Learning Workspace and connect to an existing Azure Machine Learning workspace you have access to.
   1. Grant access permission to all pipelines.
   1. Give your service connection a name. You'll use the name whenever you need to authenticate Azure DevOps to manage the Azure Machine Learning workspace.

   1. Sign into GitHub with an Org Admin account.
   1. Create a GitHub repository.

      ### Store credentials in GitHub:

   1. Go to your repository's Settings.
   1. Navigate to the Secrets page.
   1. Select Actions.
   1. Add a new repository secret.
   1. Enter AZURE_CREDENTIALS as the name.
   1. Paste in the output JSON with the credentials and add the secret.
   <br /><br />

Use Azure DevOps to manage the Azure Machine Learning workspace.
   * https://docs.microsoft.com/en-us/azure/machine-learning/how-to-use-azure-devops

<a target="_blank" href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-assign-roles">PROTIP</a>:
Use RBAC roles to limit access to the workspace. Use a system to create and manage the workspace and its users
so that there is automation with safeguards such as encryption and proper log analytics.


### Create an Azure Machine Learning workspace

Python:

<pre>from azure.ai.ml.entities import Workspace
workspace_name = "myworkspace"
ws_basic = Workspace.create(name=workspace_name,
                            subscription_id="00000000-0000-0000-0000-000000000000",
                            resource_group="myresourcegroup",
                            location="eastus",
                            exist_ok=True)
ml_client_workspace.begin_create(ws_basic)
</pre>

### Developers as end users

contributes to the project by collaborating on the development.
Connects to the tools but has restricted access to the configuration of the DevOps environment.





<hr />

<a name="MLFlow"></a>

## MLFlow

<a target="_blank" href="https://mlflow.org/">MLflow.org</a>
is an open-source platform for the machine learning lifecycle.
It supports Google's TensorFlow Machine Learning toolchain at
https://github.com/mlflow/mlflow

https://www.databricks.com/product/managed-mlflow

From Alfredo Deza and Noah Gift of Pragmatic AI Solutions:
   * <a target="_blank" href="https://learning.oreilly.com/videos/-/032232022VIDEOPAIML/" title="2h 26m March 2022">OReilly Course: MLOps Platforms From Zero: Databricks, MLFlow/MLRun/SKLearn</a>
   * <a target="_blank" href="https://learning.oreilly.com/videos/-/051712022VIDEOPAIML/" title="2h 36m May 2022">MLOps Masterclass: Theory to DevOps to Cloud-native to AutoML</a>
   * <a target="_blank" href="https://learning.oreilly.com/library/view/-/9781098103002/" title="September 2021">Book: Practical MLOps</a> <a target="_blank" href="https://learning.oreilly.com/videos/mlops-foundations-chapter/607082021VIDEOPAIML/607082021VIDEOPAIML-c1_s0/">Video of Foundations</a> (Bash, make, AWS Cloud Shell, Cloud9, collaborate)
   <br /><br />

   <pre>time shuf -n 1000 myfile.tsv myfile.1k.tsv
   </pre>

From Yaron Haviv and Noah Gift
   * <a target="_blank" href="https://learning.oreilly.com/library/view/-/9781098136574/">Implementing MLOps in the Enterprise</a> September 2023
   <br /><br />

<hr />

<a name="AutoML"></a>

## AutoML

AWS SageMaker


<hr />

## Video courses

https://www.deeplearning.ai/program/machine-learning-engineering-for-production-mlops/
4 courses on Coursera

https://www.coursera.org/programs/mckinsey-learning-program-uedvm
1. https://www.coursera.org/learn/introduction-to-machine-learning-in-production/home/welcome
2. Machine Learning Data Lifecycle in Production
3. Machine Learning Modeling Pipelines in Production
4. Deploying Machine Learning Models in Production


* Robert Crowe, Instructor, TensorFlow Developer Engineer, Google
* Laurence Moroney, Instructor, Lead AI Advocate, Google
* <a target="_blank" href="https://www.linkedin.com/in/cristian-bartolom%C3%A9-ar%C3%A1mburu-66768056/">Cristian Bartolomé Arámburu</a>, Curriculum Developer, Founding Engineer, Pulsar
<br /><br />

Rashid Ali - https://www.linkedin.com/pulse/configuring-azure-devops-selenium-ui-tests-rashid-ali/

https://towardsdatascience.com/machine-learning-in-production-why-you-should-care-about-data-and-concept-drift-d96d0bc907fb
Concept and Data Drift

https://christophergs.com/machine%20learning/2020/03/14/how-to-monitor-machine-learning-models/
Monitoring ML Models

<a target="_blank" href="https://www.youtube.com/watch?v=06-AZXmwHjo&t=45s" title="Mar 24, 2021">
A Chat with Andrew on MLOps: From Model-centric to Data-centric</a> (<a target="_blank" href="https://ahahslides.com/MLOPS">slides</a>)
on the <a target="_blank" href="https://www.youtube.com/channel/UCcIXc5mJsHVYTZR1maL5l9w">DeepLearning.ai YouTube channel</a>

## Papers

Konstantinos, Katsiapis, Karmarkar, A., Altay, A., Zaks, A., Polyzotis, N., … Li, Z. (2020). Towards ML Engineering: A brief history of TensorFlow Extended (TFX). http://arxiv.org/abs/2010.02013

Paleyes, A., Urma, R.-G., & Lawrence, N. D. (2020). Challenges in deploying machine learning: A survey of case studies. http://arxiv.org/abs/2011.09926

Sculley, D., Holt, G., Golovin, D., Davydov, E., & Phillips, T. (n.d.). Hidden technical debt in machine learning systems. Retrieved April 28, 2021, from Nips.c https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf

LAB
https://github.com/https-deeplearning-ai/MLEP-public/tree/main/course1/week1-ungraded-lab

Conditions: Speech recognition - accuracy vs human level performance (HLP)
   * Clear Speech - 94% vs. 95% - 1% - 60% of data
   * Car Noise - 89% vs. 93% - 4% - 4%
   * People Noise - 87% vs. 89% - 2% - 30%
   * Low Bandwidth - 70% vs. 70% (no difference)
   <br /><br />

https://www.coursera.org/learn/introduction-to-machine-learning-in-production/lecture/AjC2P/performance-auditing
   * Performance on sub-sets of data (ethnicity, gender)
   * How common are certain errors (FP, FN)
   * Performance on rare cases

https://www.coursera.org/learn/introduction-to-machine-learning-in-production/lecture/B9eMQ/experiment-tracking
Experiment tracking

   * Algorithm/code versioning
   * Dataset used
   * Hyperparameters
   * Results, with summary metrics/analysis
   * Info needed to replicate results
   * Resources used

<hr />

## References

https://blog.ml.cmu.edu/2020/08/31/3-baselines/
Establishing a baseline

https://techcommunity.microsoft.com/t5/azure-ai/responsible-machine-learning-with-error-analysis/ba-p/2141774
Error analysis

https://neptune.ai/blog/ml-experiment-tracking
Experiment tracking

Brundage, M., Avin, S., Wang, J., Belfield, H., Krueger, G., Hadfield, G., … Anderljung, M. (n.d.). Toward trustworthy AI development: Mechanisms for supporting verifiable claims∗. Retrieved May 7, 2021 http://arxiv.org/abs/2004.07213v2

Nakkiran, P., Kaplun, G., Bansal, Y., Yang, T., Barak, B., & Sutskever, I. (2019). Deep double descent: Where bigger models and more data hurt. Retrieved from http://arxiv.org/abs/1912.02292

Data provenance refers to where the data comes from, and data lineage the sequence of processing steps applied to it.

Direct Labeling (aka Process Feedback) labels come from monitoring predictions, not from a "rater".
It needs to match prediction results with their corresponding original inference request.

Complicating production machine learning?
   * Model Retraining driven by declining model performance.
   * Labeling throug Weak Supervision

TFDV (TensorFlow Data Validation)
DEFINITIONS: https://www.coursera.org/learn/machine-learning-data-lifecycle-in-production/lecture/OihrT/detecting-data-issues
Drift refers to changes in data over time, such as data collected once a day. Seasonality.

Concept (covariant) drift

Skew refers to the difference between to static versions, or different sources, such as training set and serving set.
   * Schema skew such as text to numeric
   * Distribution skew of features from different data
   * Feature skew

Detect skew by comparing baseline training and serving data



<hr />

## References:

* https://cd.foundation/blog/2020/02/11/announcing-the-cd-foundation-mlops-sig/
   MLops

* https://medium.com/@karpathy/software-2-0-a64152b37c35
Data 1st class citizen

* https://pair.withgoogle.com/chapter/data-collection/
Runners app

* https://developers.google.com/machine-learning/guides/rules-of-ml
Rules of ML

* https://ai.googleblog.com/2018/09/introducing-inclusive-images-competition.html
Bias in datasets

* https://www.elastic.co/logstash
Logstash

* https://www.fluentd.org/
Fluentd

* https://cloud.google.com/logging/
Google Cloud Logging

* AWS ElasticSearch

* https://azure.microsoft.com/en-us/services/monitor/
Azure Monitor

* https://blog.tensorflow.org/2018/09/introducing-tensorflow-data-validation.html
TFDV

* https://en.wikipedia.org/wiki/Chebyshev_distance
Chebyshev distance

* https://www.cloudskillsboost.google/paths/17
Welcome to the Machine Learning Operations (MLOps):