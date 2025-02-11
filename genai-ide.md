---
layout: post
url: https://bomonike.github.io/genai-ide
date: "2025-02-04"
lastchange: git commit -m"v003 + SWE-Bench :genai-ide.md"
file: "genai-ide"
title: "genai-ide"
excerpt: "Here are my notes about using GenAI to help with programming."
tags: [cloud, security, management, ai]
comments: true
created: "2025-01-25"
---
<a target="_blank" href="https://bomonike.github.io/genai-ide"><img align="right" width="100" height="100" alt="genai-ide.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/genai-ide.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

## SWE-Bench benchmark

https://www.swebench.com/
SWE-Bench (Software Engineering Benchmark) has been used as the way to compare how well LLM offerings tests systems' ability to automatically <strong>solve GitHub issues</strong> in a dataset containing 2,294 Issue-Pull Request pairs from 12 popular Python repositories:

   * astropy (95)
   * Django (850)
   * Flask (11)
   * matplotlib (184)
   * pylint (57)
   * pytest (119)
   * requests (44)
   * scikit-learn (229)
   * seaborn (22)
   * sphinx (187)
   * sympy (386)
   * xarray (110)

The <a target="_blank" href="https://arxiv.org/abs/2310.06770" title="Is AI Replacing Software Engineering?">10 Oct 2023 Arxiv article</a> describes the unit test verification using post-PR behavior as the reference solution.

   <ul>"Resolving issues in SWE-bench frequently requires understanding and coordinating changes across multiple functions, classes, and even files simultaneously, calling for models to interact with execution environments, process extremely long contexts and perform complex reasoning that goes far beyond traditional code generation tasks."</ul>

Those working on it include  carlosej@princeton.edu and johnby@stanford.edu

Coding agents have made impressive progress on SWE-bench, with top scoring agents scoring 20% on SWE-bench and 43% on SWE-bench Lite according to the SWE-bench leaderboard⁠(opens in a new window) as of August 5, 2024. Advances on SWE-bench represent steps towards LMs that are more practical, intelligent, and autonomous. <a target="_blank" href="https://www.youtube.com/watch?v=pJ5dLwpG0_I">This VIDEO</a> from <a target="_blank" href="https://www.youtube.com/@Sourcegraph">@SourcegraphCody</a> introduced comparison of models that include:

   * Google Gemini
   * Devin
   * Anthropic Claude 3.5 Sonnet
   * Anthropic Claude
   * SWE-Llama 113B
   * SWE-Llama 7B
   * OpenAI GPT-4

Download from HuggingFace  the three variations:

   * SWE-bench Lite - curated to make evaluation less costly and more accessible
   * SWE-bench Multimodal featuring issues with visual elements (images, videos) from JavaScript repositories
   * <a target="_blank" href="https://openai.com/index/introducing-swe-bench-verified/">SWE-bench Verified</a> - a human annotator filtered subset that has been deemed to have a ceiling of 100% resolution rate

https://github.com/swe-bench/sb-cli/
provides the CLI to run the benchmarks.

The benchmark involves giving agents a code repository and issue description, and challenging them to generate a patch that resolves the problem described by the issue.

<a target="_blank" href="https://www.youtube.com/watch?v=XaOqSAXNkaM">SourcegrphCody's context fetching:<br />
<img alt="genai-cody-flow.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1738733609/genai-cody-flow_hipplt.png" /></a>

makes use of their <a target="_blank" href="https://sourcegraph.com/blog/anatomy-of-a-coding-assistant">OpenCtx</a> to manage contextual info about code.



https://medium.com/@anala007/hidden-dangers-of-using-cursor-ai-for-code-generation-what-every-developer-should-know-f4993c407b00

## What We Do (Tasks)

Consideration of technologies means a re-evaluation of where we
humans actually spend our time and where we needed to optimize.

Here are specific tasks, ranked by how well GenAI models:

The first set leverages the language processing capabilities:

A. <strong>Write "boilerplate" code.</strong> Because LLMs (Large Language Models) are, by definition, created by absorbing vast amount of programming code from GitHub, GitLab, and other repositories, they can provide the <strong>most common</strong> code seen for each known programming task.

