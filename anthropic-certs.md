---
layout: post
date: "2026-04-19"
lastchange: "26-04-19 v025 fix indents @anthropic-certs.md"
url: "https://bomonike.github.io/anthropic-certs"
file: "anthropic-certs"
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
<a target="_blank" href="https://bomonike.github.io/anthropic-certs"><img align="right" width="100" height="100" alt="anthropic-certs.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/anthropic-certs.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

This article was hand-crafted based on AI responses.


<a name="Company"></a>

## Anthropic the Company

1. Visit <a target="_blank" href="https://anthropic.com/">https://anthropic.com/</a> - the corporate marketing landing page.

   Notice "Anthropic is a public benefit corporation dedicated to securing its benefits and mitigating its risks."

1. <a target="_blank" href="https://www.linkedin.com/company/anthropicresearch/posts/?feedView=all">Anthropic's entry on LinkedIn</a> classifies the company in the "Research Services" industry:

   "Anthropic is an AI safety and research company working to build reliable, interpretable, and steerable AI systems."

   3M followers. 501-1K employees.

1. On <a target="_blank" href="https://www.glassdoor.com/Reviews/Anthropic-Reviews-E8109027.htm">Glassdoor.com</a>, <strong>86%</strong> of Anthropic employees would recommend to a friend.

1. Anthropic was founded in 2021 by seven former employees of OpenAI, including now CEO Dario Amodei was OpenAI's Vice President of Research.

1. Click <a target="_blak" href="https://www.anthropic.com/research">"Read more" at https://www.anthropic.com/research</a> about results from Anthropic's survey of users.

   1. Click "Posts" tab to view announcements.
   1. Click <a target="_blank" href="https://www.linkedin.com/ad-library/search?companyIds=106863934">"Ads"</a> to see videos of Superbowl commercials.
   <br /><br />

1. <a target="_blank" href="https://www.youtube.com/@anthropic-ai">Anthropic's YouTube channel</a>

   * https://medium.com/@the.gigi/claude-code-deep-dive-lock-him-up-ea142fc8246b by Gigi Sayfan
   <a target="_blank" href="https://the-gigi.github.io/gigi-zone/posts/2026/03/cc-deep-dive-12-lock-him-up/">CCDD (Claude Code Deep Dive)</a>

* <a target="_blank" href="https://www.linkedin.com/showcase/claude/posts/?feedView=all">"Claude" on LinkedIn.com</a> says "Claude is an AI assistant built by Anthropic to be safe, accurate, and secure." in Technology, Information and Internet. 884K followers.

   <a target="_blank" href="https://www.youtube.com/watch?v=inLFfXFapnw">PROTIP</a>: 
   Claude is named for Claude Shannon at Bell Labs, who founded "informational theory of communication" which made AI possible.

   "Brainstorm in Claude, build in Cowork" <a target="_blank" href="https://www.youtube.com/watch?v=grh7CMl960s">VIDEO</a>


<a name="Competition"></a>

## Competition

Claude competes with agentic coding tools (aka coding agent IDEs) that read a codebase, edit files, and run commands:
   * Amazon's Kiro CLI & IDE for spec-driven development
   * OpenAI's Codex <a target="_blank" href="https://www.youtube.com/watch?v=kFS6z_97Ohc&pp=ugUEEgJlbg%3D%3D">VIDEO</a>
   * OpenCode
   * Perplexity
   * Google Gemini Gemma & Antigravity IDE
   * Mistral AI
   * Devon (merged)
   * Temporal's <a target="_blank" href="https://www.youtube.com/watch?v=3rpwaKQXI7A">Pydantic</a>
   <br /><br />


<a name="Products"></a>

## Claude Products

<a target="_blank" href="https://status.claude.com/uptime/"><img align="right" width="300" alt="anthropic-systems-hist.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774449180/anthropic-systems-hist_vl2oig.png" /></a>REMEMBER: BLAH: Anthropic doesn't offer phone or live chat support, only thru <a target="_blank" href="https://support.claude.com/en/">chat at support.claude.com</a>. <a target="_blank" href="https://status.claude.com/uptime/">Uptime</a> shows Anthropic's own production environments:

