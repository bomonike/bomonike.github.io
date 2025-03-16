---
layout: post
url: https://bomonike.github.io/prompt-engineering
date: "2025-03-15"
lastchange: "v005 + fix td :prompt-engineering.md"
file: "prompt-engineering"
title: "Prompt-Engineering"
excerpt: "Even your AI prompts can be done better with AI with Declarative Self-improving Python (DPSy)."
tags: [python, ai, cloud]
comments: true
created: "2025-02-07"
---
<a target="_blank" href="https://bomonike.github.io/prompt-engineering"><img align="right" width="100" height="100" alt="prompt-engineering.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/prompt-engineering.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

Do you think that you've "AI proofed" your job because you got results from prompt text?

Wrong. LLMs can outperform humans at prompt optimization as well.
Even writing prompts can be optimized (done better and faster) by AI.

> "Don't bother figuring out what special magic combination of words will give you the best performance for your task. Just develop a scoring metric, then let the model optimize itself." -- Rick Battle, VMWware "Don't Start a Career as an AI Prompt Engineer." IEEE Spectrum May 2024.

The object of this article is so you can add to your LinkedIn profile / resume something like this:

<ul>Achieved higher-rated results 3X quicker by leading optimization of LLM prompts through automated evaluation, using DSPy.
</ul>

## Strategic framework

<a target="_blank" href="https://www.youtube.com/watch?v=p09yRj47kNM">VIDEO</a>:
<a target="_blank" href="https://www.coursera.org/google-learn/prompting-essentials">
Google Prompting Essentials</a> 9-hour video Coursera by Googlers.
present their <a target="_blank" href="https://www.coursera.org/learn/google-prompting-essentials/lecture/aOSCm/use-the-5-step-prompt-framework">memonic2</a>:

<table border="1" cellpadding="4" cellspacing="0">
<tr valign="bottom"><th><strong>Stage</strong></th><th><strong>Mememonic1</strong></th><th>Mememonic2</th></tr>
<tr valign="top"><td> Task       </td><td> Tiny   </td><td> Thoughtfully   </td></tr>
<tr valign="top"><td> Context    </td><td> Crabs   </td><td> Create   </td></tr>
<tr valign="top"><td> References    </td><td> Ride   </td><td> Really   </td></tr>
<tr valign="top"><td> Evaluate    </td><td> Enormous   </td><td> Excellent   </td></tr>
<tr valign="top"><td> Iterate    </td><td> Iguanas   </td><td> Inputs   </td></tr>
</table>

The first memonic is from Tina Huang's <a target="_blank" href="https://www.youtube.com/watch?v=p09yRj47kNM">"Google's 9 Hour AI Prompt Engineering Course In 20 Minutes"<br />
<img alt="prompt-memonic-tina.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1739297851/prompt-memonic-tina_wsk7hi.png"></a>

## Tutorials

Tutorials FREE on Infosys Springboard Digital Academy:
<a target="_blank" href="https://infyspringboard.us.onwingspan.com/web/en/app/toc/lex_auth_013719953643773952304_shared/overview">
7h28m "Prompt Engineering"</a>
This text-based course intends to teach learners the best practices of Prompt Design to extract more relevant and useful output from Large Language Models such as OpenAI GPT-3 /chatGPT, etc.   


<a name="Promptmetheus"></a>

## Promptmetheus



## What is DSPy?

DSPy is an acronym (<a target="_blank" href="https://www.youtube.com/watch?v=NoaDWKHdkHg&t=9m6s">pronounced "Dee Ess Py"</a>), standing for <strong>Declarative Self-improving Python</strong>. It is a utility library open sourced in Dec 2022 by Standford's NLP group in the
Stanford Artificial Intelligence Laboratory (SAIL):

   <ul><a target="_blank" href="https://github.com/stanfordnlp/dspy">https://github.com/stanfordnlp/dspy</a></ul>

As of this writing, it had 261 contributors, led by <a target="_blank" href="https://x.com/lateinteraction">@lateinteraction</a> members <a target="_blank" href="https://www.linkedin.com/in/omar-k-09747b188/">Omar Khatteb</a> and
<a target="_blank" href="https://www.youtube.com/watch?v=s85YY3myQLw&pp=ygUKZHBzeS5weSBhaQ%3D%3D">with Michael Ryan</a> and Josh Patel.

BTW, the name is also a music troupe. So search for "dspy ai".


## References

