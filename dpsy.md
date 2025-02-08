---
layout: post
url: https://bomonike.github.io/dpsy
date: "2025-02-08"
lastchange: git commit -m"v001 + new :dpsy.md"
file: "dpsy"
title: "dpsy"
excerpt: "Even your AI prompts can be done better with AI with Declarative Self-improving Python."
tags: [python, ai, cloud]
comments: true
created: "2025-02-07"
---
<a target="_blank" href="https://bomonike.github.io/dpsy"><img align="right" width="100" height="100" alt="dpsy.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/dpsy.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

Do you think that you've "AI proofed" your job because you got results from prompt text?

Even writing prompts can be optimized (done better and faster) by AI.

DPSy (pronounced "Dee Pee EsS Pi") is an acronym standing for <strong>Declarative Self-improving Python</strong>. It is a utility library open sourced in Dec 2022 by Standford's NLP group, by 261 contributors at:

   <ul><a target="_blank" href="https://github.com/stanfordnlp/dspy">https://github.com/stanfordnlp/dspy</a></ul>

BTW, it's also a music troupe. So search for "dpsy ai".

It's introduced at its website:

   * <a target="_blank" href="https://dspy.ai">https://dspy.ai</a>
   * https://discord.gg/XCGy2WDCQB server invitation
   * Underlying research at https://github.com/stanfordnlp/dspy?tab=readme-ov-file#-citation--reading-more


> DSPy shifts the focus of work from tinkering with brittle prompt strings and messy incidental choices to programming with structured and declarative natural-language <strong>modules</strong>.

   * "Self-improving" means that Python framework for <strong>iteratively improving</strong> prompts using Python programming.

   * "Declarative" means for every AI component in your system, you specify input/output behavior as a signature and select a module to assign a strategy for invoking your LM.

Compose different modules together into ergonomic, portable, and optimizable AI systems.

DSPy's job is to expand signatures into prompts.
DSPY also parses typed outputs.


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
1. https://www.youtube.com/watch?v=D2HurSldDkE "Prompt Engineering is Dead; Build LLM Applications with DSPy Framework" by Databricks

   Extends RAG (Retrieval-Augmented Generation))
