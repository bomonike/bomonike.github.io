---
layout: post
date: "2026-03-25"
lastchange: "26-03-25 v006 support :anthropic-certs.md"
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
created: "2021-11-01"
---
<a target="_blank" href="https://bomonike.github.io/anthropic-certs"><img align="right" width="100" height="100" alt="anthropic-certs.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/anthropic-certs.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

<a name="Products"></a>

## Claude Product Line

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1774449180/anthropic-systems-hist_vl2oig.png"><img align="right" width="300" alt="anthropic-systems-hist.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774449180/anthropic-systems-hist_vl2oig.png" /></a>REMEMBER: Anthropic doesn't offer phone or live chat support, only thru <a target="_blank" href="https://support.claude.com/en/">chat at support.claude.com</a>. Manages several production environments:

* <a target="_blank" href="https://claude.ai/">claude.ai</a> 

   Meet Claude - Platform - Solutions - Pricing - Resources - Contact sales - Try Claude

* <a target="_blank" href="https://platform.claude.com/">platform.claude.com</a> is the user <strong>Claude Console</strong> Dashboard, Workbench, Files, and <a href="#Skills">Skills</a>, <a target="_blank" href="https://platform.claude.com/docs/en/home">Documentation</a> (for each organization).

* Unlike chatting, using <strong>Claude Code</strong> is "like handing a capable teammate who actually does the work."

* Claude API refers to the endpoint provided to SDK requests.

* <a target="_blank" href="https://www.linkedin.com/showcase/claude/posts/?feedView=all">"Claude" on LinkedIn.com</a> says " Claude is an AI assistant built by Anthropic to be safe, accurate, and secure." in Technology, Information and Internet. 884K followers.

   "Brainstorm in Claude, build in Cowork"

   "Claude" refers to foundation models created by Anthropic.

   REMEMBER: Anththropic does not <strong>host</strong> their own models but use AWS, Azure, GCP, etc.
   Claude is the only frontier AI model available on all three leading cloud providers: AWS, Google Cloud, and Microsoft.

   PROTIP: That enables us to bring costs down by <a target="_blank" href="https://medium.com/towards-artificial-intelligence/i-cancelled-my-200-mo-claude-api-subscription-again-0e2175502778">using another foundation model</a> while using Claude Code/Work.


## Anthropic the Company

1. <a target="_blank" href="https://www.linkedin.com/company/anthropicresearch/posts/?feedView=all">Anthropic's entry on LinkedIn</a> classifies the company in the "Research Services" industry:

   "Anthropic is an AI safety and research company working to build reliable, interpretable, and steerable AI systems."

   3M followers. 501-1K employees.

1. <a target="_blank" href="https://en.wikipedia.org/wiki/Anthropic" title="Visited 25-03-25">https://en.wikipedia.org/wiki/Anthropic</a> says the company is headquartered in San Francisco's <a target="_blank" href="https://en.wikipedia.org/wiki/Foundry_Square">Foundry Square</a> (near the Bay Bridge) at 500 Howard and First Streets (across from Chipotle & BlackRock and close to the SalesForce tower's BART/busses). 

   The wiki summarizes the history of the US Government's use of Claude for domestic surveillance or in fully autonomous weapons.

1. CEO Dario Amodei was OpenAI's Vice President of Research.

1. Claude would be integrated into the Databricks Data Intelligence Platform and Snowflake's platform.

1. Visit <a target="_blank" href="https://anthropic.com/">https://anthropic.com/</a><br />-- the corporate marketing landing page.

   Notice "Anthropic is a public benefit corporation dedicated to securing its benefits and mitigating its risks."

1. Click <a target="_blak" href="https://www.anthropic.com/research">"Read more" at https://www.anthropic.com/research</a> about results from Anthropic's survey of users.

   1. Click "Posts" tab to view announcements.
   1. Click <a target="_blank" href="https://www.linkedin.com/ad-library/search?companyIds=106863934">"Ads"</a> to see videos of Superbowl commercials.
   <br /><br />

1. <a target="_blank" href="https://www.youtube.com/@anthropic-ai">Anthropic's YouTube channel</a>

   * https://medium.com/@the.gigi/claude-code-deep-dive-lock-him-up-ea142fc8246b by Gigi Sayfan
   <a target="_blank" href="https://the-gigi.github.io/gigi-zone/posts/2026/03/cc-deep-dive-12-lock-him-up/">CCDD (Claude Code Deep Dive)</a>

