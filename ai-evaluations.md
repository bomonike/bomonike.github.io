---
layout: post
date: "2025-02-23"
lastchange: "v005 + code test cases :ai-evaluations.md"
file: "ai-evaluations"
title: "AI Evaluations"
excerpt: "Let's get to know the benchmarks AI companies use to compare each others' versions."
tags: [ai, benchmarks]
comments: true
created: "2024-12-28"
---
<a target="_blank" href="https://bomonike.github.io/ai-evaluations"><img align="right" width="100" height="100" alt="ai-evaluations.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/ai-evaluations.png?raw=true" />
<i>{{ page.excerpt }}</i>

* <a href="#AIME">Math (AIME)</a>
* <a href="#GPQA">Science (GPQA)</a>
* <a href="#LCB">Coding LCB (Live Code Bench)</a>
* <a href="#Creative_Writing">Creative Writing</a>
* <a href="#Instruction_Following">Instruction Following</a>

<hr />

<a target="_blank" href="https://www.youtube.com/watch?time_continue=1430&v=om5KAKSSpNg">VIDEO</a>:
In June 2024, <a target="_blank" href="https://www.linkedin.com/in/leopold-aschenbrenner">Leopold Aschenbrenner</a> wrote his <a target="_blank" href="https://situational-awareness.ai/">situational-awareness.ai blog</a> with this illustration:
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1737377788/agi-sit-1375x901_vsc5af.png">
<img alt="" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1737377788/agi-sit-1375x901_vsc5af.png" /></a>

By 2025, AI companies have sucked up all the information that have been created by humans. The next thing is generation of new information. New problems need to be defined because, in 2025, evaluations about the extent that a particular offering has reached AGI (Artificial General Intelligence) based on a relatively <strong>small number of challenges</strong>.

PROTIP: Enhance your resume: make YouTube videos about solving the problems. Suggest new problems.
Find issues with the autograder. File a PR and get listed as a contributor.

ASI (Artificial Super Intelligence) will be reached when "proto-automated" researchers automate research (within massive AI datacenters).

<hr />

When xAI unveiled its Grok-3 LLM on Feb 18, 2025, one analysis shows it ranking #1 across the various benchmarks (including Creative Writing, Instruction Following, etc.):

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739896040/genai-grok3-819x426_wgomxb.png"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739896040/genai-grok3-819x426_wgomxb.png" /></a>

This table compares specific scores on specific benchmarks:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-grok3_qs2uj2.png"><img width="200" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-grok3_qs2uj2.png" /></a>

That resulted in some crying that xAI neglected to include in the comparison results of OpenAI's o3 December results:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-o3-dec_nij82u.png"><img width="200" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-o3-dec_nij82u.png" /></a>


<a name="AIME"></a>

## Math

There are several mathematics competitions: AIME, HMMT, Mandelbrot, ARML.

### AIME

The American Invitational Mathematics Examination (AIME) is administered by the <a target="_blank" href="https://maa.org/student-programs/amc/">Mathematical Association of America</a> each year as the second exam in the series of exams used to challenge high school mathletes competing to represent the US at the International Mathematics Olympiad (MOP). over 300,000 students in 50 states and over 30 countries

Students are invited to take the AIME based on their scores for exams <a target="_blank" href="https://areteem.org/blog/amc-10-12-all-you-need-to-know/">AMC 10 for middle schoolers and AMC 12 for high schoolers</a> offered November each year.

The questions test knowledge in algebra, geometry, counting and probability, and number theory. Both tests cover material typically covered in the first few years of high school math. Topics such as trigonometry, complex numbers, and logarithms are only needed for the AMC 12. Calculus is not required for either exam. Challenges include fundamentals in Pigeonhole Principle, Mathematical Induction, Inequalities, Diophantine Equations, and Functional Equations.

* <a target="_blank" href="https://artofproblemsolving.com/wiki/index.php/2025_AIME_I_Problems">2025 AIME_I Problems</a>
* <a target="_blank" href="https://artofproblemsolving.com/wiki/index.php/2025_AIME_II_Problems">2025 AIME_II Problems</a>
* <a target="_blank" href="https://artofproblemsolving.com/wiki/index.php/2024_AIME_I_Problems">2024 AIME_I Problems</a>
* <a target="_blank" href="https://artofproblemsolving.com/wiki/index.php/2024_AIME_II_Problems">2024 AIME_II Problems</a>

All answers are a single integer between 0 and 999. Click the "Solution" link for explanations.

In 2025, the AIME was held February 6th, with problems and answers published immediately afterwards on various YouTube channels, forums, and blogs:
   * <a target="_blank" href="https://www.youtube.com/@PiAcademyOfficial/videos">Pi Academy</a>
   * MathProblemSolvingSkills.com
   * <a target="_blank" href="https://www.youtube.com/@levoniananton/videos">Anton Levonian</a>
   * https://areteem.org/blog/2025-aime-i-answer-key-released/

