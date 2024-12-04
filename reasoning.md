---
url: https://bomonike.github.io/reasoning
lastchange: "v005 + indents :reasoning.md"
---

<a target="_blank" href="https://www.youtube.com/watch?v=4ysK3bCUVhc">VIDEO</a>:
"Amazon's NEW AI Just Solved The HARDEST Programming Problem"
by Matthew Berman

That would be <strong>halucinations</strong>, where the AI is making stuff up, albeit based on the likelihood in what it already knows. Generative AI makes use of "Deep learning" techniques to make predictions based on applying statistical models to large datasets.

If we quibble about definitions, one definition of AI is the ability of computers to
<strong>appear</strong> to behave like humans. Thus, the Turing test is about a conversation.

<strong>Automated reasoning</strong> is a specific discipline of artificial intelligence (AI) that applies <strong>logical models and proofs</strong> to reason about the possible behaviors of a system or program, including states it can or will never reach.

While machine learning makes predictions and inferences.
Automated reasoning provides proof from <strong>Logical deductions</strong>.


## AWS Automated Reasoning

AWS's "Automated Reasoning" service was
<a target="_blank" href="https://go.aws/416r2vZ">announced</a>
during their December, 2024 RE:Invent conference.

Their AI demo turns a written HR policy (Leave of Absence)
into FMs (Feature Models?).

Amazon shows their article at
<a target="_blank" href="https://aws.amazon.com/what-is/automated-reasoning/">
https://aws.amazon.com/what-is/automated-reasoning</a>
as categorized under "Security, Identity, & Compliance".

   * AWS Identity and Access Management (IAM) <a target="_blank" href="https://aws.amazon.com/iam/access-analyzer/">Access Analyzer</a> manages accounts permission with automated reasoning.
   * Amazon CodeGuru <a target="_blank" href="https://aws.amazon.com/codeguru/">Reviewer</a> uses automated reasoning and machine learning to help developers identify software vulnerabilities.
   * Amazon Inspector Classic has a <a target="_blank" href="https://docs.aws.amazon.com/inspector/v1/userguide/inspector_network-reachability.html">Network Reachability feature</a> that automatically analyses your EC2 instances for potential security vulnerabilities and misconfigurations.
   * Amazon Virtual Private Cloud (Amazon VPC) <a target="_blank" href="https://docs.aws.amazon.com/vpc/latest/reachability/how-reachability-analyzer-works.html">Reachability Analyzer</a> applies automated reasoning to help you understand and visualize your AWS network.

AWS also calls it <a target="_blank" href="https://aws.amazon.com/security/provable-security/">
"Provable Security"</a>.


## Explainable AI!

The fancy trick is NOT that a service is able to answer questions (using GenAI).

The big deal is this: For the first (well-marketed) time, an AI system can point to explanations,
which the EU has mandated for AI systems to explain the exact rules and variables it used to make a determination.

The big deal is <strong>Explainable AI</strong>.


## How?

Amazon <strong>Bedrock Guardrails</strong> "evaluates prompts and model responses for Agents, Knowledge Bases, and FMs in Amazon Bedrock and self-managed or third-party FMs."

OBSERVE: The prompt to do this work (turn a pdf into Rules, Variables) AWS calls the "intent".

contextual grounding.

OBSERVE: This service makes AI <strong>explainable</strong>.

The potential of this method is its applicability to Laws, Contracts, Agreements, Patents, Scientific White Papers/Peer Review, and a whole host of other written documents claiming something is true or false based on the Data.and Evidence.