1. Random YouTube videos peddling tutorials:
   * <a target="_blank" href="https://www.youtube.com/watch?v=lNNH-Ox_r04" title="Viewed 25-03-25">VIDEO: "Claude Isn't Safe. This Anthropic Whistleblower Has the Proof."</a> by Novara Media quoting Mrinank Sharma's resignation letter.
   * <a target="_blank" href="https://youtu.be/2u93VTYvG5U" title="Viewed 25-03-25">"Claude Computer Use Just Dropped, Here's How to Hack It"</a> (Use the Min browsser to avoid blocking) to plug <a target="_blank" href="https://www.skool.com/makerschool/about">$184/mo Maker School</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=vDVSGVpB2vc" title="Viewed 25-03-25">"How to Build Claude Agent Teams Better Than 99% of People"</a> by Nate Herk - AI Automation of <a target="_blank" href="https://www.skool.com/ai-automation-society-plus/about" title="Viewed 25-03-25">$99/mo AI Automation Society Plus</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=wXQGd-Yg8Ac">"Claude's Biggest Update Just Dropped... (Computer Use)"</a> by Brock Mesarich | AI for Non Techies to pitch <a target="_blank" href="https://www.skool.com/aifornontechies1/about">$47/mo AI for Non-Technies</a>: "Dispatch" from your phone.
   <br /><br />


## Pricing Subscriptiions

Anthropic's Superbowl commercials made a big deal about free accounts not having ads.

Sign up for a paid Claude AI account to use Claude Code at <a target="_blank" href="https://claude.com/pricing">https://claude.com/pricing</a>:
* Claude Free
* Claude Max $17/month to use Claude Code and Cowork
* Claude Max $100/month for 5x or 20x more usage than Pro
* Teams
* Enterprise
<br /><br />
<a target="_blank" href="https://support.claude.com/en/articles/8606394-how-large-is-the-context-window-on-paid-claude-plans">Claude’s context window</a> is 200K, meaning it can ingest 200K+ tokens (about 500 pages of text or more) when using a paid Claude plan.
The Claude API can ingest <strong>1M tokens</strong> when using Claude Opus 4.6 or Sonnet 4.6.
Users on Claude Code with a Max, Team, or Enterprise plan, Claude Opus 4.6 have a 1M token context window.

When your conversation approaches the context window limit, Claude summarizes earlier messages to make room for new content. 

## Claude app Install

1. PROTIP: Instead of (using an internet browser such as Chrome) at clicking "Download desktop app" (claude.dmg to install on macOS) <a target="_blank" href="https://claude.ai/login">https://claude.ai</a> or <a target="_blank" href="https://claude.com/download">https://claude.com/download</a>,<br />open your Terminal app and run:
   ```dash
   brew info --cask claude
   brew install --cask claude
   ```
   <pre>
   Anthropic's official Claude AI desktop app
   ==> Moving App 'Claude.app' to '/Users/johndoe/Applications/Claude.app'
   </pre>

1. Confirm installation location: 
   ```bash
   whereis claude
   ```
   If you installed using Homebrew:
   <pre>
   claude: /opt/homebrew/bin/claude
   </pre>


<hr />

<a name="ClaudeCodeTemplate"></a>

## Claude Code Template

Load my template:

1. In your OS Terminal app, create a GitHub folder. Example:
   ```bash
   git clone https://github.com/bomonike/claude-proj1.git --depth 1
   cd claude-proj1
   ```