<a target="_blank" href="https://www.linkedin.com/pulse/deepseeks-abysmal-performance-aime-2025-math-annie-cushing-mpdge">BLOG</a>:
Annie Cushing (author of Making Data Sexy), notes that "The MathArena team ... worked against the clock to run evaluations using the ... problems before models could start training on it."
because the challenging math problems "makes for an excellent benchmark to see how well these models reason through more complex problems, with less opportunity to get the answer correct by chance since the test isn’t multiple choice like many benchmarks."

For use by AI, Lex code for the first of 15 problems in AIME 2025 II are at:<br />
https://github.com/eth-sri/matharena/blob/main/data/aime/aime_2025_II/problems/1.tex
QUESTION: Print properly formatted Lex files using <tt>wlect cat ???.lex</tt>

<a target="_blank" href="https://matharena.ai/">https://matharena.ai</a> publishes how well various LLM models reasoned about mathematics challenges in terms of Accuracy and cost of compute.
As of Feb 20, 2025:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1740060965/ai-evaluation-matharena-250220_ctgmff.png"><img width="100" alt="ai-evaluation-matharena-250220" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1740060965/ai-evaluation-matharena-250220_ctgmff.png" /></a>

Each green box indicates the AI solved the problem >75% of 4 runs (repeated passes with the same prompt). Red boxes indicate problem solved less than 25% of passes. Yellow: Problem solved 25-75% of the time.

<a target="_blank" href="https://maa.edvistas.com/eduview/report.aspx?self=&view=1561&mode=6&timestamp=20250220005530203">Stats</a>: 150 is the highest score.


### Math HMMT Feburary 2025