According to these sources:
   1. <a target="_blank" href="https://dspy.ai">https://dspy.ai</a>
   1. https://arvix.org/pdf/2310.03714 DSPy Self-improving Pipelines
   1. https://discord.gg/XCGy2WDCQB server invitation
   1. Underlying research at https://github.com/stanfordnlp/dspy?tab=readme-ov-file#-citation--reading-more
   1. <a target="_blank" href="https://www.youtube.com/watch?v=D2HurSldDkE&t=20m52s">"Prompt Engineering is Dead; Build LLM Applications with DSPy Framework"</a> by <a target="_blank" href="https://www.linkedin.com/in/mattyatesatl/">Matt Yates</a> on the Databricks channel
   1. <a target="_blank" href="https://dspy-docs.vercel.app/docs/building-blocks/solving_your_task">this</a>
   1. https://www.youtube.com/watch?v=QdA-CRr_oXo Learn by Building AI "A Gentle Introduction" Part 1
   1. https://www.youtube.com/watch?v=NoaDWKHdkHg&t=9m6s by MLOps.community interview Omar Khattab
   1. https://www.youtube.com/watch?v=_ROckQHGHsU by Neural Breakdown with AVB
   1. https://www.youtube.com/watch?v=s85YY3myQLw by FunctionalTV
   1. https://arvix.org/pdf/2309.03409 LLMs as optimizers
   1. https://arvix.org/pdf/2405.06683 ERAGent
   1. https://www.youtube.com/watch?v=Y94tw4eDHW0 by Cohere (Canada) ColBERT search paradigm
   1. https://www.youtube.com/watch?v=Jfpxjg8xj9w by Fahd Mirza "Easiest Tutorial"
   1. https://www.youtube.com/watch?v=ayHGacm5R_w by The AI Advantage "You probably don't need prompt engineering"
   1. https://www.youtube.com/watch?v=zBb8XQZ4ksI by Kamalraj MM
   1. https://www.youtube.com/watch?v=s85YY3myQLw by FunctionalTV
   1. https://www.youtube.com/playlist?list=PLYHC03VXva9sCKIAcozNMrtiKwjl6EQR- June 2024
   1. https://www.youtube.com/watch?v=7EptCzJ9AL8 by Hacking AI
   1. https://www.youtube.com/watch?v=wds11xm4ruo by Data Science in Everyday Life
   1. https://www.youtube.com/watch?v=6rN9ozzdT3A "DSPy: MOST Advanced AI RAG Framework with Auto Reasoning and Prompting" by <a target="_blank" href="https://www.linkedin.com/in/mervinpraison/">Mervin Praison</a> on python3 -m pip install dspy dspy-ai openai rich cloudinary, hotpot

      by Discover AI:

   1. https://www.youtube.com/watch?v=U5ZuMZkZBSY Understand DSPy: Programming AI Pipelines 
   1. https://www.youtube.com/watch?v=6YtdtjQD1r0 DSPy: Advanced Prompt Engineering? 

      by Greg Loughnane on AI Makerspace
      
   1. https://www.youtube.com/watch?v=W_fscw3PXjg DSPy: Advanced RAG? 

"You wouldn’t hand-select weights of your neural network, so don’t hand-select your prompts."
DSPy's job is to expand <strong>signatures</strong> into prompts.
DSPy also parses typed outputs.

## How DSPy Works

DSPy is basically an optimising compiler that reads declarative code (signatures) to generate AI prompt text based on its predefined templates.

> DSPy shifts the focus of work from tinkering with brittle prompt strings and messy incidental choices to programming with structured and declarative natural-language <strong>modules</strong>.

   * "Self-improving" means that Python framework for <strong>iteratively improving</strong> prompts using Python programming.

   * "Declarative" means for every AI component in your system, you specify input/output behavior as a signature and select a module to assign a strategy for invoking your LM.

DSPy is based on PyTorch.

Each template consists of:

   <ul>Given the Context and Question, respond with Query.</ul>

DSPy uses optimizers <a target="_blank" href="https://www.youtube.com/watch?v=s85YY3myQLw">VIDEO</a>:
   * dspy.BootstrapFewShotWithRandomSearch
   * dspy.COPRO and dspy.MIPROv2(Multi-Instruction PRoposer Optimiser version 2) induction of revised instructions <a target="_blank" href="https://www.youtube.com/watch?v=s85YY3myQLw&t=14m23s">VIDEO</a>
   * dspy.BootstramFinetune for multi-stage fine tuning

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

https://www.lycee.ai/blog/getting-started-with-dspy

<a target="_blank" href="https://www.youtube.com/watch?v=GqrmkpKBlyI">
"Run AI models locally without an expensive GPU"
by Zen van Riel


<a name="Signatures"></a>

## Signatures

Dpsy asks that you write your system in normal Python, but
express <strong>AI steps</strong> in the form of <strong>DSPy signatures</strong>.

As with other languaes, a signature defineds the input and output parameters of a function.

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

## Cohare's ColBERT

<a target="_blank" href="https://www.youtube.com/@CohereAI">Cohare</a>
https://llm.university

<a target="_blank" href="https://www.youtube.com/watch?v=Y94tw4eDHW0">
Programming Foundation Models with DSPy / Multivector Semantic Search with ColBERT - Omar Khattab</a> at NEURIPS 2024

ColBERT search paradigm is based on paper: https://arxiv.org/pdf/1905.10650

ColBERT provides evaluation? Yes, see https://colbert.rocks

<a target="_blank" href="https://www.youtube.com/watch?v=Dt3H2ninoeY">
https://www.youtube.com/watch?v=Dt3H2ninoeY</a>
Omar Khattab, DSPy: Compiling Declarative Language Model Calls into Self-Improving Pipelines
by FunctionalTV

<a target="_blank" href="https://www.youtube.com/watch?v=CDung1LnLbY&t=53s">
DSPy and ColBERT with Omar Khattab! - Weaviate Podcast #85</a>
by Weaviate • Vector Database


## References

1. https://www.youtube.com/watch?v=Zv4LjO8teqE&t=856s&pp=ygUKZHBzeS5weSBhaQ%3D%3D
1.  Lindy

   Extends RAG (Retrieval-Augmented Generation))


