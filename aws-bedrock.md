---
layout: post
date: "2026-02-27"
lastchange: "26-02-27 v008 $20 button :aws-bedrock.md"
url: https://bomonike.github.io/aws-bedrock
file: "aws-bedrock"
title: "AWS Bedrock"
excerpt: "Make $20 of credits by using an AI foundation model using AWS Bedrock"
tags: [AWS, AI, cloud, on-boarding]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-01-25"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

<a target="_blank" href="https://bomonike.github.io/aws-bedrock"><img align="right" width="200" src="https://www.awsicon.com/static/images/Service-Icons/Artificial-Intelligence/64/png5x/Bedrock.png" /></a>
This tutorial aims to <strong>logically</strong> present a hands-on experience to learn how to use AI by Amazon Bedrock.

## Why?

We use Amazon Bedrock because foundation models (LLMs) are so large (and getting larger) that they need to live in the <strong>cloud</strong> - within Bedrock, where one can quickly switch among many models (without downloading).

Cloud billing is how providers monitize (make money from) the billions it took in salaries and data centers needed to create the models.

## AWS-certified AI Practitioner Exam

This is not a 5 minute summary to run mindlessly, 
but a step-by-step guided course so you <strong>master</strong> this like a pro, enough to pass the 
<a target="_blank" href="https://aws.amazon.com/certification/certified-ai-practitioner/">AIF-C01 AWS Certified AI Practioner</a>: 65 questions in 90 minutes for <a target="_blank" href="https://skillbuilder.aws/category/exam-prep/ai-practitioner-AIF-C01">$100</a>. The <a target="_blank" href="https://docs.aws.amazon.com/aws-certification/latest/examguides/ai-practitioner-01.html">Exam Guide</a> Content Domains (good for 3-years):

1. <a target="_blank" href="https://docs.aws.amazon.com/aws-certification/latest/examguides/ai-practitioner-01-domain1.html">20%: Fundamentals of AI and ML</a>
   * Task Statement 1.1: Explain basic AI concepts and terminologies.
   * Task Statement 1.2: Identify practical use cases for AI.
   * Task Statement 1.3: Describe the ML development lifecycle.
2. <a target="_blank" href="https://docs.aws.amazon.com/aws-certification/latest/examguides/ai-practitioner-01-domain2.html">24%: Fundamentals of GenAI</a>
   * Task Statement 2.1: Explain the basic concepts of GenAI.
   * Task Statement 2.2: Understand the capabilities and limitations of GenAI for solving business problems.
   * Task Statement 2.3: Describe AWS infrastructure and technologies for building GenAI applications.
3. <a target="_blank" href="https://docs.aws.amazon.com/aws-certification/latest/examguides/ai-practitioner-01-domain3.html">28%: Applications of Foundation Models</a>
   * Task Statement 3.1: Describe design considerations for applications that use foundation models (FMs).
   * Task Statement 3.2: Choose effective prompt engineering techniques.
   * Task Statement 3.3: Describe the training and fine-tuning process for FMs.
   * Task Statement 3.4: Describe methods to evaluate FM performance.
4. <a target="_blank" href="https://docs.aws.amazon.com/aws-certification/latest/examguides/ai-practitioner-01-domain4.html">14%: Guidelines for Responsible AI</a>
   * Task Statement 4.1: Explain the development of AI systems that are responsible.
   * Task Statement 4.2: Recognize the importance of transparent and explainable models.
5. <a target="_blank" href="https://docs.aws.amazon.com/aws-certification/latest/examguides/ai-practitioner-01-domain5.html">14%: Security, Compliance, and Governance for AI Solutions</a>
   * Task Statement 5.1: Explain methods to secure AI systems.
   * Task Statement 5.2: Recognize governance and compliance regulations for AI systems.
   * <a target="_blank" href="https://www.youtube.com/watch?v=oFjxjqYSjMk">5.3</a>
   <br /><br />

Tutorials:
   * https://www.youtube.com/watch?v=WZeZZ8_W-M4 15-hr Freecodecamp with cheat sheets from <a target="_blank" href="https://ExamPro.com/aif-c01">ExamPro</a>
   * https://youtube.com/playlist?list=PL7Jj8Ba9Yr6BLf2lS4Nfa2jdl0KpdvqYC&si=mZrE2_8vdDkZSLyl CloudExpert Solutions India
   * <a target="_blank" href="https://www.youtube.com/watch?v=WZeZZ8_W-M4&t=4h5m49s">VIDEO Follow Along: Create Bedrock Knowledge Base RAG</a> from Amazon CEO's letter to shareholders uploaded to a new S3 bucket with vector fields for Amazon <a target="_blank" href="https://www.youtube.com/watch?v=WZeZZ8_W-M4&t=52386s">Follow along OpenSearch</a>.
   * https://www.youtube.com/watch?v=gevdk7PV-s8
   * https://www.zerotocloud.co/course/ai-practitioner-notes $39 from <a target="_blank" href="https://www.youtube.com/watch?v=v5yQNl8Rjy0">Tech with Lucy</a>
   <br /><br />

Bragadocious "How I Passed it with little effort":
   * https://www.youtube.com/watch?v=kv0VAH6at9E&pp=ugUEEgJlbg%3D%3D
   * https://www.youtube.com/watch?v=6cMLDgFrWqs
   * https://www.youtube.com/watch?v=kv0VAH6at9E 
   * https://www.youtube.com/watch?v=kv0VAH6at9E&t=31s&pp=ugUEEgJlbg%3D%3D Digital Cloud Training
   <br /><br />

1. Take the 65-question free practice exam at:

   * <a target="_blank" href="https://cloudninja.pro/practice-tests/ai-practitioner/exam">CodeNinja</a>
   * <a target="_blank" href="https://www.zerotocloud.co/course/aws-certified-ai-practitioner-practice-tests">$29</a> 
   <br /><br />

There is also the Generative AI Developer, Machine Learning Developer, and Machine Learning Engineer.

<hr />

## What: Use Cases

Eduardo Mota provides this list of why people use this tech:

A. Customer Support Automation - Intelligent chatbots, ticket routing, and automated responses

B. Data Analysis and Reporting - Automated insights, report generation, and data visualization

C. Content Generation - Marketing copy, documentation, and creative content at scale

D. DevOps Automation - Infrastructure management, deployment pipelines, and monitoring

E. Research and Information Gathering - Web scraping, document analysis, and knowledge synthesis

F. Other - Tell us about your unique use case


## Establish AWS Account

Begin by following my <a target="_blank" href="Error getting IAM user detailshttps://bomonike.github.io/aws-onboarding">aws-onboarding tutorial</a> to securely establish an AWS account.

   https://docs.aws.amazon.com/cli/latest/userguide/cli-authentication-user.html
   

## Amazon AI products & services

Below is a list of the many <strong>AI-related services and brands from AWS</strong>:

Rule-Based Systems: Early AI relied on explicit programming and fixed rules.

Machine Learning: Introduced data-driven pattern recognition

