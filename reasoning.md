---
url: https://bomonike.github.io/reasoning
lastchange: "v006 + flows :reasoning.md"
---

<a target="_blank" href="https://bomonike.github.io/reasoning"><img align="right" width="100" height="100" alt="mac-setup-readme-qr-500x500.png" src="https://github.com/bomonike/bomonike.github.io/blob/main/images/reasoning-qr.png?raw=true" />This article</a>
has been <a target="_blank" href="https://wilsonmar.github.io/mac-setup">
refined over several years</a> to provide the the <strong>fastest</strong> way to get a new macOS machine up and running.

<a target="_blank" href="https://www.youtube.com/watch?v=4ysK3bCUVhc">VIDEO</a>:
"Amazon's NEW AI Just Solved The HARDEST Programming Problem"
by Matthew Berman

That would be <strong>halucinations</strong>, where the AI is making stuff up, albeit based on the likelihood in what it already knows. Generative AI makes use of "Deep learning" techniques to make predictions based on applying statistical models to large datasets.

If we quibble about definitions, one definition of AI is the ability of computers to
<strong>appear</strong> to behave like humans. Thus, the Turing test is about a conversation.

<strong>Automated reasoning</strong> is a specific discipline of artificial intelligence (AI) that applies <strong>logical models and proofs</strong> to reason about the possible behaviors of a system or program, including states it can or will never reach.

While machine learning makes predictions and inferences.
Automated reasoning provides proof from <strong>Logical deductions</strong>.


## AWS Automated Reasoning for Provable Security

AWS's "Automated Reasoning" service was
<a target="_blank" href="https://go.aws/416r2vZ">announced</a>
during their December, 2024 RE:Invent conference.

Their AI demo turns a written HR policy (Leave of Absence)
into FMs (Feature Models?).

Amazon's' <a target="_blank" href="https://aws.amazon.com/what-is/automated-reasoning/">
"Automated Reasoning"</a> they categorize under "Security, Identity, & Compliance".

   * AWS Identity and Access Management (IAM) <a target="_blank" href="https://aws.amazon.com/iam/access-analyzer/">Access Analyzer</a> ensures fine-grained least-privilege permission with automated reasoning.<img alt="aws-iam-access-analyzer.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1733376843/aws-iam-access-analyzer_gmhd5u.jpg" />
<img alt="aws-verf-permissions.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1733377167/aws-verf-permissions_xhuggx.png" />

   * Amazon S3 Block Public Access<img alt="aws-s3-block.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1733376654/aws-s3-block_h8hpns.png" />

   * Amazon Inspector Classic has a <a target="_blank" href="https://docs.aws.amazon.com/inspector/v1/userguide/inspector_network-reachability.html">Network Reachability feature</a> that automatically analyses your EC2 instances for potential security vulnerabilities and misconfigurations.

   * Amazon Virtual Private Cloud (Amazon VPC) <a target="_blank" href="https://docs.aws.amazon.com/vpc/latest/reachability/how-reachability-analyzer-works.html">Reachability Analyzer</a> applies automated reasoning to visualize AWS networks.

AWS also calls it <a target="_blank" href="https://aws.amazon.com/security/provable-security/">
"Provable Security"</a>.

Automated Reasoning is for more than security:

   * Amazon CodeGuru <a target="_blank" href="https://aws.amazon.com/codeguru/">Reviewer</a> uses automated reasoning and machine learning to help developers identify software vulnerabilities.<img src="aws-codeguru-flow.png" src="https://console.cloudinary.com/console/c-deab63b516382ad456e1f8a7e2859a/media_library/search?q=&view_mode=mosaic" />



## Explainable AI!

The fancy trick is NOT that a service is able to answer questions (using GenAI).

The big deal is this: For the first (well-marketed) time, an AI system can point to explanations,
which the EU has mandated for AI systems to explain the exact rules and variables it used to make a determination.

The big deal is <strong>Explainable AI</strong>.


## How?

Amazon <strong>Bedrock Guardrails</strong> "evaluates prompts and model responses for Agents, Knowledge Bases, and FMs in Amazon Bedrock and self-managed or third-party FMs (Foundation Models)."

   * Configure thresholds to filter unde


OBSERVE: The prompt to do this work (turn a pdf into Rules, Variables) AWS calls the "intent".

contextual grounding.

OBSERVE: This service makes AI <strong>explainable</strong>.

The potential of this method is its applicability to Laws, Contracts, Agreements, Patents, Scientific White Papers/Peer Review, and a whole host of other written documents claiming something is true or false based on the Data.and Evidence.