B. <strong>Comment code.</strong> LLMs are great at gleaning conceptual relationships among words. So they can summarize what code does.

   "Explain this topic like I am 5 year old..."

C. <strong>Discover new functions.</strong> Individual humans cannot hope to know about as many programs as was sucked into LLMs. So LLMs can help us identify what we don't know, but should know.

   perplexity.ai is a search engine that, unlike Google.com which presents websites found, uses LLM summary features to combine search results from several websites and presenting a consolidated list.

   Example: "List useful projects that help high school students manage their time better."

   Perpexity.ai provides a link to the website where each item was found. On the top right pane are images found within various websites.

D. <strong>Write test cases,</strong> test code, and test data. Give LLMs a chance to reduce human drugery.

E. <strong>Write code from specifications,</strong> from natural language comments in code files. This is more sophisticated than writing boilerplate code.

The later set below requires "logical reasoning" capability which early LLM models did not inherantly possess. OpenAI's claims that its o1 to be better at that than previous models.

F. <strong>Optimize code.</strong> To the extent that an LLM can understand patterns of coding, this task

G. <strong>Understand other code</strong>. This means ?

   "Paraphrase"

H. <strong>Debugging code</strong> is the least effective task for most GenAI,

amsemble of human developers, each with his/her own biases.


## The New Workflow

This is adapted fron OReilly

1. Generate Python code code based on the highlighted comments.

2. AI auto-completes your code based on the remaining code in that file, and broader repository:

   <em>Immediate feedback on code changes</em>

3. Ask specific requests in the Github Copilot chat assistant, such as "write a function to ..."

4. Explain the code snippet highlighted (created by my predecessor).

1. Write a comment to describe each function. Follow best practices for the language.

5. Error detection: Find security vulnerabilities and code maintainability.

   This is what it should be doing.
   ...

1. Write test cases.

1. Generate test data.

1. Convert file format (XML to JSON).

1. Create SQL insert statements to populate tables with 10 entries of dummy data.

1. Refactor the highlighted code.

1. Create a variable to store a RegEx to match a phone number in the United States.


## Solutions Evaluation

    * <a target="_blank" href="https://www.youtube.com/watch?v=Ojk51mNOUow">VIDEO: "I ranked every AI Coder: Bolt vs. Cursor vs. Replit vs Lovable"</a> by Greg Isenberg
   * <a target="_blank" href="https://research.aimultiple.com/ai-coding-benchmark/">Cem Dilmegani</a> identified these AI coding assistants as "Top ranked":

There are two types of developers:

   A. "Non-technical" who prefer lowcode/no code approach and admire micro-animations on websites
   B. "Technical" nerds who can code Python, JavaScript, Rust, C, Java, etc.

For the capable nerds:

   * 4.9 Windsurf is almost magical
   * 4.8 <a href="#Cursor">Cursor</a> <a target="_blank" href="https://www.youtube.com/watch?v=CqkZ-ybl3lg" title="by Deave Ebbelaar Sep 2024">VIDEO</a>

For those with low code preferences and CD (Code & Deploy):

   * 4.5 Replit (CD too) with collaboration
   * Onlook
   * Tempolabs (like Figma, Code Editor)
   * <a href="#Bolt">Bolt.new</a> <a target="_blank" href="https://www.youtube.com/watch?v=JnikJf0m5J4">VIDEO</a> is a combination of tools. (CD too)

   * Lovable like Figma GUI designer with collaboration
   * v0 (CD too)
   * 4.6 <a href="#AmazonQ">Amazon Q</a>
   * 4.5 Gitlab
   * 4.4 Cody
   * 4.2 Gemini and Codeium for high performance
   * 4.1 Codiumate from Codeium
   * 4.1 Github Copilot (VSCode extension)
   * 4.0 Tabnine for concise coding

   * Devon? has an amazing code-fixing demo, and it's expensive
   * Mistral
   * HumanEval?