* <a target="_blank" href="https://aws.amazon.com/sagemaker/ai/">SageMaker AI</a> (without "Amazon") was formerly<br /><a target="_blank" href="https://aws.amazon.com/sagemaker/">Amazon SageMaker AI<img align="right" width="100" src="https://www.awsicon.com/static/images/Service-Icons/Artificial-Intelligence/64/png5x/SageMaker-AI.png"></a> is for <strong>creating custom LLM models</strong> from scratch or fine-tune existing ones with full control over the ML lifecycle. Unlike Bedrock (which focuses on pre-built foundation models), Amazon SageMaker provides a <strong>toolset</strong> to build Machine Learning (ML) models used for "data, analytics, and AI". Amazon SageMaker is a comprehensive machine learning platform for building, training, and deploying custom ML models. SageMaker features include <a href="#Notebooks">Notebooks</a>, training infrastructure, model hosting, and MLOps tools. It uess a Lakehouse architecture to hold and process data with versioning capabilities.
   * Amazon SageMaker Jumpstart (solutions for common ML uses cases that can be deployed in just a few steps)
   * Amazon SageMaker Ground Truth
   * Amazon SageMaker Clarify detects bias in ML models and provides explanations for model predictions.

   * SageMaker Unified Studio (formerly<br />Amazon SageMaker Studio Lab) incorporates (SQL) analytics capabilities referencing data stored in a Lakehouse architecture in<br />Amazon S3 data lakes within<br /><a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift data warehouses</a> plus third-party and federated data sources.
   * SageMaker Catalog was built on<br />Amazon DataZone to discover, govern, and collaborate on data and AI.
   <br /><br />

Deep Learning: Enables complex pattern processing through neural networks:<br />
* Deep Learning Amis, Deep Learning Containers, Deepcomposer, Deeplens, Deepracer, Pytorch on AWS.

Amazon developed AI utilities:<br />
* CodeGuru scans & profiles code to suggest security changes in GitHub Actions. <a target="_blank" href="https://www.youtube.com/watch?v=WZeZZ8_W-M4&t=10h30m32s">VIDEO</a>
* Codewhisperer is being <a target="_blank" href="https://docs.aws.amazon.com/codewhisperer/latest/userguide/whisper-legacy.html">folded into Amazon Q Developer Pro</a> to suggest code based on comments, in real-time as auto completion. <a target="_blank" href="https://www.youtube.com/watch?v=erO_6AX_DXk">VIDEO</a>
* Forecast, Kendra, Lex, 
* <a target="_blank" href="https://aws.amazon.com/personalize/">Personalize</a> is a recommender engine which elevates customer experience with AI-powered personalization based on timestamped interaction data in S3 datasets. <a target="_blank" href="https://medium.com/@christopheradamson253/create-intelligent-recommendation-systems-with-amazon-personalize-ed9e620f3b43">BLOG</a>
* Polly converts text to lifelike speech?
* Rekognition, Amazon Rekognition Image, Amazon Rekognition Video, 
* Textract extracts text and structured data from documents like PDFs and images.
* <a target="_blank" href="https://docs.aws.amazon.com/transcribe/latest/dg/what-is.html">Amazon Transcribe</a> speech-to-text (STT) engine.
* Translate

Amazon developed a suite of industry-specific AI services sold as SaaS:<br />
* Fraud Detector, 
* <a target="_blank" href="https://docs.aws.amazon.com/comprehend/latest/dg/what-is.html">Comprehend</a> to detect customer sentiment in reviews written by customers. It's used in
* Comprehend Medical for entity recognition in notes about patients,
* Healthimaging, Healthlake, Healnomics, Healthscribe;
Lookout For Equipment, Lookout for Metrics, Lookout for Vision.

Generative AI: creates new content from learned patterns.

   * <img align="right" width="100" src="https://www.awsicon.com/static/images/Service-Icons/Artificial-Intelligence/64/png5x/Q.png">Amazon Q is Amazon's brand category name for Generative AI capabilities.
   * <a taraget="_blank" href="https://aws.amazon.com/q/developer/">Amazon Q Developer</a> is "an AI-power assistant that helps developers write, debug, and understand code faster by answering questions, generating code, and offering real-time support within IDEs". It's used to develop Agentic AI apps (like Anthropic Claude does).

   Amazon Q capabilities are (as of Jan 2026) provided within<br />
   Amazon Kiro CLI and Kiro.app created based on a fork of Microsoft's VSCode IDE GUI app.

   DEFINITION: A Prompt is the input text or message that a user provides to a foundation model to guide its response. Prompts can be simple instructions or complex examples.  Prompts provided to generative AI (that works like ChatGPT) are processed within the<br />Amazon Bedrock GUI.

   A "system prompt" defines the model's behavior, personality, and constraints, applied to many prompts.

   "fine-tuning" a LLM trains a pre-trained model on additional data (weights) for specific tasks. Used to teach the model a specific style, format, or domain expertise.

   A hallucination is when a model generates plausible-sounding but factually incorrect information

   * Amazon Bedrock provides access to foundation models (LLMs) from leading AI providers and run inference on them to generate text, image, video, and embeddings output through a unified API.

   DEFINITION: Zero-Shot Prompting is a type of prompt that provides no examples—just a direct instruction for the model to complete a task based on its pre-trained knowledge.

   DEFINITION: Few-Shot Prompting is a prompt that includes a few examples to show the model how to respond to similar inputs.

   https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/supplement/IOgNx/prompt-engineering-guide

   https://d2eo22ngex1n9g.cloudfront.net/Documentation/User+Guides/Titan/Amazon+Titan+Text+Prompt+Engineering+Guidelines.pdf
   Amazon Titan Text Prompt Engineering Guidelines
   
   https://community.aws/content/2tAwR5pcqPteIgNXBJ29f9VqVpF/amazon-nova-prompt-engineering-on-aws-a-field-guide-by-brooke?lang=en
   Amazon Nova: Prompt Engineering on AWS - A Field Guide

<strong>"Agentic AI"</strong> is an industry-wide term for software that exhibits agency, adapting its behavior to achieve specific goals in dynamic environments.
* <a target="_blank" href="https://docs.aws.amazon.com/nova/latest/nova2-userguide/getting-started-nova-2.html">Amazon Nova 2 FM/LLM</a> are multimodal foundation models that process text, images, video, documents, and speech. It has Extended thinking capability that allows models to break down complex problems and show their step-by-step analysis before providing answers. It supports up to 1 million tokens.
   * Its "Lite" variant outputs text.
   * Its "Sonic" variant operates on speech and text.
* Amazon Nova Act is in a <a target="_blank" href="https://nova.amazon.com/act?tab=playground">Playground</a> to make use of Amazon's Nova LLM to (like RPA) chain Python action code operating on web browsers such as Google Chrome. Data scraped are put in Pydantic classes. See <a target="_blank" href="https://github.com/aws/nova-act">github.com/aws/nova-act</a> created by <a target="_blank" href="https://labs.amazon.science/blog/nova-act">Amazon AGI Labs</a>.

* Amazon Bedrock Agents is a <strong>fully managed</strong> service for configuring and deploying autonomous agents without managing infrastructure or writing custom code. It handles prompt engineering, memory, monitoring, encryption, user permissions, and API invocation for you. Key features include API-driven development, action groups for defining specific actions, knowledge base integration, and a configuration-based implementation approach.

* AgentCore replaces legagacy Bedrock Agents. AgentCore was designed from the ground up to run production AI agent MCP workloads cost efficiently. Its enterprise-grade security: OAuth and IAM authentication with fine-grained access control for enterprise security compliance. Its isolated Python environment for agent-generated code execution with no sandbox escape risk. But its managed web automation instances allows for browser-based interactions and scraping. It provides Serverless execution with 8-hour maximum session duration and configurable idle timeout. No infrastructure management required. Its dual-layer memory has short-term context for current sessions plus long-term insights via vector embeddings across sessions. For real-time monitoring and debugging, OpenTelemetry tracing with native CloudWatch integration.
   * <a target="_blank" href="https://www.youtube.com/watch?v=N7FGbBq1mI4&pp=ugUHEgVlbi1VUw%3D%3D">AWS Developers</a>
   <br /><br />

