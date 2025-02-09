---
layout: post
url: https://bomonike.github.io/dspy
date: "2025-02-08"
lastchange: git commit -m"v001 + new :dspy.md"
file: "dspy"
title: "dspy"
excerpt: "Even your AI prompts can be done better with AI with Declarative Self-improving Python."
tags: [python, ai, cloud]
comments: true
created: "2025-02-07"
---
<a target="_blank" href="https://bomonike.github.io/dspy"><img align="right" width="100" height="100" alt="dspy.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/dspy.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

Do you think that you've "AI proofed" your job because you got results from prompt text?

Wrong. LLMs can outperform humans at prompt optimization as well.
Even writing prompts can be optimized (done better and faster) by AI.

> "Don't bother figuring out what special magic combination of words will give you the best performance for your task. Just develop a scoring metric, then let the model optimize itself." -- Rick Battle, VMWware "Don't Start a Career as an AI Prompt Engineer." IEEE Spectrum May 2024.

The object of this article is so you can add to your LinkedIn profile / resume something like this:

<ul>Achieved higher-rated results 3X quicker by leading optimization of LLM prompts through automated evaluation, using DSPy.
</ul>

## What is DSPy?

DSPy is an acronym (pronounced "Dee Pee EsS Pi"), standing for <strong>Declarative Self-improving Python</strong>. It is a utility library open sourced in Dec 2022 by Standford's NLP group led by <a target="_blank" href="https://www.linkedin.com/in/omar-k-09747b188/">Omar Khatteb</a> at the
Stanford Artificial Intelligence Laboratory (SAIL).

   <ul><a target="_blank" href="https://github.com/stanfordnlp/dspy">https://github.com/stanfordnlp/dspy</a></ul>

As of this writing, it had 261 contributors.

BTW, the name is also a music troupe. So search for "dspy ai".

According to these sources:
   1. <a target="_blank" href="https://dspy.ai">https://dspy.ai</a>
   1. https://arvix.org/pdf/2310.03714 DSPy Self-improving Pipelines
   1. https://discord.gg/XCGy2WDCQB server invitation
   1. Underlying research at https://github.com/stanfordnlp/dspy?tab=readme-ov-file#-citation--reading-more
   1. <a target="_blank" href="https://www.youtube.com/watch?v=D2HurSldDkE&t=20m52s">"Prompt Engineering is Dead; Build LLM Applications with DSPy Framework"</a> by <a target="_blank" href="https://www.linkedin.com/in/mattyatesatl/">Matt Yates</a> on the Databricks channel
   1. <a target="_blank" href="https://dspy-docs.vercel.app/docs/building-blocks/solving_your_task">this</a>
   1. https://www.youtube.com/watch?v=QdA-CRr_oXo Learn by Building AI "A Gentle Introduction" Part 1
   1. https://www.youtube.com/watch?v=s85YY3myQLw by FunctionalTV
   1. https://arvix.org/pdf/2309.03409 LLMs as optimizers
   1. https://arvix.org/pdf/2405.06683 ERAGent
   1. https://www.youtube.com/watch?v=Y94tw4eDHW0 by Cohere
   1. https://www.youtube.com/watch?v=Jfpxjg8xj9w by Fahd Mirza "Easy Tutorial"
   1. https://www.youtube.com/watch?v=ayHGacm5R_w by The AI Advantage "You probably don't need prompt engineering"
   1. https://www.youtube.com/watch?v=zBb8XQZ4ksI by Kamalraj MM


"You wouldn’t hand-select weights of your neural network, so don’t hand-select your prompts."
DSPy's job is to expand <strong>signatures</strong> into prompts.
DSPY also parses typed outputs.

> DSPy shifts the focus of work from tinkering with brittle prompt strings and messy incidental choices to programming with structured and declarative natural-language <strong>modules</strong>.

   * "Self-improving" means that Python framework for <strong>iteratively improving</strong> prompts using Python programming.

   * "Declarative" means for every AI component in your system, you specify input/output behavior as a signature and select a module to assign a strategy for invoking your LM.

Compose different modules together into ergonomic, portable, and optimizable AI systems.


Don't just write a prompt and call it good enough.

Improve your outputs by improving the depth and breath of your testing processes.

There are <a target="_blank" href="https://getmason.io/blog/post/test-pyramid">several levels of testing</a>:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739076861/dspy-prompts-1714x628_d8tuc3.png"><img alt="dspy-testing-levels-925x558.png" width="300"  src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739076861/dspy-prompts-1714x628_d8tuc3.png" /></a>

Within enterprises, it is now commonplace for <a target="_blank" href="https://smaphoreci.com/blog/cicd-pipeline">automation</a> to run the various tests:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1739077333/dspy-cicd-878x299_nnkubw.png"><img alt="dspy-cicd-878x299.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739077333/dspy-cicd-878x299_nnkubw.png" /></a>


## Prompt Workflow

<a target="_blank" href="https://docs.anthropic.com/en/docs/prompt-engineering">
<img alt="dspy-prompts-1714x628.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739076861/dspy-prompts-1714x628_d8tuc3.png" /></a>



<a name="Signatures"></a>

## Signatures

Dpsy asks that you write your system in normal Python, but
express <strong>AI steps</strong> in the form of <strong>DSPy signatures</strong>.

DSPy handles:

(i) applying prompting strategies like CoT or ReAct over your signatures,

(ii) expanding your signatures into prompts for your LM, and

(iii) parsing the LM outputs, enforcing structure/types to give you back the values you asked for.

## Metric

What's unique with DSPy is that it asks for a metric that evaluates your system's outputs.

The DSPy Optimizer has you pick will

(i) build & explore better instructions for every module,

(ii) generate good examples for every prompt, and/or

(iii) finetune the LM weights.


https://x.com/lateinteraction
Omar Khattab

1. https://www.youtube.com/watch?v=Zv4LjO8teqE&t=856s&pp=ygUKZHBzeS5weSBhaQ%3D%3D
1. https://www.youtube.com/watch?v=s85YY3myQLw&pp=ygUKZHBzeS5weSBhaQ%3D%3D
1.  Lindy

   Extends RAG (Retrieval-Augmented Generation))
