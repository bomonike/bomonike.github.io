---
layout: post
date: "2025-03-02"
lastchange: "v010 + AGIf :ai-benchmarks.md"
file: "ai-benchmarks"
title: "AI Evaluations"
excerpt: "Let's get to know the benchmarks AI companies use to compare each others' versions."
tags: [ai, benchmarks]
comments: true
created: "2024-12-28"
---
<a target="_blank" href="https://bomonike.github.io/ai-benchmarks"><img align="right" width="100" height="100" alt="ai-benchmarks.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/ai-benchmarks.png?raw=true" />
<i>{{ page.excerpt }}</i>

Language:
* HELLASWAG (Harder Endings Longer context Low-shot Activities Situations With Adversarial Generations) to finish sentences
* <a href="#MMLU">MMLU</a> (Massive Multitask Language Understanding) 15K questions
* <a href="#Creative_Writing">Creative Writing</a>
* <a href="#TRUTHFULQA">TRUTHFULQA</a> to test whether the LLM recognises 800 unhinged conspiracy theories as false

General safety:
* <a href="#IFEval">IFEval</a> (Instruction Following)
* <a href="#Instruction_Following">Instruction Following</a>
* <a href="#HarmBench">HarmBench</a> of prompts to jail-break out of content moderation controls by LLMs
* Mind2Web and AITW benchmark of GUI screen object recognition to evaluate OMNIPARSER vs GPT-4V

Reasoning:
* ARC (AI2 Reasoning Challenge) from the Allen Institute for AI
* ARC is "Abstraction and Reasoning Corpus". The best models solves 30% of the tasks.

Science:
* <a href="#MT-bench">MT-bench</a> as a judge of 160 questions in 8 categories of knowledge
* <a href="#GPQA">Science (GPQA Diamond)</a>

Math benchmarks:
* <a href="#AGIEval">AGIEval</a> 5m58s - <a target="_blank" href="https://openreview.net/forum?id=fGfCsqVZ_hfq">ARVIX</a>: Available in English (AGIEval-en) and Chinese Gaokao (AGIEval-zh), a bilingual benchmark designed to use 20 official, public, and high-standard admission and qualification exams taken by humans around tasks relevant to human cognition and problem-solving.  law school admission (LSAT) tests, math competitions.
* <a href="#MMMU">MMMU</a> (Massive Multitask Math Understanding) Visual Reasoning
* <a href="#GSM8K">GSM8K</a> (Grade School Math 8K) word problems which take 2-8 steps to solve, from OpenAI
* <a href="#Math500">Math 500</a> Math Problem Solving
* <a href="#AIME">Math (AIME)</a> Math competition

Coding:
* WINOGRADE 44K
* <a href="#LCB">Coding LCB (Live Code Bench)</a>
* <a href="#SWE">SWE-Bench (Agentic SoftWare Engineering)</a>
   * SWE-bench Lite - curated to make evaluation less costly and more accessible
   * SWE-bench Multimodal featuring issues with visual elements (images, videos) from JavaScript repositories
   * <a target="_blank" href="https://openai.com/index/introducing-swe-bench-verified/">SWE-bench Verified</a> - a human annotator filtered subset that has been deemed to have a ceiling of 100% resolution rate

* <a href="#TAU">TAU-Bench (Task Analysis Unit)</a> to test agentic tool use
* humaneval, humaneval+ and taco to cover the current programming benchmarks.
Download from HuggingFace the three variations:

https://github.com/swe-bench/sb-cli/
provides the CLI to run the benchmarks.

The benchmark involves giving agents a code repository and issue description, and challenging them to generate a patch that resolves the problem described by the issue.

https://www.youtube.com/watch?v=aOjgPJ94-aM
Huggingface accelerate library to run 


<hr />

<a target="_blank" href="https://www.youtube.com/watch?time_continue=1430&v=om5KAKSSpNg">VIDEO</a>:
In June 2024, <a target="_blank" href="https://www.linkedin.com/in/leopold-aschenbrenner">Leopold Aschenbrenner</a> wrote his <a target="_blank" href="https://situational-awareness.ai/">situational-awareness.ai blog</a> with this illustration:
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1737377788/agi-sit-1375x901_vsc5af.png">
<img alt="" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1737377788/agi-sit-1375x901_vsc5af.png" /></a>

<i>Click image to enlarge to full frame.</i>

By 2025, AI companies have sucked up all the information that have been created by humans. The next thing is generation of new information. New problems need to be defined because, in 2025, evaluations about the extent that a particular offering has reached AGI (Artificial General Intelligence) based on a relatively <strong>small number of challenges</strong>.

PROTIP: Enhance your resume: make YouTube videos about solving the problems. Suggest new problems.
Find issues with the autograder. File a PR and get listed as a contributor.

ASI (Artificial Super Intelligence) will be reached when "proto-automated" researchers automate research (within massive AI datacenters).

<hr />