* <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock-agentcore/home?region=us-east-1#">Amazon Bedrock AgentCore</a> can flexibly deploy and operate <strong>AI agents</strong> in dynamic agent workloads using <strong>any framework and model</strong> that include CrewAI, LangGraph, LlamaIndex, and Strands Agents. 

* <a target="_blank" href="https://PartyRock.aws">PartyRock.aws</a> is a FREE SaaS app builder powered by several LLMs. Apps built by it can be shared. Sign in can be with a Google, Apple accts too (but not Amazon Builder ID). <a target="_blank" href="https://www.youtube.com/watch?v=-6p-u-BwJww">VIDEO</a> <a target="_blank" href="https://www.youtube.com/watch?v=WZeZZ8_W-M4&t=28338s">VIDEO: honest review</a> even though he can't get it working.


* <a target="_blank" href="https://strandsagents.com/">StrandsAgents.com</a> is a lightweight SDK (releaed in 2025) for Python & Typescript (Dec 25 with zod schema validation for type-safe tool defs). <a target="_blank" href="https://pypi.org/project/strands-agents/">open sourced</a> Apache 2.0 by AWS to <a target="_blank" href="https://github.com/strands-agent/sdk-python">https://github.com/strands-agent/sdk-python</a> with <a target="_blank" href="https://github.com/strands-agents/tools">MCP tools</a> and <a target="_blank" href="https://github.com/strands-agents/samples">samples</a>. Unlike Bedrock, Strands is model agnostic (can use Anthropic Claude, OpenAI, etc.). It takes a model-driven (MCP & A2A) approach to building and running autonomous AI agents, in just a few lines of code. It emphasizes letting the LLM handle planning and reasoning rather than hardcoding workflows. It takes a model-driven approach to building AI agents.:
   * <a target="_blank" href="https://www.youtube.com/watch?v=Ausm87d5Ry8">Model Driven Agents - Strands Agents (A New Open Source, Model First, Framework for Agents)</a>
   * <a target="_blank" href="https://aws.amazon.com/blogs/opensource/introducing-strands-agents-an-open-source-ai-agents-sdk/">Introducing Strands Agents, an Open Source AI Agents SDK</a> by Clare Liguori on 16 MAY 2025
   * <a target="_blank" href="https://www.youtube.com/watch?v=nS1arlGhKOI">Strands Agents Framework Introduction</a> by Avatar image
   * <a target="_blank" href="https://www.youtube.com/watch?v=dn3G9jvB98k&pp=ugUEEgJlbg%3D%3D">AWS Strands Agents SDK – Agents as Tools Explained - Multi AI Agent System at Scales #aiagents</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Q3NreEAdKMc&pp=ugUEEgJlbg%3D%3D">Introducing Strands Agents, an Open Source AI Agents SDK — Suman Debnath, AWS</a>
   <br /><br />

* Strand workflows are graph-based, with LangSmith integration.

* <a target=_blank" href="https://aws.amazon.com/ai/machine-learning/inferentia/">AWS Inferentia</a> AI chips designed for AI inference used by Alexa and EC2 instances.
* <a target="_blank" href="https://aws.amazon.com/machine-learning/neuron/">AWS Neuron SDK<img align="right" width="100" src="https://bhavinsangani14.github.io/AWS-Icons-Assets/git-aws-icons/64/svg/Neuron.svg"></a> deploy models on new AWS Inferentia chips (and train them on AWS Trainium chips). It integrates natively with popular frameworks, such as PyTorch and TensorFlow, so that you can continue to use your existing code and workflows and run on Inferentia chips.
* <a target="_blank" href="https://aws.amazon.com/ai/machine-learning/trainium/">AWS Trainium</a> are evolving AI Accelerator for cloud GenAI "UltraServer" infra used by EC2 P5e and P5en instances controlled by the AWS Neuron SDK. Trainium3 use 3nm AI chips for 2.52 petaflops (PFLOPs) of FP8 compute. <a target="_blank" href="https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/aws-trainium/">BLOG</a>
* <a target="_blank" href="https://awsdocs-neuron.readthedocs-hosted.com/en/latest/">Neuron Explorer</a>
   <br /><br />

1. View YouTube videos about Bedrock:

   https://www.youtube.com/playlist?list=PLhr1KZpdzukfmv7jxvB0rL8SWoycA9TIM

1. <a target="_blank" href="https://catalog.us-east-1.prod.workshops.aws/workshops/a4bdb007-5600-4368-81c5-ff5b4154f518/en-US?refid=ceaf07a2-36ab-4fba-b62f-bcf6c48ca9f2">Text-based "Workshop" introducing Bedrock</a>

<a target="_blank" href="https://docs.aws.amazon.com/cli/latest/reference/bedrock/">
API operations for creating, managing, fine-turning, and evaluating Amazon Bedrock models.</a>

## IAM Permissions

REMEMBER: An AWS Account can do nothing without policies first being added to the account or the user group assigned to the account.
<pre>
                "bedrock:ListFoundationModels",
                "bedrock:GetFoundationModel",
                "bedrock:TagResource", 
                "bedrock:UntagResource", 
                "bedrock:ListTagsForResource", 
                "bedrock:CreateAgent", 
                "bedrock:UpdateAgent", 
                "bedrock:GetAgent", 
                "bedrock:ListAgents", 
                "bedrock:DeleteAgent",
                "bedrock:CreateAgentActionGroup", 
                "bedrock:UpdateAgentActionGroup", 
                "bedrock:GetAgentActionGroup", 
                "bedrock:ListAgentActionGroups", 
                "bedrock:DeleteAgentActionGroup",
                "bedrock:GetAgentVersion",
                "bedrock:ListAgentVersions", 
                "bedrock:DeleteAgentVersion",
                "bedrock:CreateAgentAlias", 
                "bedrock:UpdateAgentAlias",               
                "bedrock:GetAgentAlias",
                "bedrock:ListAgentAliases",
                "bedrock:DeleteAgentAlias",
                "bedrock:AssociateAgentKnowledgeBase",
                "bedrock:DisassociateAgentKnowledgeBase",
                "bedrock:ListAgentKnowledgeBases",
                "bedrock:GetKnowledgeBase",
                "bedrock:ListKnowledgeBases",
                "bedrock:PrepareAgent",
                "bedrock:InvokeAgent",
                "bedrock:AssociateAgentCollaborator",
                "bedrock:DisassociateAgentCollaborator",
                "bedrock:GetAgentCollaborator",
                "bedrock:ListAgentCollaborators",
                "bedrock:UpdateAgentCollaborator"
</pre>

The range of services for AI: BedrockCore, Sagemaker, BedrockAgentCore, Kira, etc. have dozens of actions.
Knowing them means knowing the service.

PROTIP: Using Bedrock in production requires several AWS services. 
Auxillary services include: KMS, APIGateway, Lambda, Logging, logs, application-signals, CloudWatch, oam, rum, xray (tracing).

It's convenient to grant to all resources:
   * "AmazonBedrockFullAccess" 
   * ARN: arn:aws:iam::aws:policy/BedrockAgentCoreFullAccess for "bedrock-agentcore:*"
   <br /><br />