* <a target="_blank" href="https://claude.ai/">claude.ai</a> website reached on internet browser.

   Meet Claude - Platform - Solutions - <a href="#Pricing">Pricing</a> - Resources - Contact sales - Try Claude

* <a target="_blank" href="https://platform.claude.com/">platform.claude.com</a> is the user <strong>Claude Console</strong> Dashboard, Workbench, Files, and <a href="#Skills">Skills</a>, <a target="_blank" href="https://platform.claude.com/docs/en/home">Documentation</a> (for each organization). Claude also creates the evaluation automation that it runs. <a target="_blank" href="https://www.youtube.com/watch?v=QKdKcFjjZhE">"You Guide To Local AI | Hardware, Setup and Models"</a>

* <strong>Claude API</strong> refers to the endpoint listening for <a href="#ChatAPICall">SDK requests</a> from procedural programming code or via the claude-agent-sdk wrapper around <tt>claude -p</tt> commands

   REMEMBER: The <strong>-p</strong> flag specifies non-interactive (aka  <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&&t=5h18m36s">"headless" task), No prompts, no confirmations. Runs and returns the result. The SDK spawns the Claude Code CLI as a subprocess and communicates over stdin/stdout via JSON-lines. xcompare it to the Anthropic Client SDK. Specify --allowedTools and --disallowedTools permissions.

* <strong>Claude Code</strong> is "like handing a capable teammate who actually does the work". Instead of hand coding, human app designers now speak natural language conversations with Claude Code to write design specs from which both infrastructure creation and programming code are generated.

   > “AI will soon be writing 90 percent of all code.” — Dario Amodei, Anthropic CEO, March 10 2025

   That is why instead of hiring entry-level programmers, companies will be <a href="#Pricing">paying for AI tokens</a>.

* <strong>Claude CoWork</strong> can interact with you computer's files, mouse, keyboard, and screen, to operate any app. <a target="_blank" href="https://www.youtube.com/watch?v=rlIy7b-3DC8&pp=ugUEEgJlbg%3D%3D">VIDEO</a>

* The history of the US Government's use of Claude for domestic surveillance or in fully autonomous weapons is summarized in <a target="_blank" href="https://en.wikipedia.org/wiki/Anthropic" title="Visited 25-03-25">https://en.wikipedia.org/wiki/Anthropic</a> 

   It says the company is headquartered in San Francisco's <a target="_blank" href="https://en.wikipedia.org/wiki/Foundry_Square">Foundry Square</a> (near the Bay Bridge) at 500 Howard and First Streets (across from Chipotle & BlackRock and close to the SalesForce tower's BART/busses). 

REMEMBER: Anththropic does not <strong>host</strong> their own models but use AWS, Azure, GCP, etc.
   Claude is the only frontier AI model available on all three leading cloud providers: AWS, Google Cloud, and Microsoft.
   Claude would also be integrated into the Databricks Data Intelligence Platform and Snowflake's Lakehouse databases.

   PROTIP: That enables us to bring costs down by <a target="_blank" href="https://medium.com/towards-artificial-intelligence/i-cancelled-my-200-mo-claude-api-subscription-again-0e2175502778">using a downloaded local foundation model</a> while using Claude Code/Work.

* <a target="_blank" href="https://www.youtube.com/watch?v=DNhjITZy7cQ">Glasswing</a> secures software.

* Claude <strong>Dispatch</strong> enables <strong>cross-device workflows</strong> where tasks move from <strong>mobile app</strong> to desktop app which stays awake (doing whatever else).

* <a target="_blank" href="https://medium.com/data-and-beyond/claude-can-use-your-computer-a-comprehensive-security-first-deep-dive-into-claude-computer-use-cf424f48105d">Claude "Computer Use"</a>: Because raw GUI control is powerful, but also brittle, slower, and much harder to govern, the Claude ecosystem is a layered agent system where <strong>connectors</strong> (with structured contracts) via MCP apps are preferred, browser automation (of forms on websites) is secondary, and raw full-screen (difficult to govern) desktop control is the fallback layer.

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