1. View:
   * MEMORY.md 
   * https://github.com/centminmod/my-claude-code-setup?tab=readme-ov-file#alternate-read-me-guides
   * Git Worktrees (for <a target="_blank" href="https://code.claude.com/docs/en/desktop#work-in-parallel-with-sessions">Parallel Sessions in Claude Code</a> via Claude Desktop apps
   * https://github.com/Piebald-AI/claude-code-system-prompts?tab=readme-ov-file
   * etc. ???
   <br /><br />

   * https://github.com/Piebald-AI/claude-code-system-prompts?tab=readme-ov-file#system-reminders

1. Customize System prompts using https://github.com/Piebald-AI/tweakcc

1. PROTIP: Instead of clicking "Download" for "Desktop" within "Claude Code environments", 
   ```bash
   curl -fsSL https://claude.ai/install.sh | bash
   ```
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

1. Invoke the claude app:
   ```bash
   $( which claude )
   ```
   <pre>
   /opt/homebrew/bin/claude
   </pre>

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1774399725/claude-code-start_lbx13m.png"><img alt="claude-code-start.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774399725/claude-code-start_lbx13m.png" /></a>

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

1. Consider this:

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1774378280/how-i-structure-claude-code-projects-skills-mcp-v0-ubchqhdo8ujg1_q633zf.webp"><img alt="how-i-structure-claude-code-projects-skills-mcp-v0-ubchqhdo8ujg1.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1774378280/how-i-structure-claude-code-projects-skills-mcp-v0-ubchqhdo8ujg1_q633zf.webp" /></a>


   <a name="CLAUDE.md"></a>
   
   ### CLAUDE.md file

   REMEMBER: Claude Code has no memory. On every new single session, it wakes up with <strong>zero context</strong> about your project.
   So history and preferences must be added added as context.

1. Start Claude Code in your project’s root directory:
   ```bash
   claude
   ```
   If you used Homebrew to install Claude 
   ```bash
   $(which cl???)
   ```

1. At the <sstrong>Claude CLI</strong>, 
1. Copy in files from ???

   * CLAUDE.md referenced by
   * state.md — current state of the project
   * architecture.md — how everything fits together
   * terraform-CLAUDE.md
   * python-CLAUDE.md
   <br /><br />

1. generate a starter CLAUDE.md as a starting point:
   ```bash
   /init
   ```

1. List folders and files:
   ```bash
   tree
   ```
   <pre>
    ├── api
    ├── web
    ├── .editorconfig
    ├── .env.example
    ├── .gitignore
    ├── CLAUDE.md            # File generated by Claude Code
    ├── README.md
    └── docker-compose.yml
   </pre>

1. Edit file CLAUDE.md, the long-term memory file.
   ```
    # CLAUDE.md

    This file guides Claude Code (claude.ai/code) when working with code in this repository.
   ```
   REMEMBER: At the start of <strong>each agent session</strong>, Claude looks for a <strong>CLAUDE.MD</strong> file in each GitHub repository root, in parent directories for monorepo setups, or in your home folder for universal application across all projects. So the file must be named with uppercase "CLAUDE", lowercase ".md" (like GitHub looks for "README.md"). Providing this context up front helps agents avoid running incorrect commands or introducing architectural or stylistic inconsistencies when implementing new features.
   
   Each CLAUDE.md file holds markdown-formatted <strong>project-specific context</strong> that should be repeated in every prompt: Project context (basic rules), About this project, Key directories, Standards, structure, conventions, workflows, style, domain-specific terminology. Example:
   ```
    # Project Context
    When working with this codebase, prioritize readability over cleverness.
    Ask clarifying questions before making architectural changes.

    ## Project Overview

    ***RunCover*** is a full-stack web application that generates Wrapped-style short videos of your GPX activities (runs, rides, etc.). Users upload GPX files, and the system creates personalized visual summaries of their activities.

    ## About This Project

    FastAPI REST API for user authentication and profiles.
    Uses SQLAlchemy for database operations.
    Uses Pydantic for validation.

    ## Terminology Specific to Domain

    - **Wraps:** Another name for the annual video summary video for users.
    - **Athlete:** Also referred to as Users in the system.
    - **Track:** Refers to the collection of segments in a GPX file making up the runner's route.
    - **Pace:** Refers to running speed. Always in `min/km` or `min/mile`

    ## Tech Stack

    - **Backend**: .NET 10.0, ASP.NET Core Web API, Entity Framework Core 10.0, PostgreSQL 17
    - **Frontend**: React 19, TypeScript 5.9, TanStack Router & Query, Tailwind CSS 4.1, Vite 7.2

    ### Backend

    The backend follows **Clean Architecture** with four layers:

    api/src/
    ├── RunCover.API/            # Controllers, Program.cs (entry point), middleware
    ├── RunCover.Application/    # Service interfaces, DTOs, business logic
    ├── RunCover.Domain/         # Entities (User, Activity, UserPhoto, UserTemplatePhoto), value objects
    └── RunCover.Infrastructure/ # EF Core DbContext, repositories, external services (Gemini), migrations

    Tests are split into similar layers:

    api/tests/
    ├── RunCover.Application.Tests/     # Unit tests covering classes in the RunCover.Application project
    ├── RunCover.Domain.Tests/          # Unit tests covering business logic in the RunCover.Domain.Tests project
    └── RunCover.Infrastructure.Tests/  # Tests external service implementations

    ### Frontend

    web/src/
    ├── routes/          # File-based routing (TanStack Router) - __root.tsx, index.tsx, dashboard.tsx
    ├── components/ui/   # Radix UI wrapper components
    ├── lib/api.ts       # API client utilities
    └── hooks/           # Custom React hooks

    Test files are stored alongside implementation files, and are differentiated using the `*.test.ts` suffix on the file name.

    The file `routeTree.gen.ts` is auto-generated by TanStack Router - do not edit manually.

    ## Common Commands

    dotnet build src/RunCover.API --configuration Release # Build the production API
    dotnet test tests/RunCover.Domain.Tests               # Run domain tests
    dotnet test tests/RunCover.Application.Tests          # Run application tests
    dotnet test tests/RunCover.Infrastructure.Tests       # Run integration tests
    dotnet run --project src/RunCover.API                 # Run API server
    dotnet build <csproj_file>                            # Build a project (inside project folder)
    dotnet format --verify-no-changes <csproj_file>       # Check for invalid formatted code (inside project folder)
    dotnet format <csproj_file>                           # Format code files (inside project folder)

    dotnet ef migrations add <name> --project src/RunCover.Infrastructure --startup-project src/RunCover.API
    dotnet ef database update --project src/RunCover.Infrastructure --startup-project src/RunCover.API

    ### Frontend

    The frontend uses Node.js 24. Run all commands inside `web/` directory:

    npm install                # Install dependencies
    npm run dev                # Dev server (localhost:5173)
    npm run build              # Production build
    npm run lint               # ESLint check
    npm run lint -- --fix      # Fix ESLint issues
    npm run test               # Run all tests
    npm run test -- <filename> # Run tests in a specific file

   ### Auto-Update Memory (MANDATORY)

   **Update memory files AS YOU GO, not at the end.** When you learn something new, update immediately.

   | Trigger | Action |
   |---------|--------|
   | User shares a fact about themselves | → Update `memory-profile.md` |
   | User states a preference | → Update `memory-preferences.md` |
   | A decision is made | → Update `memory-decisions.md` with date |
   | Completing substantive work | → Add to `memory-sessions.md` |

   **Skip:** Quick factual questions, trivial tasks with no new info.

   **DO NOT ASK. Just update the files when you learn something.**

   ## For new features:

   - Read the relevant source files before planning
   - Check architecture.md for structural context
   - Propose a plan before writing code

   ## For bug fixes or small changes:

   - Reference state.md and architecture.md first
   - Only read source files if the bug requires deeper context
   - Make the change directly if it's clearly scoped

    ## Workflows

    ### Creating/Modifying API Endpoints

    When creating new API endpoints:

    1. First plan the new endpoint changes, including new/updated methods, paths and request payloads
    2. Confirm proposed changes with user
    3. Implement the endpoint
    4. Add/update endpoint in the .http file, including documenting endpoint and payloads
    5. Test the .http file using: `docker run --rm -i -t -v $PWD:/workdir jetbrains/intellij-http-client <http_file_name>`

    ### Docker

    Run all commands in root directory:

    ```bash
    docker-compose up -d         # Start full stack (PostgreSQL, API, Frontend)
    docker-compose up --build -d # Rebuild all containers and start full stack (PostgreSQL, API, Frontend).
                                # First try the first command before rebuilding.
    ```

    ## Key Directories

    - `app/models/` - database models
    - `app/api/` - route handlers
    - `app/core/` - configuration and utilities

    ## Standards

    - Type hints required on all functions
    - Use Pydantic models for all request/response schemas
    - Follow existing patterns for error handling

    ## Code Style

    Read `docs/csharp-standards.md` when modifying or creating any C# files.
    Read `docs/web-standards.md` when modifying a JS, TS, or CSS files.

    - General:
        - Prefer writing clear code and use inline comments sparingly
    - C#: 
        - 4-space indent
        - `PascalCase` for classes/methods
        - `_camelCase` for private fields
        - `camelCase` for local variables, parameters
        - Prefer primary constructors where possible
        - Use auto-properties, and `field` if necessary
        - Write XML comments on all classes, methods, properties and fields
        - Tests:
            - `<ClassName>Tests` for test class
            - `<MethodName>_<Conditions>_<AssertedOutcome>` for test methods (never `Async` suffix)
            - Arrange, Act, Assert pattern (comment each section in method)
    - TypeScript/JavaScript/CSS:
        - 2-space indent
        - Document all methods, types and interfaces with JSDoc comments
        - Keep `*.test.ts` files in same directory as corresponding `*.ts` file
    - Commits: 
        - Use Conventional Commit format
        - **Commit Types:** `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`
        - **Scopes:** `web`, `api`, `docker`

   ```
   An example of standards for using specific MCP servers:
   ```
    ## Model Context Protocol (MCP) Servers

    ### Shadcn UI MCP
    When working with Shadcn UI components, always use the Shadcn MCP server to:
    - Browse available component repositories
    - Search for specific components
    - Install components from configured registries
   ``` 

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

1. Explore Claude Plugin Marketplace of Curated plugins, agent skills, and MCP servers for Claude Code: https://claudemarketplaces.com/learn

   <a target="_blank" href="https://claudemarketplaces.com/">https://claudemarketplaces.com</a>

1. Consider https://github.com/BayramAnnakov/claude-reflect on Claude Plugin Marketplace - a self-learning system (<tt>/reflect-skills</tt>) for Claude Code that captures corrections, positive feedback, and preferences — then syncs them to CLAUDE.md and AGENTS.md.

* <a target="_blank" href="https://claude.com/product/cowork?open_in_browser=1">Claude Co-Work</a> - "Hand off tasks to Claude and come back to finished work."

* <a target="_blank" href="https://claude.com/skills">Claude Skills</a> "turn expertise, procedures, and best practices into reusable capabilities." To ensure output follows proven patterns (rather than guessing) for handling PowerPoint pptx files, <strong>pptx/SKILL.md</strong> is defined. 

   https://platform.claude.com/workspaces/default/skills
   handlers for pdf, Microsoft xlsx, pptx, docx, 


## Create an iPhone app

<a target="_blank" href="https://www.youtube.com/watch?v=18V3lFePdWU" title="Uploaded Jul 25 2025">
VIDEO</a>: Chris Raroque runs Claude Code Opus inside a Warp client referencing a [paid] mobbin.com design template. Voice dictates changes. Breaks down generation section by section. No hand edits.


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

Domains:
1. 27% Agentic Architecture & Orchestration
2. 20% Claude Code Configuration & Workflows
3. 20% Prompt Engineering & Structured Output	
4. 18% Tool Design & MCP Integration	
5. 15% Context Management & Reliability	
<br /><br />

The community confirms is the exam's focus areas: fallback loop design, Batch API cost optimization, JSON schema structuring to prevent hallucinations, and MCP tool orchestration.

IBM AI Engineering (Coursera)	ML/DL concepts and model deployment	Conceptual + hands-on	Cloud-agnostic

https://www.anthropic.com/learn
Anthropic Academy

https://anthropic.skilljar.com/claude-certified-architect-foundations-access-request

References:
* https://dev.to/mcrolly/inside-anthropics-claude-certified-architect-program-what-it-tests-and-who-should-pursue-it-1dk6


<a name="Models">

## Models

<a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/303332">Claude Model Family</a>:

| &nbsp; | Claude Opus | Claude Sonnet | Claude Haiku |
| ------ | ----------- | ------------- | ------------ |
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

REMEMBER: The Reliable Cutoff is the date through which knowledge is most extensive and reliable.
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

1. Run the <tt>simple-msg.py</tt> from https://github.com/bomonike/claude-proj1...
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
1. Run the <tt>curl-model-info.sh</tt> from https://github.com/bomonike/claude-proj1...

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
1. Review token usage at
   https://platform.claude.com/usage


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



<a name="MCP"></a>

## MCP

<a target="_blank" href="https://anthropic.skilljar.com/claude-in-amazon-bedrock/276798">PROTIP</a>:
This is a common misconception. MCP Servers and tool use are complementary but different concepts. 
Tool use is about Claude calling functions to accomplish tasks. 
MCP is about who provides those functions - instead of you writing them, someone else has already implemented them in an MCP Server.

The key insight is that MCP Servers provide tool schemas and functions already defined for you, 
while direct tool use requires you to author everything yourself. Both involve Claude using tools, 
but MCP dramatically reduces the development work required on your end.



## Tutorials

<a target="_blank" href="https://www.udemy.com/course/claude-code-the-complete-guide/">$15.99 Udemy: "Claude Code – The Complete Guide: Master Claude Code & Modern AI Coding — Real Vibe Coding Projects" (Rating: 3.9 out of 5)


## Code Container

Instead of sitting around monitoring every prompt like a hall monitor just in case a rogue <tt>rm -rf</tt> slips by, I use Code Container to mount every project into an <strong>isolated container</strong> where I can let my harness run loose with full permissions. My actual machine stays untouched.

1. Install container:
   ```bash
   npm install -g code-container
   ```

300ms startup time!



## Run in Containers

   References:
   * https://medium.com/gitconnected/stop-babysitting-claude-code-get-work-done-10x-faster-with-code-container-fcd515381751   

   * https://medium.com/@the.gigi/claude-code-deep-dive-lock-him-up-ea142fc8246b by Gigi Sayfan
   <a target="_blank" href="https://the-gigi.github.io/gigi-zone/posts/2026/03/cc-deep-dive-12-lock-him-up/">CCDD (Claude Code Deep Dive)</a>