But that's not the safest way to go.

These instructions make use of AWS policy file "aws-quickly/.../bedrocks-01-policy.json" based on:
   <a target="_blank" href="https://docs.aws.amazon.com/aws-managed-policy/latest/reference/BedrockAgentCoreFullAccess.html">JSON policy document for <strong>BedrockAgentCoreFullAccess</strong>.

   It is a subset of the <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples-agent.html#iam-agents-ex-all">required permissions for Bedrock agents</a>

1. Click the copy icon for the "JSON policy document" section to get all those lines in your OS Clipboard.
1. In IAM, select a User groups. 
1. Click the orange "Create group" sausage. 
1. Name the group "Bedrocks".
1. Check the user to assign the group (to obtain permissions associated with the group).
1. Click "Create Group" at the lower-right of the page.
1. Select the user group. Click "Edit". Click the "Permissions" tab.
1. Click "Add permissions". Click "Create inline policies". Click "JSON".
1. Click in the Policy editor text "Version". Press command+A to select all. Press delete
1. Press command+V to paste from your Clipboard all 386 lines.
1. "2170 characters exceeding limit"

Alternately, using CLI:
```
# To return an ARN like arn:aws:iam::123456789012:policy/Bedrocks-01-Policy
aws iam create-policy \
  --policy-name Bedrocks-01-Policy \
  --policy-document file://bedrocks-01-policy.json

aws iam attach-group-policy \
  --group-name MyGroupName \
  --policy-arn arn:aws:iam::123456789012:policy/Bedrocks-01-Policy
```

## Amazon Bedrock GUI Menu

   <a target="_blank" href="https://aws.amazon.com/bedrock/">Amazon Bedrock</a> is a service fully managed by AWS to provide you the <strong>infrastructure</strong> to build generative AI applications without needing to manage (using Cloud Formation, etc.). 

1. On the <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/">AWS Console GUI web page</a>, press <strong>Option+S</strong> or click inside the Search box. 
   <img alt="aws-search-1318x170.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769336376/aws-search-1318x170_bp4lwm.png" />

   Type enough of "Amazon Bedrock" and press Enter when that appears. It's one of Amazon's AI services:
   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769489879/bedrock-svcs-674x292_zze5xx.png"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769489879/bedrock-svcs-674x292_zze5xx.png" /></a>
1. Cursor over the "Amazon Bedrock" listed to reveal its "Top features":

   Agents, <a href="#Guardrails">Guardrails</a>, Knowledge Bases, Prompt Management, Flows

   DEFINITION: Guardrails are Configurable controls in Amazon Bedrock used to detect and filter out harmful or sensitive content from model inputs and outputs.


   ### Overview Menu Model catalog

1. Click on the "Amazon Bedrock" choice for its "Overview" screen and left menu:

   <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/"><img align="right" width="200" alt="bedrock-menu-512x2182.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1770450444/bedrock-menu-512x2182_emvpu3.png" /></a>
1. Notice the menu's headings reflect the typical sequence of usage:

   Discover -> Test -> Infer -> Tune -> Build -> <a href="#Assess">Assess</a>

1. Although "Configure and Learn" is listed at the bottom of the Bedrock menu, that's where we need to start.
1. Click "User Guide" to open a new tab to click <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/key-definitions.html">"Key terminology"</a>.

1. Scroll down to "View related pages" such as <a target="_blank" href="https://docs.aws.amazon.com/wellarchitected/latest/generative-ai-lens/definitions.html">Definitions from the Generate AI Lens</a> that opens in another tab.

   ## Pricing

1. Click on "<a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/bedrock-pricing.html">Amazon Bedrock pricing</a>" from the left menu.

   <a target="_blank" href="https://aws.amazon.com/bedrock/pricing/">Bedrock pricing</a>
   
   https://docs.aws.amazon.com/bedrock/latest/userguide/sdk-general-information-section.html

1. Click <a target="_blank" href="https://aws.amazon.com/bedrock/pricing/">"Bedrock pricing"</a> for a new tab.

   "Pricing is dependent on the modality, provider, and model" choices. <strong>Also by Region</strong> selected.



   <a name="DiscoverModels"></a>
   
   ### Discover Model choice 

1. Click the Amazon Bedrock web browser tab (green icon ) to return to the Overview page.
1. Click on "<a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/model-catalog">View Model catalog</a>" to see the <strong>Filters</strong> to select the provider and <strong>Modality</strong> you want to use.   
   
   Notice that choosing "Anthropic" as your provider involves filling out their survey, which
   PROTIP: Anthropic <a target="_blank" href="https://www.anthropic.com/research/anthropic-economic-index-january-2026-report">publishes as their "Economic Index" report</a>.

   <a target="_blank" href="https://www.youtube.com/watch?v=jwgW_gHI1Vs">VIDEO</a>:
   BTW: Anthropic and AWS have a massive circular investment in AI data center build-out <a target="_blank" href="https://www.youtube.com/watch?v=vnGC4YS36gU">in Indiana</a> that use Amazon-designed Trinium chips (rather than NVIDIA). 30 buildings will consume 2.2 gigawatts.

   <a target="_blank" href="https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/lecture/wMz4e/choosing-a-foundation-model">VIDEO</a>: Try several models so you're not guessing what works best. Models behave differently depending on your data and goals.

   TODO: Use Ray.io to track run times and evaluate.

   TODO: Add cost info to <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Basic%20Bedrock/1-bedrock_intro.ipynb">Python code to list models within Bedrock</a>

   ### Leaderboards

   The Berkeley Function Calling Leaderboard (BFCL) at <a target="_blank" href="https://gorilla.cs.berkeley.edu/leaderboard.html">https://gorilla.cs.berkeley.edu/leaderboard.html</a> evaluates the LLM's ability to call functions (aka tools) accurately. This leaderboard consists of real-world data and get updated periodically. For more information on the evaluation dataset and methodology, please refer to our blogs: BFCL-v1 introducing AST as an evaluation metric, BFCL-v2 introducing enterprise and OSS-contributed functions, BFCL-v3 introducing multi-turn interactions, and BFCL-v4 introducing holistic agentic evaluation. Checkout code and data. At time of writing, "Qwen3-0.6B (FC)" is the least cost LLM and also the least latency.

   See https://block.github.io/goose/docs/getting-started/providers
   about variables holding API keys for each LLM provider.


   ### Amazon models
  
   PROTIP: Explore AWS AI Service Cards which describe each of Amazon's own models.

   https://aws.amazon.com/nova/models/?sc_icampaign=launch_nova-models-reinvent_2025&sc_ichannel=ha&sc_iplace=signin

   ### Amazon Q Developer regions

   https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/regions.html

   DEFINITION: Token is a unit of text processed by the model. A token could be a word, part of a word, or punctuation. Both
input prompts and output responses are measured in tokens.

   DEFINITION: Max Tokens is a setting that limits the length of the model’s response by defining the maximum number of tokens (chunks of words or characters) it can generate.

   DEFINITION: Temperature is a parameter used during inference to control the randomness of model output. Higher values produce more creative or varied responses; lower values yield more consistent and focused results.

   ## Manage IAM policies for permissions

1. Click "<a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/settings">Settings</a>" near the bottom of the menu.
1. Click "<a target="_blank" href="https://us-east-1.console.aws.amazon.com/iam/home?region=us-east-1#/home">Manage IAM policies</a>" for a new tab.


