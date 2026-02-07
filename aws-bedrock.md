---
layout: post
date: "2026-02-07"
lastchange: "26-02-07 v002 new :aws-bedrock.md"
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

This article is a tutorial to show you a guided hands-on tour to learn how to use AI by Amazon Bedrock.

This is not a 5 minute summary but a step-by-step so you <strong>master</strong> this like a pro.

Those who created an AWS account can get a $20 credit for completing this.

## Establish AWS Account

1. Begin by following my <a target="_blank" href="https://bomonike.github.io/aws-onboarding">aws-onboarding tutorial</a> to securely establish an AWS account.

   https://docs.aws.amazon.com/cli/latest/userguide/cli-authentication-user.html
   

   ## Amazon Bedrock vs Sagemaker vs AgentCore vs Kiro

   Amazon Bedrock is a service fully managed by AWS to provide you the <strong>infrastructure</strong> to build generative AI applications without needing to manage (using Cloud Formation, etc.). 

1. On the <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/">AWS Console GUI web page</a>, searching for "Bedrock" yields these AWS products:

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769489879/bedrock-svcs-674x292_zze5xx.png"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769489879/bedrock-svcs-674x292_zze5xx.png" /></a>

1. Cursor over "Amazon Bedrock" listed to reveal its "Top features":

   Agents, Guardrails, Knowledge Bases, Prompt Management, Flows

   ### Model catalog

1. Click on the "Amazon Bedrock" choice for its "Overview" screen. The service enables you to use a single API to access 100+ <strong>foundation models</strong> (FMs) from various <strong>providers</strong>: Anthropic (Claude), Meta (Llama), Stability AI, Cohere, etc.

1. Click on the "Amazon Bedrock" choice for its "Overview" screen and left menu:
   <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/"><img align="right" width="200" alt="bedrock-menu-512x2182.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1770450444/bedrock-menu-512x2182_emvpu3.png" /></a>
1. Notice the menu's headings reflect the typical sequence of usage:

   Discover -> Test -> Infer -> Tune -> Build -> Assess

1. Although "Configure and Learn" is listed at the bottom of the Bedrock menu, that's where we need to start.
1. Click "User Guide" to open a new tab to click <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/key-definitions.html">"Key terminology"</a>.

1. Scroll down to "View related pages" such as <a target="_blank" href="https://docs.aws.amazon.com/wellarchitected/latest/generative-ai-lens/definitions.html">Definitions from the Generate AI Lens</a> that opens in another tab.

1. Click on "<a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/bedrock-pricing.html">Amazon Bedrock pricing</a>" from the left menu.

   ### Model choice 

1. Click the Amazon Bedrock web browser tab (green icon ) to return to the Overview page.
1. Click on "<a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/model-catalog">View Model catalog</a>" to see the <strong>Filters</strong> to select the provider and <strong>Modality</strong> you want to use.   
   
   Notice that choosing "Anthropic" as your provider involves filling out "paperwork". So let's avoid that.

   ### Manage IAM policies for permissions

1. Click "<a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/settings">Settings</a>" near the bottom of the menu.
1. Click "<a target="_blank" href="https://us-east-1.console.aws.amazon.com/iam/home?region=us-east-1#/home">Manage IAM policies</a>" for a new tab.

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

   ### Access

   ???

1. Model Access Not Enabled

You need to explicitly request access to models in Bedrock
Go to AWS Console → Bedrock → Model access
Select the models you want to use and request access
Access is usually granted immediately for most models

2. Region Mismatch

The model you're trying to use isn't available in your current region
Check which models are available in your region
Claude models are available in us-east-1, us-west-2, ap-northeast-1, ap-southeast-1, eu-central-1, and eu-west-3

3. Incorrect Model ID

Make sure you're using the correct model identifier
For Claude models, use formats like:

anthropic.claude-3-5-sonnet-20241022-v2:0
anthropic.claude-3-5-haiku-20241022-v1:0

https://docs.aws.amazon.com/bedrock/latest/userguide/model-access.html#model-access-permissions

   ### Chat / Text playbaround"

1. Click the web app green icon browser tab to return to Amazon Bedrock.
1. Click "Chat / Text playbaround" menu.
1. ...
1. Click "Run".


## Amazon SageMaker

Unlike Bedrock (which focuses on pre-built foundation models), Amazon SageMaker is for when you want to <strong>create your own models</strong> from scratch or fine-tune existing ones with full control over the ML lifecycle. 

Amazon SageMaker provides a <strong>toolset</strong> to build Machine Learning (ML) models used for "data, analytics, and AI". Amazon SageMaker is a comprehensive machine learning platform for building, training, and deploying custom ML models. 

It includes notebooks, training infrastructure, model hosting, and MLOps tools.

## Amazon Bedrock Agents

Amazon Bedrock Agents is a <strong>fully managed</strong> service for configuring and deploying autonomous agents without managing infrastructure or writing custom code. It handles prompt engineering, memory, monitoring, encryption, user permissions, and API invocation for you. Key features include API-driven development, action groups for defining specific actions, knowledge base integration, and a configuration-based implementation approach.

Amazon Bedrock AgentCore can flexibly deploy and operate <strong>AI agents</strong> in dynamic agent workloads using <strong>any framework and model</strong. AgentCore works with CrewAI, LangGraph, LlamaIndex, and Strands Agents. AgentCore components include:

   * Runtime: Provides serverless environments for agent execution
   * Memory: Manages session and long-term memory
   * Observability: Offers visualization of agent execution
   * Identity: Enables secure access to AWS and third-party services
   * Gateway: Transforms APIs into agent-ready tools
   * Browser-tool: Enables web application interaction
   * Code-interpreter: Securely executes code across multiple languages
   <br /><br />

