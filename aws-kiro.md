---
layout: post
date: "2026-02-26"
lastchange: "26-02-26 v004 steering files :aws-kiro.md"
url: https://bomonike.github.io/aws-kiro
file: "aws-kiro"
title: "AWS Kiro"
excerpt: "Create Spec-Driven Development (SDD) of apps running in AWS"
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

This article defines how to create apps on the AWS cloud using Kiro, step-by-step.

## Socials

Kiro was first released at AWS re:Invent 2025 on <a target="_blank" href="https://kiro.dev/blog/introducing-kiro/">July 14th, 2025</a>. That's "the day artificial intelligence stopped being a tool and became a colleague".

   * https://discord.com/invite/kirodotdev
   * https://www.linkedin.com/showcase/kirodotdev
   * https://www.instagram.com/kirodotdev
   * https://x.com/kirodotdev
   * https://bsky.app/profile/kiro.dev
   * https://medium.com/search?q=kiro
   * https://aws.amazon.com/search/?searchQuery=kiro
   * https://learning.oreilly.com/search/?q=kiro&rows=100&language=en
   <br /><br />

In November 2025, an internal memo signed by two of Amazon’s most powerful executives -- Peter DeSantis, VP of AWS utility computing, and Dave Treadwell, VP of eCommerce Foundation -- issued a directive that "80% of you will use AI for coding at least once a week." But Kiro is Amazon’s AI-native development tool. “We do not plan to support additional third-party AI development tools.” (OpenAI Codex). Anthropic's Claude Code briefly got the same tag before the designation was reversed after <a target="_blank" href="https://timesofindia.indiatimes.com/technology/tech-news/amazon-wants-80-of-its-developers-to-use-ai-for-coding-at-least-once-a-week-but-theres-one-condition/articleshow/128448190.cms">1,500 Amazon employees endorsed the formal adoption of Claud</a>.

What makes this especially complicated is that Amazon has invested $8 billion in Anthropic, the company behind Claude Code, and signed a $38 billion cloud computing deal with OpenAI.


## What's Kiro?

Kiro builds code from design documents (spec requirements), which it can generate by analyzing a codebase. 
Kiro creates data flow diagrams, TypeScript interfaces, database schemas, and API endpoints—like the Review interfaces for its review system.

Kiro's <strong>Hooks</strong> are event-driven automations that execute when a file is created or saved:
Hooks delegate tasks to a collaborator. 

   * When a React UI component is saved, Kiro hooks update the test file.
   * When an API endpoint (URL) is modified, hooks refresh README files.
   * Upon a git commit, security hooks scan for leaked credentials.
   <br /><br />

Hooks enforce consistency. Set up a hook once, and Kiro handles the rest.

Transion from reactive debugging to proactive architecture.

Frame problems effectively for AI analysis  Validate AI suggestions against real-world constraints  Maintain clear boundaries between AI capabilities and human responsibilities  Accelerate learning through systematic AI-guided exploration  Focus on high-value human skills while AI handles routine complexity
-- <a target="_blank" href="https://medium.com/@kombib">NotbookLM expert</a> Mihailo Zoin. Amazon Kiro: First Contact - When AI Becomes a Colleague (OUT OF THE BOX PROGRAMMING Book 1) (p. 3). (Function). Kindle Edition. 

Processing of <strong>Amazon Q</strong> AI chatbot prompts was <a target="_blank" href="https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/upgrade-to-kiro.html">moved into Kiro</a>.

   * <a target="_blank" href="https://www.linkedin.com/in/saurabhdahal/">Saurabh Dahal</a> is Sr Dev Advocate <a target="_blank" href="https://www.youtube.com/watch?v=HI_qexVlU2Y">VIDEO</a>
   * https://aws.amazon.com/blogs/machine-learning/build-aws-architecture-diagrams-using-amazon-q-cli-and-mcp/
   <br /><br />

   "Your browser version is unsupported."

<a target="_blank" href="https://aws.amazon.com/blogs/database/build-a-fitness-center-management-application-with-kiro-using-amazon-documentdb-with-mongodb-compatibility/">
Build a Kiro app referencing DocumentDB for fitness center management</a>.


## Kiro Installers