### AWS Bedrock IAM role

1. Set up your Amazon Bedrock IAM role
1. Sign into Amazon Bedrock in the console
1. Request access to foundation models (Amazon Nova) by following the steps in the Amazon Bedrock user guide.
1. <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started-api-keys.html">Generate Bedrock API key</a> (good for 30 days).
1. Make your first API call.

1. https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started-api-ex-cli.html
Run example Amazon Bedrock API requests with the AWS Command Line Interface

1. https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started-api-ex-python.html
Run example Amazon Bedrock API requests through the AWS SDK for Python (Boto3)

1. https://docs.aws.amazon.com/nova/latest/nova2-userguide/customization.html
   Customizing Amazon Nova 2 models

   https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/agentcore-get-started-toolkit.html

   Agent frameworks getting in your way?  

   To <a target="_blank" href="https://learning.oreilly.com/live-events/ai-agents-with-aws/0642572272098/0642572272081/">Develop intelligent agents</a> with Amazon Bedrock, <a target="_blank" href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html">AgentCore</a>, and <a target="_blank" href="https://strandsagents.com/latest/documentation/docs/">Strands Agents</a> by Eduardo Mota
   * strands-python.md  and 
   * agentcore_strans_requirements.md


   ### Create a IAM user

   If you used a root account email and password to sign in:
   
1. Click "Users" on the left menu, then the orange "Create user" for a new tab (with a red icon).
1. NAMING CONVENTION: Do not enter an email address, but make up ??? (up to 64 characters).
1. Check "Provide user access to the AWS Management Console".
1. Leave "Custom password" unchecked.
1. Leave "users must create a new password at next sign-in" unchecked.
1. Click "Next".
1. Click "Attach policies directly".
1. Type "Bedrock" in the search field.
1. To see long Policy names, expand the column \| in front of the "Type" heading text.
1. Check "AmazonBedrockFullAccess" (not the best practice)???

   "Effect": "Allow",
   "Action": "bedrock:InvokeModel",
   "Resource": "arn:aws:bedrock:*::foundation-model/*"

1. Click "Next".
1. Tag???
1. Click "Create".
1. Click "Download .csv file" or:
   1. Click the icon to copy the "Console sign-in URL" value and paste that in your Password Manager entry.
   1. Click the icon to copy the "User name" value and paste that in your Password Manager entry.
   1. Click "Show", then click the icon to copy the "Console password" value. In your Password Manager, paste the value.
1. Optionally Click "Enabled without MFA", then ???
1. Click "Create access key" blue link.
1. Click "Command Line Interface (CLI)".
1. Click "I understand..."
1. Click "Next", check to confirm. "Next" again.
1. Type a Description. ???
1. Click "Create access key" orange pill.
1. Click the icon to copy the "Access key" and paste
1. Click "Done".
1. Click "Generate API Key".
1. Set Expiry. ???
1. Click "Generate API key".
1. Click the blue copy icon among "Variables". Paste that in your Password Manager.
1. Close.

References:
   * https://learning.oreilly.com/live-events/agentic-ai-and-cybersecurity-risks/0642572186456/
   Course: "Agentic AI and Cybersecurity Risks" by Dr. Petar Radanliev
   * https://genai.owasp.org/2025/12/09/owasp-genai-security-project-releases-top-10-risks-and-mitigations-for-agentic-ai-security/
   <br /><br />


   <a name="InfProfiles"></a>

   ### Inference Profiles

   <table border="1" cellpadding="4" cellspacing="0">
   <tr><th> Feature </th><th> System-Defined </th><th> Application </th></tr>
   <tr valign="top"><td>           Management </td><td> AWS Managed  </td><td> User Managed</td></tr>
   <tr valign="top"><td> Best For </td><td> High availability, global apps </td><td> Cost tracking, multi-tenant</td></tr>
   <tr valign="top"><td>      Setup Required? </td><td> ✓ None </td><td> ✗ Must create</td></tr>
   <tr valign="top"><td> Cross-Region Routing </td><td> ✓ Yes  </td><td> ✓ Inherits from base</td></tr>
   <tr valign="top"><td>    High Availability </td><td> ✓ Yes  </td><td> ✓ Inherits from base</td></tr>
   <tr valign="top"><td>     Usage Monitoring </td><td> ✗ No   </td><td> ✓ Yes</td></tr>
   <tr valign="top"><td>        Cost Tracking </td><td> ✗ No   </td><td> ✓ Yes</td></tr>
   <tr valign="top"><td>  Custom IAM Policies </td><td> ✗ No   </td><td> ✓ Yes</td></tr>
   </table>

   <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Basic%20Bedrock/4-inference_profiles.ipynb">Python code: List System-Defined vs Application Inference Profiles</a>
   create_inference_profile(), 
   Both inherit cross-region routing capabilities.
   * Usage monitoring - Separate metrics for different apps
   * Cost tracking - Track usage per application/team for Chargeback to business units, esp. in Multi-tenant systems
   * Separate dev/staging/prod environments
   * Cost allocation across teams
   * Access control - IAM policies per profile
   * Quota management - Separate rate limits


   ### Chat with BedRock

   <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Basic%20Bedrock/1-bedrock_intro.ipynb">Python code</a> to Make an invoke_model(prompt) request

   <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Basic%20Bedrock/1-bedrock_intro.ipynb">Python code</a> to Make a multi-turn converse(conversation) request

   <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Basic%20Bedrock/2-image_generation.ipynb">Python code: generate, display and save images</a> with model Nova Canvas
   (gen single or multiple images)

   <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Basic%20Bedrock/3-video_generation.ipynb">Python code: Text to Video Generation</a> with model Nova Reel

   // ARN: arn:aws:bedrock:us-east-1:058264544288:inference-profile/us.amazon.nova-lite-v1:0
   // ID: us.amazon.nova-lite-v1:0
   // Status: ACTIVE
   // Models: [{'modelArn': 'arn:aws:bedrock:us-east-1::foundation-model/amazon.nova-lite-v1:0'}, {'modelArn': 'arn:aws:bedrock:us-west-2::foundation-model/amazon.nova-lite-v1:0'}, {'modelArn': 'arn:aws:bedrock:us-east-2::foundation-model/amazon.nova-lite-v1:0'}]

   // Get details of a system profile:
   // Use system profile for inference


   ### Manually on console:

   Alternatively, 
   
   TODO: ???

   Potential responses:

   <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-access.html#model-access-permissions">
   DOCS: access permissions</a>

   <strong>
   ValidationException
   Operation not allowed
   </strong>

   Model Access Not Enabled. 
   You need to explicitly request access to models in Bedrock
   1. Go to AWS Console → Bedrock → Model access
   1. Select the models you want to use and request access
   1. Access is usually granted immediately for most models

   Region Mismatch:

   The model you're trying to use isn't available in your current region
   Check which models are available in your region
   Claude models are available in us-east-1, us-west-2, ap-northeast-1, ap-southeast-1, eu-central-1, and eu-west-3

   Incorrect Model ID

   Make sure you're using the correct model identifier
   For Claude models, use formats like:<br />
   anthropic.claude-3-5-sonnet-20241022-v2:0<br />
   anthropic.claude-3-5-haiku-20241022-v1:0


   ### Chat / Text playbaround"

1. Click the web app green icon browser tab to return to Amazon Bedrock.
1. Click "Chat / Text playbaround" menu.
1. ...
1. Click "Run".