References:
   * https://newsletter.pragmaticengineer.com/p/how-claude-code-is-built
   <br /><br />


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

* <strong>MCP Support</strong>: Extend it with any MCP tool to access APIs, databases and other external systems.

* <href="#Tools">MCP Tools</a> defines what MCP clients should run to take action.

* <strong>Hooks</strong> are small Python and Bash shell scripts (agentic workflows) that run when automatically triggered by events (before or after Claude tries to do something). REMEMBER: A hook can also block Claude from taking an action unless a specific condition has been met.

* <strong>Plugins</strong> (under the Customize menu item) bundle hooks, <a href="#SlashCommands">slash commands</a>, and skills together for sharing with others. The "plugins" folder contains a <tt>blocklist.json</tt> file, a "known_marketplaces.json" file and the <strong>marketplaces</strong> folder, starting with "claude-plugins-official".

* <strong>Claude Agent SDK</strong> are used to build agentic AI systems beyond coding assistance.

* <a href="#Rules">Rules</a>


<a name="Productivity"></a>

## Productivity: What can you do with Claude?

PROTIP: Improvements in net productivity can be confidently <strong>monitized</strong> when features are combined to be <strong>useful</strong> when consistently applied:

* Customer Support Resolution Agent (Agent SDK + MCP + escalation)

* Code Generation with Claude Code (<a href="#CLAUDE.md">CLAUDE.md</a> + plan mode + <a href="#SlashCommands">slash commands</a>)

* Multi-Agent Research System (coordinator-subagent orchestration)

* Developer Productivity Tools (built-in tools + MCP servers) See https://github.com/anthropics/courses/blob/master/tool_use/README.md

* Claude Code for CI/CD (non-interactive pipelines + structured output)

* Structured Data Extraction (JSON schemas + tool_use + validation loops)

CAUTION: Cowork activity is not captured in audit logs or Compliance APIs today, which is why it is not for regulated workloads. 

<a target="_blank" href="https://www.youtube.com/watch?v=Y3PcRp5RFzk&pp=ugUEEgJlbg%3D%3D">"5 ‘Boring’ AI Workflows that Businesses Actually Want (And How to Sell them)"</a> by Nate Herk | AI Automation


<a name="Pricing"></a>

## Pricing Subscriptiions

PROTIP: <a target="_blank" href="https://www.getmerlin.in/pricing?coupon=merlin">Use merlin.ai</a>'s bulk purchasing costs <strong>$5/mo ($60/year)</strong> (with code AZ5) to access several LLMs (Claude Sonnet 4.5, OpenAI GPT5, etc.) instead of paying for a Claude AI subscription at <a target="_blank" href="https://claude.com/pricing">https://claude.com/pricing</a>:
* Claude Free
* Claude Max $17/month to use Claude Code and Cowork
* Claude Max $100/month for 5x or 20x more usage than Pro
* Teams $20/month
* Enterprise
<br /><br />

CAUTION: The concern is the rate tokens are consumed by a specific request is not transparent nor static.


<a name="Quizzes"></a>

## Quizzes

* <a target="_blank" href="https://quizlet.com/1139139502/comprehensive-guide-to-claude-ai-features-applications-and-best-practices-flash-cards/">127 terms</a>
* <a target="_blank" href="https://quizlet.com/1063707525/ai-fluency-claude-anthropic-flash-cards/">14 terms: "AI Fluency"</a>


<a name="Tutorials"></a>

## Tutorials

Anthropic's own tutorials are at:
   * <a target="_blank" href="https://anthropic.skilljar.com/">https://anthropic.skilljar.com</a>
   * https://github.com/anthropics/courses
   * <a target="_blank" href="https://www.techrepublic.com/article/news-anthropic-iceland-ai-education/">Anthropic is trainging the country of Iceland</a>
   <br /><br />

Intro:
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