When xAI unveiled its Grok-3 LLM on Feb 18, 2025, one analysis shows it ranking #1 across the various benchmarks (including Creative Writing, Instruction Following, etc.):

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739896040/genai-grok3-819x426_wgomxb.png"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739896040/genai-grok3-819x426_wgomxb.png" /></a>

This table compares specific scores on specific benchmarks:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-benchmarks-grok3_qs2uj2.png"><img width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-benchmarks-grok3_qs2uj2.png" /></a>

That resulted in some crying that xAI neglected to include in the comparison results of OpenAI's o3 December results:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-benchmarks-o3-dec_nij82u.png"><img width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-benchmarks-o3-dec_nij82u.png" /></a>

### Claude 3.7 Sonnet

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1740511914/ai-eval-claude37-1092x868_xobnff.png"><img alt="ai-eval-claude37.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1740511914/ai-eval-claude37-1092x868_xobnff.png" /></a>

The above is from Anthropic's Claude 3.7 Sonnet announcement on Feb 25, 2025.
Dubbed the first hybrid AI reasoning model, it is a groundbreaking AI model because it allows users to control how long it "thinks" before responding to deliver real-time answers or take extra time to provide more complex, well-reasoned responses.
It's available to premium Claude users.
Pricing: $3 per million input tokens and $15 per million output tokens—higher than OpenAI’s o3-mini.

Anthropic is also launching Claude Code, a tool that lets developers run AI-driven code edits directly from their terminal, analyze projects, and even push changes to GitHub.

<hr />

## Math

There are several mathematics competitions: AIME, HMMT, Mandelbrot, ARML.

<a name="AGIEval"></a>

### AGIEval

Introduced 16 Dec 2023 on <a target="_blank" href="https://openreview.net/forum?id=fGfCsqVZ_hfq">ARVIX</a> 
(by <a target="_blank" href="https://www.linkedin.com/in/ruixiang-cui/">Ruixiang Cui</a> while working at Microsoft and during his PhD at the University of Copenhage)
as "A Human-Centric Benchmark for Evaluating Foundation Models" for AGI (Artificial General Intelligence) development.
   * 5m58s - 

AGIEVal is called "human-centric" because its prompts are based on 20 exams: official, public, and high-standard admission and qualification exams taken by humans: SAT, law school admission (LSAT) tests, math competitions.

As of March 2025, the v1.1 version of the <a target="_blank" href="https://github.com/ruixiangcui/AGIEval?tab=readme-ov-file#leaderboard">leaderboard for AGIEval</a> shows:

   * A top score in the low 70% by GPT-4o means a low "pass" for humans?
   * Providing examples (Few Shot and Few Shot-COT) improved accuracy by 3.1 points (AGIEval-en).
   * The newer GPT-4o with reasoning capabilities improved accuracy over GPT-3.5 by an average of 1.2 points (AGIEval-en).
   * Because AGIEval is uniquely bilingual, it provides insight on the "arms race" toward AGI development between the US and China. With Few-shot GPT-4o, the achievement of 71.9% puts the Chinese (AGIEval-zh) slightly ahead of the 71.4% (AGIEval-en) for English.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1740893682/ai-bench-agi-results-v1.1-png_q73hi9.png">
<img alt="ai-bench-agi-results-v1.1-png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1740893682/ai-bench-agi-results-v1.1-png_q73hi9.png" /></a>

An example is https://github.com/ruixiangcui/AGIEval
JSONL (JSON Lines) is a lightweight, text-based data format designed for storing structured data records, where each line in the file represents a valid JSON object. This format is particularly useful for handling large datasets efficiently, as it allows for line-by-line processing without requiring the entire file to be loaded into memory.

Shown below: 
https://github.com/ruixiangcui/AGIEval/blob/main/data/v1_1/math.jsonl