## Well architected

https://aws.amazon.com/architecture/well-architected/


## Permissions

REMEMBER: First-time Amazon Bedrock model invocation requires AWS Marketplace permissions.

1. Open the Amazon Bedrock console at https://console.aws.amazon.com/bedrock/
1. Ensure you're in the US East (N. Virginia) (us-east-1) Region
1. From the left navigation pane, choose "Model access" under Bedrock configurations
1. In What is model access, choose Enable specific models
1. Select Nova Lite from the Base models list
1. Click Next
1. On the Review and submit page, click Submit
1. Refresh the Base models table to confirm that access has been granted[4][5]


Your IAM User or Role should have the <strong>AmazonBedrockFullAccess</strong> AWS managed policy attached[5].

To allow use of Amazon Nova Lite v1 as the <a href="#InfProfile">inference profile</a> and foundation model:

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "bedrock:InvokeModel",
        "bedrock:InvokeModelWithResponseStream"
      ],
      "Resource": [
        "arn:aws:bedrock:*::inference-profile/us.amazon.nova-lite-v1:0",
        "arn:aws:bedrock:*::foundation-model/amazon.nova-lite-v1:0"
      ]
    }
  ]
}
```

## From Activity

If you clicked an Activity to earn credits, you would be at:

   https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/text-generation-playground?tutorialId=playground-get-started
   Amazon Bedrock > Chat / Text playground

<a target="_blank" href="https://www.youtube.com/watch?v=yW5m9c7U4YE&list=PLcVUEmr8aWhV3TYoGD9l8RMufs-NiIX3D&index=2">VIDEO</a>:
Follow the blue pop-ups (but don't click "Next" within them):

1. Click the orange "Select model" orange button.

   PROTIP: Do not select "Anthropic" to avoid their mandatory "use case survey" and possibly thrown into https://console.aws.amazon.com/support/home hell.

1. Click the "+" at the top of your browser bar to see the difference between the various LLM models:

   <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/models-supported.html">
   DOCS: Table of foundation models supported in Amazon Bedrock</a>

   PROTIP: Some models are available only in a <strong>single region</strong>. <a target="_blank" href="https://dev.to/pradeep_kasula_dff004d770/accessing-amazon-nova-lite-on-aws-bedrock-22pi">Amazon Nova Lite v1 is only available in us-east-1</a>

   https://wilsonmar.github.io/aws-benchmarks
   * "Google" generally has the lowest cost
   * AI21 Labs
   * Moonshot AI
   * Writer
   * <a target="_blank" href="https://aws.amazon.com/blogs/machine-learning/deepseek-r1-model-now-available-in-amazon-bedrock-marketplace-and-amazon-sagemaker-jumpstart/">DeepSeek</a>
1. Switch back to the Amazon Bedrock tab.

1. Click "Amazon" to select a model provider. The "Cross-region" selection should appear.
1. Click "Nova Lite v1".

   PROTIP: Generally, for least cost, select the smallest number of "B" or tokens, such as "Gemma 3 4B IT v1".

1. <img align="right" width="200" alt="aws-bedrock-access-284x142.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1772207816/aws-bedrock-access-284x142_u0atbc.png" />PROTIP: A lot of people miss this: Click at the upper-right the circle icon with three dots to select "Modify access". The resulting list of models should show green "Access granted" for your model.

1. Ignore the "Inference" selections that appear.
1. Click the orange "Apply". 
1. Type in a question under "Write a prompt and choose Run to generate a response."

   PROTIP: Refer to a chat template to craft a prompt. See <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-engineering-guidelines.html">Prompt engineering concepts</a>:
   * Task you want to accomplish from the model
   * Role the model should assume to accomplish that task
   * Response Style or structure that should be followed based on the consumer of the output.
   * Success evaluation criteria: bullet points or as specific as some evaluation metrics (Eg: Length checks, BLEU Score, Rouge, Format, Factuality, Faithfulness).
   <br /><br />
   Examples:
   * Create a social media post about my dog's birthday.
   * What time is it?
   * Where is NYC?
   * Who am I?
   * When will the ISS next pass over NYC

1. Click "Run".
1. Celebrate if you don't get "ValidationException Operation not allowed" in a red box.

## CloudTrail Troubleshooting

If it's an IAM policy issue, you may be able to check the error details in the CloudTrail event history.
https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html

https://docs.aws.amazon.com/cli/v1/userguide/cli_cloudtrail_code_examples.html
CloudTrail examples using AWS CLI

When encountering the "ValidationException: Operation Not Allowed" error in Amazon Bedrock, there are several potential causes and solutions to consider:

Account verification: If your AWS account is new, it may need further verification. Some users have reported that creating an EC2 instance can help verify the account.

Regional availability: Verify that the models you're trying to access are available in your selected region. Different models have different regional availability.

Model access permissions: Even with administrator rights, specific model access must be granted. Since you mentioned the "Model Access" page is no longer available, this could be part of the issue.

CloudTrail investigation: You can check CloudTrail event history for more detailed error information that might provide insights into the specific cause.

Contact AWS Support: For Bedrock access issues, you can open a case with AWS Support under "Account and billing" which is available at no cost, even without a support plan. This appears to be the recommended solution for your situation.


You can attempt to troubleshoot the issue by using the Amazon Bedrock API, construct a POST request to the endpoint https://runtime.bedrock.{region}.amazonaws.com/agent/{agentName}/runtime/retrieveAndGenerate, where {region} is your AWS region and {agentName} is the name of your Bedrock agent. The request body should follow the provided syntax, filling in the necessary fields such as knowledgeBaseId, modelArn, and text for the input prompt.

<pre>
curl -X POST \
  https://runtime.bedrock.us-east-1.amazonaws.com/agent/{yourAgent}/runtime/retrieveAndGenerate \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
        "input": {
            "text": "What is the capital of Dominican Republic?"
        },
        "retrieveAndGenerateConfiguration": {
            "knowledgeBaseConfiguration": {
                "generationConfiguration": {
                    "promptTemplate": {
                        "textPromptTemplate": "The answer is:"
                    }
                },
                "knowledgeBaseId": "YOUR_KNOWLEDGE_BASE_ID",
                "modelArn": "YOUR_MODEL_ARN",
                "retrievalConfiguration": {
                    "vectorSearchConfiguration": {
                        "numberOfResults": 5
                    }
                }
            },
            "type": "YOUR_TYPE"
        },
        "sessionId": "YOUR_SESSION_ID"
      }'
</pre>


## Projects

A. <a target="_blank" href="https://www.youtube.com/watch?v=Ausm87d5Ry8&t=2m34s">VIDEO</a> When is the next time the ISS (International Space Station) will fly over where I am? Strand MCP Agent.

B. Add that time as an event in my Google Calendar.

## Sagemaker

   * https://www.youtube.com/watch?v=dbnO8ieXviY&pp=ugUEEgJlbg%3D%3D
   * https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-bedrock.html
   <br /><br />

1. Become a member of an Amazon SageMaker Unified Studio domain. Your organization will provide you with login information; contact your administrator if you don't have your login details.

1. https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started-api-ex-sm.html
Run example Amazon Bedrock API requests using an Amazon SageMaker AI notebook
in SageMaker Unified Studio

1. Find serverless models in the <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/model-catalog.html">Amazon Bedrock model catalog</a>. Generate text responses from a model by sending text and image prompts in the chat playground or generate and edit images and videos by sending text and image prompts to a suitable model in the image and video playground.

1. Generate text responses from a model by sending text and image prompts in the chat playground or generate and edit images and videos by sending text and image prompts to a suitable model in the <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/bedrock.html">image and video playground</a>.


<a name="Boto3"></a>

## Python Boto3 in a Jupyter Notebook

<img align="right" width="100" src="https://www.awsicon.com/static/images/Service-Icons/Artificial-Intelligence/64/png5x/Notebook.png">
<a target="_blank" href="https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/lecture/ImKmF/invoking-an-amazon-bedrock-foundation-model">VIIDEO</a>

<a name="Notebooks"></a>

1. Setup your CLI Jupyter Notebook environment to run Python code:

   https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/supplement/CABQW/exercise-invoking-an-amazon-bedrock-foundation-model

   * Task 1: Install Python (Windows)
   * Task 2: Install Visual Studio Code 2022 (Windows)
   * Task 3: Install AWS CLI (Windows)

   * Task 1: Install Brew + Python (Mac)
   * Task 2: Install Visual Studio Code 2022 (Mac)
   * Task 3: Install AWS CLI (Mac) <a target="_blank" href="https://youtu.be/t5pCWBp-EjI">VIDEO</a>

   * Task 4: Create an AWS Account
   * Task 5: Create an IAM user and configure AWS CLI
   * Task 6: Create Python environment and installing packages
   * Task 7: Enable Amazon Bedrock Models
   * Task 8: Create an S3 bucket for video generation   
   * Task 9: Using Amazon Bedrock to create videos
   * Task 10: Using Amazon Bedrock for text generation
   * Task 11: Using Amazon Bedrock for streaming text generation
   * Task 12: Cleanup

1. View Python program code samples at:
   <a target="_blank" href="https://aws-samples.github.io/amazon-bedrock-samples/">https://aws-samples.github.io/amazon-bedrock-samples/</a> based on coding at<br />
   <a target="_blank" href="https://github.com/aws-samples/aws-bedrock-samples">https://github.com/aws-samples/aws-bedrock-samples</a>

   PROTIP: The Free tier of <a target="_blank" href="https://aws.amazon.com/q/developer/pricing/">Pricing for Amazon Q Developer</a> provides for 50 agentic requests per month, so try a different example each month. 

   Python coding files have a file extension of <strong>.ipynb</strong> because they were created to be run within a <strong>Jupyter Notebook</strong> environment.

   An agentic request is any Q&A chat or agentic coding interaction with Q Developer through either the IDE or Command Line Interface (CLI). All requests made through both the IDE and CLI contribute to your usage limits.
   
   The $19/month "Pro" plan automatically opts your code out from being leaked to Amazon for their training.

   DEFINITION: Synchronous Inference is real-time interaction where the model returns results immediately after a prompt is submitted.
   DEFINITION: Asynchronous Inference is a delayed interaction where the prompt is processed in the background, and the results are delivered later. This is useful for long-running tasks or 
   DEFINITION: batch inference - a method to process multiple prompts at once, often used for offline or high-volume jobs.

   Notice there are code that <strong>stream</strong>


References:
   * <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-bedrock.html">Bedrock Developer Guide</a>
   * <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/APIReference/welcome.html">Amazon Bedrock API Reference</a>
   * <a target="_blank" href="https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/bedrock.html">Boto3 1.42.44 documentation</a>

Here's how to use Bedrock's InvokeModel API for text generation:

The InvokeModel API is a low-level API for Amazon Bedrock. There are higher level APIs as well, like the Converse API. This course will first explore the low level APIs, then move to the higher level APIs in later lessons.

```
import boto3
import json