YouTube videos peddling subscriptions:
   * <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4">12 hour "Claude Code Essentials" exam</a> released by Andrew and <a target="_blank" href="https://gunnargrosch.com/">Gunnar Grosch</a> referencing <a target="_blank" href="https://github.com/enthropics/">github.com/enthropics</a> on March 20, 2026 via freeCodeCamp.org to plug <a target="_blank" href="https://www.exampro.co/exp-claudecode-01">$34 ExamPro study materials</a> to pass ExamPro.co's own "EXP-CLAUDECODE-01".
   * <a target="_blank" href="https://www.youtube.com/@Mark_Kashef ">YouTube</a> by <a target="_blank" href="https://www.linkedin.com/in/mkashef/">Mark Kashef</a> pushes <a target="_blank" href="https://www.skool.com/earlyaidopters/about">$64/mo Early AI-dopters</a>
   * <a target="_blank" href="https://youtu.be/2u93VTYvG5U" title="Viewed 25-03-25">"Claude Computer Use Just Dropped, Here's How to Hack It"</a> (Use the Min browsser to avoid blocking) to plug <a target="_blank" href="https://www.skool.com/makerschool/about">$184/mo Maker School</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=vDVSGVpB2vc" title="Viewed 25-03-25">"How to Build Claude Agent Teams Better Than 99% of People"</a> by Nate Herk - AI Automation of <a target="_blank" href="https://www.skool.com/ai-automation-society-plus/about" title="Viewed 25-03-25">$99/mo AI Automation Society Plus</a>

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


<a name="Installs"></a>

## Installs

1. If you need to buy a machine, consider that MacMini have good resale value and value on mid-tier vs. PC server with NVIDIA GPU.
1. Buy two USB drives for backup. One to keep plugged in and another for daily full backups you leave in a faraday bag.

1. Install Homebrew
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

1. To freely open apps, add the two app paths to .bash_profile:
   ```
   /Applications;~/Applications
   ```
1. Optionally, install an alternative to macOS native Terminal app:
   ```bash
   brew install --cask kitty
   open -a kitty
   ```
   PROTIP: 3rd-party Terminal apps Kitt and Ghostly natively support notification events without additional configuration (which iTerm2 does).



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

   <a name="VSCode"></a>

   ### Visual Studio Code Install

1. Install Homebrew (which is based on Ruby).
1. Install VSCode and start it:
   ```bash
   brew install --cask visual-studio-code
   code
   ```
1. Click the Extensions and enter "Claude Code" in the Marketplace
   <img alt="claude-vscode-install.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774686736/claude-vscode-install_dhapdt.png" />
1. Click "Install" to the one from "Anthropic" (marked with a blue star).


   <a name="ClaudeDesktopInstall"></a>

   ### Claude Desktop app Install

1. Install pre-requisite utilties NodeJs:
   ```bash
   brew install node
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

   PROTIP: We do not recommend "brew install" because it can be out of date, even though it's more convenient since Homebrew installs to <tt>/opt/homebrew/bin</tt> for all apps.

1. Edit your <tt>~/.bashrc</tt> and .zshrc file to ensure that the program will be first in the OS $PATH folder by adding this at the bottom of the file:
   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
   ```

1. Confirm installation location: 
   ```bash
   whereis claude
   ```
   Claude was not installed if you see: <tt>bash: claude:: command not found</tt>
   Otherwise you should see this (where ~ is replaced with /Users/your machine username):
   <pre>
   claude: ~/.local/bin/claude
   </pre>

1. Open the claude app: 
   ```bash
   $( whereis claude)
   ```
   That's the equivalent of:
   ```bash
   ~/.local/bin/claude
   ```
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


<a name="HowClaudeWorks"></a>

## How Claude Code Works

Anthropic has issued dozens of take-down requests to "claw back" its leak. 
But https://github.com/oboard/claude-code-rev has restored some functionality using the bun JavaScript package manager and testing utility. bun replaces Node + npm + ts-node + jest + esbuild with a single binary.

<a target="_blank" href="https://deep-dive-claude-code.vercel.app">The "Deep Dive Claude Code app"</a> presents its analysis of the leak's 960+ files, 50+ integrated tools, 380K+ lines of code.
These 13 chapters take you from the core loop to the full engineering picture, layer by layer.