Combined evaluation criteria from various sources:

   * Compliance
   * Code Quality
   * Code Amount
   * Performance
   * Security - identify
   * Economics

Language models for code generation are trained on vast amounts of code and natural language data to learn programming concepts and language understanding. The ability to precisely comprehend and adhere to nuanced prompts is crucial for translating product requirements into code.

AI ​​assistants use LLMs for code generation. The code generation success of these LLMs is measured with the HumanEval test, developed by OpenAI in 2021.

   * https://github.com/openai/human-eval
   * https://arxiv.org/abs/2107.03374

"our early investigation of GPT-3 (Brown et al., 2020) revealed that it could generate simple programs from Python docstrings. While rudimentary, this capability was exciting because GPT-3 was not explicitly trained for code
generation."

Their test measured the code generation capability of LLM models by using 164 programming problems.


https://www.linkedin.com/pulse/new-roles-developer-ai-assisted-workflows-github-copilot-ajit-jaokar-j6nie/


## Dictation (Speech To Text)

On Windows, purchase from Amazon the 699 Nuance Dragon Professional v16.
It's is the most accurate dictation tool for any operating system.

On macOS, <a target="_blank" href="https://support.apple.com/en-us/102225">Apple Dictation</a>,
which recognizes the names of apps, labels, controls, and other onscreen items, so you can navigate by combining those names with commands such as:

   * “Open Pages” to create a new document: “Click New Document.” Then choose one of the letter templates: “Click Letter. Click Classic Letter.” Then save your document: “Save document.”
   * To Start a new message in Mail: “Click New Message.” Then address it: “John Appleseed.”
   * To Restart your Mac: “Click Apple menu. Click Restart” (or use the number overlay and say “Click 8”).

https://support.apple.com/en-us/102225#createcommands

<em>For Just Dictation to Text</em>

The <a target="_blank" href="https://BetterDictation.com/">$24/$39 Better Dictation macOS app</a> uses OpenAI's Whisper on the M1-Series Apple Neural Engine for speech to text to any window.

1. Download BetterDictation from https://betterdictation.com/install
   It has no brew formula.
1. In the Downloads folder, unzip and drag BetterDictation to /Applications folder.
1. Open BetterDictation.app. Notice the icon appear at the top.
   <img alt="betterDictation-bar.png" width="195" height="193" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1730986387/betterDictation-bar_fzksfx.png">
1. Click on the icon.
1. In Preferences, click "Check for updates".
1. Click Preferences, "Launch at login".
1. PROTIP: Drag the Tutorial pop-up to a location on your screen that's not overlaid by another app.
1. Paste license key from your password vault. Click Verify.
1. In Apple System Settings > Privacy & Security > A
ccessibility, click the "+".
1. Navigate to the app and select it. Next.
1. In Apple System Settings > Sound, the Input level should light up when you say something. If it doesn't, select another Input. Next.
1. User Guide at https://betterdictation.com/help

1. With BetterDictation installed, press and hold <strong>Control+V</strong> (paste) to start listening.


<a name="Bolt"></a>

## Bolt.New

https://www.youtube.com/watch?v=i0bQ495vMBA
Build anything with bolt.new, here’s how
by David Ondrej

https://www.youtube.com/watch?v=AzmSMntdivk&pp=ygUIYm9sdC5uZXc%3D
How to Make Money With Bolt.new (5 Best Ways)

https://www.youtube.com/watch?v=8ommGcs_-VU&pp=ygUIYm9sdC5uZXc%3D
How to Use Bolt.new for FREE with Local LLMs (And NO Rate Limits)
by Cole Modlin:

https://www.youtube.com/watch?v=XOdpxG4I2VQ&pp=ygUIYm9sdC5uZXc%3D
Build THIS SaaS with AI in 5 Minutes (Bolt.new Tutorial)

https://www.youtube.com/watch?v=teGUsrY8G30&pp=ygUIYm9sdC5uZXc%3D
Create Your Own AI Voice App in Minutes (Bolt.new x Synthflow)

https://www.youtube.com/watch?v=8jH0mvGyZa4&pp=ygUIYm9sdC5uZXc%3D
We Built and Deployed 2 APPS from Scratch in 9 Minutes! | Bolt.new