## Agentic AI

"Agentic AI" is an industry-wide term for software that exhibits agency, adapting its behavior to achieve specific goals in dynamic environments.

## Strands Agents

Strands Agents is an open source Python SDK (releaed in 2025) at https://github.com/strands-agent/sdk-python. It takes a model-driven (MCP & A2A) approach to building and running autonomous AI agents, in just a few lines of code. Unlike Bedrock, Strands is model agnostic (can use Claude, OpenAI, etc.).
   * <a target="_blank" href="https://www.youtube.com/watch?v=Ausm87d5Ry8">Model Driven Agents - Strands Agents (A New Open Source, Model First, Framework for Agents)</a>
   * <a target="_blank" href="https://aws.amazon.com/blogs/opensource/introducing-strands-agents-an-open-source-ai-agents-sdk/">Introducing Strands Agents, an Open Source AI Agents SDK</a> by Clare Liguori on 16 MAY 2025
   * <a target="_blank" href="https://www.youtube.com/watch?v=nS1arlGhKOI">Strands Agents Framework Introduction</a> by Avatar image
   * <a target="_blank" href="https://www.youtube.com/watch?v=dn3G9jvB98k&pp=ugUEEgJlbg%3D%3D">AWS Strands Agents SDK – Agents as Tools Explained - Multi AI Agent System at Scales #aiagents</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Q3NreEAdKMc&pp=ugUEEgJlbg%3D%3D">Introducing Strands Agents, an Open Source AI Agents SDK — Suman Debnath, AWS</a>

Strand workflows are graph-based, with LangSmith integration.

<a target="_blank" href="https://aws.amazon.com/blogs/publicsector/why-your-ai-agents-give-inconsistent-results-and-how-agent-sops-fix-it/">SOP</a>
Why your AI agents give inconsistent results, and how Agent SOPs fix it

## Well architected

https://aws.amazon.com/architecture/well-architected/


## Pricing

1. <a target="_blank" href="https://aws.amazon.com/bedrock/pricing/">Bedrock pricing</a>

https://docs.aws.amazon.com/bedrock/latest/userguide/sdk-general-information-section.html

https://www.youtube.com/watch?v=ab1mbj0acDo
Integrating Foundation Models into Your Code with Amazon Bedrock
by Mike Chambers, Dev Advocate


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

To allow only Amazon Nova Lite v1:

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

Follow the blue pop-ups (but don't click "Next" within them):
1. Click the orange "Select model" orange button.

   PROTIP: Do not select "Anthropic" to avoid their mandatory "use case survey" and possibly thrown into https://console.aws.amazon.com/support/home hell.

1. Click the "+" at the top of your browser bar to see the difference between the various LLM models:
   <a target="_blank" href="https://docs.aws.amazon.com/bedrock/latest/userguide/models-supported.html">Supported foundation models in Amazon Bedrock</a>

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

1. Ignore the "Inference" selections that appear.
1. Click "Apply". 
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

## Sign Up

1. If you haven't already, follow my aws-onboarding such that you're logged in as a <strong>System Administrator</strong> at your desired region (such as "United States (N. Virginia)".

   ### AWS Bedrock service

   "With Amazon Bedrock, you can access a wide range of foundation models from leading AI companies and run inference on them to generate text, image, video, and embeddings output through a unified API.

1. Click this link to learn more about Amazon Bedrock: https://docs.aws.amazon.com/bedrock/   

   <img alt="aws-search-1318x170.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769336376/aws-search-1318x170_bp4lwm.png" />
1. In the AWS Console, press <strong>Option+S</strong> or click inside the Search box. Type enough of "Amazon Bedrock" and press Enter when that appears. It's one of Amazon's AI services:
   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769489879/bedrock-svcs-674x292_zze5xx.png"><img align="right" width="200" alt="bedrock-svcs-674x292.png" src="" /></a>
   <img alt="bedrock-menu-183x822.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769490064/bedrock-menu-183x822_rqpoea.png" />
   <a target="_blank" href="https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#">https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/</a>

   Other AI related services from AWS:
   * Amazon Bedrock
   * Amazon Q Developer (Kiro)
   * AWS Inferentia
   * AWS Trainium (provides cloud infra for machine learning)
   * Amazon SageMaker Jumpstart (slutions for common ML uses cases that can be deployed in just a few steps)
   <br /><br />

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

   ### Amazon Nova models
  
https://aws.amazon.com/nova/models/?sc_icampaign=launch_nova-models-reinvent_2025&sc_ichannel=ha&sc_iplace=signin

   ### Creat apps
   
1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/create-chat-app.html">Create a chat agent app</a> to chat with an Amazon Bedrock model through a conversational interface. 

1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/create-flows-app.html">Create a flow app</a> that links together prompts, supported Amazon Bedrock models, and other units of work such as a knowledge base, to create generative AI workflows. 


   ### Evaluate models

1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/evaluation.html">Evaluate models for different task types</a>.

   https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-llms-finetuning-metrics.html

1. Bedrock Guardrails for Governance


1. Production monitoring with CloudWatch

   ## Share your app

1. <a target="_blank" href="https://docs.aws.amazon.com/sagemaker-unified-studio/latest/userguide/app-share.html">Share your app to collaborate with your team.


## Install


1. Install