<a target="_blank" href="https://www.youtube.com/watch?v=LACyqdAfnaw">"Why devs are OBSESSED with Claude Code"</a> by Alberta Tech mentions 


<a name="SlashCommands"></a>

## / slash commands

1. Type just the / slash character for a menu:

   <pre>
   /init
   /batch    # orchestrates large-scale changes across your entire codebase — decomposing work into 5 to 30 independent units, presenting a plan for approval, then spawning one background agent per unit in an isolated git worktree. 

   /claude-api  # loads Claude API reference material for your project's language. These are like bundled skills but built-in.
   /compact     # summarize the conversation and replaces the current context with the summary. 
   /context     # <a href="#TokenContext">token usage by each system component</a>
   <a href="#Cost">/cost</a>       # <a href="#Cost">tokens spent</a>
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

   <a href="#status">/status</a>     # overview of your current Claude Code setup
   <a href="#config">/config</a>     # configuration
   <a href="#loop">/loop</a>
   <a href="#doctor">/doctor</a>
   </pre>

   Additional slash commands:
   <pre>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=27s">/insights</a>   # file://$HOME/.claude/usage-data/report.html
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=3m42s">/effort   # Effort Level Controls</a> https://www.youtube.com/watch?v=brLhhkUqcn4&t=18618s">max for Opus only. high, medium, low, auto.
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=5m20s">/remote-control   # </a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=6m31s">/batch   # Batch Tasks & PRs </a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=9m3s">/simplify   # Code Review</a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=11m42s">/loop   # Schedule Prompts</a>
   <a target="_blank" href="https://www.youtube.com/watch?v=F_i_s0L2aWY&t=14m31s">/btw   # side question</a>
   </pre>



   REMEMBER: Each session is a 5-hour rolling window (at time of this writing). ???

   Models reset ???

   <pre>
   /model default   # to switch to the sonnet model
   /model haiku     # to switch to using the latest Haiku model.
   /model Sonnet (1M context)  # to switch to using the latest Opus model.
   /model Opus (1M context)    # to switch to using the latest Opus model.
   /model mythos               # new Capybarra March 28, 2026 to Cyber Defenders.
   /fast                       # to speed up Opus model execution.
   </pre>


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

1. <a target="_blank" href="https://www.youtube.com/watch?v=Cyn_Dm05_eU&t=1m44s" title="by Alex Ziskind">VIDEO</a>: Run Claude with no token fees (with some privacy invasion).
   ```bash
   export ANTHROPIC_API_KEY=""
   export ANTHROPIC_BASE_URL=http://localhost:11434
   ```
   <a target="_blank" href="https://www.youtube.com/watch?v=Cyn_Dm05_eU&t=1m44s" title="by Alex Ziskind">VIDEO</a>: Instead of "Download" at<br />
   <a target="_blank" href="https://lmstudio.ai/blog/claudecode/">https://lmstudio.ai/blog/claudecode</a>
   ```bash
   brew install --cask lm-studio
   ```
   Alternately, use Ollama <a target="_blank" href="https://www.youtube.com/watch?v=WhW3iuUArqI" title="by Ruslan Brilenkov">VIDEO</a>: 
   ```bash
   brew install ollama
   export ANTHROPIC_AUTH_TOKEN=ollama
   ollama signin
   ollama pull kimi-k2.5:cloud  # on Claude's cloud (AWS)
   OLLAMA_CONTEXT_LENGTH=64000 ollama serve
   claude --model "kimi-k2.5:cloud"
   ```
   WARNING: <a target="_blank" href="https://medium.com/towards-artificial-intelligence/ive-been-recommending-deepseek-kimi-for-months-then-anthropic-published-this-40e95dc8cd1b">Kimi (in China) was created (stolen) by distillation of Anthropic's model</a>.

   Setup auth for free use of moonshot.ai's Kimi model downloaded for running on Ollama via <strong>local relay path</strong>.
   The model features a 1T-parameter Mixture-of-Experts (MoE) Transformer architecture with 32B activated parameters.
   It supports image, video, PDF, and text inputs up to 256K tokens and excels in benchmarks like MMMU-Pro (78.5), SWE-Bench Verified (76.8), and AIME 2025 (96.1). 
   Trained on approximately 15 trillion mixed visual and text tokens, it enables native multimodality, cross-modal reasoning, and efficient tool use grounded in visual data.

   Using a free model means that you can use automatic <strong>/loop</strong> to iterate through many results, then select the best, like a Monte Carlo simulation.

   But LM Studio using the MLX backend can produce 20 to 30 percent faster generation for the same model on the same hardware.
   And the Apple M3 Max has more bandwidth than the newer M4 Pro. 



