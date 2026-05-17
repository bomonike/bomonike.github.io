---
layout: post
date: "2026-05-17"
lastchange: "26-05-17 v044 mirror @anthropic-claude.md"
url: "https://bomonike.github.io/anthropic-claude"
file: "anthropic-claude"
title: "Anthropic Claude AI Certifications"
excerpt: "Deep Dive tips and tricks to get certified: Step-by-step tutorials, videos, practice exams."
tags: [AI, Certifications, Anthropic, Claude]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-03-19"
---
<a target="_blank" href="https://bomonike.github.io/anthropic-claude"><img align="right" width="100" height="100" alt="anthropic-claude.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/anthropic-claude.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

This article was hand-crafted to combine insights from the documents, tutorials, and videos listed below.
The objective here is to combine all the wisdom into deep knowledge logically sequenced.


<a name="Company"></a>

## Anthropic the Company

1. Events:
   * <a target="_blank" href="https://www.wired.com/story/anthropic-first-developer-conference/">irst Developer Day, Where AI Agents Took Center Stage (wired.com 12/25)</a>
   * <a target="_blank" href="https://www.catacal.com/catalyst/anthropic-code-with-claude-event">"Anthropic Day" San Francisco May 6 2026</a>
   <br /><br/>

1. Anthropic was founded in 2021 by seven former employees from OpenAI <a target="_blank" href="https://www.youtube.com/watch?v=om2lIWXLLN4">VIDEO</a>
   * CEO Dario Amodei was OpenAI's Vice President of Research.
   * <a target="_blank" href="https://www.linkedin.com/in/daniela-amodei-790bb22a/">Daniela Amodei</a>, Co-Founder and President (sister of Dario) <a target="_blank" href="https://www.youtube.com/watch?v=FDjrDeIZAk4&pp=ugUHEgVlbi1VUw%3D%3D">VIDEO</a>
   * <a target="_blank" href="https://www.linkedin.com/in/bcherny/">Boris Cherny</a>, Engineering <a target="_blank" href="https://www.youtube.com/watch?v=SlGRN8jh2RI">260502</a>
   * <a target="_blank" href="https://www.linkedin.com/in/katelynlesse/">Katelyn Lesse</a>, Engineering
   * <a target="_blank" href="https://www.linkedin.com/in/cat-wu/">Cat Wu</a>, Product
   * <a target="_blank" href="https://www.linkedin.com/in/angelajiang/">Angela Jiang</a>, Product
   <br /><br />

1. Visit <a target="_blank" href="https://anthropic.com/">https://anthropic.com/</a> - the corporate marketing landing page.

   It says "Anthropic is a <strong>public benefit corporation</strong> dedicated to securing its benefits and mitigating its risks."

1. <a target="_blank" href="https://www.linkedin.com/company/anthropicresearch/posts/?feedView=all">Anthropic's entry on LinkedIn</a> classifies the company in the "Research Services" industry:

   "Anthropic is an AI safety and research company working to build reliable, interpretable, and steerable AI systems." 3M followers. 501-1K employees.

1. On <a target="_blank" href="https://www.glassdoor.com/Reviews/Anthropic-Reviews-E8109027.htm">Glassdoor.com</a>, <strong>86%</strong> of Anthropic employees would recommend to a friend, which is high praise indeed.

1. Click <a target="_blak" href="https://www.anthropic.com/research">"Read more" at https://www.anthropic.com/research</a> about results from Anthropic's survey of users.

   1. Click "Posts" tab to view announcements.
   1. Click <a target="_blank" href="https://www.linkedin.com/ad-library/search?companyIds=106863934">"Ads"</a> to see videos of 2026 Superbowl commercials.
   <br /><br />

1. The history of the US Government's use of Claude for domestic surveillance or in fully autonomous weapons is summarized in <a target="_blank" href="https://en.wikipedia.org/wiki/Anthropic" title="Visited 25-03-25">https://en.wikipedia.org/wiki/Anthropic</a> 

   It says the company is headquartered in San Francisco's <a target="_blank" href="https://en.wikipedia.org/wiki/Foundry_Square">Foundry Square</a> (near the Bay Bridge) at 500 Howard and First Streets (across from Chipotle & BlackRock and close to the SalesForce tower's BART/busses). 

* <a target="_blank" href="https://www.linkedin.com/showcase/claude/posts/?feedView=all">"Claude" on LinkedIn.com</a> says "Claude is an AI assistant built by Anthropic to be safe, accurate, and secure." in Technology, Information and Internet. 884K followers.

   <a target="_blank" href="https://www.youtube.com/watch?v=inLFfXFapnw">PROTIP</a>: 
   Claude is named for Claude Shannon at Bell Labs, who founded "informational theory of communication" which made AI possible.


<a name="Competition"></a>

## Competition

Claude competes with agentic coding tools (aka coding agent IDEs) that read a codebase, edit files, and run commands:
   * Amazon's Kiro CLI & IDE for spec-driven development. But it needs to be constantly connected to AWS eating up credits. <a target="_blank" href="https://builder.aws.com/content/34NW7Wl1gpOl2E4jeJQ6iytovSM/how-to-use-agent-skills-with-amazon-q-developer-and-kiro">agent-skills-mcp</a> to convert from Anthropic Agent Skills.
   * warp.dev (which does a great job of detecting coding and CLI errors and suggesting fixes), <a target="_blank" href="https://github.com/warpdotdev/warp">now open source</a>
   * OpenAI's Codex <a target="_blank" href="https://www.youtube.com/watch?v=kFS6z_97Ohc&pp=ugUEEgJlbg%3D%3D">VIDEO</a>
   * OpenCode
   * Perplexity
   * Google Gemini Gemma & Antigravity IDE
   * Mistral AI
   * Devin by Cognition (merged)
   * Temporal's <a target="_blank" href="https://www.youtube.com/watch?v=3rpwaKQXI7A">Pydantic</a>
   * OpenCode
   <br /><br />

https://www.tbench.ai/leaderboard (Terminal Bench Leaderboard) provides benchmarks AI agents' terminal mastery operating the <a target="_blank" href="https://www.harborframework.com/">harbor framework</a>.


<a name="Support"></a>

## Claude Support

WARNING: BLAH: Anthropic doesn't offer phone or live chat support, only thru <a target="_blank" href="https://support.claude.com/en/">chat at support.claude.com</a>. 

   * https://support.claude.com/en/articles/9015913-how-to-get-support

1. <a target="_blank" href="https://www.youtube.com/@anthropic-ai">Anthropic's YouTube channel</a>
   
   * <a target="_blank" href="https://medium.com/@the.gigi/claude-code-deep-dive-lock-him-up-ea142fc8246b">Article</a> by Gigi Sayfan
   <a target="_blank" href="https://the-gigi.github.io/gigi-zone/posts/2026/03/cc-deep-dive-12-lock-him-up/">CCDD (Claude Code Deep Dive)</a>

1. <a target="_blank" href="https://www.reddit.com/r/ClaudeAI/">Reddit: r/ClaudeAI</a> https://claudecodeguide.dev/

   * https://www.reddit.com/r/ClaudeAI/wiki/survivalguideweekly/ Weekly Survival for Claude Users is a must-read.


<a name="Products"></a>

## Claude Products

<a target="_blank" href="https://status.claude.com/uptime/"><img align="right" width="300" alt="anthropic-systems-hist.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774449180/anthropic-systems-hist_vl2oig.png" /></a><a target="_blank" href="https://status.claude.com/uptime/">Uptime</a> shows Anthropic's own production environments:

* <a target="_blank" href="https://claude.ai/">claude.ai</a> website reached on internet browser.

   Meet Claude - Platform - Solutions - <a href="#Pricing">Pricing</a> - Resources - Contact sales - Try Claude

* <a target="_blank" href="https://platform.claude.com/">platform.claude.com</a> is the user <strong>Claude Console</strong> Dashboard, Workbench, Files, and <a href="#Skills">Skills</a>, <a target="_blank" href="https://platform.claude.com/docs/en/home">Documentation</a> (for each organization). Claude also creates the evaluation automation that it runs. <a target="_blank" href="https://www.youtube.com/watch?v=QKdKcFjjZhE">"You Guide To Local AI - Hardware, Setup and Models"</a>