```
{"passage": null, "question": "Let $\\lambda$ be a constant, $0 \\le \\lambda \\le 4,$ and let $f : [0,1] \\to [0,1]$ be defined by\n\\[f(x) = \\lambda x(1 - x).\\]Find the values of $\\lambda,$ $0 \\le \\lambda \\le 4,$ for which there exists an $x \\in [0,1]$ such that $f(x) \\neq x$ but $f(f(x)) = x.$", "options": null, "label": null, "answer": "(3,4]", "other": {"solution": "We have that\n\\[f(f(x)) = f(\\lambda x(1 - x)) = \\lambda \\cdot \\lambda x(1 - x) (1 - \\lambda x(1 - x)),\\]so we want to solve $\\lambda \\cdot \\lambda x(1 - x) (1 - \\lambda x(1 - x)) = x.$\n\nNote that if $f(x) = x,$ then $f(f(x)) = f(x) = x,$ so any roots of $\\lambda x(1 - x) = x$ will also be roots of $\\lambda \\cdot \\lambda x(1 - x) (1 - \\lambda x(1 - x)) = x.$  Thus, we should expect $\\lambda x(1 - x) - x$ to be a factor of $\\lambda \\cdot \\lambda x(1 - x) (1 - \\lambda x(1 - x)) - x.$  Indeed,\n\\[\\lambda \\cdot \\lambda x(1 - x) (1 - \\lambda x(1 - x)) - x = (\\lambda x(1 - x) - x)(\\lambda^2 x^2 - (\\lambda^2 + \\lambda) x + \\lambda + 1).\\]The discriminant of $\\lambda^2 x^2 - (\\lambda^2 + \\lambda) x + \\lambda + 1$ is\n\\[(\\lambda^2 + \\lambda)^2 - 4 \\lambda^2 (\\lambda + 1) = \\lambda^4 - 2 \\lambda^3 - 3 \\lambda^2 = \\lambda^2 (\\lambda + 1)(\\lambda - 3).\\]This is nonnegative when $\\lambda = 0$ or $3 \\le \\lambda \\le 4.$\n\nIf $\\lambda = 0,$ then $f(x) = 0$ for all $x \\in [0,1].$\n\nIf $\\lambda = 3,$ then the equation $f(f(x)) = x$ becomes\n\\[(3x(1 - x) - x)(9x^2 - 12x + 4) = 0.\\]The roots of $9x^2 - 12x + 4 = 0$ are both $\\frac{2}{3},$ which satisfy $f(x) = x.$\n\nOn the other hand, for $\\lambda > 3,$ the roots of $\\lambda x(1 - x) = x$ are $x = 0$ and $x = \\frac{\\lambda - 1}{\\lambda}.$  Clearly $x = 0$ is not a root of $\\lambda^2 x^2 - (\\lambda^2 + \\lambda) x + \\lambda + 1 = 0.$  Also, if $x = \\frac{\\lambda - 1}{\\lambda},$ then\n\\[\\lambda^2 x^2 - (\\lambda^2 + \\lambda) x + \\lambda + 1 = \\lambda^2 \\left( \\frac{\\lambda - 1}{\\lambda} \\right)^2 - (\\lambda^2 + \\lambda) \\cdot \\frac{\\lambda - 1}{\\lambda} + \\lambda + 1 = 3 - \\lambda \\neq 0.\\]Furthermore, the product of the roots is $\\frac{\\lambda + 1}{\\lambda^2},$ which is positive, so either both roots are positive or both roots are negative.  Since the sum of the roots is $\\frac{\\lambda^2 + \\lambda}{\\lambda^2} > 0,$ both roots are positive.  Also,\n\\[\\frac{\\lambda^2 + \\lambda}{\\lambda} = 1 + \\frac{1}{\\lambda} < \\frac{4}{3},\\]so at least one root must be less than 1.\n\nTherefore, the set of $\\lambda$ that satisfy the given condition is $\\lambda \\in \\boxed{(3,4]}.$", "level": 5, "type": "Intermediate Algebra"}}
```

TODO: Utility to display jsonl files for human consumption.



<a name="AIME"></a>

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

Models submitted for evaluation are at https://github.com/LiveCodeBench/submissions

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1740618053/ai-benchmarks-kimi_micquq.png"><img alt="ai-benchmarks-kimi.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1740618053/ai-benchmarks-kimi_micquq.png?raw=true" /></a>

   * Model names beginning with "O" such as "O3" are from <a target="_blank" href="https://openai.com">OpenAI.com</a>
   * Model name "Kimi" is at <a target="_blank" href="https://kimi.moonshot.cn">https://kimi.moonshot.cn</a> from China.
   * Model name "DeepSeek" is <a target="_blank" href="https://chat.deepseek.com/sign_in">DeepSeek.com</a> from China.
   * Model names "Gemini" are from <a target="_blank" href="https://gemini.google.com/app">chat.google.com</a>
   * Model names "Claude" are from Anthropic at <a target="_blank" href="https://claude.ai/new">https://claude.ai/new</a> where it proclaims its "emphasis on what's called "constitutional AI" - an approach to developing AI systems with built-in safeguards and values.
   * Model names "Dracarys" uch as <a target="_blank" href="https://huggingface.co/abacusai/Dracarys2-72B-Instruct">Dracarys2-Llama-3.1-70B-Instruct</a> are in the Smaug series, a finetune of Qwen2.5-72B-Instruct developed by: Abacus.AI China at 
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

<a name="SWE"></a>

## SWE-Bench benchmark

<a target="_blank" href="https://www.swebench.com/">SWE-Bench (Software Engineering Benchmark) at https://www.swebench.com</a>
has been used as the way to compare how well LLM offerings tests systems' ability to automatically <strong>solve GitHub issues</strong> in a dataset containing 2,294 Issue-Pull Request pairs from 12 popular Python repositories:

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

https://www.youtube.com/watch?v=379s4W_EaTk

https://www.youtube.com/watch?v=379s4W_EaTk&t=9m3s
LLM Engineer's Handbook (from Packt)
by Paul Lustzien, 

OmniParser
https://microsoft.github.io/OmniParser/

https://www.youtube.com/watch?v=kkZ4-xY7oyU&t=2m11s
PersonaQA for Hallucination Evaluation

https://www.youtube.com/watch?v=WVhJSUtGbYM
Best AI Coding IDE? I Tested 5, Winner Shocked Me!
by Siraj Raval