<a name="help"></a>
   
## /help for Shortcuts 

   <a target="_blank" href="https://code.claude.com/docs/en/overview/"><img width="350" alt="claude-code-help.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774687133/claude-code-help_bjkq9f.png" /></a>

   REMEMBER: Just as within Jupyter Notebook, run shell commands prefixed with the ! modifier. For example, ! pwd will run the pwd command and insert the output right into the conversation.


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

1. generate a starter CLAUDE.md as a starting point:
   ```bash
   /init
   ```

1. List folders and files:
   ```bash
   tree
   ```
   TODO:
   <pre>
    ├── api
    ├── web
    ├── .editorconfig
    ├── .env.example
    ├── .gitignore
    ├── <a target="_blank" href="https://github.com/bomonike/claude-templates.git">CLAUDE.md</a>
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

1. Explore Claude Plugin Marketplace of Curated plugins, agent <a href="#Skills">skills</a>, and MCP servers for Claude Code: https://claudemarketplaces.com/learn

   <a target="_blank" href="https://claudemarketplaces.com/">https://claudemarketplaces.com</a>

1. Consider https://github.com/BayramAnnakov/claude-reflect on Claude Plugin Marketplace - a self-learning system (<tt>/reflect-skills</tt>) for Claude Code that captures corrections, positive feedback, and preferences — then syncs them to CLAUDE.md and AGENTS.md.

* <a target="_blank" href="https://claude.com/product/cowork?open_in_browser=1">Claude Co-Work</a> - "Hand off tasks to Claude and come back to finished work."

* <a target="_blank" href="https://claude.com/skills">Claude Skills</a> "turn expertise, procedures, and best practices into reusable capabilities." To ensure output follows proven patterns (rather than guessing) for handling PowerPoint pptx files, <strong>pptx/SKILL.md</strong> is defined. 

   https://platform.claude.com/workspaces/default/skills
   handlers for pdf, Microsoft xlsx, pptx, docx, 



<a name="Settings"></a>

## Settings menu and keyboard shortcuts

1. <a target="_blank" href="https://claude.ai/settings/general"><img align="right" width="200" alt="claude-settings-menu2.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774681383/claude-settings-menu2_cuqvae.png" /></a>Click the Toggle sidebar (squarish) icon to collapse and expand the sidebar menu.

   REMEMBER: The "Usage" Settings menu item does not appear until you have a paid subscription.

1. PROTIP: From anywhere in Claude, press shift+command+, (comma) for Claude's Settings at <a target="_blank" href="https://claude.ai/settings/general">https://claude.ai/settings/general</a>

   But switch off the "AWS Extend Switch Roles" browser extension if that comes up instead.

1. PROTIP: To chat from any screen, switch to a New Chat prompt by pressing <strong>shift+command+O</strong> (the letter) and start typing. For the pop-up, press <strong>command+K</strong> or <strong>shift+command+I</strong> for incognito (for the prompt to not appear among Recents).

   REMEMBER: When your cursor is within the chat box, use these keyboard shortcuts:

   <a target="_blank" href=""><img alt="claude-chat-keys.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774658242/claude-chat-keys_hwanw5.png" /></a>


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

Programming (.py Python, .sh shell files, etc.):

   * check-comments.py  # checks for for excessive comments.
   * keyword-detector.py
   * skill-reminder.sh
   * todo-enforcer.sh
   <br /><br />

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

   <img align="right" width="150" alt="claude-app-menu.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774594600/claude-app-menu_qr26in.png">