Kiro has two basic components:

   1. <a target="_blank" href="https://kiro.dev/changelog/cli">Latest release</a> of <a href="#InstallCLI">Kiro CLI (Command Line Interface)</a> installed and run using a Terminal app; and

   2. <a target="_blank" href="https://kiro.dev/changelog/ide">Latest release</a> of <a href="#InstallIDE">Kiro IDE (Development Environment)</a> run by clicking a mouse as well as keyboard.

Additionally, Apple's XCode IDE is <a target="_blank" href="https://builder.aws.com/content/39bTP5YwFqftZPxsm1oGY9gxmCJ/building-ios-apps-with-kiro-cli-and-xcodes-agentic-coding-tools" title="Published Feb 13, 2026">>also used to create iOS apps</a> with Kiro CLI and <a target="_blank" href="https://developer.apple.com/documentation/xcode/giving-agentic-coding-tools-access-to-xcode">Xcode Agentic Coding Tools</a>.
by https://www.linkedin.com/in/cmanikandan/">Mani Chandrasekaran</a>
See <a target="_blank" href="https://developer.apple.com/documentation/Xcode/setting-up-coding-intelligence">Apple’s Coding Intelligence setup guide</a>


<a name="InstallCLI"></a>

### Install Kiro-CLI

1. Open the macOS default Terminal app, not another AI CLI app (such as OpenAI or Warp.dev), which cause this error reported by doctor:

   <tt>✘ Kiro CLI terminal integrations: WarpTerminal is not supported</tt>

1. PROTIP: Instead of using <tt>curl</tt> following Kiro CLI docs at <a target="_blank" href="https://kiro.dev/docs/cli/">https://kiro.dev/docs/cli</a>, use Homebrew for better upgrade in the future:
   ```
   brew install kiro-cli
   ```
   Response:
   <pre>
   ==> Downloading https://desktop-release.q.us-east-1.amazonaws.com/1.24.0/Kiro%20CLI.dmg
   ######################################################################################## 100.0%
   ==> Installing Cask kiro-cli
   ==> Moving App 'Kiro CLI.app' to '/Users/johndoe/Applications/Kiro CLI.app'
   ==> Linking Binary 'kiro-cli' to '/opt/homebrew/bin/kiro-cli'
   🍺  kiro-cli was successfully installed!
   </pre>

1. The first time kiro-cli is run, click "Allow access" to the browser window that appears.
   /coVerify the install:
   ```
   kiro-cli --version
   ```
   <pre>
   kiro-cli 1.24.0
   </pre>

1. View the history of Kiro CLI releases:
   ```
   kiro-cli version --changelog
   ```


   <a name="InstallIDE"></a>

   ## Install Kiro IDE

1. Install the Kiro.app, which is a clone of Microsoft Visual Studio Code IDE. 
   ```bash
   brew install --cask kiro
   ```
   Response:
   <pre>
   ✔︎ JSON API cask.jws.json                                            Downloaded   15.3MB/ 15.3MB
   ✔︎ JSON API formula.jws.json                                         Downloaded   32.0MB/ 32.0MB
   ==> Downloading https://prod.download.desktop.kiro.dev/releases/stable/darwin-arm64/signed/0.8.
   ######################################################################################## 100.0%
   ==> Installing Cask kiro
   ==> Moving App 'Kiro.app' to '/Users/johndoe/Applications/Kiro.app'
   ==> Linking Binary 'code' to '/opt/homebrew/bin/kiro'
   🍺  kiro was successfully installed!   
   </pre>

1. View the history of Kiro CLI releases:
   
   <a target="_blank" href="https://kiro.dev/changelog/ide/">https://kiro.dev/changelog/ide/</a>
   
1. Open Kiro.app:
   ```bash
   kiro
   ```

1. Log in: ???    
   

   ### Kiro's Keyboard Shortcuts

1. Switch between the Kiro IDE and CLI, press ^ and ` (hold down shift and the 6 key for ^ then the ` to the left of 1). Other shortcuts:

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769430704/kiro-keys-538x836_rcmp0x.png"><img alt="kiro-keys-538x836.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769430704/kiro-keys-538x836_rcmp0x.png" /></a>


   <a name="Tree"></a>

   ### Run Linux shell Tree command

   REMEMBER: Use an exclaimation prefix to invoke OS-level commands.