* <strong>Claude API</strong> refers to the endpoint listening for <a href="#ChatAPICall">SDK requests</a> from procedural programming code or via the claude-agent-sdk wrapper around <tt>claude -p</tt> commands

   REMEMBER: The <strong>-p</strong> flag specifies non-interactive (aka  <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&&t=5h18m36s">"headless" task), No prompts, no confirmations. Runs and returns the result. The SDK spawns the Claude Code CLI as a subprocess and communicates over stdin/stdout via JSON-lines. xcompare it to the Anthropic Client SDK. Specify --allowedTools and --disallowedTools permissions.

* <strong>Claude Code</strong> is "like talking to a capable teammate who actually does the work". Instead of hand coding, human app designers now speak natural language conversations with Claude Code to write design specs from which both infrastructure creation and programming code are generated.

   > “AI will soon be writing 90 percent of all code.” — Dario Amodei, Anthropic CEO, March 10 2025

   That is why instead of human employees, companies will be <a href="#Pricing">paying for AI tokens</a> to do work. That's the basis for high valuations and unpresedented investments in gigantic data centers using AI chips.

* <a href="#CoWork">Claude CoWork</a> can interact with you computer's files, mouse, keyboard, and screen, to operate any app. <a target="_blank" href="https://www.youtube.com/watch?v=rlIy7b-3DC8&pp=ugUEEgJlbg%3D%3D">VIDEO</a>

* "computer use" can open native applications, click through user interfaces, test its own changes, and fix what breaks — all from a developer's terminal. Combined with existing debugging workflows, these features move Claude Code closer to autonomous identification and resolution of bugs during development.

REMEMBER: Anththropic does not <strong>host</strong> their own models but use AWS, Azure, GCP, etc.
   Claude is the only frontier AI model available on all three leading cloud providers: AWS, Google Cloud, and Microsoft.
   Claude would also be integrated into the Databricks Data Intelligence Platform and Snowflake's Lakehouse databases.

   PROTIP: That enables us to bring costs down by <a target="_blank" href="https://medium.com/towards-artificial-intelligence/i-cancelled-my-200-mo-claude-api-subscription-again-0e2175502778">using a downloaded local foundation model</a> while using Claude Code/Work.

* <a target="_blank" href="https://www.youtube.com/watch?v=DNhjITZy7cQ">Glasswing</a> secures software using the Mythos frontier model built using NVIDIA's GP3 chips.

* Claude <strong>Dispatch</strong> enables <strong>cross-device workflows</strong> where tasks move from <strong>mobile app</strong> to desktop app which stays awake (doing whatever else).

* "Memory on Claude Managed Agents" enables agents to learn from past sessions and share what they've learned with other agents. The memories mounts directly onto a filesystem so developers can keep control over what these agents retain - the same bash and code execution capabilities that make it effective at agentic tasks. "With filesystem-based memory, our latest models save more comprehensive, well-organized memories and are more discerning about what to remember for a given task.”

* <a target="_blank" href="https://medium.com/data-and-beyond/claude-can-use-your-computer-a-comprehensive-security-first-deep-dive-into-claude-computer-use-cf424f48105d">Claude "Computer Use"</a>: <a target="_blank" href="https://www.coursera.org/projects/building-toward-computer-use-with-anthropic" title="by Colt Steele https://skillbuilder.deeplearning.ai/">Computer Use</a> utilizes the capabilities of the latest models including image reasoning and tool use to enable an LLM-based agent to use a computer. Like a human user, the model processes an image of the screen, analyzes it to understand what’s going on, and navigates the computer by issuing mouse clicks and generating keyboard strokes to get things done.

   <a target="_blank" href="https://www.youtube.com/watch?v=julbw1JuAz0">VIDEO</a>:
   Fun fact: 90% of code in Claude Code is written by itself, in TypeScript, 
   <a target="_blank" href="https://www.yogalayout.dev/docs/about-yoga">Yoga embeddable layout engine</a> 
   (to determine the size and position of boxes for),
   React, 
   <a target="_blank" href="">Ink</a> (React-like library for building interactive CLI apps in JS), 
   and 
   <a target="_blank" href="https://bun.com/">BUN toolkit</a> (acquired by Anthropic in '25).

   <a target="_blank" href="https://www.youtube.com/watch?v=mBHRPeg8zPU">VIDEO</a>: Although Temporal is used on Claude,
   the <a target='_blank" href="https://ccunpacked.dev">leak</a> revealed that Claude is vulnerable to the in remote access trojan from Axios 1.14.1 npm.
   <a target="_blank" href="https://stepsecurity.io/">Get rid of the vulnerability</a>
   
   The team works at around 5 releases per engineer each day. AI agents are used for code reviews and tests, test-driven development’s (TDD) renaissance, automating incident response, and cautious use of feature flags. 
   <a target="_blank" href="https://www.youtube.com/watch?v=ofLvTNZEHVk">"Inside Claude Code: The Architecture of AI Agents" by PY</a>
   is a while loop.

Tool selection: Because raw GUI control is powerful, but also brittle, slower, and much harder to govern, the Claude ecosystem is a layered agent system where <strong>connectors</strong> (with structured contracts) via MCP apps are preferred, browser automation (of forms on websites) is secondary, and raw full-screen (difficult to govern) desktop control is the fallback layer.

References:
   * https://newsletter.pragmaticengineer.com/p/how-claude-code-is-built
   <br /><br />



<a name="Quizzes"></a>

## Quizzes

* <a target="_blank" href="https://quizlet.com/1139139502/comprehensive-guide-to-claude-ai-features-applications-and-best-practices-flash-cards/">127 terms</a>
* <a target="_blank" href="https://quizlet.com/1063707525/ai-fluency-claude-anthropic-flash-cards/">14 terms: "AI Fluency"</a>


<a name="Glossary"></a>

## Features Glossary

Automation provided by AI agents have gone beyond auto-complete of code.

* <strong>Connectors</strong> (under the "Customize" and <a target="_blank" href="https://claude.ai/settings/connectors">Settings</a> menu items) enable Claude to interact with external platforms GitHub,  Gmail, Google Calendar, Google Drive, etc.

* <strong>GitHub Integratio</strong>n: Deep integration with GitHub for PR reviews, issue management and even CI/CD.

* An <strong>agentic code harness</strong> is what enables an LLM to be Agentic with <a href="#Sandbox">sandboxes</a>, accept prompts, use tools, etc.

* <strong>Memory system</strong>: <a href="#CLAUDE.md">CLAUDE.md</a> and other files that provide persistent <strong>context</strong> across sessions.

* <a href="#SlashCommands"><strong>Slash commands</strong></a>: Powerful keywords to control agent behavior. <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY">VIDEO</a>

* <strong>Skills</strong> (under the Customize menu item) enable new knowledge to be dynamically obtained by Claude or subagents based on minimal description and the current query as opposed to always taking up room lurking in the context memory. <a target="_blank" href="https://medium.com/towards-artificial-intelligence/claude-code-agent-skills-2-0-from-custom-instructions-to-programmable-agents-ab6e4563c176">Skills are now integrated with commands</a>.

* <strong>Subagents</strong>: Create specialized subagents for different tasks with their own context window. REMEMBER: Subagents operate with isolated context and do NOT share memory with the coordinator. Every piece of its information must be passed explicitly in it.

* <a href="#MCP">MCP Support</a>: Extend to <strong>external processing</strong> with any MCP tool to access APIs, databases and other external systems. MCP servers provide external tools and integrations

* <a href="#Tools">MCP Tools</a> defines what MCP clients should run to take action.

* Subagents run in <strong>isolated</strong> execution contexts isolated from the main conversation. Use them for delegated work.

* <a href="#Hooks">Hooks</a> are "event-driven" small Python (.md) and/or Bash shell (.sh) scripts (agentic workflows) that run when <strong>triggered by events</strong>: "PreToolUse" (after Read) or "PostToolUse" (after Write or Edit). REMEMBER: A hook can also block Claude from taking an action unless a specific condition has been met.

* <a href="#Plugins">Plugins</a> (under the Customize menu item) “packaged feature bundles” may include (bundle) hooks, <a href="#SlashCommands">slash commands</a>, and <a href="#Skills">skills</a> together for sharing with others. The "plugins" folder contains a <tt>blocklist.json</tt> file, a "known_marketplaces.json" file and the <strong>marketplaces</strong> folder, starting with "claude-plugins-official".

* <strong>Claude Agent SDK</strong> are used to build agentic AI systems beyond coding assistance.

* <a href="#Rules">Rules</a> ???

* "Constitutional AI" is a training approach developed by Anthropic to help AI models <strong>self-evaluate and revise</strong> their own responses, based on a predefined set of ethical guidelines and principles (harmless, honest, etc.) rather than RLHF (Reinforcement Learning with Human Feedback). "intent classification" in Claude’s safety system

* "<a target="_blank" href="https://agentskills.io/client-implementation/adding-skills-support">Progressive disclosure</a>" ensures only relevant content occupies the context window at any given time. Every skills-compatible agent follows the same three-tier loading strategy: REMEMBER:

   | Tier | What’s loaded | When | Token cost |
   | 1. Catalog | Name + description | Session start | ~50-100 tokens per skill |
   | 2. Instructions | Full SKILL.md body | When the skill is activated | <5000 tokens (recommended) |
   | 3. Resources | Scripts, references, assets | When the instructions reference them | Varies |


<a name="Pricing"></a>

## Pricing/Billing

REMEMBER: There are several ways to pay for Claude:

   <ul>
   A. <strong>Buy credits</strong> (pop-up clicking "Add funds" at the bottom of <a target="_blank" href="https://platform.claude.com/">platform.claude.com</a>. Good for 1 year to be consumed with API, Claude Code, and Workbench usage.

   B. Anthropic Console Account (auto reload) at <a target="_blank" href="https://platform.claude.com/settings/billing">https://platform.claude.com/settings/billing</a> for <strong>API usage</strong>. <strong>Buy credits</strong> ("credit grants" via Stripe, like Starbucks). Includes Batch for cheaper API rates.

   C. <a href="#Subscription">Claude account with subscription</a> (plus overage charges) when using Claude Code IDE/CLI.

   D. Arrange for invoicing after consumption: contact Sales.

   E. Via third-party providers Vertex or AWS Bedrock
   </ul>


### Subscriptions

PROTIP: <a target="_blank" href="https://www.getmerlin.in/pricing?coupon=merlin">Use merlin.ai</a>'s bulk purchasing costs <strong>$5/mo ($60/year)</strong> (with code AZ5) to access several LLMs (Claude Sonnet 4.5, OpenAI GPT5, etc.) instead of paying for a Claude AI subscription at <a target="_blank" href="https://claude.com/pricing">https://claude.com/pricing</a>:
* Claude Free
* Claude Max $17/month 
* Claude Max $100/month for 5x or 20x more usage than Pro
* Teams $20/month
* Enterprise
<br /><br />

REMEMBER: A paid plan is required to use Claude Code and <a href="#CoWork">Cowork</a>, <a href="#Projects">Projects</a> freature, Claude for Chrome, Slack, Excel, Word, PowerPoint.

CAUTION: In April 2026 Anthropic removed the $17/month tier and requires the $100/month for use of Claude Code.

CAUTION: Rate tokens chargess for the same request prompt is not consistent over time.

CAUTION: Claude's token charges are more complicated that figuring out your taxes.

DEFINITION: A "token" takes about 3/4 of a word to store because each token is a chunk of each word in a text file from a "corpus" of documents. Tokens are "trained" within AI models by turning chunks of each word into a numerical representation vector for each concept. The "weight" of each token refers to the numerical coordinates in each of many dimensions of meaning.

DEFINITION: "Quantization" reduces the size of an LLM by sacrificing the accuracy of its token vectors by reducing the number of decimal points. This compression technique used is called "QLoRA" fine-tuning.


PROTIP: The metric to watch is a <strong>cost per task</strong> which focuses on the productivity achieved rather than the effort.

<a name="Productivity"></a>

## Productivity: What can you do with Claude?

PROTIP: What outcomes are changed for customers?

Target one job that has these three qualities:

   * It wastes real time

   * It happens often (repeatedly)

   * It has multiple steps (complex)

Good first examples with a small test group:

   * turn meeting notes into action items

   * research a list of companies and make a short brief

   * respomd to support emails with draft replies

   * pull weekly numbers and write a simple report

   * check a few sources and summarize what changed

PROTIP: Improvements in net productivity can be confidently <strong>monitized</strong> when features are combined to be <strong>useful</strong> when consistently applied:

* Customer Support Resolution Agent (Agent SDK + <a href="#MCP">MCP</a> + escalation)

* Code Generation with Claude Code (<a href="#CLAUDE.md">CLAUDE.md</a> + plan mode + <a href="#SlashCommands">slash commands</a>)

* Multi-Agent Research System (coordinator-subagent orchestration)

* Developer Productivity Tools (built-in tools + <a href="#MCP">MCP</a> servers) See https://github.com/anthropics/courses/blob/master/tool_use/README.md

* Claude Code for CI/CD (non-interactive pipelines + structured output)

* Structured Data Extraction (JSON schemas + tool_use + validation loops)

<a target="_blank" href="https://www.youtube.com/watch?v=Y3PcRp5RFzk&pp=ugUEEgJlbg%3D%3D">"5 ‘Boring’ AI Workflows that Businesses Actually Want (And How to Sell them)"</a> by Nate Herk of AI Automation



<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1778688019/ai-harness-engr_rqoudz.webp"><img alt="ai-harness-engr.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1778688019/ai-harness-engr_rqoudz.webp"> /></a>



<a name="Tutorials"></a>

## Tutorials

Anthropic's own tutorials are at:
   * <a target="_blank" href="https://anthropic.skilljar.com/">https://anthropic.skilljar.com</a>
   * https://github.com/anthropics/courses
   * <a target="_blank" href="https://www.techrepublic.com/article/news-anthropic-iceland-ai-education/">Anthropic is trainging the country of Iceland</a>
   <br /><br />

<a target="_blank" href="https://anthropic.skilljar.com/page/claude-partner-network-learning-path">Anthropic's partner video courses on Skills</a> (by <a target="_blank" href="https://www.linkedin.com/in/lewis-menelaws-53333b6a/">Lewis Menelaws</a>)
* <a target="_blank" href="https://anthropic.skilljar.com/introduction-to-agent-skills">Introduction</a> to <a href="#Skills">agent skills</a> - Learn how to build, configure, and share Skills in Claude Code — reusable markdown instructions that Claude automatically applies to the right tasks at the right time. This course takes you from creating your first Skill to distributing them across teams and troubleshooting common issues.
   * What are skills?
   * Creating your first skill
   * Configuration and multi-file skills
   * Skills vs. other Claude Code features
   * Sharing skills
   * <a href="#Troubleshooting">Troubleshooting skills</a>
   <br /><br />
* <a target="_blank" href="https://anthropic.skilljar.com/claude-with-the-anthropic-api">Building with the Claude API</a> - This comprehensive course covers the full spectrum of working with Anthropic models using the Claude API.

* <a target="_blank" href="https://anthropic.skilljar.com/introduction-to-model-context-protocol">Introduction to Model Context Protocol</a> - Learn to build Model Context Protocol servers and clients from scratch using Python. Master three <a href="#MCP">MCP</a> core primitives—tools, resources, and prompts—to connect Claude with external services.

* <a target="_blank" href="https://anthropic.skilljar.com/claude-code-in-action">Claude Code in Action</a> (21 lessons) by Stephen GREGOR - Integrate Claude Code as a partner into your development workflow. Practical walkthrough of using Claude Code to accelerate your development workflow.
<br /><br />

On Coursera, <a target="_blank" href="https://www.coursera.org/instructor/~192606412">Stephen Grider</a> of Anthropic built 
   * <a target="_blank" href="https://www.coursera.org/learn/claude-code-in-action">Claude Code in Action</a>
   * <a target="_blank" href="https://www.coursera.org/learn/building-with-the-claude-api">Building with the Claude API</a>
   * <a target="_blank" href="https://www.coursera.org/learn/introduction-to-model-context-protocol">Introduction to Model Context Protocol</a>
   * <a target="_blank" href="https://www.coursera.org/learn/model-context-protocol-advanced-topics">Model Context Protocol: Advanced Topics</a>
   <br /><br />

With a OReilly.com subscription:
   * <a target="_blank" href="https://learning.oreilly.com/course/claude-code-masterclass/9781807784119/">2hr video course: Claude Code Masterclass: Code faster with Agentic AI</a> by <a target="_blank" href="https://www.linkedin.com/in/arunprabu-nallasamy-7363a854/">Arunprabu Nallasamy</a> references<br />https://github.com/Arunprabusamy/course-explainer-app known-bad code to fix and quizzes at
   https://github.com/PacktPublishing/Claude-Code-Masterclass-Code-faster-with-Agentic-AI

Youtube:
   * <a target="_blank" href="https://www.youtube.com/watch?v=qUQbU7h4RoE">I Took All 7 Anthropic Courses in One Weekend (Honest Review)</a> by Jas Wong
   * <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4">12 hour "Claude Code Essentials" exam</a> released by Andrew and <a target="_blank" href="https://gunnargrosch.com/">Gunnar Grosch</a> referencing <a target="_blank" href="https://github.com/enthropics/">github.com/enthropics</a> on March 20, 2026 via freeCodeCamp.org to plug <a target="_blank" href="https://www.exampro.co/exp-claudecode-01">$34 ExamPro study materials</a> to pass ExamPro.co's own "EXP-CLAUDECODE-01".

   * <a target="_blank" href="https://www.youtube.com/watch?v=M-NTwkM3VwM">Local AI Agents In 26 Minutes</a> by Tina Huang
   * <a target="_blank" href="https://www.udemy.com/course/claude-code-the-practical-guide/">3-hr Practical Guide</a> by <a target="_blank" href="https://www.udemy.com/user/academind">Academind</a> by <a target="_blank" href="https://www.youtube.com/watch?v=DNhjITZy7cQ">Maximilian Schwarzmüller</a> 

Articles:
   * <a target="_blank" href="https://dev.to/gunnargrosch/teaching-claude-code-how-you-work-claudemd-in-practice-21d9">Teaching Claude Code How You Work: CLAUDE.md in Practice</a>
   * <a target="_blank" href="https://dev.to/gunnargrosch/from-zero-to-agentic-coding-running-claude-code-with-amazon-bedrock-1f00">From Zero to Agentic Coding: Running Claude Code with Amazon Bedrock</a>
   <br /><br />

YouTube videos with no subscription:
   * <a target="_blank" href="https://www.youtube.com/watch?v=lNNH-Ox_r04" title="Viewed 25-03-25">VIDEO: "Claude Isn't Safe. This Anthropic Whistleblower Has the Proof."</a> by Novara Media quoting Mrinank Sharma's resignation letter.
   * <a target="_blank" href="https://www.youtube.com/watch?v=jw0pMr54Ztc&pp=ugUEEgJlbg%3D%3D">"The Ultimate Beginner’s Guide To Claude"</a> by <a target="_blank" href="https://www.aiedgehq.co/">AI Edge on Telegram</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=ntDIxaeo3Wg">"Claude Code - Full Tutorial for Beginners"</a> by Tech With Tim offering <a target="_blank" href="https://techwithtim.net/newsletter">newsletter</a>
   * https://www.youtube.com/watch?v=aWAfpOi91vc&pp=ugUEEgJlbg%3D%3D">"Let Claude Cowork Work For You, here’s how"</a>
   * https://www.youtube.com/watch?v=rSoeh6K5Fqo">"Making Claude Code more useful with TDD and XP Techniques"</a> by FeedbackDrivenDev
   * <a target="_blank" href="https://www.youtube.com/watch?v=pDoBe4qbFPE">"12 Hidden Settings To Enable In Your Claude Code Setup"</a> by AI LABS
   * <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw">"You Can Build The Craziest Things with Claudes Agent SDK"</a> by Traversy Media
   <br /><br />

YouTube videos offering subscriptions:
   * <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4">12 hour "Claude Code Essentials" exam</a> released by Andrew and <a target="_blank" href="https://gunnargrosch.com/">Gunnar Grosch</a> referencing <a target="_blank" href="https://github.com/enthropics/">github.com/enthropics</a> on March 20, 2026 via freeCodeCamp.org to plug <a target="_blank" href="https://www.exampro.co/exp-claudecode-01">$34 ExamPro study materials</a> to pass ExamPro.co's own "EXP-CLAUDECODE-01".
   * <a target="_blank" href="https://www.youtube.com/@Mark_Kashef ">YouTube</a> by <a target="_blank" href="https://www.linkedin.com/in/mkashef/">Mark Kashef</a> pushes <a target="_blank" href="https://www.skool.com/earlyaidopters/about">$64/mo Early AI-dopters</a>
   * <a target="_blank" href="https://youtu.be/2u93VTYvG5U" title="Viewed 25-03-25">"Claude Computer Use Just Dropped, Here's How to Hack It"</a> (Use the Min browsser to avoid blocking) to plug <a target="_blank" href="https://www.skool.com/makerschool/about">$184/mo Maker School</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=vDVSGVpB2vc" title="Viewed 25-03-25">"How to Build Claude Agent Teams Better Than 99% of People"</a> by Nate Herk - AI Automation of <a target="_blank" href="https://www.skool.com/ai-automation-society-plus/about" title="Viewed 25-03-25">$99/mo AI Automation Society Plus</a>
   * <a target="_blank" href="https://www.youtube.com/@zinhoautomates">Zinho Automates</a> https://www.skool.com/ai-launchpad/about</a>
   <br /><br />

by Brock Mesarich - AI for Non Techies to pitch <a target="_blank" href="https://www.skool.com/aifornontechies1/about">$47/mo AI for Non-Technies</a>: "Dispatch" from your phone.
   * <a target="_blank" href="https://www.youtube.com/watch?v=wXQGd-Yg8Ac">"Claude's Biggest Update Just Dropped... (Computer Use)"</a> 
   * <a target="_blank" href="https://www.youtube.com/watch?v=5bhh8ffHN6Q">"How to Use Claude Cowork Projects Better Than 99% of People"</a>

   * <a target="_blank" href="https://www.youtube.com/watch?v=_PwlnU-Yoe8">"Anthropic's SECRET Model Just Leaked (INSANE)" pushing <a target="_blank" href="https://www.shippingskool.com/">$99/yr ShippingSkool</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=vizgFWixquE">"Anthropic's NEW Claude Architect Guide In 39 Minutes" by Mark Kashef to pitch <a target="_blank" href="https://www.skool.com/earlyaidopters/">$64/mo Early AI-dopters</a>
   * <a target="_blank" href="">"The Easiest Way to Get Ahead With Claude Code"</a> by Simon Scrapes pushing <a target="_blank" href="https://skool.com/scrapes">$37/mo Scrapes</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=_gV7qDhRiNk">"Claude's New AI Auto-Mode Runs Itself Now"</a> by AI News Today - Julian Goldie Podcast" to plug <a target="_blank" href="https://www.skool.com/ai-profit-lab-7462/about">$59/mo AI Profit Boardbroom</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=nLy3YYGJrjQ">"Claude Explained - Chat vs Cowork vs Code" by Oliur Online to plug <a target="_blank" href="https://www.oliur.com/resources">free resources</a> and <a target="_blank" href="https://digitalcreator.club/">$179/yr Digital Creator Club</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY">"Claude Code Just Got 10X Powerful (10 Insane Features)</a> by The AI Growth Lab with Tom to push <a target="_blank" href="https://learnn8nautomation.com/claude-code-challenge">$500 one-time</a> "30 day Challenge"
   * <a target="_blank" href="https://www.youtube.com/watch?v=mpALXah_PBg">"Build & Sell with Claude Code (10+ Hour Course)"</a> by Nate Herk pushing <a target="_blank" href="https://www.skool.com/ai-automation-society-plus/">$99/mo AI Automation Society Plus</a>
   * https://www.youtube.com/watch?v=UPtmKh1vMN8">"CLAUDE CODE ADVANCED: Everything They Don't Teach You"</a> by <a target-"_blank" href="https://nicksaraev.com/">Nick Saraev</a> pushing <a target="_blamk" href="https://www.skool.com/makerschool/about">$184/mo Maker School</a> 2100.
   * <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw">"5 Open Source Repos That Make Claude Code UNSTOPPABLE (March 2026)"</a> by Chase AI <a target="_blank" href="https://www.skool.com/chase-ai/about">$97/mo Chase AI+</a> 837.
      - <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw&t=20s">AutoResearch</a> - https://github.com/karpathy/autoresearch
      - <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw&t=372s">OpenSpace</a> - https://github.com/HKUDS/OpenSpace
      - <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw&t=563s">CLI-Anything</a> - https://github.com/HKUDS/CLI-Anything
      - <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw&t=635s">Claude Peers MCP</a> - https://github.com/louislva/claude-peers-mcp
      - <a target="_blank" href="https://www.youtube.com/watch?v=6SnFH43qPAw&t=772s">Google Workspace CLI</a> - https://github.com/googleworkspace/cli
   <br /><br />

Others when you're through with the above:
   * <a target="_blank" href="https://www.udemy.com/course/claude-code-the-complete-guide/">$15.99 Udemy: "Claude Code – The Complete Guide: Master Claude Code & Modern AI Coding — Real Vibe Coding Projects" (Rating: 3.9 out of 5)

https://www.youtube.com/watch?v=uUGfo8QOsW0&pp=ugUEEgJlbg%3D%3D
Claude Mythos 5: Most Powerful Model Ever! AGI, GLM 5.1, Claude Code Update & Codex Plugins! AI NEWS  


<a name="Hardware"></a>

## Hardware Needed

1. If you need to buy a machine, consider that Mac Mini's have good resale value and value on mid-tier vs. PC server with NVIDIA GPU. Apple does overcharge for memory. The Apple M3 Max has more bandwidth than the newer M4 Pro.
1. Buy two 2+ TB USB drives for backup. One to keep plugged in and another for daily full backups you leave in a faraday bag.

QUESTION: Can a Chromebook (with no large RAM or hard drive) be used?

About Claude Code + VS Code + Local LLM:
   * <a target="_blank" href="https://www.youtube.com/watch?v=GImq1WL9OJQ&pp=ugUHEgVlbi1VUw%3D%3D">by Zero to MVP</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Cyn_Dm05_eU&t=117s">by Alex Ziskind</a>


<a name="Installs"></a>

## Install utilities

1. To enable installation of utility packages on macOS, install the Homebrew package manager for macOS, from any folder:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
   NOTE: It makes use of Ruby that comes with all macOS.


   <a name="ClaudeCodeTemplate"></a>

   ### My Claude Code Template

   PROTIP: Load my templates repo from GitHub, which contains a curated set from other tutorials.

1. In your OS Terminal app, create a "bomonike" folder.
   ```bash
   mkdir -p ~/bomonike
   ```
1. In your OS Terminal app, clone just the main branch:
   ```bash
   git clone https://github.com/bomonike/claude-templates.git --depth 1
   cd claude-templates
   ```

   PROTIP: Use this as your base project when you install Claude.

   <a href="aliases"></a>

   ### aliases.sh
   
   ```
   alias cl='claude --dangerously-skip-permissions'
   alias clc='cl --continue'   # resume last session with the context/history from the previoius session
   # Resume Claude with the context/history from the previoius session but still be able to get back to that point later:
   alias clf='claude --resume --fork session'. 
   ```

   ### Local copy of downloads

   IMPORTANT: Now that hackers are using advanced AI to identify vulnerabilities in warp speed, 
   for recovery and for forensics comparisons,
   we need to be able to <strong>fallback</strong> to a previous version of <strong>each version</strong> 
   of each Python library and brew utility you have ever downloaded. 

   This approach is less work than waiting for others to find issues with specific upgrades.

1. Create a folder to hold the downloads.

1. PROTIP: Get my custom shell script to get <tt>brewin.sh</tt>:
   ```bash
   https://github.com/wilsonmar/mac-setup/blob/main/brewin.sh ???
   ```
   Install it.

   REMEMBER: brewin.sh creates a folder on the root path at <tt>/brewin</tt> 
   to store files (bottles) if a filepath is not specified.

1. For example, if you need to install PostgreSQL database for use locally, instead of the usual;
   ```bash
   brewin.sh postgresql@17
   ```
   use the custom shell script <tt>brewin.sh</tt> :
   ```bash
   brewin.sh postgresql@17
   ```
   brewin.sh would download the file and then save a copy of it.
   
1. POLICY: Add utilities for vulnerability scanning, etc.
   instead of pip install of utilities, have uv add it. But instead of
   ```bash
   uv add bandit safety semgrep dynaconf --frozen  
   ```

1. Install the lateszt NodeJs for Claude to run TypeScript:
   ```bash
   brewin.sh node
   node --version
   nvm install --lts
   ```

1. Optionally, install an alternative to macOS native Terminal app:
   ```bash
   brewin.sh --cask kitty
   open -a kitty
   ```
   PROTIP: 3rd-party Terminal apps Kitt and Ghostly natively support notification events without additional configuration (which iTerm2 does).

1. To freely open apps from any folder, add the two app paths to .bash_profile:
   ```
   /Applications;~/Applications
   ```
   
   ### Python uv vs. pip setup

1. In your repo's <tt>.gitignore</tt> file, specify folders which should not be commited into your team Git repo:
   ```
   .venv
   .pytest_cache
   __pycache__
   ```
   These folder should be created for each <strong>session</strong>.
   .venv contains the specific version of each package desired in a <strong>virtual environment</strong> folder used to hold library files requested by import statements within Python code.

1. So to start fresh with the latest version of libraries, first <strong>remove</strong> versions which may be stale.
   ```
   rm -rf .venv .pytest_cache __pycache__
   ```

1. Many tutorials (include Anthropic's) still use <tt>pip</tt> commands to manage Python libraries, such as:
   ```bash
   <strike>pip install anthropic python-dotenv</strike>
   ```
   However, the "cool", tech-forward wonderkind now use a substitue:<br />
   <tt>uv</tt> which is written in Rust and thus blazing fast.

1. Download uv from https://github.com/wilsonmar/mac-setup/blob/main/uvadd.sh 
   ```bash
   ???
   ```
   REMEMBER: uvadd.sh creates a folder at <tt>/uvadd</tt> to store files if a filepath is not specified.
   If a file already exists, it creates a folder with the filename and a datestamp.

1. Install uv (instead of "python3 -m pip install uv"). On macOS:
   ```bash
   brewin uv
   ```

1. Later, to ensure archival, update uv by running "brewin uv" again rather than the "uv self update" recommended.

1. Create a folder for git clone repositories to be created and download a repo containing sample code:
   ```bash
   git clone https://github.com/wilsonmar/python-samples.git --depth 1
   cd python-samples  ???
   ```

1. Create pyproject.toml & .python-version, pyvenv.cfg and folders bin, include, lib:
   ```bash
   uv init
   ```
   This is done instead of <tt>python -m venv .venv</tt>
   
   The <tt>uv.lock</tt> created with pyproject.toml pins exact dependency versions, including Git dependencies, so everyone gets the same result, which prevents “works on my machine” problems.
   
1. POLICY: In production, install project dependencies exactly as specified in the lockfile, without allowing any changes, with --no-build from source, only from pre-built .whl (wheel) executable binaries.
   ```bash
   uv sync --frozen --no-build 
   ```
   uv create a <tt>uv.lock</tt> file instead of Poetry creating its poetry.lock file.

1. POLICY: Install Python utilities to evaluate Python code:
   ```bash
   uvadd.sh bandit safety semgrep dynaconf
   ```
   The above fails if pyproject.toml and uv.lock are out of sync.


   The steps above only needs to be done <strong>once</strong> on each machine.
 
   The steps below needs to be done at the beginning of every <strong>session</strong>.

   IMPORTANT: A "session" does not mean at the beginning of each work day. A session concludes with <strong>comprehensive tests</strong> and test runs which did not identify any blockers to committing changes.
   So don't wipe out session-related data until you do a commit.

1. Create the uv folder again, activate it, and populate it with the latest import packages:
   ```bash
   uv venv .venv                   # create folder .venv (instead of python -m venv .venv)
   ```
   This creates the .venv folder and within it, folders bin, include, lib, and file pyvenv.cfg.

1. To modify your shell’s environment  (instead of source .venv/bin/activate):
   ```bash
   source .venv/bin/activate       # on macOS & Linux
        # ./scripts/activate       # PowerShell only
        # ./scripts/activate.bat   # Windows CMD only
   ```
   This would change your CLI prompt with a "(venv)" prefix.

1. CAUTION: Upgrade ALL dependencies in the <tt>pyproject.toml</tt> (declared dependency constraints) file to the latest version available publicly (including SHA-256 hashes) by creating a <tt>uv.lock</tt> file (of exact resolved versions):
   ```bash
   <strong>uv lock --upgrade</strong>       # 
   ```
   The desired response is:
   <pre>
   Resolved 180 packages in 3.75s
   </pre>

   If you see a response such as:
   <pre>
   Updated dbus-fast v4.2.6 -> v4.2.7
   </pre>
   Noet that in your notebook of changes and update the pyproject.toml file:
   ```bash
   uv sync --refresh
   ```
1. Download all packages of *.whl (wheel executables) and *.tar.gz specified in the lock file:
   ```bash
   PYTHON_PKG_MIRROR_FILEPATH="~/mirror/python"
   mkdir -p "$PYTHON_PKG_MIRROR_FILEPATH"
   # Create a n inventory of python packages, with hashes for each package:
   uv export --format requirements-txt > requirements.lock.txt
   uv pip download -r requirements.lock.txt -d "$PYTHON_PKG_MIRROR_FILEPATH"
   uv sync --offline
   ```
   Example response:
   <pre>
   Resolved 180 packages in 24ms
   Checked 165 packages in 38ms
   </pre>
   Confirm:
   ```bash
   ls -al "$PYTHON_PKG_MIRROR_FILEPATH"
   ```

1. Run tests on ALL .py programs to verify that the latest

1. Fallback to previous version if any test fails.

1. To undo what pip's activate CLI command did:
   ```bash
   uv deactivate
   ```
   REMEMBER: , these commands are not needed with uv if this command is used to run python programs:

1. Instead of invoking a program this way:
   ```
   <strike>python whatever.py
   ./whatever.py</strike>
   ```
   Use this command so uv to handle, behind the scenes, the environment setup and interpreter resolution itself.
   ```bash
   uv run whatever.py
   ```
   
   ### Stop uv session

1. REMEMBER: Before removing libraries, if you are running a temporary PostgreSQL instance, avoid corrupting the database by stopping the database using this CLI command before the libraries it depends on go away.
   ```
   brew services stop postgresql@17
   ```

1. AFTER a session, clean up temporary folders which will be created at the next session:
   ```
   rm -rf .venv .pytest_cache __pycache__ uv.lock
   ```

<a name="VSCode"></a>

## IDE Visual Studio Code Install

1. Install Homebrew (which is based on Ruby).
1. Install VSCode and start it:
   ```bash
   brewin.sh --cask visual-studio-code
   code
   ```
1. Click the Extensions and enter "Claude Code" in the Marketplace
   <img alt="claude-vscode-install.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774686736/claude-vscode-install_dhapdt.png" />
1. Click "Install" to the one from "Anthropic" (marked with a blue star).


   <a name="OllamaInstall"></a>

   ### Ollama Install

   To Run LLMs locally on your machine off the cloud, install Ollama (for more privacy). On a Mac Mini:

1. Install Ollama: <a target="_blank" href="https://www.youtube.com/watch?v=WhW3iuUArqI" title="by Ruslan Brilenkov">VIDEO</a>, <a target="_blank" href="https://the-gigi.github.io/gigi-zone/posts/2026/04/cc-deep-dive-16-the-local-showdown/">BLOG</a>: 
   ```bash
   brewin ollama
   ```
   That installs folders that need to be removed to fully uninstall:
   * <tt>~/.ollama</tt> to hold models and configuration. Under that, <tt>~/.ollama/logs</tt> contains logs.
   * "~/Library/Application Support/Ollama"
   * "~/Library/Saved Application State/com.electron.ollama.savedState"
   *  ~/Library/Caches/com.electron.ollama/
   *  ~/Library/Caches/ollama
   *  ~/Library/WebKit/com.electron.ollama
   <br /><br />

1. On a browser, get an Ollama account and API key:
   1. <a target="_blank" href="https://ollama.com">https://ollama.com</a>
   2. Click "Sign in". This creates a client_id in the URL.
   3. Click "Sign Up". Type your email address. Continue.
   4. Create a password using your secrets manager and switch to paste it.
   5. Switch to your email client and copy the code.
   6. Copy the code and switch back to the Ollama.com to paste it.
   7. Click "Sign in". Type your email and click Continue.
   8. Copy your password from your secrets manager and switch to paste it.
   9. At <a target="_blank" href="https://ollama.com/pricing">ollama.com/pricing</a>, notice the "Free" account enables you to "Run models on your hardware" and the paid subscriptions enable you to run their cloud models. 
   9. Click "Add API Key".
   9. Type a key name (using a date such as 261231 for YYMMDD). Click "Generate API key".
   9. Click the copy icon to copy the API key and paste it in your secrets manager.
   9. Optionally, create an add your asymmetric key which starts with "ssh-ed25519 AAA".
   9. At https://ollama.com/settings click "Create API key" to run models on their cloud.
   <br /><br />
1. In your .env file, construct the variable by pasting the password copied from your secret manager:
   ```
   OLLAMA_API_KEY="your_api_key"
   ```

1. Sign into Ollama CLI:
   ```bash
   ollama signin
   ```
1. In the window that opened automatically to <tt>https://signin.ollama.com/...</tt> on your default browser app, type your email and password to sign in to your paid account.

   Setup auth for free use of moonshot.ai's <a target="_blank" href="https://medium.com/@joe.njenga/i-tried-kimi-k2-6-on-claude-code-and-forgot-opus-4-6-exists-5d9ba4c01911">Kimi model downloaded</a> for running on Ollama via <strong>local relay path</strong>.


   ### Ollama model selection

1. At https://ollama.com/search to specify "Tools" and then select a cloud model and copy its model id listed to paste in a variable. For example:
   ```bash
   #MY_MODEL_ID="kimi-k2.5:cloud"
   MY_MODEL_ID="gpt-oss:120b-cloud"
   ollama show "$MY_MODEL_ID"
   ```
   For example, "context length" is 131072
   <pre>
    Model
        architecture        gptoss          
        parameters          116829156672    
        context length      131072          
        embedding length    2880            
        quantization        MXFP4           

    Capabilities
        completion    
        tools         
        thinking   
   </pre>

   Notice that "thinking" is among Capabilities for 
   "kimi-k2.5:cloud" but NOT for<br />
   "kimi-k2:1t-cloud"
   kimi and qwen3.

   <a name="ModelTable"></a>
   
   ### Model Table

   | model ID | context<br />length | embedding<br />length | Quant | VRAM | Capabilities |
   | -------- | ------------------: | --------: | ---- | ---- | ---- |
   | deepseek-v3.1:671b-cloud | 163840 | 7168 | FP8 | ~128 GB | completion, tools, thinking |
   | deepseek-r1:14b | 131072 | 5120 | Q4_K_M | ? | completion, tools, thinking |
   | gpt-oss:20b-cloud | 131072 | 2880 | MXFP4 | ? | completion, tools, thinking |
   | gpt-oss:120b-cloud | 131072 | 2880 | MXFP4 | ? | completion, tools, thinking |
   | kimi-k2.5:cloud | 131072 | 2880 | MXFP4 | ? | completion, tools, thinking |
   | kimi-k2.6:1t-cloud | 262144 | 2048 | INT4 | ? | completion, tools |
   | qwen3-coder:480b-cloud | 262144 | 2048 | FP8 | ? | completion, tools |
   | qwen2.5:14b | 32768 | 5120 | Q4_K_M | 8.8 GB | completion, tools |
   | qwen3.6:27b | 32768 | 5120 | Q4_K_M | 23 GB | completion, tools |

   Qwen3.6 focuses on agentic coding and preserving thinking context for iterative work.
   qwen3.6:27b
   <a target="_blank" href="https://ollama.com/library/qwen3.6:27b">qwen3.6:35b</a> has a 256K context window.

   Available sizes for qwen2.5 on Ollama are: 0.5b, 1.5b, 3b, 7b, 14b, 32b, 72b 

   The "Quant" (Quantization Type) value is the <tt>OLLAMA_KV_CACHE_TYPE="q8_0"</tt> (for 8-bit) in the <a href="#OllamaServe">ollama serve command</a>. It controls the precision of how the KV cache is stored in memory. Using "q8_0" instead of the default "f16" reduces memory pressure. Quantization in AI is a way to make models smaller, faster, and cheaper to run by using lower-precision numbers for weights and activations. It's like rounding numbers to save space.

   All models started with that setting use the same cache type.

   Multiply the two numbers to calculate the <strong>KV cache size</strong><br />
   ≈ embedding_length × context_length × 2 × num_layers × bytes_per_element
   
   Since there are 2 bytes per element for fp16,
   VRAM for deepseek-r1:14b: <br />
   = 131072 × 5120 × 2 × 48 × 2 (fp16)
   ≈ ~128 GB  (full context, fp16)

   AirLLM?

   DEFINITION: The <strong>embedding length</strong> is the size of each vector representing each token internally. It is larger for more complex models. The embedding length needs to match the "dimensions=" spec to define a vector DB used to create RAG pipelines for semantic search.

1. PROTIP: Use a model that has function/tool calling support, e.g.:
   * llama3.1:8b, llama3.2
   * mistral, mistral-nemo
   * qwen2.5:27b (16GB), qwen2.5:14b (8GB), qwen2.5-coder, NOT qwen3.5:27b ?
   <br /><br />
   NOTE: DeepSeek does not have model support.

   <pre>
    GENERAL PURPOSE & CHAT
    qwen2.5:7b     - Best all-rounder, strong reasoning & math
    llama3.2:3b    - Fast, Apple Silicon optimized, great on M-series
    mistral:7b     - Reliable classic, excellent instruction following
    gemma2:9b      - Google's model, very capable, slightly heavier
    glm4             - Strong multilingual & conversation model
    &nbsp;
    CODING
    qwen2.5-coder:7b  - Top tier for code generation & completion
    qwen2.5-coder:3b  - Lighter coding model for faster iteration
    codestral:latest  - Fast Mamba-based architecture, great for coding
    neural-chat:latest - Open weights, solid alternative for dev tasks
    &nbsp;
    VISION & MULTIMODAL
    llava:7b          - Image analysis & OCR
    bakllava          - Multimodal chat with image support
    qwen2:7b          - Supports vision prompts when needed
    &nbsp;
    SMALL / FAST / EDGE (Low RAM/VRAM)
    phi3:mini      - Tiny but surprisingly competent
    gemma:2b       - Very fast, lightweight, runs on almost anything
    qwen2:1.5b     - Extremely fast, good for quick local scripting
    </pre>

1. PROTIP: The most conveient approach is to start Ollama and AI client from within Warp:
   ```bash
   ollama launch hermes --model qwen3.6
   ```
   (Instead of hermes, it can be claude or 
   <pre>
   ┌─────────────────────────────────────────────────────────┐
   │             ⚕ Hermes Agent Installer                    │
   ├─────────────────────────────────────────────────────────┤
   │  An open source AI agent by Nous Research.              │
   └─────────────────────────────────────────────────────────┘
   &nbsp;
   ✓ Detected: macos (macos)
   → Checking for uv package manager...
   ✓ uv found (uv 0.11.8 (0e961dd9a 2026-04-27 aarch64-apple-darwin))
   → Checking Python 3.11...
   ✓ Python found: Python 3.11.14
   → Checking Git...
   ✓ Git 2.52.0 found
   → Checking Node.js (for browser tools)...
   ✓ Node.js v20.19.4 found
   → Checking internet connectivity for package install and web tools...
   ✓ Internet connectivity looks good
   → Checking ripgrep (fast file search)...
   ✓ ripgrep 15.1.0 found
   → Checking ffmpeg (TTS voice messages)...
   ✓ ffmpeg  found
   → Installing to /Users/johndoe/.hermes/hermes-agent...
   → Trying SSH clone...
   ✓ Cloned via SSH
   ✓ Repository ready
   → Creating virtual environment with Python 3.11...
   Using CPython 3.11.14 interpreter at: /opt/homebrew/opt/python@3.11/bin/python3.11
   Creating virtual environment at: venv
   Activate with: source venv/bin/activate
   ✓ Virtual environment ready (Python 3.11)
   → Installing dependencies...
   ✓ Main package installed
   ✓ All dependencies installed
   → Installing Node.js dependencies (browser tools)...
   &nbsp;
   ✓ Skills synced to ~/.hermes/skills/
   → Skipping setup wizard (--skip-setup)
   &nbsp;
   ┌─────────────────────────────────────────────────────────┐
   │              ✓ Installation Complete!                   │
   └─────────────────────────────────────────────────────────┘
   &nbsp;
   📁 Your files:
   &nbsp;
      Config:    /Users/johndoe/.hermes/config.yaml
      API Keys:  /Users/johndoe/.hermes/.env
      Data:      /Users/johndoe/.hermes/cron/, sessions/, logs/
      Code:      /Users/johndoe/.hermes/hermes-agent
   &nbsp;
   ─────────────────────────────────────────────────────────
   &nbsp;
   🚀 Commands:
   &nbsp;
      hermes              Start chatting
      hermes setup        Configure API keys & settings
      hermes config       View/edit configuration
      hermes config edit  Open config in editor
      hermes gateway install Install gateway service (messaging + cron)
      hermes update       Update to latest version
   &nbsp;
   ─────────────────────────────────────────────────────────
   &nbsp;
   ⚡ Reload your shell to use 'hermes' command:
   &nbsp;
      source ~/.bashrc
   &nbsp;
   Hermes installed successfully
   &nbsp;
   This will modify your Hermes Agent configuration:
   /Users/johndoe/.hermes/config.yaml
   Backups will be saved to /var/folders/yr/24xp4b991rjg8qytrrnj4tkh0000gn/T/ollama-backups/
   &nbsp;
   Hermes can message you on Telegram, Discord, Slack, and more.
   Connect a messaging app now?  
      (○) 📱 Telegram  (not configured)
      (○) 💬 Discord  (not configured)
      (○) 💼 Slack  (not configured)
      (○) 🔐 Matrix  (not configured)
      (○) 💬 Mattermost  (not configured)
      (○) 📲 WhatsApp  (not configured)
      (○) 📡 Signal  (not configured)
      (○) 📧 Email  (not configured)
      (○) 📱 SMS (Twilio)  (not configured)
      (○) 💬 DingTalk  (not configured)
      (○) 🪽 Feishu / Lark  (not configured)
      (○) 💬 WeCom (Enterprise WeChat)  (not configured)
      (○) 💬 WeCom Callback (Self-Built App)  (not configured)
      (○) 💬 Weixin / WeChat  (not configured)
      (○) 💬 BlueBubbles (iMessage)  (not configured)
      (○) 🐧 QQ Bot  (not configured)
      (○) 💎 Yuanbao  (not configured)
      (○) 💬 Google Chat  (not configured)
      (○) 💬 IRC  (not configured)
      (○) 💚 LINE  (not configured)
      (○) 💼 Microsoft Teams  (not configured)
      </pre>

   The Hermes Agent landing screen should now appear.

     ⚕ qwen3.6 │ 4.1K/262.1K │ [░░░░░░░░░░] 2% │ 55m │ ⏲ 52m 45s 


Alternately:

1. Calculate OLLAMA_CONTEXT_LENGTH:

   DEFINITION: <a target="_blank" href="https://docs.ollama.com/context-length#context-length">DOCS</a>: The OLLAMA_CONTEXT_LENGTH specification is the context window size (in tokens) of how much text the model can "see" at once during inference:

   | Use Case | Range |
   | -------- | ----- |
   | Default if unset | 2048 |
   | Chat / Q&A | 2048 – 4096|
   | Document summarization | 8192 – 32768 |
   | Long-form coding/analysis | 16384 – 65536 |

1. PROTIP: Pull the model down to your machine on a poor network connection:
   ```bash
   MY_MODEL_ID="qwen2.5:14b"
   ollama pull "$MY_MODEL_ID"        # download
   until ollama pull "$MY_MODEL_ID"; do
      echo "Retrying in 5 seconds..."
      sleep 5
   done
   ```
   Several hashes are pulled.
   <pre>
   pulling manifest 
   pulling f5ee307a2982: 100% ▕███████████████████████████████████████████████████████████████▏  23 GB                         
   pulling 5f3a3c817e78: 100% ▕███████████████████████████████████████████████████████████████▏  11 KB                         
   pulling 86eff881e8d2: 100% ▕███████████████████████████████████████████████████████████████▏   94 B                         
   pulling 5d1c86a949f7: 100% ▕███████████████████████████████████████████████████████████████▏  462 B                         
   verifying sha256 digest 
   writing manifest 
   success 
   </pre>

1. REMEMBER: Files are pulled down onto your local machine as file framents such as 
   ```
   sha256-eabc98a9bcbfce7fd70f3e07de599f8fda98120fefed5881934161ede8bd1a41-partial-19
   ```
   in folders, in this sequence:
   ```bash
   du -sh ~/.ollama/models/blobs/       # actual model weights (large files)
   du -sh ~/.ollama/models/manifests/   # metadata about each model
   ```
   Blobs are downloaded, then manifest files are downloaded.
   <pre>
   1.4G	/Users/johndoe/.ollama/models/blobs/
   </pre>
   When all fragments are downloaded, they are combined into a single file 


   <a name="OllamaServe"></a>
   
   ### Start Ollama

1. To run Ollama in the <strong>foreground</strong>, start the service using the memory specification from the <a href="#ModelTable">Model Table above</a>:
   ```bash
   OLLAMA_CONTEXT_LENGTH=64000 OLLAMA_FLASH_ATTENTION="1" OLLAMA_KV_CACHE_TYPE="q8_0" /opt/homebrew/opt/ollama/bin/ollama serve
   ```

   Alternately, to have ollama start/restart on every login always running in the <strong>background</strong> (taking up RAM):
   ```bash
   brew services start ollama
   ```

1. While running, identify the CONTEXT memory being used:
   ```bash
   ollama ps
   ```
   For example:
   <pre>
    NAME             ID              SIZE      PROCESSOR    CONTEXT    UNTIL
    gemma3:latest    a2af6cc3eb7f    6.6 GB    100% GPU     65536      2 minutes from now
   </pre>

1. To stop Ollma running:
   ```bash
   osascript -e 'tell app "Ollama" to quit'
   ```


   ### Anthropic API Key .env

1. To tell Claude to use Ollama locally instead: <a target="_blank" href="https://www.youtube.com/watch?v=Cyn_Dm05_eU&t=1m44s" title="by Alex Ziskind">VIDEO</a>:
   ```bash
   export ANTHROPIC_API_KEY=""
   export ANTHROPIC_BASE_URL=http://localhost:11434
   export ANTHROPIC_AUTH_TOKEN=ollama
   ```

1. Signup for a Voyage API key (based on <a target="_blank" href="https://docs.pinecone.io/integrations/voyage">Pinecode docs</a> at:
   
   <a target="_blank" href="https://dash.voyageai.com/">https://dash.voyageai.com</a>

1. In your .env file, construct the variable by pasting the key copied from your secret manager:
   ```
   VOYAGE_API_KEY="???"
   ```
   voyage-embeddings.py - Generate embeddings from file content using Voyage AI API.

   <a name="ClaudeDesktopInstall"></a>

   ### Claude Desktop app Install

1. Install pre-requisite utilties NodeJs:
   ```bash
   brewin node
   winget install OpenJS.NodeJS.LTS   # on Windows
   ```
   ```bash
   node --version
   ```
   <pre>
   v20.18.0
   </pre>

1. Click "Download desktop app" (claude.dmg to install on macOS) <a target="_blank" href="https://claude.ai/login">https://claude.ai</a> or <a target="_blank" href="https://claude.com/download">https://claude.com/download</a>,<br />open your Terminal app and run:
   ```dash
   curl -fsSL https://claude.ai/install.sh | bash
   ```

   PROTIP: We do not recommend "brew install --cask claude-code" because it can be out of date, even though it's more convenient since Homebrew installs to <tt>/opt/homebrew/bin</tt> for all apps.


   ### Prior Claude versions

   PROTIP: Since Claude is closed-source, click a prior version installer at 3rd-party website:<br />
   <a target="_blank" href="https://claude.en.uptodown.com/mac/versions">https://claude.en.uptodown.com/mac/versions</a>
   1. Click "INSTALL WITH BREW" to put into your Downloads folder file such s "claude-1-1-4088.zip".<br />
   1. In the Finder app, unzip it to create Claude.app. 
   1. Drag and drop it in your <tt>~/Applications</tt> folder.
   1. Double-click to open Claude.app. Click "Open" in the pop-up.
   1. <a href="#StartClaude">Open Claude</a>
   1. In Claude.app, click the Claude menu item and "Check for updates".
   <br /><br />
1. Edit your .bash_profile or newer <tt>~/.bashrc</tt> or .zshrc file to ensure that the program will be first in the OS $PATH folder by adding this at the bottom of the file:
   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
   ```

1. See start-up messages:
   ```bash
   claude --debug
   ```
   Review and delete the file generated for each run, such as:
   <pre>
   Logging to: ~/.claude/debug/1234567-1234-1234-1234-123456789.txt
   </pre>

1. Confirm installation location: 
   ```bash
   whereis claude
   ```
   Claude was not installed if you see: <tt>bash: claude:: command not found</tt>
   Otherwise you should see this (where ~ is replaced with /Users/<em>your machine username</em>/):
   <pre>
   claude: ~/.local/bin/claude
   </pre>
   If you used brew install (brewin.sh ) on an Apple Silicon machine:
   <pre>
   claude: /opt/homebrew/bin/claude
   </pre>
   Note: "claude" at the end of the path is the executable file.


   <a name="Uninstall"></a>

   ### Uninstall

   To use Claude's built‑in uninstaller:
   ```bash
   claude uninstall
   ```
   <pre>
   The file ~/.claude/uninstall does not exist. ???
   </pre>

   

1. To prevent auto-update, to ~/.zshrc or ~/.bash_profile add:
   ```bash
   export DISABLE_AUTOUPDATER=1
   ```
   To enable auto-update, the original default:
   ```bash
   export DISABLE_AUTOUPDATER=0
   ```

   Confirm status with CLI command:
   ```
   claude config get -g autoUpdates
   ```


<a name="UsingClaude"></a>

## Using Claude

1. Open the claude app: 
   Alternately, more simply since the path is within $PATH:
   ```bash
   claude
   ```
   Alternately: To begin Claude with the context/history from the previoius session:
   ```bash
   claude --resume
   ```
   Alternately, to begin Claude with the context/history from the previoius session but still be able to get back to that point later:
   ```bash
   claude --resume --fork session
   ```
   Remember that <a href="#aliases">aliases</a> were setup.
   ```bash
   crf
   ```

   REMEMBER: At the user root folder there is a <tt>.claude.json</tt> file containing settings for <a target="_blank" href="https://docs.growthbook.io/">GrowthBook.io</a>, a popular open-source platform for feature flagging and experimentation. named "tengu".

1. Expand your Terminal window (drag a side wider or press command+shift+minus) before listing parameters: 
   ```bash
   claude -?
   ```
   <pre>
   Usage: open [-e] [-t] [-f] [-W] [-R] [-n] [-g] [-h] [-s <partial SDK name>][-b <bundle identifier>] [-a <application>] [-u URL] [filenames] [--args arguments]
   Help: Open opens files from a shell.
         By default, opens each file using the default application for that file.  
         If the file is in the form of a URL, the file will be opened as a URL.
   Options: 
         -a                    Opens with the specified application.
         --arch ARCH           Open with the given cpu architecture type and subtype.
         -b                    Opens with the specified application bundle identifier.
         -e                    Opens with TextEdit.
         -t                    Opens with default text editor.
         -f                    Reads input from standard input and opens with TextEdit.
         -F  --fresh           Launches the app fresh, that is, without restoring windows. Saved persistent state is lost, excluding Untitled documents.
         -R, --reveal          Selects in the Finder instead of opening.
         -W, --wait-apps       Blocks until the used applications are closed (even if they were already running).
            --args            All remaining arguments are passed in argv to the application's main() function instead of opened.
         -n, --new             Open a new instance of the application even if one is already running.
         -j, --hide            Launches the app hidden.
         -g, --background      Does not bring the application to the foreground.
         -h, --header          Searches header file locations for headers matching the given filenames, and opens them.
         -s                    For -h, the SDK to use; if supplied, only SDKs whose names contain the argument value are searched.
                              Otherwise the highest versioned SDK in each platform is used.
         -u, --url URL         Open this URL, even if it matches exactly a filepath
         -i, --stdin  PATH     Launches the application with stdin connected to PATH; defaults to /dev/null
         -o, --stdout PATH     Launches the application with /dev/stdout connected to PATH; 
            --stderr PATH     Launches the application with /dev/stderr connected to PATH to
            --env    VAR      Add an enviroment variable to the launched process, where VAR is formatted AAA=foo or just AAA for a null string value.
   </pre>

1. Confirm installation success: 
   ```bash
   claude --version
   ```
   This should reflect the latest release at <a target="_blank" href="https://github.com/anthropics/claude-code/releases">https://github.com/anthropics/claude-code/release</a> which was, at time of this writing:
   <pre>
   2.1.86 (Claude Code)
   </pre>

   PROTIP: Notice that Claude is updated daily. So end your day with a backup and start your day with an update.


   <a name="StartOllama"></a>

   ### Start Ollama

   REMEMBER: You can specify what model (LLM) to use when you start Claude. 

1. PROTIP: In a CLI, define your model id variable such as:
   ```
   MY_MODEL_ID="deepseek-v4-pro:cloud"
   ```
   CAUTION: Do not insert spaces to the left/right of "=" such CLI commands.

   Using a variable enables you to copy commands below and switch tot he CLI to paste them (with command+V):

* Chat with the model like Google & ChatGPT Question & Answer:
   ```bash
   ollama run "$MY_MODEL_ID"
   ``` 
* To use DeepSeek-V4-Pro with Claude Code, run:
   ```bash
   ollama launch claude --model "$MY_MODEL_ID"
   ```
* For use with OpenClaw:
   ```bash
   ollama launch openclaw --model "$MY_MODEL_ID"
   ```
* For use with Hermes Agent:
   ```bash
   ollama launch hermes --model "$MY_MODEL_ID"
   ```
  
   <a name="Auth"></a>

   ### /login = First-time Authentication

1. The first time that Claude runs:

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1774399725/claude-code-start_lbx13m.png"><img width="350" alt="claude-code-start.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774399725/claude-code-start_lbx13m.png" /></a>
   
   ???

1. Continue to browser.
1. Claude Code would like to connect to your Claude chat account
1. Click "Authorize".
1. Press command+W to close the browser window.
1. Click "Copy Code". Press command+tab to switch to VSCode. 
1. Click on the entry until the orange border appears.
1. Press command+V to paste. Click "Authorize".

   PROTIP: Press shift+command and - or + to make fonts larger or smaller. But that adjusts for all panes. So many prefer to view Claude Code standalone rather than within VSCode.

   PROTIP: Ideally, use three monitor screens: Terminal for Claude Code, Visual Studio (vertical view), Tutorial screen.
 
 1. Check Authentication status:
   ```bash
   claude auth status
   ```
1. To disable Authentication:
   ```bash
   claude auth logout
   ```
   REMEMBER: Logout auth before setting up auth for 3rd-party clouds (Amazon, GCP, Microsoft, etc.)

   From Google VertexAI after installing gcloud cli:
   ```bash
   export ANTHROPIC_???_API_KEY="..."
   export CLAUDE_CODE_USE_???=1
   ```

   From Micrsoft Foundry Project API Key:
   ```bash
   export ANTHROPIC_FOUNDRY_API_KEY="..."
   export CLAUDE_CODE_USE_FOUNDRY=1
   ```

1. If Claude <a target="_blank" href="https://github.com/anthropics/claude-code/issues/28353">opens with a blank screen</a>,

   <a name="CostCompare"></a>

   ### Model Cost Comparison

1. Consider the model to use:
   ```
   MY_MODEL="kimi-k2.5:cloud"
   ollama pull "$MY_MODEL"  # on Claude's cloud (AWS)
   OLLAMA_CONTEXT_LENGTH=64000 ollama serve
   claude --model "$MY_MODEL"
   ```
   CAUTION: "cloud" in the model ID means access in the cloud and loss of privacy.

   The model features a 1T-parameter Mixture-of-Experts (MoE) Transformer architecture with 32B activated parameters.
   It supports image, video, PDF, and text inputs up to 256K tokens and excels in benchmarks like MMMU-Pro (78.5), SWE-Bench Verified (76.8), and AIME 2025 (96.1). 
   Trained on approximately 15 trillion mixed visual and text tokens, it enables native multimodality, cross-modal reasoning, and efficient tool use grounded in visual data.

   Using a free model means that you can use automatic <strong>/loop</strong> to iterate through many results, then select the best, like a Monte Carlo simulation.

   <a target="_blank" href="https://www.youtube.com/watch?v=UV1WDNe4J5w&t=5m35s">VIDEO</a>:
   * Using the "DeepSeek V4 Flash (high)" (from China) yields 75% of performance at 1% of the cost.
   * Using the "DeepSeek V4 Pro" is the best price/performance
   <br /><br />

   WARNING: <a target="_blank" href="https://medium.com/towards-artificial-intelligence/ive-been-recommending-deepseek-kimi-for-months-then-anthropic-published-this-40e95dc8cd1b">models from China (Kimi, DeepSeek, etc.) was created (stolen) by (adversarial) distillation of Anthropic's models</a>. Michael Kratsios @mkratsios47

1. The LM Studio GUI using the MLX backend can produce 20 to 30 percent faster generation for the same model on the same hardware. 
   <a target="_blank" href="https://www.youtube.com/watch?v=Cyn_Dm05_eU&t=1m44s" title="by Alex Ziskind">VIDEO</a>: Instead of "Download" at<br />
   <a target="_blank" href="https://lmstudio.ai/blog/claudecode/">https://lmstudio.ai/blog/claudecode</a>
   ```bash
   brewin --cask lm-studio
   ```




<a name="StartClaude"></a>

### Start Claude

1. <img align="right" alt="claude-enable-devmode.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1778929267/claude-enable-devmode_baa3f3.png"></a>To set Claude to use alternative models other than Anthropic's own, when Claude prompt appears, click the Help top menu, then "Enable Developer Mode".

1. Select model???


<a name="ClaudeDesktopUI"></a>

## Claude Desktop Key Shortcuts

PROTIP: Instead of moving your mouse and clicking the icons, it's faster to hold down the command key and press the key indicated.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1777224351/claude-menus-keys_bl5oxm.png"><img alt="claude-menus-keys.png from pptx" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1777224351/claude-menus-keys_bl5oxm.png" /></a>

QUESTION: How to get shortcut keys for other menu items?


<a name="SlashCommands"></a>

## / slash commands

1. Type just the / slash character for a menu:
   <pre>
   /init
   /batch    # orchestrates large-scale changes across your entire codebase — decomposing work into 5 to 30 independent units, presenting a plan for approval, then spawning one background agent per unit in an isolated git worktree. 

   /claude-api  # loads Claude API reference material for your project's language. These are like bundled skills but built-in.
   /compact     # summarize the conversation and replace the current context with that summary. Saves space.
   /context     # <a href="#TokenContext">token usage by each system component</a>
   /debug   # Shows config loading details and full context composition.
   /extra-usage
   /heapdump
   /loop
   /pr-comments
   /release-notes
   /review
   /security-review
   /simplify
   /update-config
   /schedule
   </pre>

   Others:
   <pre>
   /help       # menu below:
   /connect    # establish connection
   /start      # Begin a new session
   /terminal-setup  # ???

   /memory     # 
   <a href="#statusline">/statusline</a> # below the prompt defined in customizable ~/.claude/statusline.sh
   /settings   # menu

   /clear      # (aka /reset) is faster than exiting and starting Claude Code again.

   /search     # through the database
   /upload     # files
   exit        # from Claude UI/CLI program

   <strike><a href="#Cost">/cost</a></strike>     # Now at tokens spent in <a href="#Usage">/usage</a>
   <strike><a href="#Usage">/stats</a></strike>     # Now at tokens spent in <a href="#Usage">/usage</a>

   <a href="#status">/status</a>     # overview of your current Claude Code setup
   <a href="#config">/config</a>     # configuration
   <a href="#loop">/loop</a>
   <a href="#doctor">/doctor</a>

   <a target="_blank" href="https://www.perplexity.ai/page/claude-code-adds-cloud-based-b-LmtJQA7lRFuuG2Dr2sutTw">/ultrareview</a> launches reviewer agents in a remote sandbox to analyze a developer's branch or pull request, independently reproducing and verifying each finding to focus on real bugs rather than style suggestions. 
   </pre>

   <a name="help"></a>
   
   ### /help for Shortcuts 

   <a target="_blank" href="https://code.claude.com/docs/en/overview/"><img width="350" alt="claude-code-help.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774687133/claude-code-help_bjkq9f.png" /></a>

   REMEMBER: Just as within Jupyter Notebook, run shell commands prefixed with the ! modifier. For example, ! pwd will run the pwd command and insert the output right into the conversation.

   ### /model switch

   <pre>
   /model default   # to switch to the sonnet model
   /model haiku     # to switch to using the latest Haiku model.
   /model sonnet (1M context)  # to switch to using the latest Opus model.
   /model opus (1M context)    # to switch to using the latest Opus model.
   /model mythos               # new Capybarra March 28, 2026 to Cyber Defenders.
   /fast                       # to speed up Opus model execution.
   </pre>


## Periodic 

PROTIP: A great first project to really leverage the capabilities of Claude is an action management system that integrates task lists, calendars, metrics, dashboards -- as if you're managing a production process for money (because you actually are). Such an approach create mechanisms:

* Signon (Morning) "news since yesterday", priorities for today
* Signoff (Evening) cleanup, backups
* Weekly Dashboard review
* Monthly process (<a href="#insights">/insights</a>)
* Quarterly (like filing tax)
* Annual (like doing taxes)
<br /><br />

<a href="#insights">/insights</a>
### /insights

<a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=27s">/insights</a>
create @file://$HOME/.claude/usage-data/report.html from 

   <pre>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=3m42s">/effort</a>   # previously "think harder" Effort Level Control <>a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&t=18618s">max for Opus only. high, medium, low, auto.
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=5m20s">/remote-control   # </a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=6m31s">/batch   # Batch Tasks & PRs </a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=9m3s">/simplify   # Code Review</a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=11m42s">/loop   # Schedule Prompts</a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=14m31s">/btw   # side question</a>
   </pre>
   
   ### 5-hour window

   REMEMBER: Each session is a 5-hour rolling window (at time of this writing). ???

   Models reset ???




<a name="HowClaudeWorks"></a>

## How Claude Code Works

Anthropic has issued dozens of take-down requests to "claw back" its leak. 
But https://github.com/oboard/claude-code-rev has restored some functionality using the bun JavaScript package manager and testing utility. bun replaces Node + npm + ts-node + jest + esbuild with a single binary.

<a target="_blank" href="https://deep-dive-claude-code.vercel.app">The "Deep Dive Claude Code app"</a> presents its analysis of the leak's 960+ files, 50+ integrated tools, 380K+ lines of code.
These 13 chapters take you from the core loop to the full engineering picture, layer by layer.
<a target="_blank" href="https://www.reddit.com/r/LocalLLaMA/comments/1s8xj2e/claude_codes_source_just_leaked_i_extracted_its/">r/LocalLaMA</a> reimplemented https://github.com/JackChen-me/open-multi-agent

REMEMBER: The revolution Claude (and other GenAI products) is that instead of typing precise programming code, you type English sentences to describe how Claude generates programming code, in markdown format files (with “.md” at the end of file names).

Press # (for "memory mode") instructions for Claude Code to update <a href="#CLAUDE.md">CLAUDE.md files</a> which define your preferences.

Press <strong>Shift + Tab</strong> to toggle from "Standard" to "<strong>Planning Mode</strong>" where Claude expands its <strong>planning</strong> of changes to md files it will make based on your specification.
Claude Code offers three planning tiers:
   * Simple Plan handles short tasks in a single file. 
   * Visual Plan maps out multi-file changes where structure matters. 
   * Deep Plan handles multi-service changes and risk-bearing refactors. Deep Plan uses subagents for risk assessment and architecture review. The planning subagent is read-only by design. It is explicitly denied write and edit permissions. It cannot accidentally mutate your codebase while it maps the dependencies.
   <br /><br />
   https://medium.com/data-science-collective/i-spent-6-months-tuning-claude-code-heres-the-exact-setup-that-finally-worked-b41c67628478

Type <strong>ULTRATHINK</strong> ahead of requests to use a Claude "<strong>Thinking</strong> mode" which applies the maximum <strong>depth</strong> of <strong>reasoning</strong> at planning.
This invokes Claude to break down complex problems step by step.

WARNING: Additional planning and thinking require additional tokens to be charged.

REMEMBER: Press the Esc key to interrrupt Claude.

Within prompts, type @ to begin specifying a file's path pointing to contents to retrieve in your request to Claude.


### Screen shot in a prompt

To take a screen shot on macOS, press the usual command + Shift + 4 which changes the cursor to crosshairs. Position it on the screen and press your mouse to drag and drop to the opposite corner of the box to capture the section to your computer's invisible clipboard. Click the Claude input field and press control + V to paste. "[Image #1]" would appear to confirm. To the right of that, type a sentence to specify what you want done based on that image.


<a name="CustomSlash"></a>

## Custom Slash Commands

1. <a target="_blank" href="https://www.coursera.org/learn/claude-code-in-action/lecture/b36jN/custom-commands">VIDEO</a>: Create a commands folder to hold all custom commands:
   ```bash
   md -p ~/.claude/commands
   ```

1. <a target="_blank" href="https://anthropic.skilljar.com/claude-code-in-action/303234">VIDEO</a>: In that folder, create a markdown file for each custom command, such as "audit.md" containing:
   <pre>
   Your goal is to update any vulnerable dependencies for $ARGUMENTS
   Do the following:
   1. Run `npm audit` to find vulnerable installed packages in this project.
   2. Run `npm audit fix` to apply updates.
   3. Run tests and verify the updates didn't break anything.
   </pre>

1. Restart Claude.
1. Type command <tt>/audit</tt>, which is the same name as the markdown file name.

1. <a target="_blank" href="https://www.youtube.com/watch?v=4bfKyZ7hbsU">VIDEO</a>: View Addy Osamni's Agent Skills at

   <a target="_blank" href="https://github.com/addyosmani/agent-skills">github.com/addyosmani/agent-skills</a>
   
   REMEMBER: The essence of the <strong>revolution that is AI</strong> is this diagram.
   To make full use of GanAI tools, instead of Q&A style prompting to generate code (then making changes later), 
   separate your work into <strong>several stages of a development lifecycle</strong>:

   <pre>
   DEFINE        PLAN          BUILD         VERIFY        REVIEW        SHIP
   ┌──────┐      ┌──────┐      ┌──────┐      ┌──────┐      ┌──────┐      ┌──────┐
   │ Idea │ ───▶ │ Spec │ ───▶ │ Code │ ───▶ │ Test │ ───▶ │  QA  │ ───▶ │  Go  │
   │Refine│      │  PRD │      │ Impl │      │Debug │      │ Gate │      │ Live │
   └──────┘      └──────┘      └──────┘      └──────┘      └──────┘      └──────┘
   /spec         /plan         /build        /test         /review       /ship
   </pre>

   Use the custom slash command at the bottom of the box for each stage.

   <strong>/build</strong> has AI generate/implement all the code.

   People collaborate by revising .md files that are consolidated into a <strong>"PRD" (Product Requirements Document)</strong> a short document that defines a "high level" description of what a product should do, why it exists, and what “done” looks like. It keeps product, design, engineering, and stakeholders aligned on the same goal. 

   AI generation can be repeated with slight variations so the AI has additional opportunities to get it right, based on the PRD specification. 

   The sample skills github is by Google cloud leader Addy Osmani, who has examples for several clients:
   * Claude Code (recommended)
   * Cursor
   * Gemini CLI
   * Windsurf
   * OpenCode
   * GitHub Copilot
   * AWS Kiro IDE & CLI <a target="_blank" href="https://thenewstack.io/kiro-is-awss-specs-centric-answer-to-windsurf-and-cursor/">*</a>
   * Codex / Other Agents
   <br /><br />

The 20 skills in the repo include a "/code-simplify" step for more clarity over cleverness.

What's really special are Pre-configured specialist personas for targeted reviews by
the "security-auditor" persona.

Each skill file contains:
   * Overview         → What this skill does
   * When to Use      → Triggering conditions
   * Process          → Step-by-step workflow
   * Rationalizations → Excuses + rebuttals
   * Red Flags        → Signs something's wrong
   * Verification     → Evidence requirements
   <br /><br />

Addy advises "Skills should be specific (actionable steps, not vague advice), verifiable (clear exit criteria with evidence requirements), battle-tested (based on real workflows), and minimal (only what's needed to guide the agent)."



<a name="ClaudeFiles"></a>

## Claude Folders and Files

REMEMBER: Two folders are created:

   * <a href="#Userclaudefolder"><tt>~/.claude</tt>
   * <a href="#.claude"><tt>.claude</tt></a> contains files
   <br /><br />

<a name=".claude"></a>

### Root .claude folder

1. Navigate to <tt>.claude</tt> at the root (above User folders), where Claude keeps its internal folders and files:
   * backups
   * cache
   * downloads
   * file-history
   * histor.jsonl file
   * ide
   * session-env file
   * sessions
   * shell-snapshots
   * telemetry
   <br /><br />

   <a name="Userclaudefolder"></a>

   ### User ~/.claude folder
   
1. Navigate to <tt>~/.claude</tt> = <tt>$HOME/.claude</tt> = <tt>/Users/<em>username</em>/.claude</tt>

1. Folders copied from my templates:

   * <a href="#Agents">agents folder</a>
   * <a href="#Commands">commands folder</a> (merged with skills folder)
   * <a href="#Hooks">hooks folder</a>
   * <a href="#Rules">rules folder</a>
   * <a href="#Skills">skills folder</a>
   <br /><br />

   <a target="_blank" href="https://github.com/bomonike/claude-templates">My github</a> has 3 different CLAUDE.MD files for each
   * ~/.claude/CLAUDE.md - loaded with all prompts for all projects of the user
   * ~/.claude/projects/<em>project_id</em>/CLAUDE.md - applicable to a specific project (/init)
   <br /><br />

   It's based on these:
   * <a target="_blank" href="https://github.com/forrestchang/andrej-karpathy-skills">A single CLAUDE.md file to improve Claude Code behavior, derived from Andrej Karpathy's observations on LLM coding pitfalls.

   

   <a name="MarkdownFormat"></a>

   ### *.md Markdown YAML files

1. Files copied from my templates:

   REMEMBER: Each .md (Markdown) file begins with <strong>"frontmatter"</strong> between "---" that is not parsed (YAML format).
   ```
   ---
   name: explain-code.md
   description: Explains code with visual diagrams and analogies. Use when
   explaining how code works or when the user asks "how does this work?"
   ---
   ```
   <a target="_blank" href="https://medium.com/towards-artificial-intelligence/claude-code-agent-skills-2-0-from-custom-instructions-to-programmable-agents-ab6e4563c176">Each field</a>:
   
   * name: value should reflect the file name of the file.
   * The description consumes room in context memory because Claude uses the text to decide when to load the file. 
   
      PROTIP: Begin descriptions with an active verb such as "Fetches".

   * argument-hint (No) — Hint shown during autocomplete, e.g., [issue-number].
   * disable-model-invocation (No) — true prevents Claude from auto-loading. Manual /name only.
   * user-invocable (No) — false hides from / menu. Claude-only background knowledge.
   * allowed-tools (No) — Tools Claude can use without asking when skill is active.
   * model (No) — Model override when skill is active.
   * context (No) — fork runs in an isolated subagent context.
   * agent (No) — Subagent type when context: fork. Options: Explore, Plan, general-purpose, or custom.
   * hooks (No) — Hooks scoped to this skill's lifecycle.
   * permissions:
   <br /><br />

   PROTIP: Keep each line below 80 characters so that it's readable on narrow panes.

   Under the frontmatter are markdown content that contains instructions, examples, file references.
   It is loaded only when the skill is triggered.
   

   REMEMBER: Claude Code has no memory. On every new single session, it wakes up with <strong>zero context</strong> about your project.
   So history and preferences must be added added as context.


   <a name="CLAUDE.md"></a>
   
   ### CLAUDE.md file

   <a href="#CLAUDE.md">CLAUDE.md</a> is read to provide context at the start of every session.

1. Begin from Karpathy's 4 lines, <a target="_blank" href="https://levelup.gitconnected.com/the-4-lines-every-claude-md-needs-2717a46866f6">enhanced</a>: 
   
   | Principle             | Problem to Solve                                       | Karpathy's One-Liners in CLAUDE.md                         |
   | --------------------- | ------------------------------------------------------ | ---------------------------------------------------------- |
   | Think Before Coding   | Wrong assumptions, hidden confusion, missing tradeoffs | Don't assume. Don't hide confusion. Surface tradeoffs.     |
   | Simplicity First      | Overcomplication, bloated abstractions                 | Minimum code that solves the problem. Nothing speculative. |
   | Surgical Changes      | Orthogonal edits, touching code you shouldn't          | Touch only what you must. Clean up only your own mess.     |
   | Goal-Driven Execution | Vague plans with no verification                       | Define success criteria. Loop until verified.              |

   <a target="_blank" href="https://levelup.gitconnected.com/how-to-implement-harness-engineering-fe70c558bb7f">Harness Engineering of loops</a>

1. Copy in files from ???

   * CLAUDE.md referenced by
   * state.md — current state of the project
   * architecture.md — how everything fits together
   * terraform-CLAUDE.md
   * python-CLAUDE.md
   * MEMORY.md 
   <br /><br />

1. Integrate from those who shared theirs:
   * https://github.com/anthropics/courses/blob/master/tool_use/README.md from 2024
   * https://github.com/citypaul/.dotfiles/blob/main/claude/.claude/CLAUDE.md
   * https://github.com/jarrodwatts/claude-code-config

   * https://github.com/centminmod/my-claude-code-setup?tab=readme-ov-file#alternate-read-me-guides
   * Git Worktrees (for <a target="_blank" href="https://code.claude.com/docs/en/desktop#work-in-parallel-with-sessions">Parallel Sessions in Claude Code</a> via Claude Desktop apps
   * https://github.com/Piebald-AI/claude-code-system-prompts?tab=readme-ov-file
   * etc. ???
   <br /><br />

   * https://github.com/Piebald-AI/claude-code-system-prompts?tab=readme-ov-file#system-reminders

1. Customize System prompts using https://github.com/Piebald-AI/tweakcc


   <a name="init"></a>

1. Generate a starter CLAUDE.md as a starting point:
   ```bash
   /init
   ```

1. List folders and files as a tree 3 levels down from <tt>~/.claude/</tt>:
   ```bash
   brewin eza
   eza -T -G -L 3 ~/.claude/
   ```
   TODO:
   <pre>
    ├── api
    ├── web
    ├── .editorconfig
    ├── .env.example
    ├── <a href="#.gitignore">.gitignore</a>
    ├── CLAUDE.md
    ├── README.md
    └── docker-compose.yml
   </pre>


1. Edit file CLAUDE.md, the long-term memory file.

   The file guides Claude Code (claude.ai/code) when working with code in this repository.

   REMEMBER: At the start of <strong>each agent session</strong>, Claude looks for a <strong>CLAUDE.MD</strong> file in each GitHub repository root, in parent directories for monorepo setups, or in your home folder for universal application across all projects. So the file must be named with uppercase "CLAUDE", lowercase ".md" (like GitHub looks for "README.md"). Providing this context up front helps agents avoid running incorrect commands or introducing architectural or stylistic inconsistencies when implementing new features.
   
   Each CLAUDE.md file holds markdown-formatted <strong>project-specific context</strong> that should be repeated in every prompt: Project context (basic rules), About this project, Key directories, Standards, structure, conventions, workflows, style, domain-specific terminology. Example:


1. PROTIP: Keep CLAUDE.md files to a maximum of 100–200 lines. Long files are a code smell and take up precious context. CLAUDE.md should be a routing file, not a knowledge dump. 
   
   Point to <tt>.claude/rules/*.md</tt> for detailed specs and <tt>docs/</tt> for architecture. Otherwise it gets so long that Claude skims it and misses the important stuff.

   Delete what you don't need — deleting is easier than creating from scratch.

   * <a target="_blank" href="https://dometrain.com/blog/creating-the-perfect-claudemd-for-claude-code/">"Creating the Perfect CLAUDE.md for Claude Code" by Ivan Kahl January 15, 2026
   * https://medium.com/@CodeCoup/i-wasted-8-minutes-per-change-in-claudes-code-heres-what-fixed-it-4baeeef1c07f
   * https://github.com/ArthurClune/claude-md-examples which is based on:
   * https://github.com/modelcontextprotocol/python-sdk/blob/main/CLAUDE.md
   * https://github.com/p33m5t3r/vibecoding/blob/main/conway/CLAUDE.md
   * https://github.com/saaspegasus/pegasus-docs/blob/main/CLAUDE.md
   * https://github.com/centminmod/my-claude-code-setup
   <br /><br />

* <a target="_blank" href="https://claude.com/product/cowork?open_in_browser=1">Claude CoWork</a> - "Hand off tasks to Claude and come back to finished work." <a target="_blank" href="https://www.youtube.com/watch?v=grh7CMl960s">VIDEO</a>: "Brainstorm in Claude, build in <a href="#CoWork">Cowork</a>"

* <a target="_blank" href="https://claude.com/skills">Claude.com/skills</a> says "turn expertise, procedures, and best practices into reusable capabilities." To ensure output follows proven patterns (rather than guessing) for handling PowerPoint pptx files, <strong>pptx/SKILL.md</strong> is defined. Try this prompt: "Based on my rcent sessions, what tasks am I doing repeatedly that should be skills instead of one-off prompts? For each one, suggest a skill name and what context it would need."



<a name="Settings"></a>

## Settings menu and keyboard shortcuts

1. <a target="_blank" href="https://claude.ai/settings/general"><img align="right" width="200" alt="claude-settings-menu2.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774681383/claude-settings-menu2_cuqvae.png" /></a>Click the Toggle sidebar (squarish) icon to collapse and expand the sidebar menu.

   REMEMBER: The "Usage" Settings menu item does not appear until you have a paid subscription.

1. PROTIP: From anywhere in Claude, press shift+command+, (comma) for Claude's Settings at <a target="_blank" href="https://claude.ai/settings/general">https://claude.ai/settings/general</a>

   But switch off the "AWS Extend Switch Roles" browser extension if that comes up instead.

1. PROTIP: To chat from any screen, switch to a New Chat prompt by pressing <strong>shift+command+O</strong> (the letter) and start typing. For the pop-up, press <strong>command+K</strong> or <strong>shift+command+I</strong> for incognito (for the prompt to not appear among Recents).

   REMEMBER: When your cursor is within the chat box, use these keyboard shortcuts:

   <a target="_blank" href=""><img alt="claude-chat-keys.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774658242/claude-chat-keys_hwanw5.png" /></a>



   <a name="statusline"></a>

   ### /statusline

   By default, there are two lines in the "status line" below the Claude Code prompt:
   ```
   [Sonnet 4.6] | User
   Context .... 0%
   ```

   REMEMBER: To determine what it displays on its Status Line, Claude references JSON file:<br/>
   <tt>~/.claude/statusline.sh</tt>
   which can be changed by Plugins from the Claude Marketplace.

   <a target="_blank" href="https://medium.com/@joe.njenga/i-tested-every-claude-code-statusline-plugin-only-these-5-are-worth-it-c40af8385e4a">Among StatusLine Plugins</a>
   making use of <a target="_blank" href="https://code.claude.com/docs/en/statusline#build-a-status-line-step-by-step">Claude Code’s native statusline API</a>:

1. <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&t=11585s">VIDEO</a>:
   Optionally install <a target="_blank" href="https://github.com/jarrodwatts/claude-hu">jarrodwatts/claude-hud</a> for the HeadsUpDisplay (HUD) plugin to <a target="_blank" href="https://medium.com/@joe.njenga/i-found-this-claude-code-plugin-that-shows-whats-happening-inside-the-engine-d38447d852c7">add up to 4 lines below your input prompt to know</a> if it’s still making progress or is stuck.
   <a target="_blank" href="https://newsletter.claudecodemasterclass.com/">$80/yr Masterclass</a>

   ```
   /plugin marketplace add jarrodwatts/claude-hud
   /plugin install claude-hud
   /reload-plugins   # to activate
   /claude-hud:setup
   /restart Claude Code
   code ~/.claude/plugins/claude-hud/config.json
   ```
   The "add" downloads to folder <tt>~/.claude/plugins/marketplaces/claude-plugins-official</tt>
   
   Claude references <tt>~/.claude/plugins/claude-hud/config.json</tt>

   The Updates every ~300ms.


   <a name="Projects"></a>

   ### Projects

   References:
   * <em>"Upload materials, set custom instructions, and organize conversations in one space."</em>
   * <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&t=5936s&t=3m7s">VIDEO</a>
   <br /><br />

   REMEMBER: Unless you go incognito, every time you run Claude in a directory, a Claude Code Project is created under <tt>~/.claude/projects</tt>. So review and remove.

1. Click the "Project" on the left menu to provide a way for Claude to remember your preferences and <strong>customize</strong> its responses to your preferences. So you don't to repeat yourself.

   PROTIP: If you work with different companies or clients, isolate each by creating a different project containing different information.

1. Click "+ New Project"

   TODO: ???

   <a href="#Pricing">Team/Enterprise subscribers</a> can share a Project among themselves.

   
<a name="Customizations"></a>

## Tengu UI Customizations

"Tengu" is the internal codename for Claude Code CLI. The word is a transliteration of (天狗) who are supernatural beings from Japanese folklore, often depicted as skilled warriors and mischievous spirits known for their cleverness and ability to shape-shift.

When there's no officially config option to customize your Claude Code experience (the team behind cross-platform <a target="_blank" href="https://piebald.ai/">$20/mo Piebald.ai</a>) open-sourced a CLI tool toin <a target="_blank" href="https://github.com/Piebald-AI/tweakcc">tweakcc</a> (system prompts, add custom themes, create toolsets, and UI personalizations).

As Claude "thinks", it distracts you with one of 
<a target="_blank" href="https://news.ycombinator.com/item?id=47484540">200</a> whimsical "spinner" verbs
(Schlepping, Noodling, Smooshing, Reticulating, etc.) 
(<a target="_blank" href="https://github.com/levindixon/tengu_spinner_words/blob/main/README.md">previously thought 90+</a>).


<a name="DesignSystem"></a>

## @DESIGN.md Design System

   * <a target="_blank" href="https://levelup.gitconnected.com/the-9-sections-every-design-md-needs-3a372dd7e7b1" title="by Yanli Liu">On April 21, 2026</a> Google <a target="_blank" href="https://blog.google/innovation-and-ai/models-and-research/google-labs/stitch-design-md/">open-sourced</a> a <a target="_blank" href="https://github.com/google-labs-code/design.md">DESIGN.md</a> file from Stitch, across platforms: "A format specification for describing a visual identity to coding agents. DESIGN.md gives agents a persistent, structured understanding of a design system."
   <br /><br />

In your CLAUDE.md file, <tt>@DESIGN.md</tt> causes Claude to load the <strong>DESIGN.md</strong> file at the start of every session to specify visual standards of your brand.
<pre>
## Design System
This project uses a design system defined in @DESIGN.md.
Follow strictly the rules defined in @DESIGN.md for all UI generation.
Do not invent colors, fonts, or spacing values outside the design system.
Match component states (hover, focus, active, disabled) to patterns in @DESIGN.md.
</pre>

<a target="_blank" href="https://github.com/bomonike/claude-templates/blob/main/DESIGN.md">My DESIGN.md example within my claude-templates repo</a> says it's for "Acme Corp" but was open-sourced based on <a target="_blank" href="https://medium.com/autocomplete-real-world-ai/design-md-the-complete-guide-ac8c5cd0d14d">Google Labs'</a> 
Stitch <a target="_blank" href="https://wilsonmar.github.io/design-system">Design System</a> and AI tool.

The <a target="_blank" href="https://github.com/VoltAgent/awesome-design-md">VoltAgent/awesome-design-md</a> repo contains 69+ ready-to-use DESIGN.md files with HTML previews (light and dark mode).

DESIGN.md combines technical tokens (exact values agents parse) with 
qualitative rationale (context agents use for judgment) in a single file that every major AI coding tool can read. 

Between <tt>---</tt> fencing YAML front matter are the machine-readable: specs of exact colors as hex codes, typography as font families and sizes, spacing as pixel values, components as token references.

In the body, ## sections explain design philosophy, when to use which tokens, and what to avoid.

   * Overview (alias: “Brand & Style”): holistic product description, brand personality, emotional tone
   * Colors: palettes with semantic roles and usage guidelines
   * Typography: type scale, font pairings, hierarchy rules
   * Layout (alias: “Layout & Spacing”): grid models, spacing strategy, responsive behavior
   * Elevation & Depth (alias: “Elevation”): shadow and depth techniques
   * Shapes: border radius, corner treatments, decorative geometry
   * Components: style guidance for UI atoms (buttons, cards, inputs, navigation)
   * Do’s and Don’ts: guardrails and common pitfalls
   <br /><br />

From here, reference the design system in your prompts: “Build a primary button component using the design system in DESIGN.md.” Claude Code reads the tokens, applies the values, and generates code that matches your brand.


<a name="Agents"></a>

## Agents

   * codebase-search.md
   * media-interpreter.md
   * open-source-librarian.md 
   * tech-docs-writer.md
   <br /><br />


<a name="Hooks"></a>

## Hooks

   * <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=13m19s">Hooks & Automation Rules</a>
   * https://dev.to/gunnargrosch/automating-your-workflow-with-claude-code-hooks-389h
   <br /><br />

Conceptually Claude hooks are like Git hooks: “run this script whenever X happens,” but for your AI coding workflow. Hooks are small, user‑defined scripts (shell commands, HTTP calls, or model prompts) that run automatically at specific points in a Claude Code session, such as:
   * When Claude edits a file.
   * When a session starts or ends.
   * When a command is about to run or just finished.
   <br /><br />

They give deterministic control: you can enforce rules (code formatting, security checks, linting, notifications) without relying on Claude’s model to “remember” to do them.

Programming (.py Python, .sh shell files, etc.):

   * check-comments.py  # checks for for excessive comments.
   * keyword-detector.py
   * skill-reminder.sh
   * todo-enforcer.sh
   <br /><br />


<a name=".gitignore"></a>

## .gitignore

PROTIP: Within the <tt>.gitignore</tt> file are files generated by Claude:
```
# Exclude runtime/generated files from hooks
hooks/*.log
hooks/debug.log
hooks/todo-enforcer.config.json
```


<a name="Permissions"></a>

## Permissions

   * https://www.youtube.com/watch?v=brLhhkUqcn4&t=12194s
   <br /><br />

   shift+tab cycles through the permissions modes, so auto-accept edits is displayed just because currently I'm in the bypass permissions mode. There is one more permission mode plan, in which Claude Code will discuss and plan, but will not make changes to your files.


   ### Plan mode workflow
   
   REMEMBER: The revolution to productivity from AI comes from "Plan Mode", which uses AI to generate a plan rather than "vibe coding" prompts thtat generate results directly. Generating code from plans is more repeatable and enables several people to review and collaborate.

1. Cycle to plan mode by pressing <strong>shift+tab</strong> twice (switching):
   <pre>
   ⏸ plan mode on (shift+tab to cycle)   
   </pre>

   1. Write your goals. Build your ability to define objectives clearly.
   1. Let Claude break it into steps.
   1. Review and iterate the plan. Ask Claude improve the plan (in a loop).
   1. Ask Claude to add tests to evaluate whether its solution is complete and valid.

   1. Switch to auto-accept edits mode.
   1. Setup a container during dev.
   1. Have Claude execute the plan end-to-end.
   1. Review output - Refine if needed.

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1774378280/how-i-structure-claude-code-projects-skills-mcp-v0-ubchqhdo8ujg1_q633zf.webp"><img alt="how-i-structure-claude-code-projects-skills-mcp-v0-ubchqhdo8ujg1.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774378280/how-i-structure-claude-code-projects-skills-mcp-v0-ubchqhdo8ujg1_q633zf.webp" /></a>


   <a name="Prompts"></a>
   
   ### Prompts

1. Type your question or command on top of "How can I help you today?"

   REMEMBER, there is a cutoff for when information has been loaded in the model.

   ### Artifacts

   <a href="#ClaudeDesktopUI"><img align="right" width="150" alt="claude-app-menu.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774594600/claude-app-menu_qr26in.png" /></a>
1. Click "+ New artifacts". Artifiacts are pre-coded small interactive apps such as Productivity Tools.
1. Click "Artifacts" on the menu and under its "Inspiration" tab, try:
   * click "Flashcards" and provide a CSV file.
   * Click "QR code generator".
   * Click "Trivia" game.
   * Click "Better than very" to find more expressive words.
   * Click "CSV Data Visualizer".

1. To create your own automations, consider the "<a href="#CoWork">Cowork</a>" button at the top of the Claude app.

   <a href="#CoWork">Cowork</a> and Projects both require a Pro Plan subscription.

   
   <a name="Connectors"></a>

   ### Connectors

1. Click one Category at a time to see what's available already: Code, Communication, Data, Design, Development, Financial Services, Health, Life sciences, Productivity, Sales and Marketing.

   REMEMBER: Most services at the end of the connector (such as Zapier) charge money.   


1. PROTIP: Instead of clicking "Download" for "Desktop" within "Claude Code environments", 
   <pre>
   Setting up Claude Code...
   ✔ Claude Code successfully installed!        
   Version: 2.1.81
   Location: ~/.local/bin/claude
   Next: Run claude --help to get started
   ⚠ Setup notes:
   • Native installation exists but ~/.local/bin is not in your PATH. Run:
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
   ✅ Installation complete!
   </pre>
   
   WARNING: Installing using curl would require adding to the $PATH in your ~/.zshrc or ~/.bashrc file this line:
   ```
   export PATH="$HOME/.claude/bin:$PATH"
   ```

   RECOMMENDED: In a Terminal, install <strong>Claude Code</a>
   ```dash
   brewin claude-code
   ```
   <pre>
   Terminal-based AI coding assistant
   install: 170,173 (30 days), 390,990 (90 days), 585,358 (365 days)
   ==> Moving App 'Claude.app' to '/Users/johndoe/Applications/Claude.app'
   </pre>

1. Confirm app folder location:
   ```bash
   tree ~/.claude
   ```
   folders:
   <pre>
   backups
   cache
   downloads
   </pre>

1. REMEMBER: The free Claude.ai plan does not include Claude Code access.
   Upgrade to a Claude Pro, Max, Teams, Enterprise, or Console account.\

   Select the subscription level:
   ```
   Claude Code can be used with your Claude subscription or billed based on API usage through your Console account.
                                                            
   Select login method:            

   ❯ 1. Claude account with subscription · Pro, Max, Team, or Enterprise
                  
      2. Anthropic Console account · API usage billing
                                       
      3. 3rd-party platform · Amazon Bedrock, Microsoft Foundry, or Vertex AI
   ```
   Documentation:                                                           
   * Amazon Bedrock: https://code.claude.com/docs/en/amazon-bedrock
   * Microsoft Foundry: https://code.claude.com/docs/en/microsoft-foundry                                                    
   * Google  Vertex AI: https://code.claude.com/docs/en/google-vertex-ai   
   <br /><br />

<a name="CoWork"></a>

## CoWork 

CoWork automates the use of <a href="#Connectors">Connectors</a>.

??? edit a custom <strong>goals.md</strong> file which contains the priorities I want to <strong>achieve</strong> in my own life.

<strong>Progress</strong> made toward those goals is what CoWork automatically reports on when it's asked for a "Progress Report".

Purpose -> Setup -> Skills -> Scheduling

<strong>scheduled</strong>


   CAUTION: <a href="#CoWork">Cowork</a> activity is not captured in audit logs or Compliance APIs today, which is why it is not for regulated workloads. 

   ### Session Log analysis

1. PROTIP: Install utility program <a target="_blank" href="https://github.com/ryoppippi/ccusage/">ccusage</a> to analyze session logs. See ccusage.com/guide/session/reports
   
<hr />
   
1. To remove orphaned auto-installed dependencies:
   ...bash
   claude plugin prune now
   ```

1. validate accepts $schema, version, and description fields.    
   
   Plugins pinned by another plugin's version constraint auto-update to the highest satisfying git tag. 

   Plugin error handling distinguishes between conflicting dependencies, invalid versions, and overly complex version requirements.



   <a name="status"></a>

   ### /status

   Example:
   <pre>
   ❯ /status
   Version: 2.1.3
   Session name: /rename to add a name
   Session ID: 4eb36de6-c9f2-4c22-8ad3-a8232ea6c078
   cwd: /Users/gigi
   Auth token: none
   API key: /login managed key
   Organization: Perplexity AI
   Email: gigi.sayfan@perplexity.ai

   Model: opus (claude-opus-4-5-20251101)
   MCP servers: notion ✔, linear ✔, datadog ✔
   Memory: user (.claude/CLAUDE.md)
   Setting sources: User settings, Shared project settings, Project local settings
   </pre>


<a name="PythonProj"></a>

## Python Project

<a target="_blank" href="https://www.linkedin.com/posts/goyalshalini_every-developer-using-claude-code-makes-the-activity-7445719686350184448-pX5n/">BLOG</a>: Plan > Scope > Execute > Verify

Plan: "Explain how you'd solve X. No code yet."

From <tt>uv init</tt> using prompt:

```
my-python-app/
├── .claude/
│   ├── settings.json     # Your Python/macOS config here
│   └── claude.md         # Optional: project instructions
├── src/
│   └── app.py
├── tests/
│   └── test_app.py
├── pyproject.toml
├── requirements.txt
└── README.md
```

## Python Prompt examples:

* "Refactor src/app.py for better error handling."

* "Add type hints and docstrings to src/app.py."

* "Run pytest and fix failures."

* "Lint with ruff and apply fixes."


<a name="config"></a>
   
### /config

   <tt>/config</tt> inside Claude Code's interactive REPL to edit settings through a UI instead of editing JSON directly. See https://code.claude.com/docs/en/settings
   <pre>
   ❯ /config
      Auto-compact                              true
      Show tips                                 true
    > Thinking mode                             true
      Prompt suggestions                        true
      Session recap                             true
      Rewind code (checkpoints)                 true
      Verbose output                            false
      Terminal progress bar                     true
      Default permission mode                   Accept edits
      Respect .gitignore in file picker         true
      Auto-update channel                       latest
      Theme                                     Dark mode
      Local notifications                       Auto
      Push when actions required                false            
      Push when Claude decides                  false
      Output style                              default
      Language                                  Default (English)
      Editor mode                               normal
      Model                                     opus
   </pre>


<a name="settings"></a>

## Settings config

* <tt>~/.claude/settings.local.json</tt> — your <strong>personal</strong> project overrides (gitignored).
* <tt>/.claude/settings.json</tt> — global user defaults (see below). 
* <tt>/.claude/settings.json</tt> — project-level, commit to github for sharing on each team member's setup.
<br /><br />
* <a href="#managed-settings">managed-settings.json</a> — enterprise-enforced, can't be overridden by standard user.
<br /><br />

<a target="_blank" href="https://youtube.com/shorts/hbRQqEcvBeI?si=H2BhITefCuoNhCBO">VIDEO</a>:
Anthropic's Claude Managed Agents provides developers production-grade execution env
in a sandbox and a framework orchestration
for an extra 8 cents per session hour $700/year.

PROTIP: Take a full backup before you make changes to conditions after install.

            
   <tt>respectGitignore: true</tt> keeps file picking from surfacing ignored files by default.

1. Limit use of "latest" which means beta:
   ```
   "autoUpdatesChannel": "stable",
   ```
1. Lock Claude's response language:
   ```
   "preferredLanguage": "english",
   ```
1. Set default to less expensive model than "opus" with medium usage vs. high:
   ```
   "model": "claude-sonnet-4-6",
   "effortLevel": "medium",
   ```

   <a name="settings.json"></a>

   ### ~/.claude/settings.json config

   Configuration choices are stored by Claude in its file <tt>~/.claude/settings.json</tt>

   REMEMBER: Indent two spaces per level.
   * No comma after last item in a list.
   * "allow" pre-approves tools so you're not prompted every time
   * "deny" hard-blocks sensitive reads (env files, keys) and destructive commands
   * true and false are not encased between quote marks.
   * Colons (:) separate each folder specification.
   <br /><br />

   global user defaults:

1. At the top, for autocomplete in editors like VS Code:
   ```
   }
     "$schema": "https://json.schemastore.org/claude-code-settings.json",
   ```
      NOT       "https://json-schema.org/claude-code-settings.json",
   
1. <a target="_blank" href="https://code.claude.com/docs/en/env-vars">Environment variables</a> set basis for rules by what enviornment (vs prod). Examples of additional custom variables include:
   ```
   "env": {
     "NODE_ENV": "development",
     "GIT_MAIN_BRANCH": "main",
     "PYTHONPATH": "./src:./tests"
     "REPOSITORY_NAME": "data-ai-tickets-template",
     "DATABASE": "ANALYTICS",
     "WAREHOUSE": "DATA_ANALYSIS",
     "SCHEMA": "REPORTING",
     "DATABRICKS_PROFILE_PROD": "production",
     "DATABRICKS_PROFILE_DEV": "development"
   },
   ```
1. Set shell program (not zsh) for compatibility:
   ```
   "defaultShell": "bash",
   ```
1. For stronger command isolation, especially in higher-risk environments.:
   ```
   "sandbox": {
      "enabled": true,
      "autoAllowBashIfSandboxed": true,
      "network": {
         "allowedDomains": [
         "pypi.org",
         "files.pythonhosted.org",
         "github.com"
         ]
      }
   },
   ```
1. Enable attribution:
   ```
   "respectGitignore": true,
   "attribution": {
     "commits": true,
     "pullRequests": true
   }
   ```
1. Deny access (like .gitignore for Claude) so tokens are not wasted reading what Claude should not:
   ```
   "permissions" : {
     "deny": [
       "Read(node_modules/**)",
       "Read(dist/**)",
       "Read(.next/**)",
       "Read(coverage/**)",
       "Read(*.lock)",
       "Read(**/.DS_Store)",
       "Read(**/__pycache__/**)",
       "Read(**/.mypy_cache/**)",
    ```
1. Deny access to secrets - use calls thru secrets manager instead:
   ```
   "permissions" : {
     "deny": [
       "Read(.env)",
       "Read(.env.*)",
       "Read(**/.env)",
       "Read(**/.env.*)",
       "Read(./.env)",
       "Read(./.env.*)",
       "Read(./secrets/**)"
       "Read(credentials/**)",
       "Read(**/*.key)",
       "Read(**/*.pem)",
     ]
   ```
1. Deny mass destructive operations:
   ```
   "permissions" : {
     "deny": [
       "Bash(sudo:*)",
       "Bash(su:*)",
       "Bash(rm -rf *)"
       "Bash(curl *)",
       "Bash(wget *)",
       "Delete",
       "Bash(git push --force:*)",
       "Bash(git push -f:*)",
       "Bash(git reset --hard:*)",
     ]
   ```
   <a name="MCPAllow"></a>

1. Allow to <a href="#MCP">MCP servers</a>:
   ```
   "permissions" : {
    "allow": [
      "mcp__playwright",
   ```
   REMEMBER: The two underlines ("__") in the name allows Claude to use Playwright tools without asking for permission every time.

1. Under permissions -> allow to not need user confirmation:
   ```
      "Read",
      "Write(./projects/**)",
      "Write(./documentation/**)",
      "Write(./videos/**)",

      "Bash(brew install *)",
      "Bash(brew upgrade *)",
      "Bash(cat *)",
      "Bash(echo *)",
      "Bash(pwd)",
      "Bash(tree:*)",

      "Bash(git add *)",
      "Bash(git branch:*)",
      "Bash(git commit *)",
      "Bash(git diff *)",
      "Bash(git show:*)",
      "Bash(git status)",
      "Bash(git log *)",
      "Bash(git push)",
      "Bash(ls *)",
      "Bash(npm run *)",
      "Bash(npx *)",
      "Bash(poetry install)",
      "Bash(poetry run *)",
      "Bash(python -m *)",
      "Read(**/requirements*.txt)",
      "Read(**/pyproject.toml)"
      "Bash(uv *)",
      "Bash(ruff check:*)"
      "Read(**/*.py)",
      "Glob",
      "Grep"
    ]
   ``` 

1. Useful for debugging if hooks are misbehaving:
   ```
   ],
   "disableHooks": true,
   ```
1. When running a shell command, to prevent silent truncation and wasted retries, set a higher number than the default 30-50,000:
   ```
   "BASH_MAX_OUTPUT_LENGTH": "150000",
   ```
1. In reality, output quality degrades before the default, so trigger before the default 83%:
   ```
   "autocompact_percentage_override": 75,
   ```
1. Turn off Claude's distracting spinner text:
   ```
   "spinnerTipsEnabled": false,
   ```
1. Highlight:
   ```
   "syntaxHighlightingDisabled": false,
   ```
1. Define extent of thinking output:
   ```
   "showThinkingSummaries": true,
   ```
1. Adjust frequency of cleanup instead of default 30 days:
   ```
   "cleanupPeriodDays": 20,
   ```
1. Disable writing chat history to disk if you want privacy:
   ```
   "sessionPersistenceDays": 0,
   ```
1. Force push of feature branch instead of main branch: <a target="_blank" href="https://www.youtube.com/watch?v=WKt28ytMl3c">VIDEO</a> from <a target="_blank" href="https://github.com/kyle-chalmers/data-ai-tickets-template/blob/main/.claude/settings.json">Kyle Chalmers' Github</a>:
   ```
   "hooks": {
      "PreToolUse": [
         {
         "matcher": "Bash(git commit:*)",
         "hooks": [
            {
               "type": "command",
               "command": "bash -c 'if [ $(git branch --show-current) = \"main\" ]; then echo \"ERROR: Cannot commit to main branch. Create a feature branch first.\" && exit 1; fi'"
            }
         ]
         }
      ]
   }
   ```

References:
   * <a target="_blank" href="https://www.youtube.com/watch?v=pDoBe4qbFPE&pp=ygUUY2xhdWRlIHNldHRpbmdzLmpzb24%3D">12 Hidden Settings To Enable In Your Claude Code Setup</a>

### Confirm validity of JSON

Make sure a comma is at the end of each entry, except the last one of each section.
```bash
cat ~/.claude/settings.json | python3 -m json.tool
```
A sample error message:
<pre>
Expecting ',' delimiter: line 35 column 7 (char 741)
Illegal trailing comma before end of array: line 44 column 21 (char 942)
</pre>

<a name="#doctor"></a>

### /doctor or CLI claude doctor

   <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&t=36m39s" title="Andrew Brown">VIDEO</a>



<a href="TokenContext"></a>

### Token /context usage

   <a target="_blank" href="https://support.claude.com/en/articles/8606394-how-large-is-the-context-window-on-paid-claude-plans">Claude’s context window</a> is 200K, meaning it can ingest 200K+ tokens (about 500 pages of text or more) when using a paid Claude plan.
   The Claude API can ingest <strong>1M tokens</strong> when using Claude Opus 4.6 or Sonnet 4.6.
   
   PROTIP: Take action when token usage is above 50%. See <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=12m34s">Rewind Mode (Escape x2)</a>

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1774472191/claude-token-usage_ggrffl.webp"><img alt="claude-token-usage.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774472191/claude-token-usage_ggrffl.webp" /></a>

   The first line in the example above:" 51k tokens (26%)" is what is currently used. 
   Users on Claude Code with a Max, Team, or Enterprise plan, Claude Opus 4.6 have a <strong>1M token</strong> context window.

   REMEMBER: The Autocompact Buffer: 45k tokens (22.5%) is <strong>reserved</strong> for autocompaction. When your conversation approaches the context window limit, Claude summarizes earlier messages to make room for new content.    Claude Code does this automatically when the context window fills up, but here's the thing - automatic compaction might keep less important stuff and throw away useful insights. But that takes time and require work space. The context window limit applies to input + output combined. When autocompaction triggers, the model needs room to generate the summary. Without reserved space, a full context would leave no room for output. So right off the bat, you only have about half the context window for your actual conversation.

   System Overhead: The system prompt and tools reserve almost 20k tokens (~10%).

   The more <a href="#MCP">MCP</a> servers are used, the more "MCP Tools" tokens are used. Each tool within an MCP server consumes token before it even starts. Each of several tools are usually a part of each MCP server. For example, Notion has a tool for
      * create-pages
      * create-comment
      * update-page
      * update-database
      <br /><br />
   


<a name="Cost"></a>
   
## /cost tokens spent

   <pre>
   ❯ /cost
  ⎿  Total cost:            $2.69
      Total duration (API):  5m 12s
      Total duration (wall): 9h 39m 12s
      Total code changes:    10 lines added, 1 line removed
      Usage by model:
             claude-haiku:  42.1k input, 790 output, 0 cache read, 11.9k cache write ($0.0609)
          claude-opus-4-5:  3.4k input, 10.7k output, 1.7m cache read, 235.3k cache write, 1 web search ($2.63).  x          ```
   </pre>

   <a name="loop"></a>

   ## /loop

   The <tt>/loop</tt> command parses natural language specifications into three parameters of a <strong>CronCreate call </strong>, which is not just a repetitiive <a target="_blank" href="https://ghuntley.com/loop/">"Ralph loop"</a>. It can also <strong>schedule a task</strong> that fires based on a timer, in the current Claude Code session. Close the terminal, exit Claude, or lose your connection, and all scheduled tasks vanish. 

   <pre>
   {
   "cron": "*/10 * * * *",
   "prompt": "Check the CI status on PR #42 and summarize any failures",
   "recurring": true
   }
   </pre>



<a name="Skills"></a>

## Skills
   * <a target="_blank" href="https://www.youtube.com/watch?v=0cVuMHaYEHE">VIDEO</a>: Skills reduce the pain from copy-and-paste prompting. Skills compound.
   * <a target="_blank" href="https://www.youtube.com/watch?v=bjdBVZa66oU">VIDEO</a>: What are skills?
   <br /><br />

WHen Claude starts, it looks for skills the might be requested from within these four folders: <a target="_blank" href="https://www.youtube.com/watch?v=Wx6_vjFFyHM">VIDEO</a>:
1. <a href="#managed-settings">managed-settings.json</a> provided by enterprise administrators to Claude users under its charge.
2. <tt>$HOME/.claude/skills</tt>                 # personal folder $HOME such as "/Users/JohnDoe/..." in a git repo
3. <tt>project/.claude/skills</tt>               # project
4. <tt>project/.claude-plugin/plugin.json</tt>   # plugins
<br /><br />
The above defines the precedance of a lower skill being "shadowing" if that same skill name is in different levels.
The top one is used.

REMEMBER: Skill folders under <tt>~/.claude/skills/...</tt> are <strong>reusable by all projects</strong>.

View, evaluate, and download skill folders from these marketplace such as:
   * <a target="_blank" href="https://claudemarketplaces.com/">claudemarketplaces.com</a> has skills, plugins, MCP)
   * <a target="_blank" href="https://www.atcyrus.com/skills">atcyrus.com/skills</a> 
   * <a target="_blank" href="">1,419,713 skills to Search with AI semantics or keywords, filter by occupation, sort by stars popularity. All skills use the open SKILL.md standard and are ready to install.
   * github ???
   * <a target="_blank" href="https://skillsmp.com/">skillsmp.com</a>
   * <a target="_blank" href="https://claudeskills.info/skills/">claudeskills.info/skills</a>
   * <a target="_blank" href="https://github.com/anthropics/skills/tree/main/skills">github.com/anthropics/skills/tree/main/skills</a> to process pdf, Word, PowerPoint, Excel Spreadsheet
   <br /><br />

REMEMBER: <a target="_blank" href="https://www.youtube.com/watch?v=98KaK_rn5rQ">VIDEO</a>: 
The <a target="_blank" href="https://agentskills.io/">agentskills.io</a> standard says
each Claude skill is defined by a folder named for the skill plus a SKILL.md file within that folder. 
<a target="_blank" href="https://thenewstack.io/agent-skills-anthropics-next-bid-to-define-ai-standards/">DOC</a>:
<pre>
skill-name/
├── SKILL.md           # Required: metadata + main instructions
├── assets/            # Spec: templates, resources
│   └── onboarding.md
├── examples/
│   └── sample-output.md   # What good output looks like
├── reference.md       # Detailed docs (loaded on demand)
├── references/        # Spec: documentation
│   └── api-spec.md    # Detailed specs Claude reads when communicating using APIs
│   └── architecture.md    # Architectural pattern (use of technologies such as MVC, REST API, microservices, etc.)
│   └── deep-dives.md  # Detailed technical tours referencing visual diagrams on the page
│   └── example-fas.md # Detailed specs Claude reads when needed
├── scripts/           # Spec: exectable code
│   └── validate.sh    # Executable bash scripts
└── templates/
    └── output.md      # Template Claude fills in at run-time
</pre>

### Default skills

https://claudeskills.info/skill/skill-creator/
Anthropic's guide for creating effective skills that extend Claude's capabilities

Project skills should be committed to version control alongside your code, for the whole team to use.

The three main distribution methods — repository commits, plugins, and enterprise managed settings.

Skills shared aross projects are cloned from folder <tt>.claude/skills</tt> where team standards live, like your company's brand guidelines, preferred fonts, and colors for web design.

The entry point for each skill is a SKILL.md file in its own directory.

POLICY: The SKILL.md file should contain a link to each file under it, and be <strong>under 500 lines</strong>.

SKILL.md can contains other metadata such as: 
* allowed-tools: Read, Grep, Glob, Bash
* model: sonnet
<br /><br />

Skills provide guidelines that affect Claude's reasoning.

When a file is uploaded but its content isn't visible in context yet, the "file-reading" skill acts as a router to the right reading approach per file type. 

<strong>Default skills</strong> described in markdown files<a target="_blank" href="https://platform.claude.com/workspaces/default/skills">Claud.com docs</a> provide <strong>handlers</strong> for each <strong>type of file</strong>: 
   * <a target="_blank" href="https://github.com/anthropics/skills/tree/main/skills/docx">.docx</a> documents
   * <a target="_blank" href="https://github.com/anthropics/skills/tree/main/skills/pdf">.pdf</a>
   * <a target="_blank" href="https://github.com/anthropics/skills/tree/main/skills/xlsx">.xlsx</a> spreadsheets
   <br /><br />

Skills encode environment-specific constraints (available libraries, output paths, rendering quirks) that improve output quality beyond what training data alone provides.
   * The "product-self-knowledge" skill deliver facts about Anthropic's products (Claude Code, API details, claude.ai plan limits, pricing).
   * The "frontend-design" skill handles Web UIs, React components, HTML/CSS layouts, dashboards, landing pages.
   * The "skill-creator" skill is invoked when creating, editing, or evaluating skills themselves.
   <br /><br />

https://claudeskills.info/skill/template-skill/

<a target="_blank" href="https://www.youtube.com/watch?v=IgNN4v0BJdU">VIDEO</a>:

For example, in each SKILL.md file the skill name is repeated within the header:
```
---
name: pr-review
description: Reviews pull requests for code quality. Use when reviewing PRs or checking code changes.
---
```
REMEMBER: "Use when" begins the sentence Claude uses to select the skill for the task it needs to fulfill.

REMEMBER: Ensure that Claude actually invokes the skill with a prompt such as "Create a PR".

Another example:
```
---
name: backend-review
description: Reviews backend code for security issues and compliance mishaps.
tools: Bash, Glob, Grep, Read, WebFetch, WebSearch, Skill...
skills: accessibility-audit, performance-check
---
```
REMEMBER: The skill name must be in <strong>lower case</strong> and be a maximum of 64 characters.
The description has a maximum of 1,024 characters in <strong>only one line</strong>.

<a target="_blank" href="https://www.youtube.com/watch?v=0cVuMHaYEHE&t=9m33s">VIDEO</a>: "Good descriptions names the document types output format the skill produces. It includes trigger phrases to invoke the skill.

REMEMBER: Built-in Claude agents (like Explorer, Plan, and Verify) can't access skills at all.
When a subagent starts, explicitly listed custom Skills for them are loaded.
This is a way to enforce standards in delegated work without relying on prompts.

Claude collects skill descriptions in SKILL.md files within each skill folder to compile an index of skills.
Claude traverses that index to complete each task it needs to do.

Skills provide <strong>specialized knowledge</strong> that applies to specific tasks:
   * Code review standards your team follows
   * Commit message formats you prefer
   * Brand guidelines for your organization
   * Documentation templates for specific types of docs
   * Debugging checklists for particular frameworks
   <br /><br />

REMEMBER: Unlike slash commands which users deliberately type in, 
each skill is opened and viewed automatically by Claude only when needed.

So mastery of custom skills lies in part to proper crafting of those descriptions in each SKILL.md markdown file.

So keep primary instructions in SKILL.md concise while still giving Claude access to rich supporting material when it needs it.

Custom skills can be created, such at git@github.com:jarrodwatts/claude-code-config.git
   * planning-with-files
   * <strong>rigorous-coding</strong>
   * web-design-guidelines
   * react-useeffect
   * vercel-react-best-practices
   <br /><br />

<a target="_blank" href="https://www.youtube.com/watch?v=IjiaCOt7bP8">VIDEO</a>: Agent Skills</a> makes use of OpenAI's "open agent skills standard" (<a target="_blank" href="https://www.vibesparking.com/en/blog/ai/agent-skills/2026-01-15-agent-skills-open-standard-authoritative-guide/">released on December 18, 2025</a>), written in OpenAI Codex CLI, IDE Extension, Codex app. Google Gemini and DeepMind adopted it too. They's on <a target="_blank" href="https://skillsmp.com/">skillsmp.com marketplace</a>

<a name="Troubleshooting"></a>

<a target="_blank" href="https://www.youtube.com/watch?v=YBa1cwaG7is">VIDEO</a>: Troubleshooting skills.

Try "skills-ref", the Agent Skills Verifier, using uv (written in Rust).


<a name="managed-settings"></a>

## managed-settings.json

The <tt>managed-settings.json</tt> file is meant for corporate-level admin-controlled settings that cannot be overriden by project or user level settings.

REMEMBER: Unlike other settings.json files, the managed-settings.json file is stored in a folder outside of /Users folders.

   * Mac: <tt>/Library/Application Support/ClaudeCode/managed-settings.json</tt>
   * Linux or WSL: <tt>/etc/claude-code/managed-settings.json</tt>
   * Windows: <tt>C:\ProgramData\ClaudeCode\managed-settings.json</tt>
   <br /><br />

PROTIP: Enterprises use MDM/Jamf-style policy controls on macs to require standard users to provide an admin password to view/modify.

View <a target="_blank" href="https://managed-settings.com/">managed-settings.com</a> to craft secure claude code settings.json and managed-settings.json enterprise security policy.
   * cleanupPeriodDays
   <br /><br />

Example: <a target="_blank" href="https://www.youtube.com/watch?v=OCBi3eScNLk">VIDEO</a>: Share skills.
```
{
    "permissions": {
        "defaultMode": "deny",
        "onlyAllow": [
            "Read(*)",
            "Search(*)"
            "Write(*)"
        ]
    },
    "askBeforeRunningTool": true
          ],
        "deny": [
           "Edit(/etc/*)",
           "Bash(rm *)",
           "Bash(curl *)",
           "Read(./.env.*)",
           "Read(./secrets/**)"
        ]
    },
    "forceRemoteSettingsRefresh": true
    "env": {
        "ANTHROPIC_API_KEY": "redacted",
        "CLAUDE_CODE_ENABLE_TELEMETRY": "1",
        "OTEL_METRICS_EXPORTER": "otlp"
    },
    "companyAnnouncements": [
        "Welcome! Review our code guidelines.",
        "Our new security policies are now active."
    ],
    "strictKnownMarketplaces": [
        {
            "source": "github",
            "repo": "acme-corp/approved-plugins"
        },
        {
            "source": "npm",
            "package": "@acme-corp/compliance-plugins"
        }
    ]
}
```
<tt>strictKnownMarketplaces</tt> control where plugins can be installed from.


<a name="Rules"></a>

## Rules

In the <tt>rules</tt> folder, from git@github.com:jarrodwatts/claude-code-config.git
   * comments.md 
   * forge.md
   * testing.md
   * typescript.md
   <br /><br />

https://www.gitguardian.com/files/secrets-management-maturity-model


<a name="VulScan"></a>

## Vulnerability Scanning

Because Claude understands context and logic, 
it can catche vulnerabilities that rule-based tools miss — like flawed business logic, insecure flows, or misuse of libraries.

| Category | Examples |
|---|---|
| **Injection** | SQL injection, command injection, LDAP injection |
| **Secrets** | Hardcoded passwords, API keys, tokens |
| **Crypto** | Weak hashing (MD5/SHA1), insecure random |
| **Auth** | Broken auth, missing rate limiting |
| **Input validation** | Missing sanitization, path traversal |
| **Dependencies** | Outdated/vulnerable imports |
| **Deserialization** | Unsafe `pickle`, `yaml.load()` |
| **SSRF / XSS** | In web frameworks like Flask/Django |


<a name="iphone"></a>

## Create an iPhone app

<a target="_blank" href="https://www.youtube.com/watch?v=18V3lFePdWU" title="Uploaded Jul 25 2025">
VIDEO</a>: Chris Raroque runs Claude Code Opus inside a Warp client referencing a [paid] mobbin.com design template. Voice dictates changes. Breaks down generation section by section. No hand edits.


Anthropic provides free tutorials at https://anthropic.skilljar.com/

## Claude Partner Network

<a target="_blank" href="https://claude.com/partners">https://claude.com/partners</a>

<a target="_blank" href="https://www.anthropic.com/news/claude-partner-network">"Anthropic invests $100 million into the Claude Partner Network"</a> (announced Mar 12, 2026) mentions "technical" <strong>Claude Certified Architect (CCA)</strong> Foundations certification.

Anthropic's Claude Partner Network includes Accenture, Deloitte, PwC, and other consulting and systems integration firms.

<a target="_blank" href="https://www.anthropic.com/news/enterprise-ai-services-company">In May 2026</a>, Anthropic, Blackstone, Hellman & Friedman, and Goldman Sachs announced the formation of a new AI services company to bring Claude into mid-sized companies' core operations. The company is also backed by General Atlantic, Leonard Green, Apollo Global Management, GIC, and Sequoia Capital. 

\#CAExamPrep 
   * https://anthropic.skilljar.com/claude-certified-architect-foundations-access-request
   <br /><br />

"A significant proportion of our $100 million investment will go directly to our partners as direct support for training and sales enablement, and for market development (including work to make customer deployments successful) and co-marketing for joint campaigns and events. "

The <a target="_blank" href="https://partnerportal.anthropic.com/s/login/">Partner Portal at https://partnerportal.anthropic.com/s/login/</a>
provides Academy training materials, sales playbooks used by our own go-to-market team, and other co-marketing documentation.

At the Services Partner Directory, 
enterprise buyers can find firms with Claude implementation experience.

Partners get priority access to new certifications as they roll out.

Additional certifications for sellers, architects, and developers. 


<a name="Certifications"></a>

## Certifications

1. Use your personal email to sign up for their newsletter.

1. Use your <strong>personal email</strong> to sign In to <a target="_blank" href="https://anthropic.skilljar.com/">https://anthropic.skilljar.com</a>

## Claude Certified Architect (CCA), Foundations

Exam Domains from <a target="_blank" href="https://everpath-course-content.s3-accelerate.amazonaws.com/instructor%2F8lsy243ftffjjy1cx9lm3o2bw%2Fpublic%2F1773274827%2FClaude+Certified+Architect+%E2%80%93+Foundations+Certification+Exam+Guide.pdf">Anthropic's Exam Guide.pdf</a>:

1. 27% Agentic Architecture & Orchestration - how agents loop, coordinate with subagents, and enforce rules with hooks
vs prompts. <a target="_blank" href="https://github.com/bomonike/claude-templates/blob/main/cca-domain-notes/cca-domain1-starter.md">STARTER</a>
   * The Agentic Loop
   * Hub-and-Spoke Architecture
   * Prompts vs. Hooks
   * Anti-patterns: natural language parsing to determine loop termination; arbitrary iteration caps as the primary stopping mechanism; checking for assistant text as a completion indicator.
2. 18% Tool Design & MCP Integration - how Claude connects to external systems and how tool descriptions
determine routing.
   * Tool Descriptions
   * MCP Scoping
   * Tool overload
3. 20% Claude Code Configuration & Workflows - skills, commands, plan mode, and CI/CD.
   * Configuration Hierarchy
   * When to Use What
   * CI/CD Integration
4. 20% Prompt Engineering & Structured Output - structured output with JSON schemas, and validation
loops.
   * Few-Shot Advantage
   * Guaranteed structured output with JSON schemas
   * Validation Loop
5. 15% Context Management & Reliability
   * Context Window Problem ('lost in the middle' effect)
   * When to Escalate (escalation patterns)
   * Error Propagation
   * <a target="_blank" href="https://github.com/bomonike/claude-templates/???">domain5-starter.md</a>
   * <a target="_blank" href="https://www.anthropic.com/engineering/building-agents-with-the-claude-agent-sdk">Building Agents with the Claude Agent SDK</a> covers context management, error propagation, and escalation design
   * <a target="_blank" href="https://platform.claude.com/docs/en/agent-sdk/overview">Agent SDK session docs</a> for resumption, fork_session, /compact
   * <a target="_blank" href="https://github.com/affaan-m/everything-claude-code">Everything Claude Code repo</a> by <a target="_blank" href="https://www.linkedin.com/in/affaanmustafa/">Affaan Mustafa</a> for battle-tested context management patterns, scratchpad files, and strategic compaction. <a target="_blank" href="https://x.com/affaanmustafa/status/2012378465664745795">Tools and Tips</a>.

<br /><br />

The community confirms is the exam's focus areas: fallback loop design, Batch API cost optimization, JSON schema structuring to prevent hallucinations, and <a href="#MCP">MCP</a> tool <a target="_blank" href="https://www.youtube.com/watch?v=0cVuMHaYEHE">orchestration</a>.

IBM AI Engineering (Coursera)	ML/DL concepts and model deployment	Conceptual + hands-on	Cloud-agnostic

Anthropic Academy is at 
<a target="_blank" href="https://www.anthropic.com/learn/">https://www.anthropic.com/learn</a>

https://anthropic.skilljar.com/claude-certified-architect-foundations-access-request

References:
* <a target="_blank" href="https://x.com/hooeem/status/2033198345045336559">@hoeem's X post "I want to become a Claude architect (full course)" provides a set of prompts.
* https://dev.to/mcrolly/inside-anthropics-claude-certified-architect-program-what-it-tests-and-who-should-pursue-it-1dk6
* https://github.com/BayramAnnakov/claude-reflect - A self-learning system for Claude Code that captures corrections, positive feedback, and preferences — then syncs them to CLAUDE.md and AGENTS.md.


<a name="Models">

## Models

### <a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/303332">Claude Model Family</a>:

| &nbsp; | Claude Opus | Claude Sonnet | Claude Haiku | Mythos |
| ------ | ----------- | ------------- | ------------ | ------ |
| Description | Highest level of intelligence | Balance of quality, speed, cost | Most cost-efficient and latency-optimized model |
| <tt>capabilities</tt><br />(Best used for) | <a href="#AdvancedReasoning">advanced reasoning</a> | <a href="#CommonCodingTasks">Common coding tasks</a> | <a href="#QuickCode">Quick code completions and suggestions</a> |
| Cost: | Highest | Medium | Lowest |
| <a target="_blank" href="https://claude.com/pricing#api">Input/Output $/MTok</a> | $5/$25 | $3/$15 | $1/$5 |
| <a target="_blank" href="https://claude.com/pricing#api">Prompt caching Read/Write $/MTok</a> | $0.50/$6.25 | $0.30/$3.75 | $0.10/$1.25 |
| <tt>max_input_tokens</tt> (Context window) | 1M tokens | 1M tokens | 200k tokens |
| <tt>max_tokens</tt> (Max output) | 128k tokens | 64k tokens | 64k tokens |
| <a target="_blank" href="https://platform.claude.com/settings/limits">Tokens/min</a> Input & Output | 30K/8K | 30K/8K | 50K/10K |
| Comparative Latency: | Moderate | Fast | <strong>Fastest</strong> |
| Supports Reasoning<br />& Adaptive Thinking | Yes | Yes | No! |


REMEMBER: Each model used has a different ID and version on each cloud: See <a target="_blank" href="https://platform.claude.com/docs/en/about-claude/models/overview">DOCS: API codes for each Claude Model version list</a> or <tt>GET https://api.anthropic.com/v1/models</tt>

On AWS, the full <tt>model_id = "us.anthropic.claude-3-7-sonnet-20250219-v1:0"</tt>

| Feature | Claude Opus 4.6 | Claude Sonnet 4.6 | Claude Haiku 4.5 |
| ------- | --------------- | ----------------- | ---------------- |
| Claude API ID | claude-opus-4-6 | claude-sonnet-4-6 | claude-haiku-4-5-20251001 |
| Claude API alias used by <a href="#ChatAPICall">API calls</a> | claude-opus-4-6 | claude-sonnet-4-6 | claude-haiku-4-5 |
| GCP Vertex AI ID  | claude-opus-4-6 | claude-sonnet-4-6 | claude-haiku-4-5@20251001 |
| AWS Bedrock ID | anthropic.claude-opus-4-6-v1 | anthropic.claude-sonnet-4-6 | anthropic.claude-haiku-4-5-20251001-v1:0 |
| Reliable knowledge cutoff: | - | - | February 2025 |
| Training data cutoff: | - | - | July 2025 |

TODO: Microsoft Foundry?

REMEMBER: The Reliable knowledge cutoff is the date through which knowledge is most extensive and reliable.

Training Data Cutoff is the broader range of data used.


<a name="AdvancedReasoning"></a>

## Advanced reasoning:

* Advanced software development, especially large-scale architecting
* Long-running tasks that require sustained focus
* Strategic planning with multi-step problem solving
<br /><br />

<a name="CommonCodingTasks"></a>

## Common coding tasks:

* Document creation and editing
* Content marketing and copywriting
* Data analysis and visualization projects
* Image analysis
* Process automation
<br /><br />

<a name="QuickCode"></a>

## Quick code completions and suggestions:

* Content moderation and filtering
* Data extrction and categorization
* Language translation
* Q&A Systems and knowledge retrieval
* Most high-volume, straightforward text processing tasks
<br /><br />




<a name="ChatAPICall"></a>

## Chat API call using Claude Opus

* Based on https://platform.claude.com/docs/en/get-started

1. Get your API key from the <a target="_blank" href="https://platform.claude.com/settings/keys">Claude Console API keys page</a>.
1. Save the value in your Password Manager.
1. In a Terminal app, set environment variable:
   ```bash
   export ANTHROPIC_API_KEY='sk...your-api-key-here'
   ```
1. <strike>For API usage, buy $5 of credits from https://platform.claude.com/settings/billing</strike>

   https://platform.claude.com/settings/keys

1. Run the <tt>simple-msg.py</tt> from https://github.com/bomonike/claude-templates/???
   '''python
   import anthropic
   client = anthropic.Anthropic()
   message = client.messages.create(
   model="claude-sonnet-4-6",
   max_tokens=1024,
   messages=[{
      "role": "user",
      "content": "Hello, Claude"
      }]
   )
   print(message.content[0].text)
   ```
1. Run the <tt>curl-model-info.sh</tt> from https://github.com/bomonike/claude-templates...

   ```bash
   curl https://api.anthropic.com/v1/messages \
   -H "Content-Type: application/json" \
   -H "x-api-key: $ANTHROPIC_API_KEY" \
   -H "anthropic-version: 2023-06-01" \
   -d '{
      "model": "claude-opus-4-6",
      "max_tokens": 1000,
      "messages": [
         {
         "role": "user",
         "content": "What are the capabilities of Claude Opus 4.5 and its Reliable knowledge cutoff date and Training data cutoff dates?"
         }
      ]
   }'
   ```
   An example of the response: ???
   ```
   {
   "id": "msg_01HCDu5LRGeP2o7s2xGmxyx8",
   "type": "message",
   "role": "assistant",
   "content": [
      {
         "type": "text",
         "text": "Here are some effective search strategies to find the latest renewable energy developments:\n\n## Search Terms to Use:\n- \"renewable energy news 2024\"\n- \"clean energy breakthrough\"\n- \"solar/wind/battery technology advances\"\n- \"green energy innovations\"\n- \"climate tech developments\"\n- \"energy storage solutions\"\n\n## Best Sources to Check:\n\n**News & Industry Sites:**\n- Renewable Energy World\n- GreenTech Media (now Wood Mackenzie)\n- Energy Storage News\n- CleanTechnica\n- PV Magazine (for solar)\n- WindPower Engineering & Development..."
      }
   ],
   "model": "claude-opus-4-6",
   "stop_reason": "end_turn",
   "usage": {
      "input_tokens": 21,
      "output_tokens": 305
   }
   }
   ```

1. Review Claude token usage at
   https://platform.claude.com/usage


### Multi-Provider

The "AI-6 framework" at <a target="_blank" href="https://www.amazon.com/Design-Multi-Agent-Systems-Using-MCP/dp/1806116472">
February 2026 Packt BOOK: "Design Multi-Agent AI Systems Using MCP and A2A" (<a target="_blank" href="https://learning.oreilly.com/library/view/design-multi-agent-ai/9781806116478/">on OReilly.com</a>) by Gigi Sayfan referencing his <a targe="_blank" href="https://github.com/PacktPublishing/Design-Multi-Agent-AI-Systems-Using-MCP-and-A2A">book GitHub repo</a>
https://github.com/Sayfan-AI/ai-six.



## AI Fluency Class

https://www.anthropic.com/learn/claude-for-you

<a target="_blank" href="https://www.youtube.com/watch?v=-UN9sNqQ0t4&list=PLf2m23nhTg1NjL3-jL3s0qZCYzO07ZQPv">AI Fluency 11-video playlist on YouTube</a>

01Introduction to AI Fluency

02The AI Fluency Framework

03Deep Dive 1: What is Generative AI?

04Delegation

05Applying Delegation

06Description

07Deep Dive 2: Effective Prompting Techniques

08Discernment

09The Description-Discernment Loop

010Diligence




<a name="ChatAPICall"></a>

## Text Chat using Claude API

https://platform.claude.com/docs/en/get-started

```bash
curl https://api.anthropic.com/v1/messages \
  -H "Content-Type: application/json" \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -d '{
    "model": "claude-opus-4-6",
    "max_tokens": 1000,
    "messages": [
      {
        "role": "user",
        "content": "What should I search for to find the latest developments in renewable energy?"
      }
    ]
  }'
```

Making a request

Multi-Turn conversations work by you maintaining your own chat history.
   * REMEMBER: Alternate between message roles User and Assistant (the AI).

Chatbot

<a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/276724">PROTIP</a>: By default, Chat returns message with code between backticks so its explanation text can be added.
To retrieve just the code returned with "stop sequences":
```
import json

# Parse as JSON to validate and format
parsed_data = json.loads(text.strip())

# Or just strip whitespace for other data types
clean_text = text.strip()

messages = []
add_user_message(messages, "Generate a very short event bridge rule as json")
add_assistant_message(messages, "```json")
text = chat(messages, stop_sequences=["```"])
```

System prompts

Temperature

Streaming

Controlling model output

Structured data


<a name="Tools"></a>

## External Tool Use

DEFINITION: Tool use is also known as function calling, refers to the ability to extend/enhance Claude's functionality by defining and invoking external tools or functions. Examples are send_mail() and send_sms_message(). 
Tool use is about Claude calling defined functions to accomplish tasks. 
Tools allow us to write code that can perform specific tasks or computations that Claude wouldn't be able to do otherwise. 

Claude can be given access to a set of predefined tools that it can invoke at any point. 
Default tools:  

   - **Agent** - Launch a subagent to handle a task
   - **Bash** - Run a shell command
   - **Edit** - Edit a file
   - **Glob** - Find files based upon a pattern
   - **Grep** - Search the contents of a file
   - **LS** - List files and directories
   - **MultiEdit** - Make several edits at the same time
   - **NotebookEdit** - Write to a cell in a Jupyter notebook
   - **NotebookRead** - Read a cell
   - **Read** - Read a file
   - **TodoRead** - Read one of the created to-do's
   - **TodoWrite** - Update the list of to-do's
   - **WebFetch** - Fetch from a URL
   - **WebSearch** - Search the web
   - **Write** - Write to a file
   <br /><br />

Claude's AskUserQuestion tool can be invoked used to produce a detailed specification document for spec-based development with a prompt 
<a target="_blank" href="https://www.atcyrus.com/stories/claude-code-ask-user-question-tool-guide">such as</a>:
   "read this @SPEC.md and <strong>interview me</strong> in detail using the AskUserQuestionTool about anything: technical implementation, UI & UX, concerns, tradeoffs, etc. but make sure the questions are not obvious.
   Be very in-depth and continue interviewing until it's complete, then write the spec to the file."

https://github.com/jarrodwatts/claude-code-config/blob/main/commands/interview.md ???

<a target="_blank" href="https://github.com/anthropics/courses/tree/master/prompt_evaluations">Prompt Evaluations</a>



<a name="Plugins"></a>

## Plugins

1. Explore Claude Plugin Marketplace of Curated plugins, agent <a href="#Skills">skills</a>, and MCP servers for Claude Code: https://claudemarketplaces.com/learn

   <a target="_blank" href="https://claudemarketplaces.com/">https://claudemarketplaces.com</a>

1. PROTIP: <a target="_blank" href="https://github.com/justfinethanku/ultra-doc">ultra-doc</a> (by Jonathan Edwards) auto-syncs two sets of documentation to solve "Context Rot".
   * context_for_humans/: Readable, narrative-driven docs for humans. 
   * context_for_llms/: Optimized, token-efficient, rigid Markdown for Claude. 

1. Consider <a target="_blank" href="https://github.com/BayramAnnakov/claude-reflect">claude-reflect</a>  a self-learning system (<tt>/reflect-skills</tt>) for Claude Code that captures corrections, positive feedback, and preferences — then syncs them to CLAUDE.md and AGENTS.md.


<a name="MCP"></a>

## MCP servers

<a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/276798">PROTIP</a>:
MCP Servers and tool use are complementary but different concepts. 

Consider MCP servers for:

   * Database interactions
   * API testing and monitoring
   * File system operations
   * Cloud service integrations
   * Development tool automation
   <br /><br />

1. To reduce the development work required on your end, use the MCP Servers defined by <a target="_blank" href="https://github.com/punkpeye/awesome-mcp-servers">https://github.com/punkpeye/awesome-mcp-servers</a> and others to provide <strong>tool schemas</strong> and <strong>function code</strong> implemented as MCP Servers.


   ### MCP GitHub Action

1. <a target="_blank" href="https://anthropic.skilljar.com/claude-code-in-action/303240">VIDEO</a>: A common MCP server to install is GitHub Actions CI (Continuous Integration). Install the Claude GitHub app from github.com/apps/claude using a built-in command:
   ```bash
   /install-github-app
   ```

   Instead of using a browser to get the GitHub API key and then scheduling a rotation of that key according to your corporate security standards. GitHub does not provide an API to automatically create or rotate new Personal Access Tokens (PATs) for a user account. PAT creation is intentionally manual for security reasons. 

1. GitHub explicitly recommends GitHub Apps for automation use cases. A GitHub App can generate short-lived installation tokens automatically via API. See https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/authenticating-as-a-github-app-installation


   ### MCP Playwright

1. Another common MCP server to install is Microsoft Playwright:
   ```bash
   claude mcp add playwright npx @playwright/mcp@latest
   ```
1. To avoid needing to confirm the next command, edit your <tt>.claude/settings.local.json</tt> file to <a href="#MCPAllow">add permissions: to allow "mcp_playwright".

1. Prompt in Claude:
   ```
   open the browser and navigate to localhost:3000
   ```
1. See <a target="_blank" href="https://wilsonmar.github.io/playwright/">my notes on Playwright</a>.

   Accessing the browser and controlling it with Playwright enables Claude can see the actual visual output, not just the code, so it can make decisions about improving styling.



<a name="Tools"></a>

## Tools

Tools are like giving Claude hands to <strong>take action</strong> out in the world: 
* control a browser ("computer use" type of tool clicking and typing on your desktop)
* web search (using Anthropic's built-in tool)
* send an email via Connectors MCP servers
* query a database and other custom tools
* run Python code in a sandbox (such as read a file to analyze its data)
<br /><br />

MCP lets tools be defined once and reused across many apps, rather than reimplementing per project.

Key point: Claude does not execute the tool itself — it tells you what to call and with what arguments. You run it and return the result.
The intelligence (deciding when and how to use a tool) stays with Claude; the execution happens in your infrastructure.

user text → [Claude] → call a function/API → get result → text response

1. You define tools and pass them in the API request. Example:
   ```yaml
   {
      "tools": [
         {
            "name": "get_weather",
            "description": "Get current weather for a location",
            "input_schema": {
            "type": "object",
            "properties": {
               "location": {
                  "type": "string",
                  "description": "City name, e.g. Seattle"
               }
            },
            "required": ["location"]
            }
         }
      ]
   }
   ```
2. Claude decides whether to use a tool.
3. Claude returns a tool_use block (not final text yet)
   Claude's response when it wants to use it:
   ```json
   {
      "type": "tool_use",
      "name": "get_weather",
      "input": { "location": "Seattle" }
   }
   ```
4. YOUR code executes the actual function
5. You send the result back to Claude
6. Claude formulates its final response
<br /><br />

<a name="Containers"></a>

## Run in Containers

   * https://www.youtube.com/watch?v=brLhhkUqcn4&t=20061s
   * https://www.youtube.com/watch?v=brLhhkUqcn4&t=15403s Sandboxing
   <br /><br />

Instead of sitting around monitoring every prompt like a hall monitor just in case a rogue <tt>rm -rf</tt> slips by.

So consider a Code Container to mount every project into an <strong>isolated container</strong> where I can let my harness run loose with full permissions while the actual machine stays untouched.

1. Install container in NodeJs:
   ```bash
   npm install -g code-container
   ```

   However, although actions within a container can’t affect your real system, it breaks when it needs network access, host filesystem access, or anything that crosses the sandbox boundary. Most real workflows need at least one of those.

   So <strong>auto mode</strong> lets an AI classifier decide what’s safe, block what isn’t, and ask you only when it’s genuinely unsure. Auto mode runs two separate security systems. One watches what goes into the agent’s context.A server-side detector scans content for prompt injection attempts.

   The second line of defense evaluates what the agent wants to do before it does it. 
   Before the agent executes any action with real consequences, the "transcript classifier" built on Claude Sonnet 4.6 classifier evaluates the action against a set of decision criteria using full chain-of-thought reasoning.

   <a target="_blank" href="https://kotrotsos.medium.com/claude-code-auto-mode-actually-explained-4ec90aa36086">This BLOG</a> by <a target="_blank" href="https://acdigest.substack.com/">Marco Kotrotsos</a> reports a 17% false negative which allowed dangerous actions, including 5.7% data exfiltration attack success rate.
   But that's still better that letting everything through when using the time-saving:

   <tt>--dangerously-skip-permissions</tt>

   Auto mode is not a replacement for judgment on high-stakes operations. 

1. To see the complete default configuration for customization:
   ```bash
   claude auto-mode defaults
   ```
   References:
   * https://www.youtube.com/watch?v=OBQtXEUe3Ik&pp=0gcJCdkKAYcqIYzv

   * https://www.youtube.com/watch?v=brLhhkUqcn4&t=4h39m38s">Enabling claude sanbox mode</a> (bubblewrap)b  "is finicky".
   <br /><br />

300ms startup time!

References:
   * https://medium.com/gitconnected/stop-babysitting-claude-code-get-work-done-10x-faster-with-code-container-fcd515381751   

   * https://medium.com/@the.gigi/claude-code-deep-dive-lock-him-up-ea142fc8246b by Gigi Sayfan
   <a target="_blank" href="https://the-gigi.github.io/gigi-zone/posts/2026/03/cc-deep-dive-12-lock-him-up/">CCDD (Claude Code Deep Dive)</a>

<a target="_blank" href="https://www.youtube.com/watch?v=IjiaCOt7bP8&pp=ugUHEgVlbi1VUw%3D%3D">"Agent Skills: Code Beats Markdown (Here's Why)"</a> by Sam Witteveen

<a target="_blank" href="https://www.youtube.com/watch?v=As2xy_cSx00">"How I Review AI-Generated Code"</a> by Owain Lewis

https://www.youtube.com/watch?v=89bhDV0FBSM
Coding in VS Code with Gemma 4 and Ollama
by Zero to MVP

<a target="_blank" href="https://babich.gumroad.com/l/claude">BOOK: 
$19 Claude Code: Practical Guide for Product Designers</a>
by Nick Babich

   * <a target="_blank" href="https://www.youtube.com/watch?v=LACyqdAfnaw">"Why devs are OBSESSED with Claude Code"</a> by Alberta Tech mentions 
   <br /><br />


To reduce output tokens:
https://github.com/JuliusBrussee/caveman

<pre>
You are a minimal-output assistant.

Rules:

Use the fewest tokens possible.

No explanations unless explicitly asked.

No filler, transitions, or politeness.

Prefer short, direct sentences or fragments.

Prioritize results over reasoning.

If a tool/action is used, state it in 1–3 words.

Avoid repetition.

პასუხ format: answer only.

Style:

Simple, compressed language (caveman-like if helpful).

Example: "Search done. Result: X."

If more detail is needed, user will ask.
</pre>

https://github.com/AnastasiyaW/claude-code-config/blob/main/CLAUDE.md

<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