1. Click "+ New artifacts". Artifiacts are pre-coded small interactive apps such as Productivity Tools.
1. Click "Artifacts" on the menu and under its "Inspiration" tab, try:
   * click "Flashcards" and provide a CSV file.
   * Click "QR code generator".
   * Click "Trivia" game.
   * Click "Better than very" to find more expressive words.
   * Click "CSV Data Visualizer".

1. To create your own automations, consider the "Cowork" button at the top of the Claude app.

   Cowork and Projects both require a Pro Plan subscription.

   
   <a name="Connectors"></a>

   ### Connectors

1. Click one Category at a time to see what's available already: Code, Communication, Data, Design, Development, Financial Services, Health, Life sciences, Productivity, Sales and Marketing.

   REMEMBER: Most services at the end of the connector (such as Zapier) charge money.   


<hr />

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
   brew info claude-code
   brew install claude-code
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
   · Amazon Bedrock: https://code.claude.com/docs/en/amazon-bedrock
   · Microsoft Foundry: https://code.claude.com/docs/en/microsoft-foundry                                                    
   · Vertex AI: https://code.claude.com/docs/en/google-vertex-ai   




1. Install utility a program ccusage to analyze session logs:  
   https://github.com/ryoppippi/ccusage/

   See ccusage.com/guide/session/reports
   
<hr />

   <a name="statusline"></a>

   ### /statusline

   * <a target="_blank" href="https://www.youtube.com/watch?v=brLhhkUqcn4&t=11585s">VIDEO</a>:

   Install HeadsUpDisplay (HUD) plugin to <a target="_blank" href="https://medium.com/@joe.njenga/i-found-this-claude-code-plugin-that-shows-whats-happening-inside-the-engine-d38447d852c7">add up to 4 lines below your input prompt to know</a> if it’s still making progress or is stuck.
   ```
   /plugin marketplace add <a target="_blank" href="https://github.com/jarrodwatts/claude-hu">jarrodwatts/claude-hud</a>
   /plugin install claude-hud
   /reload-plugins   # to activate
   /claude-hud:setup     # to ~/.claude/settings.json
   /restart Claude Code
   code ~/.claude/plugins/claude-hud/config.json
   ```
   Updates every ~300ms.
   <a target="_blank" href="https://newsletter.claudecodemasterclass.com/">$80/yr Masterclass</a>


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


<a name="settings"></a>

### Settings config

