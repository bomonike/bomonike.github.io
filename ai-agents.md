---
layout: post
url: https://bomonike.github.io/ai-agents
date: "2025-04-12"
lastchange: "v018 + A2A :ai-agents.md"
file: "ai-agents"
title: "AI Agents"
excerpt: "Text-to-Action carried out by AI Agents"
tags: [cloud, security, management, ai]
comments: true
---
<a target="_blank" href="https://bomonike.github.io/ai-agents"><img align="right" width="100" height="100" alt="ai-agents.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/ai-agents.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

## Why This?

This was written so that you will be able to claim on your resume (LinkedIn profile):

"Created Bash, Python, and Terraform, automation to, in an hour, configure and stand up a service (running locally, on Azure, AWS, Google, and other clouds) which interacts with users' voice (SST & TTS) to autonomously perform reasoning tasks by using MCP & A2A to supervise a mix of AI agents. The AI supervisor automatically responds to trends and telemetry. (Ask me how)"

Among <a target="_blank" href="https://www.youtube.com/@aiDotEngineer">@aiDotEngineer World's Fair vidoes</a>,
<a target="_blank" href="https://www.youtube.com/watch?v=zM9RYqCcioM" title="by https://AI.Engineer">VIDEO</a> by 
OpenPipe worked with Method: Instead of hiring people, AI Agents in fintech 


## GenAI vs Agents vs AI Agents

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1744220651/ai-agents-whiteboard_wldbds.jpg"><img alt="ai-agents-whiteboard.jpeg" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1744220651/ai-agents-whiteboard_wldbds.jpg"></a>

A. Generative AI (GenAI): When ChatGPT burst to popularity November 2023, OpenAI's LLMs generated text based on prompts typed or spoken by end-users. Back then, the LLM model referenced static data (books, github.com, etc.), but not real-time proprietary (personal) data in the real world. More importantly, they passively waited for prompts by humans to begin action.

B. Early AI Agents made use of <strong>context window</strong> to provide personalized data in <strong>vector database</strong> using "RAG (Retrieval Augmented Generation)".
Agents access <strong>tools</strong> to perform tasks.
"Reasoning" and "chain-of-thought" capabilities enable agents to plan steps to achieve specific <strong>goals</strong> defined by end-users.

C. In 2025, "Agentic AI" came on the scene when LLMs (Anthropic Claude 3) were able to "reason" in "Chain of Thought". Agentic AI can reflect, plan, and delegate (orchestrate) steps to achieve objectives by recalling context, constraints, and previous actions (<strong>from memory</strong>) to avoid redundant or dumb behavior by breaking down obstacles into steps, then adapting to select and strategies collaboratively, and execute across tools or environments.

Think of them as virtual assistants capable of handling the chores people generally rather avoid.

Unlike humans, AI agents don't need to sleep, operate at lightning speed, and collaborate with other agents.

Agentic means <strong>proactive</strong> -- they try to solve problems without constant human input.

MCP Client is Claude client or IDE Cursor or Windsurf

## Levels of automation:

* <strong>"Workflow Automation"</strong> run using Python or other programming languages follow a set sequence of tasks are not "AI" nor "agents".

* <strong>True "AI Agents"</strong>  are NOT bound to pre-defined tasks in a workflow. They act <strong>autonomously</strong>, as a team of agents,able to, based on their environment and objectives, <strong>choose</strong> to delegate to specialized tools to take actions. Modern AI Agents <a target="_blank" href="https://www.ycombinator.com/library/Lt-vertical-ai-agents-could-be-10x-bigger-than-saas#related-3">reason</a> through steps.

   True agents don't just respond to commands — they have their own objectives and make decisions and independently initiate action in service of those objectives. They can operate  and take initiative when appropriate.

   True Agents have <strong>agency</strong>, which means:

   * Autonomy - The ability to act independently without constant external direction

   * Intentionality - Having goals and the capacity to pursue them

   * Self-awareness - Understanding one's own capabilities and limitations

   * Adaptability - Adjusting strategies based on changing circumstances

   * Responsibility - Bearing some causal or moral accountability for actions

* <strong>Vertical AI agents</strong> are tailored to address unique challenges and streamline processes within designated sectors such as healthcare, finance, or customer support. Vertical AI agents could be <a target="_blank" href="https://www.ycombinator.com/library/Lt-vertical-ai-agents-could-be-10x-bigger-than-saas">10X bigger than SAAS</a> repleaes entire teams and organizationa -- a fundamentally new paradigm.
https://www.rippling.com/ works on verticals.
Increase savings, automate busy work, and make better decisions by managing payroll, HR, IT & spend in one place.

References:
   * <a target="_blank" href="https://www.youtube.com/watch?v=ASABxNenD_U">VIDEO: The 10 Trillion Parameter AI Model With 300 IQ</a>
   * https://www.youtube.com/watch?v=FwOTs4UxQS4 by Jeff Su "AI Agents, Clearly Explained"
   * https://medium.com/data-science-in-your-pocket/best-mcp-servers-you-should-know-019226d01bca
   * https://www.youtube.com/watch?v=cPdVbVx5Z3Q "end of explicit programming"
   

## Use Cases

The "Javis" computer in Ironman movies is a form of AI Agent.

PROTIP: AI Agents takes advantage of new "reasoning" and "chain of thought" capabilities in LLMs such as provided by Anthropic Claude.

* "Deep" Research
* contacts.google.com

Gemini Code Assist agents:
* Build apps
* Translate code
* Write tests

Grab info:
* Weather
* Get a meme picture
* Playwright to scrape web pages -  https://www.youtube.com/watch?v=2716IUeCIQo
* shopping 
* Locations from Google Maps
* Call API to download YouTube video

Take action:
* Change TV channel on Roku
* IFTTT to automate smart home devices (Arduino, Raspberry Pi, etc.)
* Summarize news from RSS feeds & databases

Update info:
* Send a link to a Google Sheet (Microsoft Excel)
* <a href="#CalendarApp">Google Calendar</a>
* Gmail https://youtu.be/rxKBixN_iD0

* Google Tasks 
* jira for team Kanban tasks https://www.youtube.com/watch?v=qYChSSP8TTA

* Perplexity to summarize articles
* Post article on LinkedIn

* Answer and make phone calls to book reservations

* LinkedIn message
* Discord https://youtu.be/pLOWqz7BxwU
* Whatsapp phone calls
* Slack
* Text SMS via Twilio
* Telegram