https://www.youtube.com/watch?v=Z9WxOhrl-3U&pp=ygUIYm9sdC5uZXc%3D
Bolt.new is the Cursor Killer. Let's build a no-code app with it (Bolt and xAI Beginner's Guide)

https://www.youtube.com/watch?v=CKVRgUfceAM&pp=ygUIYm9sdC5uZXc%3D
Bolt.new AI AGENTS Revolutionize App Creation with Natural Language!

https://www.youtube.com/watch?v=p_tyWtQZx48&t=51s&pp=ygUIYm9sdC5uZXc%3D
Better Bolt + FREE Mistral & Github API : STOP PAYING for V0 & BOLT with this FULLY FREE Alternative

https://www.youtube.com/watch?v=e_vEI0fMPT8&pp=ygUIYm9sdC5uZXc%3D
Build a $1M App Using ONLY AI—No Code Needed (Bolt.new Tutorial)
by Helena Liu

https://www.youtube.com/watch?v=1GfqnOAKr9M&pp=ygUIYm9sdC5uZXc%3D
How to add a database to your bolt.new app

https://www.youtube.com/watch?v=eE6m0MmLpDU&pp=ygUIYm9sdC5uZXc%3D
Adding user authentication to your bolt.new app



<a name="Cursor"></a>

## Cursor

   * https://www.cursor.com/pricing
   * https://www.udemy.com/course/ai-coding-with-cursor/ by James Phoenix with code at<br />https://github.com/Just-Understanding-Data-Ltd/ai-coding-with-cursor which shows how to create a React.js based dashboard. It shows use of the <a target="_blank" href="https://BetterDictation.com/">$24/$39 Better Dictation macOS app</a> which uses OpenAI's Whisper on the M1-Series Apple Neural Engine for speech to text to any window.

Cursor is a SaaS service based on a clone of VSCode,
from the Anysphere.inc team in San Francisco's North Beach.

So Cursor provides built-in terminal support like VSCode.

1. Install Cursor on macOS:
   ```
   brew install cursor
   ```

1. Open cursor.app International
1. Configure non-English language.
1. Unlike GitHub Copilot (a VSCode extension), Cursor can analyze entire folders and <strong>multiple files</strong> in your codebase.

1. Import extensions from VSCode because you use Cursor instead of VSCode.

   NOTE: GitHub Copilot is installed as a VSCode extension.

1. Login using Google with your gmail account is the easiest way. Look in you email for a sign up code from <strong>cursor.sh</strong>

1. Cursor uniquely offers a <strong>privacy mode</strong> with their $382/year plan.

   For $192/year, get more than 2000 completions and 50 slow premium requests.

1. Click "Model". For the "AI Model", Cursor uses the Claude LLM. "Medium" by default.

1. In https://forum.cursor.com/ login with your Google Gmail as well.

   <em>Use Interface</em>

   Cursor’s interface is VSCode:

   Toolbar: Located at the top, it provides quick access to common functions.

   Sidebar: On the left, it allows easy navigation between files and folders.

   Editor Pane: The main coding area, supporting syntax highlighting and multiple tabs.

   Status Bar: At the bottom, it displays current file information and editor status.

   <em>Windows</em>

1. Open New Editor Windows: Ctrl/Cmd + K = aichat.newchataction
1. Open Chat: Ctrl/Cmd + L = aichat.newchataction

   <em>Composer</em>

1. Open Composer: Ctrl/Cmd + I = composer.startComposerPrompt
1. Composer Control Panel: Ctrl/Cmd + I +  Shift  = composer.startComposerControlPanel

   <em>Features:</em>

1. View https://www.datacamp.com/tutorial/cursor-ai-code-editor to experience <a target="_blank" href="https://www.cursor.com/features">Cursor features</a>:

   Cursor adds natural language chats that understands all your code, including image files and documentation (via LangChain, LangGraph, Shadcn UI, etc.).

   It can explain code back to you.

   As you work, it focuses on AI code completion - multiple lines.
   It predicts and suggest next edits.