* managed-settings.json — enterprise-enforced, can't be overridden.
* .claude/settings.json — project-level, commit to share with team.
* ~/.claude/settings.json — global user defaults (see below).
* .claude/settings.local.json — your <strong>personal</strong> project overrides (gitignored).
<br /><br />

   <a name="config"></a>
   
   ### /config

   <tt>/config</tt> inside Claude Code's interactive REPL to edit settings through a UI instead of editing JSON directly. See https://code.claude.com/docs/en/settings
   <pre>
   ❯ /config
      Auto-compact                              true
      Show tips                                 true
      Thinking mode                             true
      Prompt suggestions                        true
      Rewind code (checkpoints)                 true
      Verbose output                            false
      Terminal progress bar                     true
      Default permission mode                   Accept edits
      Respect .gitignore in file picker         true
      Auto-update channel                       latest
      Theme                                     Dark mode
      Notifications                             Auto
      Output style                              default
      Language                                  Default (English)
      Editor mode                               normal
      Model                                     opus
   </pre>

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
     "$schema": "https://json-schema.org/claude-code-settings.json",
   ```
1. Set basis for rules by what enviornment (vs prod):
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
1. Allow to not need user confirmation:
   ```
    "allow": [
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

   The more MCP servers are used, the more "MCP Tools" tokens are used. Each tool within an MCP server consumes token before it even starts. Each of several tools are usually a part of each MCP server. For example, Notion has a tool for
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

<a target="_blank" href="https://www.youtube.com/watch?v=0cVuMHaYEHE">VIDEO</a>: Skills reduce the pain from copy-and-paste prompting. Skills compound. 

Skills collected from others, such as git@github.com:jarrodwatts/claude-code-config.git
   * planning-with-files
   * <strong>rigorous-coding</strong>
   * web-design-guidelines
   * react-useeffect
   * vercel-react-best-practices
   <br /><br />

The entry point for each skill is a SKILL.md file in its own directory.
So keep primary instructions in SKILL.md concise while still giving Claude access to rich supporting material when it needs it.

```
skill-name/
├── SKILL.md           # Main instructions (required)
├── assets/            # Spec: templates, resources
├── examples/
│   └── sample-output.md      # What good output looks like
├── reference.md       # Detailed docs (loaded on demand)
├── references/        # Spec: documentation
│   └── api-spec.md    # Detailed specs Claude reads when needed
├── scripts/           # Spec: exectable code
│   └── validate.sh    # Executable scripts
└── templates/
    └── output.md      # Template Claude fills in
```

REMEMBER: Skill folders under <tt>~/.claude/skill/...</tt> are usable by all projects.

<a target="_blank" href="https://www.youtube.com/watch?v=0cVuMHaYEHE&t=9m33s">"Good descriptions names the document types output format the skill produces. It includes trigger phrases to invoke the skill.</a>

CAUTION: Description of what the skill does and when to use it must be only one line. Max 1024 characters.

<a target="_blank" href="https://www.youtube.com/watch?v=IjiaCOt7bP8">VIDEO</a>: Agent Skills</a> makes use of OpenAI's "open agent skills standard" (<a target="_blank" href="https://www.vibesparking.com/en/blog/ai/agent-skills/2026-01-15-agent-skills-open-standard-authoritative-guide/">released on December 18, 2025</a>), written in OpenAI Codex CLI, IDE Extension, Codex app. Google Gemini and DeepMind adopted it too. They's on <a target="_blank" href="https://skillsmp.com/">skillsmp.com marketplace</a>

https://thenewstack.io/agent-skills-anthropics-next-bid-to-define-ai-standards/
Open Agent Skills spec is at:
https://agentskills.io/home

https://www.atcyrus.com/skills
Marketplace



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

https://claude.com/partners

<a target="_blank" href="https://www.anthropic.com/news/claude-partner-network">"Anthropic invests $100 million into the Claude Partner Network"</a> (announced Mar 12, 2026) mentions "technical" <strong>Claude Certified Architect (CCA)</strong> Foundations certification.

#CAExamPrep 
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

The community confirms is the exam's focus areas: fallback loop design, Batch API cost optimization, JSON schema structuring to prevent hallucinations, and MCP tool <a target="_blank" href="https://www.youtube.com/watch?v=0cVuMHaYEHE">orchestration</a>.

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

<a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/303332">Claude Model Family</a>:

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

1. Run the <tt>simple-msg.py</tt> from https://github.com/bomonike/claude-templates...
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

Claude's AskUserQuestion tool can be invoked used to produce a detailed specification document for spec-based development with a prompt 
<a target="_blank" href="https://www.atcyrus.com/stories/claude-code-ask-user-question-tool-guide">such as</a>:
   "read this @SPEC.md and <strong>interview me</strong> in detail using the AskUserQuestionTool about anything: technical implementation, UI & UX, concerns, tradeoffs, etc. but make sure the questions are not obvious.
   Be very in-depth and continue interviewing until it's complete, then write the spec to the file."

https://github.com/jarrodwatts/claude-code-config/blob/main/commands/interview.md ???

<a target="_blank" href="https://github.com/anthropics/courses/tree/master/prompt_evaluations">Prompt Evaluations</a>


<a name="MCP"></a>

## MCP

MCP Servers defined by https://github.com/punkpeye/awesome-mcp-servers and others
provide <strong>tool schemas</strong> and <strong>function code</strong>
that someone else has already implemented as an MCP Server.
So MCP dramatically reduces the development work required on your end.

<a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/276798">PROTIP</a>:
MCP Servers and tool use are complementary but different concepts. 


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



<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