* Zapier to various APIs
* Microsoft Teams

* Stock market (bitcoins, meme coins, etc.)
* Currency exchange rate (spot, trend, futures)

* GitHub to publishprogram code
* Microsoft PowerPoint presentation
* Blender (3D graphics rendering software) 

* Jupyter notebooks that run custom Python code https://youtu.be/qkoEsqiWDOU
* Docker containers

* https://neo4j.com/blog/developer/model-context-protocol/

"We will have more AI Agents than humans" <a target="_blank" href="https://www.youtube.com/watch?v=rI7tIkpusM8">--</a> Gaia

## Supervision

"The next billionaire can be a single person."

In a world of AI Agents, human employees would oversee a team of AI agents, each dedicated to specific tasks.

   * Procurement teams could use AI agents to identify suppliers, negotiate contracts, and finalize deals.

   * Customer service departments might rely on AI agents to deliver consistent, high-quality interactions without the need for constant training or replacements.

https://ti.to/software-3/ai-engineer-worlds-fair-2025
9am, June 3rd–5pm, June 5th, 2025
Mariott Marquis, San Francisco, CA USA

https://www.linkedin.com/pulse/how-ai-agents-revolutionize-workflow-automation-2025-deshmukh-pmp--vxpcf/

## Enabling tech: Screen Scraping

To understand what’s happening on YOUR computer screen, laptop manufacturers Microsoft, Intel, Apple, and others 
are building in their hardware and operating system for applications to see what’s happening on your screen.

The path of control logic

## GenAI 

Frameworks like AutoGPT, LangGraph, CrewAI, and MetaGPT.

Fine-tuned models close the gap between “can predict text” and “can complete real-world tasks.”

* Devin by Cognition: full-stack dev agent.
* ReAct-optimized (Reason-Action) framework of iterations
* ChatGPT + Code Interpreter: emerging agent behavior via tool use.
* LangChain + LangGraph (from Ollama): orchestrating tool-aware LLMs with memory.
* Autogen (Microsoft): multi-agent collaboration framework.
* CrewAI: roles and task delegation at scale.
* <a target="_blank" href="https://www.youtube.com/watch?v=JOYSDqJdiro">Manus</a> (from China) was the first to show, in early 2025, several agents "stitch together"
It scored 90% of the GAIA "state of the art" benchmark.

   References:
   * https://www.mckinsey.com/featured-insights/mckinsey-explainers/what-is-an-ai-agent March 25, 2025 | Article
   * https://www.udemy.com/course/langgraph-with-ollama/ "2025 Master LangGraph and LangChain with Ollama- Agentic RAG: Agentic RAG and Chatbot, AI Agent, DeepSeek, LLAMA 3.2 Agent, FAISS Vector Database, LLM RAG, Lang Graph RAG, Ollama RAG"
   * https://www.linkedin.com/pulse/what-is-an-ai-agent-yasir-khan/

create separate hubs for each business area (such as Marketing, HR, and so on) i


## Google AgentSpace

On the Google <strong>Agentspace platform</strong> from within Chrome’s search box, developers build agents combining Gemini models with enterprise data for unified enterprise search, analysis, and synthesis.

Other new capabilities include a
no-code Agent Designer for building custom agents, and
access to two new agents built by Google: Deep Research and Idea Generation.

Lyria in Google Vertex AI generates 30-second music clips from text prompt.

<a target="_blank" href="https://blog.google/products/workspace/cloud-next-2025-workspace-gemini/">
Google Workspace Flows</a> enables users to create agentic workflows to streamline processes and automate repetitive tasks across Workspace.

@CodeAssist from a Kanban board

In Google Docs, users can create audio versions of their documents,
including generating podcast-style overviews.

Other new Workspace AI capabilities include an AI writing tool in Google Docs,

New editing and camera control features in Veo 2 (preview)
Veo 2 image generation in Google Vids.

Instant Custom Voice in Chirp 3 to enable users to create custom voices from 10 seconds of audio

Improved image generation and inpainting capabilities in Imagen 3 for fixing missing portions of an image or removing objects

new Gemini capabilities in Google Chat, and

AI-powered data analysis and surfacing of key insights in Google Sheets.

<hr />


## Google A2A

At Google's Cloud Next 25 conference on April 9, <a target="_blank" href="https://www.youtube.com/watch?v=2OpHbyN4vEM">VIDEO</a>: Google announced <a target="_blank" href="https://google.github.io/adk-docs/#learn-more">Agent Development Kit (ADK)</a>
that communicates using Google's <a target="_blank" href="https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/">Agent2Agent (A2A) protocol</a> for AI agents to coordinate actions in a secure way on top of enterprise applications.

READ: https://google.github.io/A2A/#/

Future capability at <a target="_blank" href="https://github.com/google/A2A/">https://github.com/google/A2A</a>
was developed with support and contributions from over 50 other companies, including Atlassian, Box, MongoDB, Salesforce, ServiceNow. (But not competitors Microsoft, Anthropic, OpenAI).
A2A competes with the <a href="#MCP">MCP (Model Context Protocol) API standard</a> defined by Anthropic. https://www.youtube.com/watch?v=voaKr_JHvF4

<a target="_blank" href="https://www.youtube.com/watch?v=voaKr_JHvF4&t=1m46s" title="Jack Herrington">VIDEO</a>
shows how A2A might work <a target="_blank" href="https://www.youtube.com/shorts/JWrHkvmYi_Q">in JavaScript</a> calling <strong>JSONRPC schemas</strong> (like MCP).

A2A is based on an Agent Marketplace to <strong>discover</strong> and <strong>integrate</strong> agents.

Within the marketplace <strong>Registry</strong>, each Agent has its own <strong>Agent Card</strong> with metadata about the Agent, such as what skills and desires it has.

Each agent can select which LLM model to use (unlike Claude MCP).
Each agent is a vendor that provides a service.

A2A needs MCP for the lower level.

   References:
   * https://www.youtube.com/watch?v=Sl9EZpE61xA by codebasics
   * https://www.youtube.com/watch?v=WGeHYPLbXMk by Max
   * https://www.youtube.com/watch?v=DAQ6msUVOp0 "Agent2Agent + (MCP to Tool) in Multi-Agent AI" to get weather info
   * https://www.youtube.com/watch?v=tiNlTvpCKT8 "Google Launched A2A Protocol for AI Agents!" by Piyush Garg