1. In the Kiro CLI, list files within the tree of folders under the hidden folder created by the Kiro installer:
   ```
   !tree ~/.kiro
   ```
   <pre>
   |-- agents
   |   `-- agent_config.json.example
   |-- argv.json
   |-- extensions
   |   `-- extensions.json
   |-- <a href="#Powers">powers</a>
   |   `-- registry.json
   |-- settings
   |   `-- cli.json
   `-- <a href="#Steering">steering</a>
   </pre>
   Not listed is internal file <tt>.cli-bash_history</tt> to track every command entered.

   * https://towardsdev.com/the-mcp-server-stack-10-open-source-essentials-for-2026-cb13f080ca5c


   <a name="Powers"></a>

   ## Powers

   <a target="_blank" href="https://www.youtube.com/watch?v=14se2WpEaCo&pp=0gcJCYcKAYcqIYzv">VIDEO: Kiro Powers</a>
   inject specialized context and tools into Kiro agents on-demand, providing focused knowledge exactly when needed. Unlike traditional context injection that loads everything upfront, Powers activate specific capabilities dynamically. 
   * https://dev.to/kirodotdev/analyzing-react-best-practices-with-kiro-powers-4i1f but https://github.com/salihgueler/react-best-practices is gone. https://vercel.com/blog/introducing-react-best-practices
   * https://github.com/kirodotdev/powers/blob/main/power-builder/POWER.md
   * https://github.com/kirodotdev/powers/blob/main/power-builder/steering/interactive.md
   * https://github.com/kirodotdev/powers/blob/main/power-builder/steering/testing.md
   * https://dev.to/aws/how-i-used-kiro-to-optimize-its-own-mcp-configuration-4mdg
   <br /><br />

   Unlike traditional context injection that loads everything upfront, Powers activate specific capabilities dynamically.   
   Kiro Powers inject specialized context and tools into Kiro agents on-demand, providing focused knowledge exactly when needed. 

   To build Kiro Powers, add <a target="_blank" href="https://github.com/kirodotdev/powers/tree/main/power-builder">Power Builder</a> or from the Vercel agent-skills repository.

   
   <a name="Steering"></a>

   ### Steering specs

   * https://www.youtube.com/watch?v=Ap0tXXvyn3k by Allie Fortman, GTM
   <br /><br />

1. Add into the "steering" folder .md (markdown) files <strong>foundational steering files</strong> from the Steering section in the Kiro panel. Click the Generate Steering Docs button, or click the + button and select the Foundation steering files option

   * product.md (Product Overview) - Defines your product's purpose, target users, key features, and business objectives. This helps Kiro understand the "why" behind technical decisions and suggest solutions aligned with your product goals.

   * tech.md (Technology Stack) - Documents your chosen frameworks, libraries, development tools, and technical constraints. When Kiro suggests implementations, it will prefer your established stack over alternatives.

   * structure.md (Project Structure) - Outlines file organization, naming conventions, import patterns, and architectural decisions. This ensures generated code fits seamlessly into your existing codebase.

   * AGENTS.md provides steering directives. This does not support inclusion modes and are always included.

1. Add into the "steering" folder .md (markdown) files that define your team's own <strong>standards and conventions</strong> (context) for building apps. So <a target="_blank" href="https://builder.aws.com/content/35ciE341oLnIjDbpGsVRvIGfMCf/mastering-kiro-steering-a-complete-guide-to-context-aware-ai-development">master it</a>.

   "KIRO automatically shows which steering documents are being included in your conversation, giving you full visibility into the context being applied.*"

1. Load steering files from <a target="_blank" href="https://www.linkedin.com/in/sagemaker/">Vivek Velso</a> cataloged by https://www.promptz.dev/library/kiro-best-practices :

   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/aws-cli-best-practices.md”>aws-cli-best-practices.md</a> <tt>—no-cli-pager</tt> and AWS integration patterns
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/cdk-best-practices.md">cdk-best-practices.md</a> - Project structure, testing, and deployment patterns
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/development-standards.md">development-standards.md</a> - Dependency management, code quality, documentation
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/docker-best-practices.md">docker-best-practices.md</a> - Container security and optimization
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/git-best-practices.md">git-best-practices.md</a> - Conventional commits, branching, and security
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/mcp-best-practices.md">mcp-best-practices.md</a> - Model Context Protocol server configuration and usage
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/python-best-practices.md">python-best-practices.md</a> - Code style, virtual environments, and testing
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/react-best-practices.md">react-best-practices.md</a> - Component patterns, hooks, and accessibility
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/security-best-practices.md">security-best-practices.md</a> - Code security, dependency management, data protection
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/testing-best-practices.md">testing-best-practices.md</a> - Minimal verbosity, output management, performance
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/steering/typescript-best-practices.md">typescript-best-practices.md</a> - Code style, type safety, and testing guidelines

1. Load steering files described in https://kiro.dev/docs/steering/ from ???

   * https://github.com/awsdataarchitect/kiro-best-practices boilerplate
   * https://github.com/gotalab/cc-sdd builds a Photo Album app.
   * https://github.com/cremich/promptz.lib
   * https://github.com/5capeg0at/kiro-tdd-workflow-files
   * https://github.com/mikeartee/kiro-steering-docs
   * https://github.com/cremich/promptz.lib
   * https://github.com/mbonig/kiro-steering-docs

   Files 
   * well-architected-context.md
   * terraform_best_practices.md
   * minimal-engineering-approach.md
   * git_commit_rules.md

   Others: QUESTION: Where do we find these???

   * troubleshooting_app.md
   * sam-deployment-bucket.md
   * react_best_practices.md
   * python_best_practices.md
   * custom-nova-act.md
   * aws_cli_usage.md
   * automation-notes.md
   * architecture_diagram_rules.md
   * approved-model-for-building-agentic.md
   * amazon-q-resources-reference.md
   * CloudFront_S3_setup_for_UI_app_website.md
   
   * api-standards.md - Define REST conventions, error response formats, authentication flows, and versioning strategies. Include endpoint naming patterns, HTTP status code usage, and request/response examples.

   * testing-standards.md - Establish unit test patterns, integration test strategies, mocking approaches, and coverage expectations. Document preferred testing libraries, assertion styles, and test file organization.

   * code-conventions.md - Specify naming patterns, file organization, import ordering, and architectural decisions. Include examples of preferred code structures, component patterns, and anti-patterns to avoid.

   * security-policies.md - Document authentication requirements, data validation rules, input sanitization standards, and vulnerability prevention measures. Include secure coding practices specific to your application.

   * deployment-workflow.md - Outline build procedures, environment configurations, deployment steps, and rollback strategies. Include CI/CD pipeline details and environment-specific requirements.

   * API design standards
   * deployment-procedures
   * security-policies
   * css-standards
   * javascript-standards
   * product
   * project-structure
   * tech-stack
   * testing-approaches
   * troubleshooting-guide
   <br /><br />
   This is how consistency is automatically enforced.

   These files can be generated or refactored by AI.

1. In the YAML front matter (between "---") at the top of each steering file, configure <strong>inclusion</strong> directives for loading, to optimize performance and ensures relevant context is available when needed. 
   ```yaml
   ---
   title: Invoked in all runs
   inclusion: always
   ---
   ```
   For example, steering for Typescript files use this conditional:
   ```yaml
   ---
   title: Typescript steering
   inclusion: fileMatch
   fileMatchPattern: "components/**/*.tsx"
   ---
   ```
   Other fileMatchPatterns:
   * "*.tsx" - React components and JSX files
   * "app/api/**/*" - API routes and backend logic
   * "**/*.test.*" - Test files and testing utilities
   * "src/components/**/*" - Component-specific guidelines
   * "*.md" - Documentation files

1. Know Kiro commands:
   ```
   kiro-cli --help
   ```
   <pre>
   ╭────────────────────────────────────────────────────╮
   │ chat         Chat with Kiro CLI                    │
   │ agent        Manage AI agents                      │
   │ doctor       Debug installation issues             │ 
   │ settings     Customize appearance & behavior       │
   │ quit         Quit the app                          │
   ╰────────────────────────────────────────────────────╯
   </pre>

1. Analyze (like with Git):
   ```bash
   kiro-cli doctor
   ```
   <pre>
   Model: claude-sonnet-4 (/model to change)
   </pre>

1. Chat:
   ```bash
   kiro-cli chat
   ```
   <pre>
   Model: claude-sonnet-4 (/model to change)
   </pre>
   TODO: ???

1. Know Kiro commands:
   ```bash
   kiro-cli --help-all
   ```
   <pre>
   debug         Debug the app
   settings      Customize appearance & behavior
   setup         Setup cli components
   update        Update the Kiro application
   diagnostic    Run diagnostic tests
   init          Generate the dotfiles for the given shell
   theme         Get or set theme
   issue         Create a new Github issue
   login         Login
   logout        Logout
   whoami        Prints details about the current user
   profile       Show the profile associated with this idc user
   user          Manage your account
   doctor        Fix and diagnose common issues
   launch        Launch the desktop app
   quit          Quit the desktop app
   restart       Restart the desktop app
   integrations  Manage system integrations
   translate     Natural Language to Shell translation
   dashboard     Open the dashboard
   chat          AI assistant in your terminal
   mcp           Model Context Protocol (MCP)
   inline        Inline shell completions
   agent         Agent root commands
   help          Print this message or the help of the given subcommand(s)
   &nbsp;
   Options:
   -v, --verbose...
            Increase logging verbosity
         --help-all
            Print help for all subcommands
         --agent <AGENT>
            Launch chat with specified agent
   -h, --help
            Print help
   -V, --version
            Print version
   </pre>

1. Drag the Terminal window's right edge to widen it for viewing the response:
   <pre>
   Device authorized
   Logged in successfully
   &nbsp;
   ⠀⠀⠀⠀⠀⠀⠀     ⢀⣴⣶⣶⣦⡀⠀⠀⠀⢀⣴⣶⣦⣄⡀⠀⠀⢀⣴⣶⣶⣦⡀⠀⠀⢀⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣶⣶⣶⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀    ⢰⣿⠋⠁⠈⠙⣿⡆⠀⢀⣾⡿⠁⠀⠈⢻⡆⢰⣿⠋⠁⠈⠙⣿⡆⢰⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣦⠀⠀⠀⠀⣴⡿⠟⠋⠁⠀⠀⠀⠈⠙⠻⢿⣦⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⣿⣇⣴⡿⠋⠀⠀⠀⢀⣼⠇⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⢠⣤⣤⣤⣤⣄⠀⠀⠀⠀⣿⡆⠀⠀⣼⡟⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⢻⣧⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⣿⡿⠋⠀⠀⠀⢀⣾⡿⠁⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⢸⣿⠉⠉⠉⣿⡇⠀⠀⠀⣿⡇⠀⣼⡟⠀⠀⠀⣰⡿⠟⠛⠻⢿⣆⠀⠀⠀⢻⣧⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⠙⠁⠀⠀⢀⣼⡟⠁⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⢸⣿⣶⣶⡶⠋⠀⠀⠀⠀⣿⠇⢰⣿⠀⠀⠀⢰⣿⠀⠀⠀⠀⠀⣿⡆⠀⠀⠀⣿⡆
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⡀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣼⠟⠀⢸⣿⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⣿⡇
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⠀⣠⡀⠀⠀⠹⣷⡄⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣤⣄⠀⠀⠀⠀⠹⣿⡅⠀⠀⠸⣿⠀⠀⠀⠸⣿⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⣿⠇
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⣾⡟⣷⡀⠀⠀⠘⣿⣆⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣿⡟⣷⡀⠀⠀⠀⠘⣿⣆⠀⠀⢻⣧⠀⠀⠀⠹⣷⣦⣤⣤⣾⠏⠀⠀⠀⣼⡟
   ⠀⠀⠀⠀⠀⠀⠀    ⢸⣿⠀⠀⠀⠀⣿⡇⠹⣷⡀⠀⠀⠈⢻⡇⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣿⡇⠹⣷⡀⠀⠀⠀⠈⢻⡇⠀⠀⢻⣧⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⣼⡟
   ⠀⠀⠀⠀⠀⠀⠀    ⠸⣿⣄⡀⢀⣠⣿⠇⠀⠙⣷⡀⠀⢀⣼⠇⠀⠸⣿⣄⡀⢀⣠⣿⠇⠸⣿⣄⡀⢀⣠⣿⠇⠀⠙⣷⡀⠀⠀⢀⣼⠇⠀⠀⠀⠻⣷⣦⣄⡀⠀⠀⠀⢀⣠⣴⣾⠟
   ⠀⠀⠀⠀⠀⠀⠀    ⠀⠈⠻⠿⠿⠟⠁⠀⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠀⠀⠀⠈⠙⠻⠿⠿⠿⠿⠟⠋⠁
   &nbsp;
   Jump into building with Kiro:
   &nbsp;
   1. Ask a question or describe a task
   2. Use /context add <file> to provide Kiro with additional info
   3. Connect to external tools with by using /mcp
   &nbsp;
   Use /help for more information and happy coding!
   &nbsp;
   Model: claude-sonnet-4 (/model to change)
   </pre>

1. https://support.aws.amazon.com/#/contacts/kiro says
   "For technical support, please submit an issue on Github

   <a target="_blank" href="https://github.com/kirodotdev/Kiro/issues">https://github.com/kirodotdev/Kiro/issues</a>

1. PROTIP: Open another Terminal tab for doing other work, so you can quickly ask questions.

   REMEMBER: To the right of the ">", type a chatbot question.

1. REMEMBER: <strong>Built-in commands</strong> such as this verify whether the Xcode MCP server is connected:
   ```
   /tools
   ```
1. ???
   ```
   What is the time in NYC
   ```
   PROTIP: A question mark is not needed.

1. To exit kiro-cli, press <strong>control+c</strong> twice.

1. Consider <a target="_blank" href="https://kiro.dev/docs/cli/chat/manage-prompts/">prompt templates</a> uses "steering files" to guide AI behavior with project-specific instructions. Steering files are markdown documents in .kiro/steering/ that provide context, workflows, and constraints. When you work in Kiro, these files automatically shape how the AI assistant responds - no manual prompting required.

   <a target="_blank" href="https://github.com/jasonkneen/kiro/blob/main/spec-process-guide/prompting/templates.md">https://github.com/jasonkneen/kiro/blob/main/spec-process-guide/prompting/templates.md</a>

   https://github.com/aws-samples/sample-kiro-cli-prompts-for-product-teams

   Kiro outputs standalone HTML files that open directly in any browser - no build step or server required. That enables you to share them with stakeholders by simply sending the files.


   <a name="Hooks"></a>

   ## Agent Hooks

   Kiro hook files contain JSON-format code that specify automation actions. reach APIs.

   Hook files include clear, specific prompts.

   ### "when: fileEdited" hooks run automatically 

   when a file matching one of the "patterns", the "prompt" is displayed. Vivek's example:

   <pre>
   {
      "enabled": true,  // Change to false to disable
      "name": "Descriptive Hook Name",
      "description": "Clear description of what this hook does",
      "version": "1",
      "when": {
         "type": "fileEdited",  // or "manual"
         "patterns": ["**/*.ext"],  // or "button_text" for manual
      },
      "then": {
         "type": "askAgent",
         "prompt": "Clear, specific instructions for the AI agent..."
      }
   }   
   </pre>

   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/auto-test-on-save.kiro.hook">auto-test-on-save.kiro.hook</a> - Runs tests with minimal verbosity when code changes
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/lint-and-format-on-save.kiro.hook">lint-and-format-on-save.kiro.hook</a> - Auto-formats and lints code following project standards
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/security-scan-on-dependency-change.kiro.hook">security-scan-on-dependency-change.kiro.hook</a> - Audits when package files change
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/cdk-synth-on-change.kiro.hook">cdk-synth-on-change.kiro.hook</a> - Validates CDK code and runs synthesis
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/validate-docker-on-change.kiro.hook">validate-docker-on-change.kiro.hook</a> - Checks Docker files for best practices and security
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooksMCP Config Validation">mcp-config-validation.kiro.hook</a> - Validates MCP server configurations
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/env-file-validation.kiro.hook">env-file-validation.kiro.hook</a> - Checks .env files for security issues
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/api-schema-validation.kiro.hook">api-schema-validation.kiro.hook</a> - Validates OpenAPI/GraphQL schemas and generates types   

   ### 🔘 Manual Hooks (Button Triggers) run on-demand from the Kiro Agent Hooks panel:

   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/commit-message-helper.kiro.hook">commit-message-helper.kiro.hook</a> - Creates conventional commit messages
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/readme-spell-check.kiro.hook">readme-spell-check.kiro.hook</a> - Fixes spelling and grammar in documentation
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/mcp-server-test.kiro.hook">mcp-server-test.kiro.hook</a> - Tests all configured MCP servers
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/dependency-update-check.kiro.hook">dependency-update-check.kiro.hook</a> - Finds outdated packages and security issues
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/code-coverage-check.kiro.hook">code-coverage-check.kiro.hook</a> - Analyzes test coverage gaps
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/performance-analysis.kiro.hook">performance-analysis.kiro.hook</a> - Identifies optimization opportunities

   ### 🎛️ Optional Hooks are disabled by default

   Because these hooks are performance-sensitive, enable as needed:

   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/accessibility-audit.kiro.hook">accessibility-audit.kiro.hook</a> - Checks React components for accessibility issues
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/update-documentation.kiro.hook">update-documentation.kiro.hook</a> - Updates docs when code changes
   * <a target="_blank" href="https://github.com/awsdataarchitect/kiro-best-practices/blob/main/.kiro/hooks/translation-update.kiro.hook">translation-update.kiro.hook</a> - Syncs translation files


## Learn by playing

learn how to use Kiro by completing tasks in the codebase for a sample video game called Spirit of Kiro at
https://kiro.dev/docs/guides/learn-by-playing/



## Strands MCP Agents

   * strandsagents.com
   <br /><br />

https://www.youtube.com/watch?v=9ryQ4Nb32zk
How to Build your first Agent with AWS Strands Agents (Part 1)
by Arindam Majumder

https://www.youtube.com/watch?v=cvmC29cu0Gg&pp=ugUEEgJlbg%3D%3D
Build Stateful AI Agents with AWS Strands Sessions (Part-2)


https://www.youtube.com/watch?v=j2wYT6jqXZY
Beginner-Friendly Amazon Bedrock AgentCore & Strands Agents Tutorial

https://www.youtube.com/watch?v=dn3G9jvB98k&pp=ugUEEgJlbg%3D%3D
AWS Strands Agents SDK – Agents as Tools Explained - Multi AI Agent System at Scales #aiagents

https://www.youtube.com/watch?v=vqdXVz5lxbk
Building Multi-Agent Systems: Agents as Tools with Strands SDK

https://www.youtube.com/watch?v=m0sRdeM9RZE&pp=0gcJCXwKAYcqIYzv
Strands Agents (AWS): Build An Agent with Persistent Memory

https://www.youtube.com/watch?v=Q-tYIAuv9WI
Deploy Production-Ready Agents in 22 Minutes with AgentCore Runtime
AWS Developers

https://www.youtube.com/watch?v=dT89C2MuYj4&pp=ugUEEgJlbg%3D%3D
AWS Strands vs Bedrock Agents Explained Simply with Demo
Cloud With Raj


## References

BLOG: https://prpm.dev/blog

https://www.youtube.com/watch?v=40vTCH0Iaac&pp=2AaCAg%3D%3D
<a target="_blank" href="https://www.youtube.com/@RasmusWiding">videos</a> 
by Rasmus Widing

Hooks are event-driven automations that trigger an agent to execute a task in the background when you save, create, delete files, or on a manual trigger.
https://kiro.dev/blog/introducing-kiro-autonomous-agent/">Kiro Autonmous agent</a>

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1772088582/aws-kiro-docker-1023x593_ijrprc.png"><img align="right" width="200" alt="aws-kiro-docker-1023x593.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1772088582/aws-kiro-docker-1023x593_ijrprc.png" /></a>
<a target="_blank" href="https://pages.awscloud.com/awsmp-gim-yrdg-webinar-mpd-devops-docker-solution-spotlight-ty.html">VIDEO</a>: AWS Marketplace Solution brief (DevOps Solution Demo from [11:24]) : Docker and Kiro MCP sandboxes from Docker MCP catalog at https://awslabs.github.io/mcp/ from https://github.com/awslabs/mcp 
(for scalability, governance, security, isolation, portability, velocity) 
by Abhi Karode, Sr. Solutions Architect.

<a target="_blank" href="https://learning.oreilly.com/live-events/aws-ai-frontier-agents-kiro-aws-security-and-aws-devops-agents/0642572325008/">O’Reilly Live Event</a>:
AWS AI Frontier Agents: Kiro, AWS Security, and AWS DevOps Agents Apr 22, 2026
references https://github.com/brightkeycloud-external/aws-ai-frontier-agents

<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