# Initialize Bedrock client

bedrock_runtime = boto3.client('bedrock-runtime')

model_id_titan = "amazon.titan-text-premier-v1:0"

# Text generation example
def generate_text():
   payload = {
         "inputText": "Explain quantum computing in simple terms.",        
         "textGenerationConfig": {            
                "maxTokenCount": 500,                  
                "temperature": 0.5,            
                "topP": 0.9        
           } 
     }
     response = bedrock_runtime.invoke_model(         
           modelId=model_id_titan,        
           body=json.dumps(payload)    
     )

return json.loads(response['body'].read())

generate_text()
```

<a name="CreateApps"></a>

## Create apps
   
1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/create-chat-app.html">Create a chat agent app</a> to chat with an Amazon Bedrock model through a conversational interface. 

1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/create-flows-app.html">Create a flow app</a> that links together prompts, supported Amazon Bedrock models, and other units of work such as a knowledge base, to create generative AI workflows. 





<a name="Assess"></a>

## Evaluate models

   * <a target="_blank" href="https://learning.oreilly.com/live-events/-/0642572186456/">CLASS</a>: Take Agentic AI and Cybersecurity Risks (live online course with Petar Radanliev)
   * <a target="_blank" href="https://learning.oreilly.com/live-events/-/0642572007604/">CLASS</a>: AI Agents A-Z with Sinan Ozdemir
   * <a target="_blank" href="https://learning.oreilly.com/library/view/-/9781803238753/">BOOK</a>: Building Agentic AI Systems (book)
   <br /><br />

1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/evaluation.html">Evaluate models for different task types</a>.

   https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-llms-finetuning-metrics.html


   <a name="Guardrails"></a>

1. Bedrock Guardrails for Governance

   See https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/supplement/mJUnP/exercise-amazon-bedrock-guardrails

   <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/security.html">Amazon Bedrock Guardrails</a> helps build trust with your users and protect your applications.

   https://github.com/aws-samples/amazon-bedrock-samples/tree/main/responsible_ai/bedrock-guardrails

   DEFINITION: "Transparency" means being clear about AI capabilities, limitations, and when AI is being used.

   "Explainability" is the ability to understand and interpret how an AI model makes its predictions

   DEFINITION: Guardrails are configurable filters that operate on both input and output sides of model interaction:
   
   DEFINITION: Input Protection - screening user inputs before they reach the model:

   * Filters harmful user inputs before reaching the model

   * Prevents prompt injection attempts

   * Control topic boundaries

   * Blocks denied topics and custom phrases

   * Protect sensitive information

   * Ensure response quality through grounding and relevance checks

   Output Safety to validate model responses before they reach users:
   
   * Screens model responses for harmful content

   * Masks or blocks sensitive information

   * Ensures responses meet quality thresholds

1. Under the "Build" menu category, click <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/guardrails">Guardrails</a>. Notice there are also Guardrails for Control Tower (unrelated). 

1. At the bottom, click "info" to the right of "System-defined guardrail profiles" for the current AWS Region selected for for routing inference.

   Notice that a Source Region defines where the guardrail inference request orginates.
   A Destination Region is where the Amazon Bedrock service routes the guardrail inference request to process.

   Guardrails are written in JSON format.

   Creating policies will generate a separate and individual policy for all the AWS Regions included in this profile.

1. Click "Create guardrail". <a target="_blank" href="https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/lecture/cct0i/adding-guardrails-for-inputs-and-responses">VIDEO</a>: 

   1. Provide guardrail details
   1. Configure content filters
   1. Add denied topics: Harmful categories and Prompt attacks (Hate, Insults, Sexual, Violence, Misconduct, etc.)
   1. Add word filters (for profanity)
   1. Add sensitive information filters: 
   1. Add contextual grounding check
   1. Review and create
   <br /><br />

   Each Guardrail can be applied across multiple foundation models.
     



1. Production monitoring with CloudWatch




   ## Share your app

1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/app-share.html">Share your app to collaborate with your team.


## POC to Production

Cross-Region inference with Amazon Bedrock Guardrails lets you manage unplanned traffic bursts by utilizing compute across different AWS Regions for your guardrail policy evaluations.


https://github.com/aws-samples/amazon-bedrock-samples/tree/main/poc-to-prod
From Proof of Concept (PoC)

Tags for resource cost management with automatic cleanup.

## Generate Documentation

https://www.coursera.org/learn/getting-started-aws-generative-ai-developers/lecture/r9sgh/demo-amazon-q-developer-documentation-agent
Spring Boot


## eduamota

https://www.udemy.com/course/amazon-bedrock-aws-generative-ai-beginner-to-advanced/
Generative AI on AWS - Amazon Bedrock, RAG & Langchain[2025]
Build 9+ GenAI Use Cases on AWS with Amazon Bedrock, RAG, Langchain, AI Agents, MCP, Amazon Q, LLM. No AI/Coding exp req

referencing his https://github.com/eduamota/building-apps-with-bedrock

In a browser:
1. With an OReilly subscription, View their video class "AI Agents with AWS (Develop intelligent agents with Bedrock, AgentCore, and Strands Agents)" from <a target="_blank" href="https://www.linkedin.com/in/motaed/">Eduardo Mota</a>:

   https://learning.oreilly.com/live-events/ai-agents-with-aws/0642572272098/0642572272081/

1. Among References, save the PDF.
1. View https://github.com/eduamota/building-apps-with-bedrock

   In a Terminal:

1. Make a folder to receive new github folder, such as "bomonike".
1. Download just the latest main branch with a renamed repo name:
   ```
   git clone git@github.com:eduamota/building-apps-with-bedrock.git --depth 1 aws-bedrock
   cd aws-bedrock
   ```
1. Initialize project folder `aws-bedrock` to contain a blank README.md, main.py, and pyproject.toml files:
   ```bash
   uv init 
   ```
1. Use Homebrew to install utilities:
   ```
   brew install certifi
   ```
1. Install required packages from the pypi on the internet:
   ```bash
   uv pip install boto3 strands-agents strands-agents-tools bedrock-agentcore bedrock-agentcore-starter-toolkit
   ```
1. Configure aws by following my:
   https://bomonike.github.io/aws-onboarding

1. Confirm region:
   ```bash
   aws configure get region
   ```
1. Launch the Streamlit interface to explore all capabilities:
   ```
   cd UI
   uv pip install -r requirements.txt
   ```
1. Install Streamlit:
   ```bash
   uv add streamlit  # instead of python -m pip install streamlit
   ```
   <pre>
   Streamlit is now installed (version 1.54.0) in your virtual environment at /Users/johndoe/bomonike/aws-bedrock/.venv.
   </pre>
1. Activate the virtual environment:
   ```
   source ~/bomonike/aws-bedrock/.venv/bin/activate
   ```
1. Notebook to open http://localhost:8888/lab and a new browser tab:
   ```
   uv add jupyterlab
   jupyter lab
   ```
1. Switch to a browser to open the "Bedrock Showcase" web server at:
   http://localhost:8501
1. At default "Chat with Model", click the model list.

1. Select Model.
1. Select Demo:
   <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/UI/README.md"><img alt="aws-bedrock-demos-279x359.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1770761641/aws-bedrock-demos-279x359_qqjnho.png" /></a>


1. To prevent "AccessDenied" error within JupyterLab:
   ???
   
1. Navigate to these notebooks in cd "Bedrock Agents": 
   ```bash
   cd ..
   cd "Bedrock Agents"
   pwd
   ```
1. Run the Python notebook <a target="_blank" href="https://github.com/eduamota/building-apps-with-bedrock/blob/main/Bedrock%20Agents/5-knowledge_base_s3_vectors.ipynb">https://github.com/eduamota/building-apps-with-bedrock/blob/main/Bedrock%20Agents/5-knowledge_base_s3_vectors.ipynb</a>
   ```bash
   # For RAG demo:  
   jupyter execute 5-knowledge_base_s3_vectors.ipynb
   ```
1. Run the Python notebook guardrails demo at https://github.com/eduamota/building-apps-with-bedrock/blob/main/Bedrock%20Agents/7-bedrock_guardrails.ipynb
   ```bash
   jupyter execute 7-bedrock_guardrails.ipynb
   ```
1. Run the Streamlit app:
   ```bash
   streamlit run app.py
   ```
   <pre>
      👋 Welcome to Streamlit!
   &nbsp;
      If you'd like to receive helpful onboarding emails, news, offers, promotions,
      and the occasional swag, please enter your email address below. Otherwise,
      leave this field blank.
   &nbsp;
      Email: _
   </pre>

1. Type in your email.
   <pre>
  You can find our privacy policy at https://streamlit.io/privacy-policy
   &nbsp;
  Summary:
  - This open source library collects usage statistics.
  - We cannot see and do not store information contained inside Streamlit apps,
    such as text, charts, images, etc.
  - Telemetry data is stored in servers in the United States.
  - If you'd like to opt out, add the following to ~/.streamlit/config.toml,
    creating that file if necessary:
   &nbsp;
    [browser]
    gatherUsageStats = false
   &nbsp;
   &nbsp;
  You can now view your Streamlit app in your browser.
  &nbsp;
  Local URL: http://localhost:8501
  Network URL: http://192.168.1.8:8501
   </pre>

1. Features:

💬 Chat with Bedrock models (Nova, Claude)
📚 Knowledge Base RAG with equipment specs
🛡️ Test guardrails in real-time
🎨 Generate images with Nova Canvas
🎬 Create videos with Nova Reel   

## Notes

A neural network's activation function is how it stores training data. Activation functions introduce non-linearity into neural networks, allowing them to learn complex patterns and relationships in data. Without activation functions, a neural network would only be able to learn linear relationships, regardless of how many layers it has.

Embeddings are Numerical vector representations of data that capture semantic meaning.

The Transformer architecture's key innovation enables efficient processing by its self-attention mechanism. This enables parallel processing and captures long-range dependencies better than recurrent networks.


## References

https://aws.amazon.com/bedrock/getting-started/

* <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/APIReference/index.html">Amazon Bedrock API Reference</a>
* <a target="_blank" href="https://docs.aws.amazon.com/cli/latest/reference/bedrock/">AWS CLI commands for Amazon Bedrock</a>
* <a target="_blank" href="https://aws.amazon.com/tools/">SDKs & Tools</a>
* https://github.com/aws
   * https://docs.aws.amazon.com/bedrock/latest/userguide/key-definitions.html
   * https://github.com/aws/amazon-sagemaker-examples
   * https://builder.aws.com/build/tools
      * https://builder.aws.com/content/2zYQkMbmrsxHPtT89s3teyKJh79/aws-tools-and-resources-python

<a target="_blank" href="https://aws.amazon.com/blogs/publicsector/why-your-ai-agents-give-inconsistent-results-and-how-agent-sops-fix-it/">SOP</a>
Why your AI agents give inconsistent results, and how Agent SOPs fix it

https://www.youtube.com/watch?v=ab1mbj0acDo
Integrating Foundation Models into Your Code with Amazon Bedrock
by Mike Chambers, Dev Advocate


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