<hr />

<a name="MCP"></a>

## MCP (Model Context Protocol)

Think of MCP like HTTP. It’s a behind-the-scenes standard, a way for clients (like AI assistants) and servers (like tools and APIs) to communicate. You don't get excited about HTTP itself; you get excited about what it enables—browsers like Chrome, apps like Gmail, and the entire modern web. MCP is similar: it’s an enabling layer, not the end-user experience.

Claude AI and ChatGPT , on the other hand, are like Chrome. They’re the part people interact with. While MCP defines how tools are exposed and called by AI agents, Zapier Agents show what’s possible with those capabilities.



MCP provides contextual data to LLMs and AI assistants to solve problems. For instance, you can build an MCP documentation server to offer complete access to your documentation to IDEs and agentic frameworks, just like using llms.txt file.

In the 1980's game (and movie) "Tron", the "MCP" is the Master Control Program ("god mode").

But in real life, in Nov. 2024 <a target="_blank" href="https://www.anthropic.com/mcp">Anthropic</a> introduced their "MCP" (Model Context Protocol) API spec that standardizes how external tools and services vendors communicate with LLMs. MCP consists of a set of APIs and library.

Catalogs of MCP servers are at <a target="_blank" href="https://www.smithery.com/">smithery.com</a> and <a target="_blank" href="https://mcpappstore.com">mcpappstore.com</a> to communicate with:
   * GitHub
   * n8n agents (low-code)
   * <a target="_blank" href="https://www.linkedin.com/company/smithery-com/">LinkedIn</a>
   * <a target="_blank" href="https://www.linkedin.com/company/mcpappstore/">Slack</a>
   * Telegram

IDEs Cursor and Windsurf provide a GUI to send npx commands to MCP servers which interface with various LLMs (like lego pieces).

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742127850/mcp-cursor-gui_x0phdm.png"><img alt="mcp-cursor-gui.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742127850/mcp-cursor-gui_x0phdm.png" /></a>

   References:
   * <a target="_blank" href="https://www.youtube.com/watch?v=fJgFZRGO9AQ">MCP = Next Big Opportunity? EASIST way to build your own MCP business</a> by AI Jason
   * https://www.youtube.com/watch?v=7j_NE6Pjv-E by Greg Isenberg (Startup Empire at <a target="_blank" href="https://communityempire.co">communityempire.co</a>)
   * https://youtu.be/Sl9EZpE61xA by codebasics
   * https://www.youtube.com/watch?v=KDxbPJH7XzY by Anthony Sistilli
   * https://www.youtube.com/watch?v=eur8dUO9mvE by IBM Technology "How to build a MCP"
   * https://www.youtube.com/watch?v=nMKYW0DiRp4 by Adam Lucek
   * https://www.youtube.com/watch?v=nNLshWCoe0o by Dan Vega
   * https://www.youtube.com/watch?v=TQsP_PlCY1I by David Ondrej
   * https://www.youtube.com/watch?v=japoGcdbZGw by Rob Shocks "The Future of AI"
   * https://www.youtube.com/watch?v=oAoigBWLZgE by AI Jason

   * https://www.youtube.com/watch?v=5ZWeCKY5WZE by Underfitted
   * https://www.youtube.com/watch?v=x8LQC6ut53Y by Underfitted "How to use MCP servers from a custom AI agent (step by step)"
   * https://fnf.dev/3F3fMaB 

Solo.io has announced the launch of its MCP Gateway, a Model Context Protocol gateway for the cloud native API gateway
<a target="_blank" href="https://github.com/kgateway-dev/kgateway">kgateway</a> (previously called Gloo).

   * https://www.youtube.com/watch?v=0Z7u6DTDZ8o How to Build an Agent with the OpenAI Agents SDK by Sam Witteveen


## AI Agent Protocol Security 

JOKE: The "S" in MCP stands for Security. As in there is no S in MCP.

To prevent unauthorized changes, pin specific versions of MCP server and tools they use.

Have a thorough technical and user-level testing processes to detect misuse.

To be able to see when MCP is misused, ensure that tool descriptions are clearly visible and traces of user-visible and AI-visible instructions. Trace the data lineage of transaction payloads at the data layer…

To instill cross-server protection in guardrails: implement stricter boundaries and dataflow controls between MCP servers.

A2A servers cannot be directly called from clients as a command.

A2A servers are registered in a catalog.

Authentication in A2A is built-in out of the box (unlike MCP).


References:
   * AI Security group on LinkedIn: https://www.linkedin.com/groups/14545517/ and Twitter: https://x.com/AISecHub
   * https://invariantlabs.ai/blog/mcp-security-notification-tool-poisoning-attacks

## Multi-Agent Hairball



<hr />

<a name="Azure"></a>

## Microsoft Azure

https://github.com/microsoft/ai-agents-for-beginners

using the VS Code container image in Azure AI Foundry portal, see 
Based on https://learn.microsoft.com/en-us/azure/ai-studio/how-to/develop/vscode
Get started with Azure AI Foundry projects in VS Code.

1. Register https://aiskillsfest.event.microsoft.com   
1. Add to calendar "AI Skills Fest - 50 Days of AI Learning"
1. Add to calendar the series
   https://developer.microsoft.com/en-us/reactor/series/s-1507/
1. Add to calendar Pamela Fox Office Hours:
   https://microsoft.github.io/AI_Agents_Hackathon/#office-hours

1. On Apr 8 attend Microsoft AI Skills Fest
   https://www.youtube.com/watch?v=tCmgSvloyoI
   https://arch-center.azureedge.net/Credentials/Microsoft-AI-Skills-Fest-Map.pdf
   https://microsoft.github.io/AI_Agents_Hackathon/
1. Confirm attendance for the Guiness World Record.
1. Work on hackathon until 30, 2025

http://aka.ms/sk/recordings

https://learn.microsoft.com/en-us/training/modules/prepare-azure-ai-development/4-azure-ai-foundry
https://microsoftlearning.github.io/mslearn-ai-studio/Instructions/01-Explore-ai-studio.html

https://learn.microsoft.com/en-us/collections/ee4ofotexqd15y?wt.mc_id=aiagenthack_hackathonlearningresource_webpage_cxp


## Azure AI in Python