Remember1. Define a <tt>.cursorrules</tt> file.



<a name="AmazonQ"></a>

## Amazon Q

https://github.com/cremich/awesome-q-developer

https://www.linkedin.com/feed/update/urn:li:activity:7259609228359708672/

https://www.linkedin.com/in/christian-bonzelet



<a name="CoPilot"></a>

## GitHub (Microsoft) CoPilot

Launched publicly in June 21, 2022

1. In VSCode, install VSCode Extension "GitHub CoPilot".



https://learning.oreilly.com/live-events/github-copilot-for-software-engineers/0642572005219/0642572008510/
<a target="_blank" href="https://www.linkedin.com/in/sergiomcpereira/">Sergio Pereira</a>
https://learning.oreilly.com/api/v1/live-event-user-registration/sessions/urn:orm:live-event-series:0642572005219:live-event:0642572008510:session:0642572008512/presentation/


https://learning.oreilly.com/live-events/github-copilot-for-developers/0636920094356/
GitHub Copilot for Developers -
Unlock Your Coding Superpowers and Boost Productivity with GitHub Copilot

https://learning.oreilly.com/live-events/github-copilot-jumpstart/0636920098298/
GitHub Copilot Jumpstart -
Improve your code and efficiency with AI next-gen software development tools

https://learning.oreilly.com/live-events/using-github-copilot-chat/0636920099721/
Using GitHub Copilot Chat -
Pair programming with AI for easier software development

https://www.sonarsource.com/lp/solutions/ai-assurance-codefix/
High quality, AI-assisted coding assured with Sonar

https://claude.ai/ from Anthropic. You must have a valid phone number to use Anthropic’s services. SMS and data charges may apply.

https://www.youtube.com/watch?v=lw8RTSb39l4
Which AI App Builder Should We Use? Is it Windsurf, Cursor, Bolt, Replit, v0, Vs Code, or Databutton
Corbin Brown

https://dzone.com/articles/how-llms-are-changing-code-generation-ides
The Workflow of LLM-Powered IDEs
1. Editor
The process starts with a change that you, as the developer, make in the code using the code editor. Perhaps you typed some new code, deleted some lines, or even edited some statements. This is represented by node A.

2. Context Extractor
That change you have just made triggers the Context Extractor. This module essentially collects all information around your modification within the code — somewhat like an IDE detective looking for clues in the environs. This is represented by node B.

3. AST Structure Generation
That code snippet is fed to a module called AST Structure Generation. AST is the abbreviation for Abstract Syntax Tree. This module will parse your code, quite similar to what a compiler would do. Then, it begins creating a tree-like representation of the grammatical structure of your code. For LLMs, such a structured view is important for understanding the meaning and the relationships among the various parts of the code. This is represented by node C, provided within the curly braces.

4. Creation of Code Graph Definition
Next, the creation of the Code Graph Definition will be done. This module will take the structured information from the AST and build an even greater understanding of how your code fits in with the rest of your project. It infers dependencies between files, functions, classes, and variables and extends the knowledge graph, creating a big picture of the general context of your codebase. This is represented by node D.

5. LLM Context API Input
All the context gathered and structured — the current code, the AST, and the code graph — will finally be transformed into a particular input structure. This will be done so that it is apt for the large language model input. Then, finally, this input is sent to the LLM through a request, asking for either code generation or its completion. This is represented by node E.

6. LLM API Call
It is now time to actually call the LLM. At this moment, the well-structured context is passed to the API of the LLM. This is where all the magic has to happen: based on its training material and given context, the LLM should give suggestions for code. This is represented with node F, colored in blue to indicate again that this is an important node.

7. Generated Output
The LLM returns its suggestions, and the user sees them inside the code editor. This could be code completions, code block suggestions, or even refactoring options, depending on how well the IDE understands the current context of your project. This is represented by node G.

## References

https://www.youtube.com/watch?v=2ZpJXHiPwtQ
"How useful is AI for programming? | Marc Andreessen and Lex Fridman"
Lex Clips
