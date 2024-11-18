---
layout: post
date: "2024-11-15"
change: "v003 + other ides :copilots.md"
file: "copilots"
title: "Copilots"
excerpt: "More than automcomplete on steroids - AI tools that provide helps you write code and other tricks."
tags: [AI, Microsoft]
Categories: Microsoft
image:
  feature: https://cloud.githubusercontent.com/assets/300046/14612210/373cb4e2-0553-11e6-8a1a-4b5e1dabe181.jpg
  credit: And Beyond
  creditlink: http://www.andbeyond.com/chile/places-to-go/easter-island.htm
comments: true
created: "2023-04-01"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

This is a hands-on tutorial (with commentary) on how to use AI tools that helps you create programs (write code) and other tricks.

{% include whatever.html %}

## What is a Copilot?

On an airplane, a "co-pilot" (aka first officer) takes over when the captain goes to the bathroom or becomes incapacitated.

But in the world of software development, a "co-pilot" is a <strong>collaborator</strong> who works like a <strong>pair programming</strong> session when two people are working on the same code at the same time.

Big tech companies have been working to create AI capabilities: Microsoft, Google, OpenAI, Anthropic, and others.

- [Perplexity](https://www.perplexity.ai/) search engine that summarizes web page content
- [Noi](https://github.com/lencx/Noi)
- [ChatGPT clone](https://github.com/lencx/ChatGPT)
- [LLMLingua](https://github.com/microsoft/LLMLingua)
- [Open Interpreter](https://www.openinterpreter.com/)
- [Backplain](https://backplain.com/)

- <a target="_blank" href="https://www.youtube.com/watch?v=3xk2qG2QPdU">VIDEO</a>: <a target="_blank" href="https://wind.surf/">wind.surf</a> windsurf.ai editor, <a target="_blank" href="https://www.youtube.com/watch?v=YV7IPn4QmnE" title="Tech with Tim">VIDEO</a> combines its AI agents with Copilot to provide "Flows" that collects context to automate tasks.
AI Agents are "agentic" in that they can perform tasks autonomously, such as open files it identifies on its own, search the web, and run code. <a target="_blank" href="https://www.youtube.com/watch?v=ouT8ItvJla8">VIDEO</a>

   Codeium has a <a target="_blank" href="https://codeium.com/pricing">$10/month plan</a> that includes FIM (Fill In Middle) code suggestions they call "Supercomplete". The plan also includes access to larger Codeium models and unlimited access to GPT-4o, Claude Sonnet (Chat, Codeium extensions).

   Their <a target="_blank" href="https://codeium.com/cascade">"Cascade" agentic capabilities</a> enable collaboration between AI and human, making it the ultimate partner for complex coding workflows.

- Tabnine

## Keyboard Shortcuts

<a target="_blank" href="https://www.youtube.com/watch?v=q0PorpN6SQM">VIDEO</a>:

CoPilots leverage the <strong>context</strong> of you're typing to provide <strong>suggestions</strong> that help you write code faster.

* VSCode makes suggestions automatically. But<br />to trigger a suggestion: Alt + \ or Option (⌥) + \

   VSCode shows suggestions on the right.

* To accept a suggestion, press the <strong>Tab</strong> key on a keyboard.

* To dismiss inline code suggestion: Esc.

* To see a list of suggestions to choose from, press ^ + Return on a Mac keyboard or Ctrl + Enter on Windows.

* To open suggestions in a separate pane: Ctrl + Enter.

* Show next suggestion — Alt + ] or Option (⌥) + ]

* Show previous suggestion — Alt + [ or Option (⌥) + [


## Keys to Efficient Usage

Most AI tools only give suggestions when there is no meaningful text after the cursor on the current line (ignoring single closing braces or colons).

PROTIP: To avoid suggestions, type a period and cursor left to type in front of it.

That's unless you're using Codeium, which has a <a target="_blank" href="https://codeium.com/blog/inline-fim-code-suggestions">"FIM" (Fill In Middle) feature</a>.

REMEMBER: With Copilot: Reject with the left-arrow key. Accept suggestions by pressing the Tab key.

More frequent use of the left-arrow and Esc keys made keyboard automation more worthwhile.

PROTIP: It's difficult to reach the arrow key, so I remapped the Caps Lock key to it.

PROTIP: Even better, I mappped my 3-key foot pedal to left-arrow on the left and Tab on the right.

## Feature Examples


A. Word Completion: As you type a word the AI recognizes, the AI suggests that word. Press Tab to accept the suggestion.

   ai-word-completion.png

B. Code Completion: As you type code to call a known function name it recognizes, the AI generates code for that function.

   This helps you avoid manually searching through public repositories for examples.

C. Generate Code: Under a function def, type a docstring in natural language (English) description of what that function does, and the AI generates the code described.

   <img alt="ai-gen-from-desc.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1731881117/ai-gen-from-desc_b33dfc.png" />

D. Autofill Repetitive Code: Type a few examples of the pattern. The AI adds other items following the pattern seen.

   <img alt="Autofill Repetitive Code" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1731881117/ai-autofill_yam0t2.png" />

E. Run Tests:

   <img alt="ai-run-tests.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1731881117/ai-run-tests_ahqvcb.png" />

F. Create an Application. See the <a target="_blank" href="https://github.com/microsoft/PowerToys">PowerToys</a> project. <a target="_blank" href="https://blog.logrocket.com/building-github-copilot-app/">LogRocket</a> uses Node.js app using React.js to generate a simple quote-generating app.

F. Translation: Translate one language to others (Duolingo uses GPT-3 to correct grammar)

G. Boilerplate Code: Generate RegEx code when presented with data

H. Explain code: Highlight code and it responds with questions about it

I. Convert descriptions of colors into hex codes

J. Create Alt Text for image.


## Cursor AI Code Editor

For $20/month, $40/mo for OpenAI zero-data retention
https://www.cursor.com/pricing
from https://deepgram.com/ai-apps/cursor
Cursor is a AI-first code editor designed for pair-programming. It provides features like chat, code generation, editing assistance, and debugging support. With the ability to understand your codebase, Cursor offers real-time suggestions and can generate code snippets based on your instructions. It integrates with popular code editors and is compatible with vscode extensions.

<a target="_blank" href="https://medium.com/jonathans-musings/ai-and-the-future-of-coding-43caad31c3d3">Review</a>

## AWS CodeWhisperer

Amazon Q (for JetBrains, Visual Studio (VS) Code, Visual Studio, macOS Command Line)
is a chatbot developed by Amazon for enterprise use. Based on both Amazon Titan and GPT generative artificial intelligence, it was announced on November 28, 2023. It is able to help troubleshoot issues in cloud apps or group chats, or summarize documents. As of November 2023, it costs $20 per month.


## Microsoft/GitHub Copilot

   * https://github.com/features/copilot
   * https://github.blog

<img align="right" width="100" alt="github_copilot_badge.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1731733144/copilot_b_w_icon_f0rt6t.png"/>
GitHub Copilot uses "generative AI" into an editor extension that suggests code in real-time.
See my explanation of Generative AI at <a target="_blank" href="https://wilsonmar.github.io/genai">https://wilsonmar.github.io/genai</a>

Microsoft funded OpenAI to create GPT-3, a language model used to generate complex text from complex queries. OpenAI's <strong>Codex</strong> translates natural language into programming code. GPT-3 (Generative Pre-trained Transformer 3&4) uses large models created using Deep Learning techniques to produce human-link text.

https://blogs.microsoft.com/blog/2023/03/16/introducing-microsoft-365-copilot-your-copilot-for-work/

GitHub Copilot uses the <strong>OpenAI (foundational) Codex</strong> to suggest code and entire functions in real-time.<a href="#[1]">[1]</a>

Microsoft co-opted the word "Copilot" as a brand name for AI tools that Microsoft has embedded in its line of products:

   * Visual Studio Code (VS Code) text editor provides prompts, as "AI pair programming"
   * Outlook emails
   * Calendar entries
   * OneNote notes
   * OneDrive files
   * Powerpoint presentations
   * LinkedIn profiles, messages, recommedation, etc.
   * LinkedIn Learning course content
   * GitHub code repositories
   <br /><br />

Microsoft's AI is eerily smart becuase it knows your user metadata from all the above apps Microsoft has been saving in its <strong>Microsoft Graph</strong> database that combines email, calendar, contacts, and files into a single GraphQL database.

WARNING: For a long time, Microsoft, Google, Facebook, etc. are always listening. It's always watching. It's always learning. It's always recording. It's always saving. It's always sharing. It's always spying. It's always tracking. It's always analyzing. It's always predicting. It's always profiling. It's always targeting.

CoPilots combines:

   * what it "knows" about you with
   * what it knows about programming mechanics with
   * what it knows about the "domains" manipulatable using code.
   <br /><br />

### Copilot Certification

<img align="right" width="100" alt="github_copilot_badge.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1731898738/github_copilot_badge_icqs70.png"/>
The GitHub Copilot certification exam assesses your proficiency in utilizing the AI-powered code completion tool across different programming languages, certifying your ability to streamline software development processes effectively.
<a target="_blank" href="https://examregistration.github.com/waitlist/copilot">Microsoft no longer has a waitlist for GitHub Copilot exam registration</a>. The Copilot certification exam is available October 2024.


### Copilot Training

1. The official (detailed) documentation is at https://docs.github.com/copilot

1. https://docs.github.com/en/copilot/quickstart

1. https://github.com/

1. Sign in to earn Microsoft LEARN: XP points at <a target="_blank" href="https://learn.microsoft.com/en-us/training/paths/copilot/">https://learn.microsoft.com/en-us/training/paths/copilot</a> - "GitHub Copilot Fundamentals - Understand the AI pair programmer" 12-module 5 hr 46 min Learning Path.
   * Responsible AI with GitHub Copilot

1. Take the 7 hr 38 min 11 (text-based) modules of the <a target="_blank" href="https://learn.microsoft.com/en-us/collections/kkqrhmxoqn54?WT.mc_id=academic-113596-abartolo">LEARN: GitHub Universe Cloud Skills Challenge</a>

   1. Introduction to Git - 31 min
   2. How to create and modify a Git project - 31 min
   3. Collaborate with Git - 44 min
   4. Edit code through branching and merging in Git - 55 min
   5. Introduction to GitHub - 1 hr 32 min
   6. Code with GitHub Codespaces - 27 min
   7. Introduction to GitHub Copilot - 19 min
   8. Using GitHub Copilot with JavaScript - 22 min
   8. Using GitHub Copilot with Python - 22 min
   9. Challenge project - Build a minigame with GitHub Copilot and Python - 35 min
   10. Challenge project - Add image analysis and generation capabilities to your application - 1 hr 20 min

1. $119 3.5 hour <a target="_blank" href="https://www.microsoftpressstore.com/store/ai-powered-programming-with-github-copilot-video-9780138279455">Microsoft: AI-Powered Programming Video Course</a> published by Pearson 11/14/2023.

1. Among <a target="_blank" href="https://resources.github.com/learn/pathways/">GitHub learning pathways</a> are <a target="_blank" href="https://resources.github.com/learn/pathways/copilot/essentials/essentials-of-github-copilot/">Essentials of GitHub Copilot</a> by Ryan Salva. It consists of "guides":

   1. What GitHub Copilot can do for your organization - Accelerate your digital transformation while improving your organization’s code quality. With GitHub Copilot, you can attract and retain developers, boost their speed and efficiency, and make their code better and more secure.
   2. Establishing trust in using GitHub Copilot - Get answers to the most commonly asked questions and considerations raised by organizations assessing GitHub Copilot. From technical safeguards to contractual protections, we outline the approach that GitHub takes to prevent infringement risk.
   3. Understanding the GitHub Copilot data pipeline - Follow data as it goes from developer to GitHub Copilot and back again, learning how GitHub Copilot securely handles data to gather context, build prompts, filter out an assortment of unwanted results, and return high-quality code suggestions and responses.
   4. Measuring the impact of GitHub Copilot - Assess GitHub Copilot’s benefits on your business by exploring adoption and usage metrics, surveying your developers, and uncovering downstream impact.
   5. Empower developers with AI Policy and Governance - Boost productivity and empower developers to innovate faster by developing internal policies that guide acceptable use of AI tooling.
   6. Tips for a successful rollout of GitHub Copilot - Realize GitHub Copilot’s benefits quicker with developer trainings, self-service licensing, reminders, and more.
   7. GitHub Copilot seat management and provisioning - Ensure that the right users have access to GitHub Copilot while allocating seats efficiently.
   8. Understanding billing for GitHub Copilot - Find answers to common questions about GitHub Copilot’s seat-based billing model, how seats are assigned, and how the billing cycle works.

1. https://aka.ms/GitHubCopilotAI redirects to https://github.com/microsoft/Mastering-GitHub-Copilot-for-Paired-Programming - an 8 Lesson course teaching everything you need to know about harnessing GitHub Copilot and an AI Paired Programing resource.

1. [Prompts, tips, and use cases](https://github.blog/2023-06-20-how-to-write-better-prompts-for-github-copilot/)

1. ["The Ultimate Manual"](https://nira.com/github-copilot/)

1. Max Rohowsky (Max on Tech) on YouTube:
   * <a target="_blank" href="https://www.youtube.com/watch?v=q0PorpN6SQM">GitHub Copilot in VSCode: Explaining the Basics</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=2nPoiUJpDaU">GitHub Copilot in VSCode: Top 10 Features Explained</a>

### Licenses

Microsoft does not offer a free trial but (unlike Azure and others) not a limited license for GitHub Copilot. Microsoft offers <a target="_blank" href="https://github.com/features/copilot/plans?cft=copilot_li.features_copilot">
3 plans at monthlies of</a>: $10 Individual, $19 Business, and $39 Enterprise.

Business and Enterprise licenses add:
   * Data excluded from training by default (Privacy)
   * Content exclusions: Exclude specified files from Copilot [<a target="_blank" href="https://docs.github.com/en/copilot/about-github-copilot/subscription-plans-for-github-copilot">2]
   * Organization-wide policy management [2]
   * Audit logs [2]
   * Enterprise-grade security - <a target="_blank" href="https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-saml-single-sign-on/about-authentication-with-saml-single-sign-on">SAML SSO authentication</a>
   * IP indemnity
   * User management & Usage metrics
   * Increased GitHub Models rate limits4 [2]
   * GitHub Copilot in GitHub Mobile

Only the Enterprise license requires GitHub Enterprise Cloud
and provides:
   * Attach Copilot knowledge bases to chat for organizational context
   * Fine-tuned custom LLMs for code completion (coming soon as add-on)
   * Set coding guidelines for code review
   * Technical Preview access to Copilot Workspace

If you have a student or educator email address, get Enterprise free:
   1. Create a GitHub account using that email address.
   2. PROTIP: To avoid confusion and errors in your browser, create a different browserprofile to access the GitHub website and education email account.
   3. Ensure the location specified
   4. Set your browser to support location discovery by websites.
   5. Apply for a free <strong>Enterprise license</strong> for that account at <a target="_blank" href="https://education.github.com/discount_requests/application">https://education.github.com/discount_requests/application</a>
   6. Provide the validation information requested. Students may need to hold up to the camera their student ID or letter from the school.

1. See <a target="_blank" href="https://code.visualstudio.com/docs/copilot/overview">GitHub Copilot in VS Code</a>

1. Install VSCode.
1. Install the Copilot extension for VS Code. REMEMBER: Copilot runs as an extension within VS Code.
   1. Click the wheel icon in the lower left corner of VS Code.
   2. Type "Extensions" in the search box at the upper-left top.
   3. Search for <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=GitHub.copilot">"GitHub Copilot"</a>.
   4. Select the "GitHub Copilot" entry from "GitHub".
   5. Click the blue "Install" button.
   6. Notice that <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat">"GitHub Copilot Chat"</a> is also installed automatically.
   7. Exit VS Code and re-open it.

1. Make the Status bar appear in menu: View > Appearance.


### Open AI Chat

<table border="1" >
<tr valign="top">><th>Shortcut</th><th>Description</th></tr>
<tr valign="top">><td>⌘I</td><td>Start Inline Chat to send a chat request to Copilot directly from the editor. Use natural language or use / commands to give instructions to Copilot.</td></tr>
<tr valign="top">><td>⌃⌘I</td><td>Open the Chat view and start a chat conversation with Copilot by using natural language.</td></tr>
<tr valign="top">><td>⇧⌘I</td><td>Open the Copilot Edits view and start a code editing session across multiple files.</td></tr>
<tr valign="top">><td>⇧⌥⌘L</td><td>Open Quick Chat and ask a quick question to Copilot.</td></tr>
</table>

Type @ in chat or select to view the list of chat participants, which are domain experts that can help you in a specific area. Extensions can also contribute additional participants.
Example: @workspace how is auth implemented?

<a target="_blank" href="https://code.visualstudio.com/docs/copilot/copilot-vscode-features">Cheatsheet:GitHub Copilot in VS Code</a>


* Prompt GitHub Copilot for code suggestions


### GithubNext.com

<a target="_blank" href="https://githubnext.com/">GitHubNext.com</a>

GitHub Copilot X is Microsoft's vision for the future of AI-powered software development adopting OpenAI's newest GPT-4 models.

1.  This assumes you have an email and GitHub account.

    GitHub Copilot is available through GitHub personal accounts with GitHub Copilot for Individuals or through organization or enterprise accounts with GitHub Copilot for Business.

1.  Sign up for for access to Copilot for Microsoft's various tools: VS Code, Outlook, and OneNote.

    <a target="_blank" href="https://githubnext.com/">GithubNext.com</a>

    Developed in collaboration with OpenAI, GitHub Copilot is powered by OpenAI Codex, an AI system created by OpenAI. OpenAI Codex has broad knowledge of how people use code and is more capable than GPT-3 in code generation, in part, because it was trained on a data set that includes a larger concentration of public source code.

1.  Consider cost vs. features:

    https://docs.github.com/en/copilot/overview-of-github-copilot/about-github-copilot
    About GitHub Copilot for Individuals says
	 * $10 per month/$100 per year for Individuals (CAUTION: includes capture of code snippets and usage Telemetry for Microsoft to sell)
    * $19 per user per month for Business (no Telemetry but adds Organization-wide policy management and HTTP proxy support via custom certificates for those with a GitHub Enterprise Cloud administrator account)
    <br /><br />

    <a target="_blank" href="https://learn.microsoft.com/en-us/training/modules/introduction-to-github-copilot-for-business/2-about-github-copilot-business">This says</a> "GitHub Copilot for Business automatically blocks common insecure code suggestions by targeting issues such as hard coded credentials, SQL injections, and path injections."

    https://github.com/settings/billing

    "You are eligible to use GitHub Copilot for free."

    PROTIP: Start with GPT-3.5 to get started, then upgrade to GPT-4 when your users and use cases are better understood.

1.  <strong>Regions:</strong> At time of writing (Aug 8, 2023) GitHub Copilot is available only in Regions listed at:<br />
    https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/

    US East, North Central US (GPT-4 only), South Central US,<br />
    Switzerland North (GPT-4 only), France Central, West Europe,<br />
    Japan East (GPT-4 only), Australia East (GPT-4 only).

1.  If "GitHub Copilot for Business" is used, the Administrator establishes a policy for its use of at the enterprise-level. <a target="_blank" href="https://docs.github.com/en/copilot/configuring-github-copilot/configuring-github-copilot-settings-in-your-organization">DOC</a>:

    1. In the enterprise sidebar, click Policies.
    1. Under Policies, click Copilot.
    1. Under "Manage organization access to GitHub Copilot," configure the access for your GitHub Copilot subscription.

    Assign users:
    1. Click your profile photo. Click "Your organizations".
    1. Next to the organization, click Settings.
    1. In the "Code planning and automation," section of the sidebar, click Copilot, and then click Access.
    1. Under "User permissions," to enable GitHub Copilot for all users in your organization, select Allow for all members.<br /><ul>Alternately, select "Selected teams/users".</ul>

    1. In the "Confirm seat assignment" dialog, confirm that you want to enable GitHub Copilot for all current and future users in your organization, click Confirm.
    1. Save.

    1. TODO: VPN Proxy support via self-signed certificates
    <br /><br />

    Each user: Enable GitHub Copilot as VS Code extension:

## Install

Copilot is available as extensions on several IDEs:

   * https://plugins.jetbrains.com/plugin/17718-github-copilot

   * https://github.com/github/copilot.vim

   * https://marketplace.visualstudio.com/items?itemName=GitHub.copilot discussed below

1.  Install VSCode using my instructions at

    <a target="_blank" href="https://wilsonmar.github.io/text-editors/VSCode">wilsonmar.github.io/text-editors/#VSCode</a>

    Extensions are also available for Microsoft's licensed Visual Studio,
    If you prefer vim's keyboard (for less mouse), <a target="_blank" href="https://wilsonmar.github.io/text-editors/#Neovim">Neovim</a>
    and the JetBrains suite of integrated development environments (IDEs).



1.  In VS Code, open the Extensions panel by clicking its logo.
1.  On top of "Search Extensions", type "GitHub Copilot".
1.  Click the "Your AI pair programmer" entry's blue "Install" button.
1.  Notice the extension's logo and click on a similar logo at the bottom.
1.  Click the blue "Sign in to GitHub". Allow to Open Visual Studio Code.app
1.  In the VSCode File menu, press command+comma to open a Settings tab.
1.  Click "Extensions" in the menu, then scroll down to click "Copilot".

    Copilot Voice is voice recognition software that allows you to speak code into your computer.

1.  On the right pane, "Inline Suggest: Enable" and "Show inline suggestions".
1.  Alternately, in <tt>settings.json</tt>

    <pre>    "editor.inlineSuggest.enabled": true,
    </pre>

1. Open the VS Code Command Palette.

1. Press <tt>Shift+Command+P</tt> (on Windows or Linux: Ctrl+Shift+P) for the Command Palette.
1. Type "Diagnostics" to the right of the > prompt for the "Configuration" file.
1. Scroll down:

   <pre>- Is `win-ca` installed?: false
- Is `mac-ca` installed?: false
   </pre>

1. ??? select GitHub Copilot: Collect Diagnostics from the list

1. Troubleshooting guidance:

   https://docs.github.com/en/copilot/troubleshooting-github-copilot/viewing-logs-for-github-copilot-in-your-environment


### Codespaces

https://github.com/skills/copilot-codespaces-vscode

* Install GitHub Copilot using <a target="_blank" href="https://github.com/features/codespaces">GitHub Codespaces</a>

<hr />

### Security Copilot

<a target="_blank" href="https://aka.ms/SecurityCopilot">Microsoft Security Copilot at https://aka.ms/SecurityCopilot</a>
is an AI assistant for threat/vulnerability investigation and improving security posture.

VIDEOS: <a target="_blank" href="https://www.youtube.com/watch?v=g1HoXNoP3V0">Overview</a>,
<a target="_blank" href="https://www.microsoft.com/en-us/security/business/ai-machine-learning/microsoft-security-copilot?rtc=1#demo">DEMO</a>:
It provides a prompt bar for English-language queries.
Drop additional files to ask questions about them.
Click the "Pin" icon to save a query for later. It dynamically updates.
A "Prompt Book".
It can reverse-engineer a script and generates a flowchart to explain what it does. For example:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1690967298/azure-sec-to-764x738_zvxlxl.png"><img alt="azure-sec-to-764x738.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1690967298/azure-sec-to-764x738_zvxlxl.png"></a>

In a typical incident, this boost translates into gains in the quality of detection, speed of response and ability to strengthen security posture.

It makes use of a security-specific foundational LLM model trained by Microsoft,
which added a learning system to create and tune new skills.
It is a closed-loop learning system, which means it’s continually learning from users and giving them the opportunity to give explicit feedback with the feedback feature that is built directly into the tool.
It continues to learn from interactions, adjusting its responses to create more coherent, relevant, and useful answers.

Security Copilot aims to catch what other approaches might miss. and augment an analyst’s work.

<a target="_blank" href="https://github.com/advisories">GitHub Advisory Database</a>
Security vulnerability database inclusive of CVEs and GitHub originated security advisories from the world of open source software.

<hr />

## Cautions

PROTIP: Write tests to ensure that you're getting what you want.

Microsoft offers paid Business licenses which include a "Copilot" license, at $50 per user per year.
Such a license enables suggestions based only on private information -- to block use of public code.

https://learn.microsoft.com/en-us/training/modules/introduction-to-github-copilot/2-github-copilot-your-ai-pair-programmer



## References

<a name="[1]"></a>
[1] https://learn.microsoft.com/en-us/training/modules/introduction-to-github-copilot/

https://github.com/features/copilot

https://docs.github.com/en/copilot/overview-of-github-copilot/about-github-copilot#using-github-copilot
Using GitHub Copilot

<a target="_blank" href="https://learning.oreilly.com/live-events/level-up-with-github-copilot/0636920090759/0636920090758/">Level Up with GitHub Copilot</a> 2023-04-03
by <a target="_blank" href="https://www.linkedin.com/in/rizel-bobb-semple/">Rizel Scarlett</a> (@blackgirlbytes, https://github.com/galaxy-bytes).

https://www.youtube.com/watch?v=2nPoiUJpDaU
GitHub Copilot in VSCode: Top 10 Features Explained
by Max Rohowsky (Max on Tech)

https://www.youtube.com/watch?v=RDd71IUIgpg
"CoPilot Review: My Thoughts After 6 Months"
by ThePrimeagen

https://www.youtube.com/watch?v=Wap2tkgaT1Q
"Why I'm no longer using Copilot"
by Dreams of Code

https://www.youtube.com/watch?v=S_RorY_FRvo
"GitHub Copilot just got promoted to Captain"
by Fireship



## Sample code:

https://github.com/alekspopovic/simple-react-timeline

<a target="_blank" href="https://github.com/timothywarner/copilot-ai">https://github.com/timothywarner/copilot-ai</a>

- [Trust Center](https://resources.github.com/copilot-trust-center/)