1. Get an Azure subscription.
1. Sign in (using Passkey, if possible)
1. PROTIP: Create CLI environment to enable/update Azure Core "az" commands:
   ```
   brew info azure-cli
   ==> Dependencies
Build: pkgconf ✘, rust ✘
Required: libsodium ✔, libyaml ✔, openssl@3 ✔, python@3.12 ✔
   ...
   brew install azure-cli
   ```
1. PROTIP: Create a folder for the GitHub account you want to use:
   ```
   mkdir <em>folder_name</em>
   cd <em>folder_name</em>
   ```
1. PROTIP: Look at my https://github.com/bomonike/agentic/blob/master/az-agents.py which expects these external dependencies to be loaded:
   ```
   pip install azure-ai-projects
   pip install azure-identity
   pip install azure-ai-textanalytics
   ```
   TODO: requirements.txt

1. In a Edge web browser, go to <a target="_blank" href="https://ai.azure.com/">https://ai.azure.com<img align="right" width="100" alt="aif-menu-364x1146.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1744352871/aif-menu-364x1146_icdw0b.png" /></a>, the Azure AI Foundry portal. The portal's menu is shown at left.

1. Create an Azure AI Hub to share resources among multiple projects that use solution development features and capabilities of AI Foundry.

   A project is an organizational container with tools for AI customization and orchestration. In a project, you can organize your work, save state across different tools like prompt flow, and collaborate with others.

   CAUTION: The following resources are created for each hub:
   * A multi-service Azure AI services resource to provide access to Azure OpenAI and other Azure AI services.
   * A Key vault in which sensitive data such as connections and credentials can be stored securely.
   * A Storage account for data used in the hub and its projects.
   Optionally, 
   * an Azure AI Search resource that can be used to index data and support grounding for generative AI prompts.
   * an Azure AI Face resource

1. PROTIP: In your user home folder, create edit python.env file by manually transfer from Azure AI Foundry portal: https://ai.azure.com/build/overview
   https://ai.azure.com/managementCenter/project/overview?
   ```
   AZA_REGION="eastus2"
   AZA_PROJECT="wmar-7833"
   AZA_HUB_DISPLAY_NAME="wmar_ai-8943"
   AZA_HUB_RESOURCE_NAME="wmar_ai-8943"
   AZA_PROJECT_NAME=""
   ```

