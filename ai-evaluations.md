---
layout: post
date: "2025-02-19"
lastchange: "v001 + new :ai-evaluations.md"
url: https://bomonike.github.io/ai-evaluations
file: "ai-evaluations"
title: "AI Evaluations"
excerpt: "It's often difficult to know the context of an acronym. So here, in one page, are all 900+ ai-evaluations covering Business, Finance, Marketing as well as: AI/Quantum/Web3 IT, Security, Networking, Amazon, Azure, GCP, OMG!"
tags: [cloud, security, management, audit]
comments: true
created: "2024-12-28"
---
<a target="_blank" href="https://bomonike.github.io/ai-evaluations"><img align="right" width="100" height="100" alt="ai-evaluations-qr.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/ai-evaluations.png?raw=true" />
{% include l18n.html %}
<i>{{ page.excerpt }}</i>

Companies who create foundational AI models tout how each version of their creations performed on several benchmark tests run by their competitors.

The table below was shown by xAI when it self-reported (as #1) the accuracy of answers produced by its new Grok-3 LLM on Feb 18, 2025:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-grok3_qs2uj2.png"><img width="200" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-grok3_qs2uj2.png" /></a>

That resulted in some crying that xAI neglected to include in the comparison results of OpenAI's o3 December results:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-o3-dec_nij82u.png"><img width="200" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739990857/ai-evaluations-o3-dec_nij82u.png" /></a>


<a name="AIME"></a>

## Math (AIME)

<a target="_blank" href="https://matharena.ai/">https://matharena.ai</a> publishes how well various LLM models reasoned about mathematics challenges
in terms of Accuracy and cost of compute.

For example, Lex code for the first of 15 problems in AIME 2025 II are at:
https://github.com/eth-sri/matharena/blob/main/data/aime/aime_2025_II/problems/1.tex

QUESTION: Print properly formatted Lex files using <tt>wlect cat ???.lex</tt>

https://www.linkedin.com/pulse/deepseeks-abysmal-performance-aime-2025-math-annie-cushing-mpdge
Annie Cushing (author of Making Data Sexy), notes that "The MathArena team ... worked against the clock to run evaluations using the 2025 problems before models could start training on it."
because the challenging math problems "makes for an excellent benchmark to see how well these models reason through more complex problems, with less opportunity to get the answer correct by chance since the test isn’t multiple choice like many benchmarks."

The American Invitational Mathematics Examination (AIME) is administered by the <a target="_blank" href="https://maa.org/student-programs/amc/">Mathematical Association of America</a> each year as the second exam in the series of exams used to challenge high school mathletes competing to represent the US at the International Mathematics Olympiad (MOP). over 300,000 students in 50 states and over 30 countries

Students are invited to take the AIME based on their scores for exams <a target="_blank" href="https://areteem.org/blog/amc-10-12-all-you-need-to-know/">AMC 10 for middle schoolers and AMC 12 for high schoolers</a> offered November each year. Each test taker answers 25 multiple choice questions in 75 minutes. <a target="_blank" href="https://maa.edvistas.com/eduview/report.aspx?self=&view=1561&mode=6&timestamp=20250220005530203">Stats</a>: 150 is the highest score.

The questions test knowledge in algebra, geometry, counting and probability, and number theory. Both tests cover material typically covered in the first few years of high school math. Topics such as trigonometry, complex numbers, and logarithms are only needed for the AMC 12. Calculus is not required for either exam. Challenges include fundamentals in Pigeonhole Principle, Mathematical Induction, Inequalities, Diophantine Equations, and Functional Equations.

In 2025, the AIME was held February 6th, with problems and answers published immediately afterwards on various YouTube channels, forums, and blogs.

https://areteem.org/blog/2025-aime-i-answer-key-released/


<a name="GPQA"></a>

## Science (GPQA)

GPQA (Google-Proof Q&A) is a challenging dataset of 448 multiple-choice questions written by domain experts in biology, physics, and chemistry.

<a target="_blank" href="https://arxiv.org/pdf/2311.12022">PDF</a>
https://arxiv.org/abs/2311.12022 says "We ensure that the questions are high-quality and extremely difficult: experts who have or are pursuing PhDs in the corresponding domains reach 65% accuracy (74% when discounting clear mistakes the experts identified in retrospect), while highly skilled non-expert validators only reach 34% accuracy, despite spending on average over 30 minutes with unrestricted access to the web (i.e., the questions are "Google-proof").

The questions are also difficult for state-of-the-art AI systems, with our strongest GPT-4 based baseline achieving 39% accuracy. If we are to use future AI systems to help us answer very hard questions, for example, when developing new scientific knowledge, we need to develop scalable oversight methods that enable humans to supervise their outputs, which may be difficult even if the supervisors are themselves skilled and knowledgeable. The difficulty of GPQA both for skilled non-experts and frontier AI systems should enable realistic scalable oversight experiments, which we hope can help devise ways for human experts to reliably get truthful information from AI systems that surpass human capabilities.

https://github.com/idavidrein/gpqa/


<a name="LCB"></a>

## Coding (LCB)

https://livecodebench.github.io/ says
LCB (Live Code Bench) LiveCodeBench collects problems from periodic contests on LeetCode, AtCoder, and Codeforces platforms and uses them for constructing a holistic benchmark for evaluating Code LLMs across variety of code-related scenarios continuously over time.