The HMMT (Harvard-MIT Mathematics Tournament, at <a target="_blank" href="https://www.hmmt.org
">hmmt.org</a>) is a math competition founded in 1998 by students at Harvard, MIT, and schools near Boston, Massachuetts.
It remains <a target="_blank" href="https://www.randommath.com/register-tournaments/hmmt">organized</a> by students.

Each tournament draws close to 1000 students from around the globe.

<a target="_blank" href="https://en.wikipedia.org/wiki/HMMT#:~:text=The%20difficulty%20of%20the%20February,problems%20of%20the%20February%20tournament.">WIKIPEDIA</a>:
The HMMT February tournament is generally considered to be more difficult than the American Invitational Mathematics Examination (AIME). However, difficulty varies by tournament and by round.

The top 50 scorers in the February tournament are invited to compete in the HMIC (Harvard MIT Invitational Competition), a five question proof contest.

The November tournament is easier than the February tournament, with problems similar to the AMC 10 and 12, and the AIME.

Calculus is not required for most of the problems, but it may be needed to solve some of the more difficult problems.

HMMT hosts staff exchange programs with the Princeton University Mathematics Competition (PUMaC), Carnegie Mellon Informatics and Mathematics Competition (CMIMC), and Stanford Math Tournament (SMT) to further collaboration between the competitions' organizers. During exchanges, participants ranging from first-year members to more senior officers spend the weekend proctoring, grading, and otherwise volunteering at the host competition day-of.


<a name="GPQA"></a>

## Science (GPQA)

GPQA (Google-Proof Q&A) is a challenging dataset of 448 multiple-choice questions written by domain experts in biology, physics, and chemistry.

"Google Proof" means that the answer is not discoverable by a query on Google.com (or Perplexity.ai).
The answer requires "reasoning" through several intermediate queries to a panel of "experts".

<a target="_blank" href="https://arxiv.org/pdf/2311.12022">PDF</a> of
https://arxiv.org/abs/2311.12022 says "We ensure that the questions are high-quality and extremely difficult: experts who have or are pursuing PhDs in the corresponding domains reach 65% accuracy (74% when discounting clear mistakes the experts identified in retrospect), while highly skilled non-expert validators only reach 34% accuracy, despite spending on average over 30 minutes with unrestricted access to the web (i.e., the questions are "Google-proof").

"The questions are also difficult for state-of-the-art AI systems, with our strongest GPT-4 based baseline achieving 39% accuracy. If we are to use future AI systems to help us answer very hard questions, for example, when developing new scientific knowledge, we need to develop scalable oversight methods that enable humans to supervise their outputs, which may be difficult even if the supervisors are themselves skilled and knowledgeable. The difficulty of GPQA both for skilled non-experts and frontier AI systems should enable realistic scalable oversight experiments, which we hope can help devise ways for human experts to reliably get truthful information from AI systems that surpass human capabilities.

<a target="_blank" href="https://github.com/idavidrein/gpqa/">https://github.com/idavidrein/gpqa</a>

https://sofworld.org/pattern-questions-and-marking-scheme
   * SOF ICSO - International Computer Science Olympiad
   * SOF NSO - National Science Olympiad
   * SOF IMO - International Mathematics Olympiad
   * SOF IEO - International English Olympiad 
   * SOF ICO - International Commerce Olympiad 
   * SOF IGKO - International General Knowledge Olympiad
   * SOF ISSO - International Social Studies Olympiad
   * SOF International Hindi Olympiad


<a name="LCB"></a>

## Coding LCB (Live Code Bench)

<a target="_blank" href="https://livecodebench.github.io/">https://livecodebench.github.io</a> says
LCB (Live Code Bench) LiveCodeBench collects problems from periodic contests on
* <a target="_blank" href="https://www.leetcode.com/">LeetCode</a>,
* <a target="_blank" href="https://www.atcoder.com">AtCoder</a>, and
* <a target="_blank" href="https://www.codeforces.com">Codeforces</a>. <a target="_blank" href="https://www.youtube.com/watch?v=K1p3-PP4Qv4&list=PLcXpkI9A-RZLUfBSNp-YQBCOezZKbDSgB">VIDEO</a>

platforms and uses them for constructing a holistic benchmark for evaluating Code LLMs across variety of code-related scenarios continuously over time.

   OpenAI o3 scored among the top 10 contestants in <a target="_blank" href="https://codeforces.com">Codeforces.com</a> competitive programming solving complex problems under time constraints (2.5 hours).

LiveCodeBench.com publishes <a target="_blank" href="https://livecodebench.github.io/leaderboard.html">four Leaderboards</a>:
For each leadershboard provides a time slider. As of this writing:
   * 880 Code Generation
   * 713 Self Repair
   * 442 Test Output Prediction
   * 479 Code Execution

   * Not Kaggle competitions?

Models submitted for evaluation are athttps://github.com/LiveCodeBench/submissions

   * Model names beginning with "O" such as "O3" are from <a target="_blank" href="https://openai.com">OpenAI.com</a>
   * Model name "Kimi" is at <a target="_blank" href="https://kimi.moonshot.cn">https://kimi.moonshot.cn</a> from China.
   * Model name "DeepSeek" is <a target="_blank" href="https://chat.deepseek.com/sign_in">DeepSeek.com</a> from China.
   * Model names "Gemini" are from <a target="_blank" href="https://gemini.google.com/app">chat.google.com</a>
   * Model names "Claude" are from Anthropic at <a target="_blank" href="https://claude.ai/new">https://claude.ai/new</a> where it proclaims its "emphasis on what's called "constitutional AI" - an approach to developing AI systems with built-in safeguards and values.
   * Dracarys2-Llama-3.1-70B-Instruct in the Smaug series, a finetune of Qwen2.5-72B-Instruct developed by: Abacus.AI China at https://huggingface.co/abacusai/Dracarys2-72B-Instruct
   * LLama3-70b-Ins from Meta at https://huggingface.co/meta-llama/Meta-Llama-3-8B-Instruct
   * DSCodder at https://huggingface.co/deepseek-ai/deepseek-coder-1.3b-base

   * Where is IBM WatsonX in this list?

Over time, a larger fraction of difficult problems are introduced with model capability improvements. A drop in performance in the later months is expected.

For a more nuanced evaluation of LLM performance across different difficulty levels,<br />
"Pass@1" measures the percentage of problems a model can solve correctly on its <strong>first attempt</strong> across all difficulty levels.<br />
"Easy Pass@1" refers to the Pass@1 performance on problems categorized as "Easy".
See https://openreview.net/forum?id=chfJJYC3iL

At https://github.com/LiveCodeBench/LiveCodeBench/blob/main/lcb_runner/prompts/code_execution.py<br />
prompts begin with:
```
 system_message = "You are an expert at Python programming, code execution, test case generation, and fuzzing."
``
```
You are given a Python function and an assertion containing an input to the function. Complete the assertion with a literal (no unsimplified expressions, no function calls) containing the output when executing the provided code on the given input, even if the function is incorrect or incomplete. Do NOT output any extra information. Execute the program step by step before arriving at an answer, and provide the full assertion with the correct output in [ANSWER] and [/ANSWER] tags, following the examples.
```

Its dataset of "448" multiple-choice questions is in the password-protected 2.2MB dataset.zip file at
https://github.com/idavidrein/gpqa/blob/main/dataset.zip

<a target="_blank" href="https://www.youtube.com/watch?v=0or_0JbMaFc&t=2m51s">VIDEO</a>:
Here's a question about use of hour glasses that Grok3 cannot solve in 3 minutes.

<a target="_blank" href="https://www.youtube.com/watch?v=0or_0JbMaFc&t=5m11s">VIDEO</a>
"Write a chess engine using the UCI (Universal Chess Interface) protocol"


<hr />

<a name="Creative_Writing"></a>

## Creative Writing

Coming soon.

<hr />

<a name="Instruction_Following"></a>

## Instruction Following

Coming soon.


https://www.youtube.com/watch?v=a6bPt9oyoa8&t=1m32s
"retirement will come for most people sooner than they think".
Brandage: Ex OpenAI Employee Gives Warning About The Economy
TheAIGRID

https://www.youtube.com/watch?v=REjFL9hkkL4
Anthropic's Chilling 18-Month Warning: AI Apocalypse in 18 Months
TheAIGRID