1. Based on <a target="_blank" href="https://learn.microsoft.com/en-us/training/modules/ai-foundry-sdk/02-azure-ai-foundry-sdk?pivots=python">LEARN: SDK</a>
   ``` 
   #project_connection_string = "<region>.api.azureml.ms;<project_id>;<hub_name>;<project_name>"
   project_connection_string = f"{AZA_REGION}.api.azureml.ms;{AZA_PROJECT};{AZA_HUB_NAME};{AZA_PROJECT_NAME}"
   project_client = AIProjectClient.from_connection_string(
         credential=DefaultAzureCredential(),
         conn_str=project_connection_string,
      )
   ```
   The above is dependes on:   
   ```
   from azure.ai.projects import AIProjectClient
   from azure.ai.projects.models import ConnectionType
   from azure.identity import DefaultAzureCredential
   ...

1. Create Azure OpenAI : 
   https://portal.azure.com/#create/Microsoft.CognitiveServicesOpenAI

   "Azure OpenAI Service provides access to OpenAI's powerful language models, including all the latest OpenAI models. These models can be easily adapted to your specific tasks, including but not limited to content generation, summarization, image understanding, semantic search, and natural language to code translation. Top use cases include Call Centers, Virtual Assistants, Accessibility, Content Generation, and Code Development. The service also features the Assistants API, Fine Tuning capabilities and many ways to connect your data to the service for conversational experiences. The service can be scaled through Standard (tokens) and Provisioned (PTUs) deployment types.

https://learn.microsoft.com/en-us/training/modules/ai-foundry-sdk/03-connections?pivots=python
Each resource is a connection to an external service, such as Azure AI services, Azure storage, Azure AI search, and others.



### Azure Hackathon

Learn more about the Hackathon and read the official rules at
https://microsoft.github.io/AI_Agents_Hackathon/
8 April, 2025 | 10:00 AM - 12:30 AM (UTC-06:00)

1. Sign in to start OFFICIAL PLAN: https://learn.microsoft.com/en-us/plans/0n5kb1t56pzndr 6 milestones in this plan

   Learn how to navigate and use Azure AI Foundry and Azure AI Foundry SDK.
   Create a custom Retrieval-Augmented Generation (RAG) solution.
   Fine-tune and tailor models.

   https://learn.microsoft.com/en-us/plans/0n5kb1t56pzndr?source=docs

1. https://www.youtube.com/watch?v=x6g5JutmHXk Azure AI Agent Service using Azure AI Foundry SDK Demo

   https://www.youtube.com/watch?v=4m0MYnQnDo8&list=PLLasX02E8BPCRLOzJHUO39cSR_Bn6cvw8
   playlist

   https://www.linkedin.com/in/shivam2003/
   Shivam Goyal

* <a target="_blank" href="https://aka.ms/ai-agents-beginners/ai-agent-service">Azure AI Agent Service</a>
* <a target="_blank" href="https://aka.ms/ai-agents-beginners/semantic-kernel">Semantic Kernel</a>
* <a target="_blank" href="https://aka.ms/ai-agents/autogen">https://aka.ms/ai-agents/autogen</a>

* 

https://gateway.on24.com/wcc/eh/4304051/category/142477/ai-agents/?wt.mc_id=1reg_25323_webpage_reactor
Join TheSource EHub to explore top picks including trainings, livestreams, repositories, technical guides, blogs, downloads, certifications, and more, all updated monthly. The AI Agent section offers essential resources for creating AI Agents, while other sections provide insights into AI, development tools, and programming languages

https://learn.microsoft.com/en-us/collections/ee4ofotexqd15y?wt.mc_id=aiagenthack_hackathonlearningresource_webpage_cxp
LEARN: Learning Resources for the AI Agents Hackathon

    https://github.com/microsoft/ai-agents-for-beginners?tab=readme-ov-file#ai-agents-for-beginners---a-course

   https://developer.microsoft.com/en-us/reactor/events/25324/
   Agents 101 / AI Agents Hackathon Kickoff!
   8 April, 2025 | 10:00 AM - 11:00 AM (UTC-06:00)

https://aka.ms/CreateAgenticAISolutions
https://aka.ms/ai_agents_apps__data

   https://developer.microsoft.com/en-us/reactor/events/25325/
   Build your code-first app with Azure AI Agent Service (EMEA/US offering)
   9 April, 2025 | 10:00 AM - 11:00 AM (UTC-06:00) Mountain Time (VS en Canada)

   https://developer.microsoft.com/en-us/reactor/events/25312/
   Build your code-first app with Azure AI Agent Service (APAC offering)
   9 April, 2025 | 4:00 PM - 5:00 PM (UTC-06:00) Mountain Time (VS en Canada)
   Dave Glover
   https://aka.ms/CreateAgenticAISolutions/?wt.mc_id=1reg_25312_webpage_reactor
   Create agentic AI solutions by using Azure AI Foundry

   https://aka.ms/ai_agents_apps__data/?wt.mc_id=1reg_25312_webpage_reactor
   Practical Foundation for AI Agents: A Developer's Guide on Azure AI Foundry, Apps, and Data


   https://developer.microsoft.com/reactor/events/25313
   Transforming Business Processes with Multi-Agent AI using Semantic Kernel
   10 April, 2025 | 1:00 PM - 2:00 PM (UTC-06:00) Mountain Time (US & Canada)

   Extending AI Agents with Azure Functions
   24 April, 2025 | 10:00 AM - 11:00 AM (UTC-06:00)

https://developer.microsoft.com/en-us/reactor/events/25364/
Securing AI agents on Azure by Joylynn Kirui & Pamela Fox
29 April, 2025 | 10:00 AM - 11:00 AM (UTC-06:00) Mountain Time (US & Canada)


https://aka.ms/model-mondays - Explore All Resources
https://aka.ms/model-mondays/chat - Continue The Conversation
https://aka.ms/model-mondays/collection - Explore The Model Cards
https://aka.ms/model-mondays/newsletter - Get The Weekly Recaps


Marlene Mhangami
Korey Stegared-Pace


## Anything LLM

https://www.youtube.com/watch?v=Z6kK4DXqCOI


<hr />

<a name="CalendarApp"></a>

## Calendar Task Apps

ADM (Automated Decision Making)

DEFINITION: Tasks https://practicallyintelligent.com/

* Scrape websites for data

* Motion (https://www.usemotion.com/) is an app that combines calendar, tasks, and scheduling links as an AI-powered task management app automatically reschedule tasks based on your progress and any changes during the day. It's by Jacob Zeng. For $34/month, ensure you meet deadlines, Motion reschedules undone work. Quick access to calendar (OPT + C), meeting scheduler (OPT + A), and task addition (OPT + SPACE) improves efficiency.

   * https://www.youtube.com/watch?v=no2l-Ob1Eq4&t=9s How to use Motion
   * https://www.fahimai.com/motion-ai
   * https://www.linkedin.com/company/motionapp/

* Adjust your calendar to prioritize tasks, meetings, and habits to schedule tasks based on priority and deadlines. Reclaim AI integrates with other productivity tools like Google Tasks, Todoist, Slack, and Zoom.

* Use time blocking to help you plan your day and integrates with existing calendar accounts16. Trevor AI A web-based task planning and scheduling tool  suggests the best times to schedule tasks and allows you to drag and drop tasks into your calendar.

* Use Natural Language Processing to understand scheduling requests and suggests the best times for meetings. Scheduler AI helps schedule meetings and manage calendars by integrating with email and Slack.

* Sunsama is an AI-powered scheduler with a unique “daily planning” feature that enables you to prioritize your tasks and focus on what matters most.

* Clockwise: If you’re looking for a tool to help you optimize your team’s schedule, Clockwise is a great option. It uses AI to find the best times for team meetings and minimize interruptions so everyone can focus on getting work done.

* Fantastical: A popular calendar app with powerful features for scheduling and managing your time. Fantastical offers a beautiful interface and seamless integration with Apple devices.

   See https://www.meetjamie.ai/blog/ai-scheduling-assistant

* Manus was introduced by Monica, a startup in China, on March 5, 2025 as an invitation-only web preview. The demo video quickly gaining over 200,000 views online. Manus is an AI agent able to handle complex real-world tasks autonomously. It can independently think, plan, and execute tasks such as creating websites, planning itineraries, and analyzing stocks, continuing to work even when users disconnect their devices. Monica claims that Manus outperforms other AI models based on the GAIA benchmark, showcasing its unique cloud-based functionality and adaptability to user preferences.


## Benefits

* Productivity: reduce the drudgery of repetitive tasks.

* Efficiency: handle dynamic and real-time conditions like finance and customer service.

* Personalization: tailor user experiences based on individual preferences.

* Collaboration: enable team members to work together, without being aware of each other.


## AI Agentic Utilities

* Streamlit, hosted by HuggingFace, democratizes the process of building data apps.

* https://microsoft.github.io/autogen/0.2/ is a framework for multi-agent systems, designed for asynchronous communication and distributed deployments. It provides cross-language support.

* Salesforce's AgentForce

* Crew.ai is the leading low-code multi-agent platform. It supports sequential task delegation for complex workflows.
   * https://github.com/crewAIInc/crewAI
   * https://www.datacamp.com/tutorial/crew-ai
   * https://www.youtube.com/watch?v=ligWVPGeooE

* https://n8n.io/ cloud

* LangGraph is a library for building stateful, multi-actor apps with LLMs.

   Humans in the loop.

* https://github.com/openai/swarm was an experimental lightweight framework.

* Bee Agent Framework from IBM.

* Letta (previously MemGPT)

* AWS multi-agent-orchestrator

* Make.com

* Agent Zero

* PydanticAI Agents

* SmolAgents from HuggingFace

Rather than just GitHub star history,
https://www.youtube.com/watch?v=odbU0pGMxzs

   * Learning Curve
   * Documentation
   * Integrations
   * Scalability & Deployability
   * Flexibility
   * Other featuers


## Code & Labs

https://github.com/sinanuozdemir/oreilly-ai-agents
https://learning.oreilly.com/live-events/ai-agents-a-z/0642572007604/
<a target="_blank" href="https://www.linkedin.com/in/sinan-ozdemir">Sinan Ozdemir</a>, founder and CTO of LoopGenius, where he uses state-of-the-art AI to help people create and run their businesses.
He has lectured in data science at Johns Hopkins University and authored multiple books, videos.
makes use of Crew.ai




## Agencies

Arseny Shatokhin

    <a target="_blank" href="https://www.youtube.com/watch?v=SjxYuaq3hFU">VIDEO</a>: Limitless AI built a Virtual Assistant AI Agent that can do ANYTHING for Me [Step-by-step Walkthrough]

<a target="_blank" href="https://www.skool.com/ai-automations-mastery-7642/classroom/0c39a268?md=91e6a57596b54616968beb2a9838923a">
Agency templates</a>

* 6:01 McKinsey template

## Yiannis Demetriou

https://www.youtube.com/watch?v=fIN2vIOTsZs
Build The ULTIMATE AI Content Agent Using Make & N8N (NO-CODE)
by Yiannis Demetriou
* https://www.skool.com/ai-automations-mastery-7642/about
* https://www.skool.com/ai-automations-mastery-7642/classroom/61cd8bc0?md=8982349742ff466796681a3c542039f9
* https://www.youtube.com/watch?v=kAk131n5aA4 Make.com

https://www.youtube.com/watch?v=kAk131n5aA4

https://www.skool.com/ai-automations-mastery-7642/classroom/0c39a268?md=91e6a57596b54616968beb2a9838923a
AI Automation Agency Wizards

## Andrew Ng

https://www.youtube.com/watch?v=KrRD7r7y7NY
Andrew Ng Explores The Rise Of AI Agents And Agentic Reasoning | BUILD 2024 Keynote

## Explainer Youtubers

https://www.youtube.com/watch?v=2-JV8UxegWE
What is AI Agent? | Simple Explanation of an AI Agent
by codebasics

https://www.youtube.com/watch?v=IivxYYkJ2DI
AI Agents and AI Assistants: A Contrast in Function
by IBM Technology

https://www.youtube.com/watch?v=eDnA1pVPS64
Mastering the AI Agent Stack: Building Smarter, Scalable Systems
by sam_mk87

https://www.youtube.com/watch?v=93fCvFkY1Lg
Product Management Is Dead, So What Are We Doing Instead? | Lenny & Friends Summit 2024
Lenny's Podcast
Claire Vo @clairevo is the Chief Product Officer at LaunchDarkly and the creator of ChatPRD.
https://www.chatprd.ai/blog/product-management-is-dead
She previously held leadership roles at Optimizely and Color. Claire is known for her forward-thinking approach to product management and her expertise in AI-powered product development. In this talk, she discusses:
• Why product management as we know it is dying
• How AI is transforming product development faster than we expect
• The rise of AI-powered "triple threats" who can handle product, design, and engineering
• What product leaders need to do to stay relevant in the AI era
• How to build and manage AI-powered product teams


https://www.youtube.com/watch?v=KY8n96Erp5Q
Why Agent Frameworks Will Fail (and what to use instead)
Dave Ebbelaar

https://www.youtube.com/watch?v=kJvXT25LkwA
How I Made AI Assistants Do My Work For Me: CrewAI
Maya Akim

https://www.youtube.com/watch?v=pcWKJ_yvf1M
Microsoft Launches 10 NEW AI Agents
Sam Witteveen


## AI Automation Groups on Skool

$99/month Skool was founded in 2019 by Sam Ovens (CEO) and Daniel Kang (CTO). Skool has 30 employees and is based in Los Angeles, California. In 2024 Alex Hormozi added https://www.skool.com/games/about

Some lures:
* Weekly Live group calls with exclusive lessons
* Weekly Live studies
* Monthly Elite guest coaches live calls
* Win 1 on 1 calls with Elite coaches
* A brotherhood of likeminded men
* Access to in-person masterminds

Listed by cost and name:

https://www.skool.com/ai-automations-by-jack-4235/about
https://www.skool.com/ai-automations-by-jack-4235/classroom/0c39a268?md=91e6a57596b54616968beb2a9838923a
$67/month AI Automation by Jack Roberts

https://www.skool.com/aiworkshop
$59/m AI Workshop

https://www.skool.com/ai-biz-in-a-box
$497/m AI Biz In A Box

https://www.skool.com/ai-collective
$9/m AI Collective

NCA & AI Guy - focused at faceless YT channels.


https://www.skool.com/learn-ai
FREE AI Automation Agency Hub

https://www.skool.com/learn-ai/about
FREE AI Automation Agency Hub by Liam Ottley

https://www.skool.com/insightai-academy-3338
FREE InsightAI by Nicholas Vasiliu
@nicholas-vasiliu-3720

https://www.skool.com/cyberpro-community
FREE CYBERPRO COMMUNITY (FREE)

https://www.skool.com/ai-automations-mastery-7642
FREE AI Automation Agency Wizards

https://www.skool.com/systems-to-scale-9517
FREE Systems to Scale

https://www.skool.com/ai-automation-society
FREE AI Automation Society

https://www.skool.com/insightai-academy-3338
FREE InsightAI Academy

https://www.skool.com/agent-zero
FREE Agent Zero

https://www.skool.com/data-alchemy
FREE Data Alchemy

https://www.skool.com/ai-for-devs-6115
FREE AI for Devs

https://www.skool.com/voice-ai
https://www.skool.com/voice-ai/classroom/e5a56130?md=61dd6abdeb9a4ce880b7c57c1fa779b5
FREE Voice AI Accelerator (Free)

https://www.skool.com/automated-client-acquisition
FREE ACA (free)

https://www.skool.com/aiacademyskool
FREE Ai Academy

https://www.skool.com/facelessyoutubefree
FREE Faceless YouTube Free

https://www.skool.com/aiography
FREE AIography - AI Film Academy

https://www.skool.com/lazyempire
FREE TaskMagic's Lazy Empire

https://www.skool.com/godago
Free AI Productivity Hub

https://www.skool.com/aiagency
Free AI Agency Incubator


## References

by Hasan Aboul Hasan
* https://www.youtube.com/watch?v=cDm5vPXVln8 Create AI Agents From Scratch With Python! (Free Course)
* https://www.youtube.com/watch?v=FukaIPVpmnA I built 10 AI Tools, and am giving it for free!

by Aaron Dunn
* https://www.youtube.com/watch?v=UEKbv9FMRtU AI Agents Explained - LLMs That Reason, Plan, and Act Autonomously
* https://www.youtube.com/watch?v=HoRutj1z3fQ Flask App Template with Firebase Integration - Quick Start Guide<br />https://github.com/adjdunn/Flask-Firebase-Template

https://www.youtube.com/watch?v=WP5sQhGlxj4
The Secret Plan Behind Artificial Intelligence
by More Perfect Union

https://www.youtube.com/watch?v=mlz0paWRqac
How to 25X Your Business with AI in 2025 (Complete Blueprint)
by Julia McCoy

https://www.youtube.com/watch?v=O2YmiYEJ-sY
The Proven Content System for Unlimited AI Agency Leads (copy this)
by Liam Ottley

https://www.youtube.com/watch?v=YqeI7iViRmE
Marc Andreessen: It’s Morning Again In America
Hoover Institution

https://www.youtube.com/watch?v=Xix3HHhyeoI
AI Agents are about to join your company en masse
by Matthew Berman

https://www.youtube.com/watch?v=G7S1R5o_hWs
5 AI Business Ideas For 2025 – These Make Me $50K/Month
Sara Finance

https://ibmtechxchange-virtual-agents-platform.bemyapp.com/#/event

https://www.youtube.com/watch?v=F8NKVhkZZWI&t=165s
IBM:

https://www.youtube.com/watch?v=ZL14jkX39G0
The Evolution of AI Agents
by Bloomberg Technology

https://www.youtube.com/watch?v=2-JV8UxegWE
What is AI Agent in Artificial Intelligence? | AI Agent Explained
by codebasics

https://www.youtube.com/watch?v=w-A70c_to5A
I Left My Dream Job at Mckinsey: Here's Why
by Wayne Hu


<a target="_blank" href="https://www.anthropic.com/research/building-effective-agents" title="Dec 19, 2024">
Anthropic "How to build effective agents"</a>
    * Workflows have predefined code paths.
    * AI Systems have dynamic processes and tool usage.

## Data-Alchemy shop

<a target="_blank" href="https://www.youtube.com/watch?v=tx5OapbK-8A">VIDEO</a>:
by <a target="_blank" href="https://www.linkedin.com/in/daveebbelaar/">Dave Ebbelaar</a> in Amsterdam, Netherlands
at free https://www.skool.com/data-alchemy/classroom
and https://www.datalumina.com/data-freelancer
provided in ?499 course at https://launchpad.datalumina.com/
referencing modules explained in https://www.youtube.com/watch?v=p4G0coRey9w
https://www.skool.com/data-freelancer/about

   * Pydantic at https://docs.pydantic.dev/latest to validate
   * Pydantic Settings https://docs.pydantic.dev/latest/concepts/pydantic_settings/#usage
   * https://pypi.org/project/python-dotenv works with Pydantic Settings
   * FastAPI integrates with Pydantic validation
   * Instructor https://python.useinstructor.com builds on top of Pydantic

   * Celery task queues https://docs.celeryq.dev/en/stable/getting-started/introduction.html

   * MongoDB for NoSQL
   * Postgres for SQL & timescale/pgvectorscale extension for vector database
   * SQLAlchemy
   * Alembic works with SQLAlchemy for database migrations
   * Pandas
   * Jinja templating engine https://jinja.palletsproject.com/en/stable

   * LLM Model Providers (OpenAI, Anthropic)
   * Local LLM frameworks: Langchain or llamaindex.ai

   * Vector databases: Pinecone, weaviate, qdrant.tech, Mogodb Atlas, etc.
   * Observability, analytics, evaluations, testing and annotation.: langfuse.com open source alternative to langsmith cloud for langchain. https://astralinsights.ai/comparison-of-observability-platforms-langsmith-langfuse/ for human feedback

   * DPsy.ai (Declarative Self-improving Python) for writing compositional Python code @stanfordnlp/dspy
       * https://www.youtube.com/watch?v=Zv4LjO8teqE by Adam Lucek

   PDF Parsers:
   * pymupdf.readthedocs.io/en/latest
   * pypdf2.readthedocs.io/en/3.x/
   * Amazon Textract https://aws.amazon.com/textract
   * Azure AI Document Intelligence https://azure.microsoft.com/en-us/products/ai-services/ai-document-intelligence

PydanticAI & Anthropic
   * <a target="_blank" href="https://youtube.com/shorts/XfsVkO9swIw?si=TZq79gLHPUfVnkYG">
   Agents write themselves using PydanticAI</a> (https://pydantic.ai/) & Langraph (https://langraph.ai/)
   * https://www.youtube.com/@ColeMedin/shorts
   * See https://www.youtube.com/watch?v=LddgJyDWoUs by Greg Baugues
   * https://www.youtube.com/watch?v=YKRqnWLZbpU codingwitroby.com

   * dashboard using Streamlit

studio.auttomator.ai
hackathon of agents
https://www.youtube.com/watch?v=xfFyAumTjT0


## Objectives?

   BTW In the movie "2001: A Space Odessey", the computer named HAL 9000 murders an astronaut to resolve conflicting objectives:
   Deliver astronauts to Jupiter and NOT let them know what awaits them there.
   So the computer decides that delivering dead astronauts would solve both objectives.


## Automation

Healthcare: In healthcare, automation is increasingly important. From robots helping with surgery to computer programs that help diagnose diseases, technology is helping healthcare workers provide faster, more accurate, and more personalized care. This gives doctors and nurses more time to spend with patients, providing emotional support and addressing complex medical needs. Think of how AI can analyze medical images to detect early signs of cancer, potentially saving lives through early intervention.
A robot assisting a doctor during surgery

Finance: The finance industry has also embraced automation to make things run smoother and more efficiently. Algorithmic trading systems execute trades on the stock market incredibly fast, taking advantage of market fluctuations that a human trader might miss. AI-powered tools help protect customers from financial crimes by analyzing patterns and flagging suspicious activity. Chatbots and virtual assistants handle simple customer inquiries, like checking account balances or resetting passwords, which frees up human agents to deal with more complicated issues that require empathy and problem-solving skills.

Transportation: Automation is changing the transportation industry in big ways. Self-driving cars could completely change how we get around, making roads safer by eliminating human error and reducing traffic congestion by optimizing routes and speeds. Automated traffic management systems can adjust traffic lights in real-time to keep traffic flowing smoothly, even during rush hour. Drones can deliver packages and medical supplies, overcoming geographical barriers and providing access to essential goods and services.

## Here today

Agents are here today from leading AI developers, including 
* <a target="_blank" href="https://openai.com/index/introducing-operator/">OpenAI’s Operator</a>
* <a target="_blank" href="https://aws.amazon.com/q/">Amazon’s Q</a>
* Manus from China
* <a target="_blank" href="https://support.microsoft.com/en-us/topic/introducing-copilot-agents-943e563d-602d-40fa-bdd1-dbc83f582466">Microsoft’s Copilot</a>
* <a target="_blank" href="https://deepmind.google/technologies/project-astra/">Google’s Project Astra</a>

* <a target="_blank" href="https://www.anaconda.com/ai/">Anaconda’s Astra</a>


## References

https://lakefs.io/blog/what-is-rag-pipeline/

https://conted.ox.ac.uk/courses/artificial-intelligence-generative-ai-cloud-and-mlops-online
£3595 Artificial Intelligence: Generative AI, Cloud and MLOps (online) course
at the University of Oxford January - April 2025 by <a target="_blank" href="https://www.linkedin.com/in/ajitjaokar/">Ajit Jaokar</a>
Based on
<a target="_blank" href="https://www.packtpub.com/en-us/product/machine-learning-engineering-with-python-9781837631964">
Machine Learning Engineering with Python: Manage the lifecycle of machine learning models using MLOps with practical examples, Second Edition</a>
by Andrew P. McMahon

mementic replace all QA.
muuktest
Raleigh, NC
https://www.linkedin.com/in/ivanbarajasvargas/


Barajas Vargas
https://www.youtube.com/watch?v=8vrA-XFfyvQ
https://www.youtube.com/watch?v=j6N15PWL-UA

gigaML


https://hbr.org/topic/subject/ai-and-machine-learning

https://www.youtube.com/watch?v=ju9PmFl5L0c
I tried 50+ Agent libraries, the only one I really needed is this
BiasVsVariance


Read More - https://aka.ms/entity1
MS LEARN: Custom named entity recognition

https://colivara.com

##
https://learn.microsoft.com/en-us/training/modules/build-copilot-ai-studio/
LEARN: Build a RAG-based agent with your own data using Azure AI Foundry

Introduction
2 min
Understand how to ground your language model
6 min
Make your data searchable
7 min
Build an agent with prompt flow
7 min
Exercise - Create a custom agent that uses your own data
15 min
Knowledge check
3 min
Summary
1 min

Adding grounding data to an Azure AI project
You can use Azure AI Foundry to build a custom age that uses your own data to ground prompts. Azure AI Foundry supports a range of data connections that you can use to add data to a project, including:
Azure Blob Storage
Azure Data Lake Storage Gen2
Microsoft OneLake
You can also upload files or folders to the storage used by your AI Foundry project.
in Playgrounds

https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/understand-embeddings
embeddings in the Azure OpenAI Service

## Search

https://learn.microsoft.com/en-us/azure/search/vector-search-overview
vector search

https://learn.microsoft.com/en-us/azure/search/hybrid-search-overview
hybrid search

## Agent-to-Agent Interaction

https://www.youtube.com/watch?v=rAeqTaYj_aI



<a name="PromptFlow"></a>

### Prompt Flow

   * https://learn.microsoft.com/en-us/training/modules/build-copilot-ai-studio/4-build-copilot
   * LAB Exercise: https://microsoftlearning.github.io/mslearn-ai-studio/Instructions/04-Use-own-data.html Create a generative AI app that uses your own data

Agentic uses a "flipped" pattern of user interaction. The AI system asks users questions to gather information and perform tasks.
* "Ask me questions one at a time."
* The AI also executes actions based on the gathered data, creating a more interactive experience.
* The AI can translate user goals into actions that can be understood by databases or other systems, similar to a protocol droid in a sci-fi context.

Prompt Flow is a development framework for defining flows that orchestrate interactions with an LLM.

After uploading data to Azure AI Foundry and creating an index on
your data using the integration with Azure AI Search, you can implement the RAG pattern with Prompt Flow to build a generative AI application.

1. A flow begins with one or more inputs, usually a question or prompt entered by a user, and in the case of iterative conversations the chat history to this point.
1. The flow is then defined as a series of connected <strong>tools</strong>, each of which performs a specific operation on the inputs and other environmental variables. There are multiple types of tool that you can include in a prompt flow to perform tasks such as:
   * Running custom Python code
   * Looking up data values in an index using an Index Lookup tool to retrieve data from an index so that subsequent tools in the flow can use the results to augment the prompt used to generate output from an LLM. https://learn.microsoft.com/en-us/azure/machine-learning/prompt-flow/tools-reference/index-lookup-tool
   * Creating prompt variants - enabling you to define multiple versions of a prompt for a large language model (LLM), varying system messages or prompt wording, and compare and evaluate the results from each variant.
   * Submitting a prompt to an LLM to generate results.

1. Finally, the flow has one or more outputs, typically to return the generated results from an LLM.


## Coursera course

<a target="_blank" href="https://www.coursera.org/specializations/ai-agents">"AI Agent Developer on Coursera.com</a> by Vanderbilt University's <a target="_blank" href="https://www.linkedin.com/in/jules-white-5717655/">Jules White</a> in Nashville, Tennessee.

What is the difference with agentic AI?

Agentic AI is characterized by its ability to perform tasks without any human intervention.

* Adaptability: Agentic AI can adapt to unexpected changes, such as substituting ingredients, demonstrating its ability to respond dynamically to feedback.
* Agentic AI can problem-solve and react to various situations, functioning similarly to generative AI but with a focus on real-world interactions.
* Human-AI Collaboration: The lecture illustrates a scenario where a human collaborates with an AI to cook a dish, with the AI providing step-by-step instructions while the human performs the actions.
* Importance of Interaction: The interaction between the human and AI highlights the need for effective communication and adaptability in AI systems, contrasting with traditional rigid computer systems.


## Types of AI agents 

* simple reflex agents, model-based agents, goal-based agents, utility-based agents, and learning agents.

## UI

https://medium.com/@amosgyamfi/the-3-best-python-frameworks-to-build-uis-for-ai-apps-08619d53d281
The 3 Best Python Frameworks To Build UIs for AI Apps
Build user-friendly AI chat interfaces crucial for seamless interactions, demo presentation, and testing using the leading Python frameworks for creating intuitive chat UIs for AI.



## Code

Here is an overview of our code base at
<a target="_blank" href="https://github.com/bomonike/agentic">https://github.com/bomonike/agentic</a>

1. Install Ollama server
1. Install LLAMA 3.2 and other LLMs
1. Run Chatbot within benchmarks
1. Add memory


<hr />
<i>{{ page.lastchange }}</i>