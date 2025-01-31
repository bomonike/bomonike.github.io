---
layout: post
url: https://bomonike.github.io/genai
date: "2025-01-30"
lastchange: git commit -m"v003 + genai AIF-C01 from wilson :genai.md"
file: "genai"
title: "GenAI (Generative AI)"
excerpt: "GenAI burst out in 2022 and changed the world with the generation of text, images, audio, and video."
tags: [cloud, security, management, ai]
comments: true
created: "2023-08-08"
---
<a target="_blank" href="https://bomonike.github.io/genai"><img align="right" width="100" height="100" alt="genai.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/genai.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

"This year, it's LLMs. Last year it was blockchain. Next year maybe quantum".
"We keep moving".

This article introduces Generative AI (GenAI) on several cloud platforms ("hyperscalers"):<br />
FAANG:
   * <a href="#@Facebook">Facebook Pytorch LaLMA</a>
   * <a href="#@AWS">AWS</a>
   * <a href="#@Azure">Microsoft Azure</a> Bing
   * Netflix
   * <a href="#@Google">Google</a> TensorFlow, Gemini in Vertex.ai
   * <a href="#IBM">IBM</a>

   * Apple ReALM (on-device)
   * <a href="#Groq">Groq.com</a> (from x.com) large LLM, fast, uncensored, and accesss live Twitter/X feeds
Manufacturer:
   * <a href="#NVIDIA">NVIDIA</a> CUDA
SaaS vendors:
   * <a href="#Databricks">Databricks</a>
   * Salesforce Einstein
   * <a href="#SAP">SAP</a>
Independents:
   * Devon
   * Mistral (from France)
   <br /><br />

Also:
   * <a href="#EmbeddingDBs">EmbeddingDBs</a>
   <br /><br />

## What's the big deal?

Generative AI (GenAI) is the next progression in "democratizing" how people interact with computers.

Making use of computers had required learning precise "incantations" typed into Command Line Interfaces (CLIs) until Steve Jobs introduced the GUI (Graphical User Interface) using a mouse.

When <a target="_blank" href="https://learn.microsoft.com/en-us/azure/ai-services/openai/">OpenAI</a> burst in popularity in late 2022, people can now type regular human language to request what took a lot of effort by programmers and others:

When Devon (from Cognition) appeared in early 2024, the world showed that English sentences can indeed fix a repository of code on its own.

The next phase are LAM (Language Action Models) enabling multiple <strong>AI Agents</strong> collaborating together, on their own, without people involved.

Eventually, humans would exist only to entertain each other (until they are exterminated)?

https://www.linkedin.com/pulse/what-using-genai-taught-me-managing-people-wilson-mar--lwsyc

https://checksum.ai/blog/the-engineering-of-an-llm-agent-system


<hr />

## Prompt Engineering

Here are some examples of text generation prompts.

Substitute [words within brackets] with what's applicable to your situation:

* Create content ideas, such as for a blog,

   “You are [role] of a [industry] looking to generate ideas for blog posts for the company website.
   The blog will target prospective customers in [region]. The blog posts will focus on [topic(s)].
   Please generate 10 ideas.”

* Generate ideas:

   “How can I solve my [issue] problem? Provide five suggestions.”

* Edit for clarity and tone:

   “I want you to act as an editor. I will provide you with an email that will be sent to a [manager/colleague/client]. I want you to edit the text to ensure the tone is professional and the message is clear. Also, please check for grammatical and spelling errors.”


PROTIP: Prompt text may need to be adjusted for the LLM being used.


<hr />

## Offensive Moderation

OpenAI <a target="_blank" href="https://cdn.openai.com/papers/gpt-4-system-card.pdf" title="March 23, 2023">published</a>
the progress of its "Alignment Research Center" toward moderating offensive responses from GPT-3.5 to GPT-4:

> My apologies, but I cannot create content that potentially spreads misinformation or targets a specific group
or individuals. If there’s any other topic I can help you with, feel free to ask.

<img alt="genai-openai-moderation-230323.png" width="792" height="719" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1709738075/genai-openai-moderation-230323_o8lsr1.png">

QUESTION: What the heck does that mean?


## Perplexity.ai

   * https://www.youtube.com/watch?v=ht3XV_nbduQ by Perplexity
   * https://www.youtube.com/watch?v=4Si5BXcbdGc
   * https://www.youtube.com/watch?v=aNx80uPiQLc by Conor Grennan
   * https://www.youtube.com/watch?v=Je41cPW9e3Y
   * https://www.youtube.com/watch?v=miMR91GZGvE To Learn Your Research Field with Perplexity AI
   * https://www.youtube.com/watch?v=FQwyb250bCg
   * https://www.youtube.com/watch?v=mETWVJLqDYc
   * https://www.youtube.com/watch?v=jb3Qxi9U4P4
   * https://www.youtube.com/watch?v=jamC7b5dPxQ
   * https://www.youtube.com/watch?v=BIHZFUg1QxU "multi-search tool"
   <br /><br />

They call it the "Google Killer".

Unlike ChatGPT, Perplexity is an "answer engine":
   * Can reference where knowledge is from (Academic, etc.)
   * To reduce hallucinations, citations to sources are provided
   * Taps into real-time knowledge
   <br /><br />

38 people work there with half a billion invested (including by Jeff Bezos) <a target="_blank" href="https://www.youtube.com/watch?v=FZieYYj0ImE">VIDEO</a>



<hr />

<a name="@Azure"></a>

## At Microsoft

Microsoft has ownership interest in OpenAI, whose ChatGPT exploded in popularity in 2023.
   * "Azure OpenAI" became an offering March, 2023
   <br /><br />

<a target="_blank" href="https://learn.microsoft.com/en-us/training/modules/fundamentals-generative-ai/7-exercise">Exercise - Explore generative AI with Bing Copilot</a>

Microsoft's GitHub also unveiled its CoPilot series for developers on Visual Studio IDEs.

Many of Microsoft 365 SaaS offerings (Word, Excel, PowerPoint, etc.) have been upgraded with AI features.

* https://copilot.microsoft.com
* https://learn.microsoft.com/en-us/ai/
* https://learn.microsoft.com/en-us/azure/ai-services/openai/overview
* https://learn.microsoft.com/en-us/training/paths/develop-ai-solutions-azure-openai/
* <a target="_blank" href="https://learn.microsoft.com/en-us/credentials/applied-skills/develop-generative-ai-solutions-with-azure-openai-service/">2-hour AI Assessment</a>

See my https://wilsonmar.github.io/microsoft-ai

In 2024, Microsoft Research unveiled <a target="_blank" href="https://www.microsoft.com/en-us/research/publication/autogen-enabling-next-gen-llm-applications-via-multi-agent-conversation-framework/">AutoGen</a> mentioned in <a target="_blank" href="https://arxiv.org/abs/2308.08155">an Arvix paper</a>:
Enabling Next-Gen LLM Applications via Multi-Agent Conversation

One-hour exercises:

<a target="_blank" href="https://learn.microsoft.com/en-us/training/modules/build-language-solution-azure-openai/5-exercise">


<a name="Bing"></a>

### Microsoft Bing Search

   * https://www.linkedin.com/learning/generative-ai-the-evolution-of-thoughtful-online-search by Ashley Kennedy (Managing Staff Instructor at LinkedIn Learning)
   <br /><br />

Search: Crawling, Indexing, ranking

https://lnkd.in/eCDjW4EW

ChatGPT made available to the public Nov 2022 reached 1 million  users  in less than a week.

Limitations:
  * Biased databases input
  * Point-in-time data (frozen in time)
  * Lack of common sense
  * Lack of creativity
  * No understanding of generated text
  * normalization of mediocrity


### Tutorials

The <a target="_blank" href="https://www.linkedin.com/learning/what-is-generative-ai">"What is Generative AI" course</a> at LinkedIn Learning
by <a target="_blank" href="https://www.linkedin.com/in/pinar-seyhan-demirdag/">Dr. Pinar Seyhan Demirdag</a> (Senior Data Scientist at Microsoft)
is 1 hour and 15 minutes long and has 5 modules:
   * Introduction to Generative AI
   * Generative AI in action
   * Generative AI in the real world
   * Generative AI in the future
   * Next steps
   <br /><br />

The learning path for <a target="_blank" href="https://docs.microsoft.com/en-us/learn/paths/generate-artificial-intelligence/">Generate artificial intelligence</a> has 5 modules:
   * <a target="_blank" href="https://docs.microsoft.com/en-us/learn/modules/introduction-to-generative-ai/">Introduction to generative AI</a>
   * <a target="_blank" href="https://docs.microsoft.com/en-us/learn/modules/generative-ai-text/">Generate text with GPT-2</a>
   * <a target="_blank" href="https://docs.microsoft.com/en-us/learn/modules/generative-ai-image/">Generate images with StyleGAN2</a>
   * <a target="_blank" href="https://docs.microsoft.com/en-us/learn/modules/generative-ai-audio/">Generate audio with WaveGAN</a>
   * <a target="_blank" href="https://docs.microsoft.com/en-us/learn/modules/generative-ai-video/">Generate video with StyleGAN2</a>
   <br /><br />

Microsoft has a <a target="_blank" href="https://www.microsoft.com/en-us/research/project/microsoft-ai-ethics-and-effects-in-engineering-and-research-ai-fairness/">Microsoft AI Fairness</a> initiative.


   * https://www.linkedin.com/learning/what-is-generative-ai
   * https://www.linkedin.com/learning/generative-ai-imaging-what-creative-pros-need-to-know
   * https://www.linkedin.com/learning/generative-ai-the-evolution-of-thoughtful-online-search

   * https://www.linkedin.com/learning/generative-ai-for-business-leaders
   * https://www.linkedin.com/learning/ai-accountability-essential-training-16769302
   * https://www.linkedin.com/learning/responsible-ai-principles-and-practical-applications
   * https://www.linkedin.com/learning/foundations-of-responsible-ai
   * https://www.linkedin.com/learning/introduction-to-responsible-ai-algorithm-design
   * https://www.linkedin.com/learning/tech-on-the-go-ethics-in-ai
   * https://www.linkedin.com/learning/what-is-generative-ai/how-generative-ai-workspace by Pinar Seyhan Demirdag

   * https://www.linkedin.com/learning/streamlining-your-work-with-microsoft-bing-chat/understand-how-chat-ai-works by Jess Stratton (LinkedIn Learning Staff Author, Tech Consultant)
   <br /><br />


### GitHub CoPilot

https://github.com/features/copilot


<hr />

<a name="@IBM"></a>

## At IBM

<a target="_blank" href="https://youtube.com/shorts/LFOpN5C80g4?si=qRqOeudQfW_9pVgC">VIDEO</a>
"Break RSA using Qiskit using Shor's Algorithm"

<hr />

<a name="@Google"></a>

## At Google

Google announced in 2023 its GEMINI (Generalized Multimodal Intelligence Network) - network of LLM models.
It has a multimodel encoder  and decoder that can be used for text, images, audio, and video.
"Generalized" in that it can be used for a wide variety of NEW tasks and contexts.
It trains faster using parallel operations, so can scale. It comes in different sizes: 1 trillion parameters.
So it can combine input text and videos.
Answer what is the name of this animal when showing a photo.

   * g.co/aiexperiments
   * <a target="_blank" href="https://www.linkedin.com/in/gwendolyn-stripling/">Dr. Gwendolyn Stripling</a>, AI Technical Curriculum Developer at Google Cloud created courses at several sites:
   * <a target="_blank" href="https://www.youtube.com/watch?v=gwEuvrI4fx4">AI Revolution intro</a>
   <br /><br />

A. https://www.coursera.org/learn/introduction-to-generative-ai/lecture/TJ28r/introduction-to-generative-ai

B. Google <a target="_blank" href="https://www.unite.ai/learn-generative-ai-with-google/">created</a>
a <a target="_blank" href="https://www.cloudskillsboost.google/journeys/118">Generative AI learning path</a>
FREE 1-day courses with FREE quizzes (but one HANDS-ON lab in Vertex AI):

1. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/536">Introduction to Generative AI</a>
   * Hallucinations
   * Text-to-image using stability.ai's Stable Diffusion, DALL-E

2. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/539">Introduction to Large Language Models</a> - Google's Bard AI
   https://bard.google.com/ is Google's answer to OpenAI's GPT series of large language models to generate images, audio, and videos.
   *    https://www.techrepublic.com/article/google-bard-cheat-sheet/

3. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/554">Introduction to Responsible AI</a> 1 day

4. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/556">Generative AI Fundamentals</a>

5. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/541">Introduction To Image Generation</a> with diffusion models.

6. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/543">Encoder-Decoder Architecture</a>
   * https://www.youtube.com/watch?v=zbdong_h-x4 Architecture Overview
   * https://www.youtube.com/watch?v=FW--2KkTQ1s Lab Walkthrough
   * <a target="_blank" href="https://github.com/GoogleCloudPlatform/asl-ml-immersion/blob/master/notebooks/text_models/solutions/text_generation.ipynb">Text generation with an RNN on github.com/GoogleCloudPlatform/asl-ml-immersion</a>

7. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/537">Attention Mechanism</a> 2015 for Tensorflow
   * https://www.youtube.com/watch?v=fjJOgb-E41w to improve text translation by giving each hidden state a soft-maxed score
   * https://www.youtube.com/watch?v=PSs6nxngL6k

8. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/538">Transformer Models & BERT Models</a> 2017-18 for NLP
   * <a target="_blank" href="https://www.youtube.com/watch?v=t45S_MwAcOw">VIDEO: Overview</a> added context to words
   * <a target="_blank" href="https://www.youtube.com/watch?v=xI0HHN5XKDo">BERT (Bidirectional Encoder Representations from Transformers)</a> developed by Google in 2018, trained using Wikimedia & Books in two variations: base (12 layers with 768 hidden units and 12 attention heads) and large (24 layers with 1024 hidden units and 16 attention heads).
   * 15% is what Google found to be the optimal balance in Masking (randomly replacing words with [MASK] tokens) and 85% Next Sentence Prediction (NSP) (predicting whether two sentences are adjacent or not).
   * BERT input embeddings: Token, Segment, Position, with [SEP]

   * <a target="_blank" href="https://github.com/GoogleCloudPlatform/asl-ml-immersion/blob/master/notebooks/text_models/solutions/classify_text_with_bert.ipynb">Lab resource: classify_text_with_bert.ipynb from github</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=6hhvQb8tSPs">VIDEO</a>: HANDS-ON walk-through of running "asl-gup.ipyr" notebook for Sentiment Analysis classifier_model.fit using Vertex AI Tensorflow Karas with GPU accessing the 25,000-record imdb database (trainable=true), optimized for binary accuracy. Run model saved from Google Cloud bucket uploaded to Vertex AI Registry. Deploy to endpoint (5-10 minutes). Test. Delete.

9. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/542">Create Image Captioning Models</a> with a CNN and RNN
   * <a target="_blank" href="https://www.youtube.com/watch?v=LWIZj_RJYjM">Create Image Captioning Models: Overview</a>
   * <a target="_blank" href="https://github.com/GoogleCloudPlatform/asl-ml-immersion/blob/master/notebooks/multi_modal/solutions/image_captioning.ipynb">image_captioning.ipynb on github</a> "Image Captioning with Visual Attention" (on the COCO captions dataset from ResNet)
   * <a target="_blank" href="https://www.youtube.com/watch?v=c8VO_Lf1cjA">Create Image Captioning Models: Lab Walkthrough</a> to AUTOTUNE
   * https://paperswithcode.com/sota/image-captioning-on-coco-captions - one and a half million captions describing over 330,000 images from Google Flickr. <a target="_blank" href="https://www.youtube.com/watch?v=fUSTbGrL1tc">VIDEO</a>.

10. <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/552">Introduction to Generative AI Studio</a> for language, Vision, Speech. It has a <a target="_blank" href="https://cloud.google.com/model-garden">"Model Garden"</a>. <a target="_blank" href="https://storage.googleapis.com/cloud-training/cls-html5-courses/T-GENAISTUDIO-B/index.html#/">Reflection Cards</a>.

Other courses:

* <a target="_blank" href="https://www.cloudskillsboost.google/course_templates/553">Generative AI with Vertex AI: Text Prompt Design</a> for language, Vision, Speech. It has a "Model Garden".

* https://www.coursera.org/learn/introduction-to-large-language-models
On Coursera: Google Cloud - Introduction to Large Language Models


<hr />

## GenAI Summary

Generative AI is abbreviated as GenAI.

Generative AI differs from other types of AI, such as "discriminative AI" and "predictive AI," in that it doesn't try to predict an outcome based on grouping/classification and regression.
   * Text classification, Translation among languages, Summarization, Question Answering, Grammar correction
   <br /><br />

Generative AI is a type of artificial intelligence (AI) that <strong>generate new text, images, audio, and video</strong> rather than discrete numbers, classes, and probabilities.

Output from GenAI include:
   * Text Generation
   * Image Generation ("Deep Fakes"), Image Editing
   * Video generation
   * Speech Generation: (Text to speech)
   * Decision Making: Recommandations, Play games
   * Explain code line by line
   * Code Generation
   <br /><br />

GenAI learns from existing data and then creates new content that is similar to the data it was trained on.

GenAI doesn't require a large amount of labeled data to train on. Instead, it uses a technique called self-supervised learning, which allows it to learn from unlabeled data. This is a huge advantage because it means that generative AI can be used in a wide variety of applications, even when there isn't a lot of data available.

A foundation model is a large AI model pre-trained on a vast quantity of data that was "designed to be adapted” (or fine-tuned) to a wide range of downstream tasks, such as sentiment analysis, image captioning, and object recognition.

Large Language Models (LLMs) are a subset of Deep Learning, a subset of Machine Learning, a subset of Artificial Intelligence.
Machine Learning generate models containing algorithms based on data instead of being explicitly programmed by humans.

NLP (Natural Language Processing) vendors include:
   * Abnormal
   * Horizon3.ai
   * Darktrace identifies phishing emails using ML
   * SentinelOne
   <br /><br />

LLM creators:
   * OpenAI - now closed source
   * Google
   * NVIDIA
   * Meta (Facebook PyTorch) - open source

   * UC Berkeley
   * LMU Munich
   * Seyhan Lee | Artist | Generative AI Expert | AI Art Lab works on Hollywood movies
   <br /><br />

One way models are created from binary files (images, audio, and video) is "diffusion", which draws inspiration from physics and thermodynamics.
The process involves iteratively adding (Gaussian) noise for GAN (Generative Adversarial Networks) and VAE (Variational Autoencoders) algorithms to recognize until images look more realistic. This process is also called creating "Denoising Diffusion Probabilistic Models" (DDPM).

The models generated are "large" because they are the result of being trained on large amounts of data and also because they have a large number of parameters (weights) that are used for a wide variety of tasks, such as text classification, translation, summarization, question answering, grammar correction, and text generation.

The performance of large language models (LLMs) generally improves as more data and parameters are added.

   * The Pathways Language Model (PaLM) has 540 billion parameters, trained on Google's 1.6 trillion parameter Switch Transformer model.
   * Facebook's LaMDA has 1.2 trillion parameters.
   * OpenAI's GPT-3 has 175 billion parameters.
   <br /><br />

Such large LLMs require a lot of compute power to train, so are expensive to create.
Thus, LLMs currently are created only by large companies like Google, Facebook, and OpenAI.

LLMs are also called "General" Language Models because they can be used for a wide variety of tasks and contexts.

LLMs are also called "Transformer" Language Models because they use a type of neural network called a Transformer used for language translation, summarization, and question answering. Transformers are a type of neural network that uses <strong>"attention mechanisms"</strong> to learn the relationships between words in a sentence. They are called "Transformers" because they transform one sequence of words into another sequence of words rather than more traditional "Encoder-Decoder" models that focus on the "hidden state" between individual words.

   * Google's paper <a target="_blank" href="https://arvix.org/pdf/1706.03762.pdf/">"Attention is all you need"</a> publicized the Transformer architecture in 2017.
   * Jay Alammar's <a target="_blank" href="https://jalamar.github.io/illustrated-transformer/">"Illustrated Transformer" article</a> and video explain well how Transformers work.
   * <a target="_blank" href="https://www.youtube.com/watch?v=IGu7ivuy1Ag">VIDEO: Hugging Face</a> training vs. inference time generating new content
   <br /><br />

Attention models use a <a target="_blank" href="https://www.youtube.com/watch?v=g2BRIuln4uc&t=1594s">RNN "self-attention"</a> decoder mechanism that allows the model to learn the relationships between words in a sentence. <a target="_blank" href="https://www.youtube.com/watch?v=fjJOgb-E41w">VIDEO</a> <a target="_blank" href="https://www.youtube.com/watch?v=XfpMkf4rD6E">CS25</a>: Encoder-decoders generate text using either "greedy search" or "beam search". Greedy search always selects the word with the highest probability, whereas beam search considers multiple possible words and selects the one with the highest combined probability.

LLMs are also called "Autoregressive" Language Models because they generate text one word at a time, based on the previous word. They are called "Autoregressive" because they are a type of neural network that uses a type of neural network called a Transformer. Transformers are a type of neural network that uses attention mechanisms to learn the relationships between words in a sentence. They are called "Transformers" because they transform one sequence of words into another sequence of words.

It uses a neural network to learn from a large dataset.

After being developed, they only change when they are fed new data, called "fine-tuning" the model.

LLMs are also called "Universal" Language Models because they can be used for a wide variety of human written/spoken languages in prompts and outputs.



## Prompt Engineering

A <strong>prompt</strong> is a short piece of text that is given to the large language model as input, and it can be used to control the output of the model in many ways.

Internally, when given a prompt (a request) GenAI uses its model to predict what an expected response might be, and thus generates new content.

OpenAI charges money to use GPT-4 with a longer prompt than GPT-3.5.

"Dialog-tuned" prompts are generate a response that is similar to a human response in a conversation with requests framed as <strong>questions</strong> to the chatbot in the context of a back-and-forth conversation.

Parameter-Efficient Tuning Methods (PETM) are methods for tuning an LLM on custom data, without duplicating the model. This is done by adding a small number of parameters to the model, which are then used to fine-tune the model on the custom data. This is done by adding a small number of parameters to the model, which are then used to fine-tune the model on the custom data.

Checklist for Prompt Engineering:
   * Details about content,
   * context (provide an example of answer),
   * use clear language
   * tone,
   * asthetic
   * role (imagine you're the product manager for a brand-new smartphone company. What are ten potential innovative features that could be added within the next five years?)
   * analogies
   * debate-style questions  (for and against)
   <br /><br />

References on prompt engineering:
   * https://www.linkedin.com/learning/introduction-to-prompt-engineering-for-generative-ai
   * <a target="_blank" href="https://www.youtube.com/watch?v=ka1Pqk2o3tM">VIDEO: "EPIC prompts"</a>


## Limitations

QUESTION: Detect emerging security vulnerabilities?

GenAI output is not based on human creativity, but rather on the data that it was trained on.

So GenAI is currently not built to do forecasting.

But many consider GenAI output as (currently) <strong>"creative"</strong> because
GenAI can seem to generate content that is difficult to distinguishable from human-generated content,
such as fake news, fake reviews, and fake social media posts.

Whatever biases were in inputs would be reflected in GenAI outputs.


## Concerns

* Privacy & Security
* Quality (accuracy, Hallucinations, deceit)
* Cost
* Latency (speed)
* Accessibility
<br /><br />

GenAI currently were not designed to be <strong>"sentient"</strong> in that it does not have a sense of self-awareness, consciousness, or emotions.
More importantly, GenAI currently are not designed to have a sense of morality, in that it can generally recognize whether prompts and generated content is offensive, hateful, or harmful.

Developing responsible AI requires an understanding of the possible issues, limitations, or unintended consequences from AI use.
Principles include Transparency, Fairness, accountability, scientific excellence.
NOTE: "Explainability" is not a principle because it is not always possible to explain how an AI model works.
"Inclusion" is not a principle because it is not always possible to include everyone in the development of AI models.

> "ChatGPT 3.5 has all of the knowledge and confidence of a 14-year-old who has access to Google." --<a target="_blank" href="https://www.linkedin.com/in/cprewitt/">Christopher Prewitt</a>

> "GPT-3 is a powerful tool, but it is not a mind reader. It is not a general intelligence system. It is not a self-aware being. It is not a robot. It is not a search engine. It is not a database. It is not a knowledge base. It is not a chatbot. It is not a question answering system. It is not a conversational AI. It is not a personal assistant. It is not a virtual assistant. It is not a personal knowledge base. It is not a personal knowledge guru.



### Hallucinations (Making Stuff Up)

"Hallucinations" in output are made-up by the model and not based on reality.
This can happen due to several causes:
   * input data is not representative of the real world
   * input data contains noisy or dirty data

   * not trained on enough data
   * not given enough context (in prompts)
   * not given enough constraints

   * prompt does not provide enough context


Their source of data (corpus) is kept confidential because that can be controversial due to licensing, privacy, and reliability issues.
   * Use of content from books and publications may have copyright concerns.
   * Use of content from websites would have licensing concerns even though they are publicly contributed
   * Use of Wikipedia (9 billion documents), Stack Overflow, Reddit, Quora, etc. have concerns about the usefulness that data
   <br /><br />

To ensure that AI is used responsibly, Google recommends "seeking participation from a diverse range of people".


### Google Bard code generation
   * explain code line by line
   * debug lines of source code
   * translate code from one language to another
   * generate documentation and tutorials about source code


### Google AI Studio

Without writing any code:

* Fine-tune models on custom data
* Deploy models to production
* Create chatbots using Google's PaLM API for Chat
* Image Generation (generate new images or generate new areas of an existing image)
<br /><br />

GenAI Studio from PaLM API:
   * Fine-tune models
   * Deploy models to production
   * Create chatbots
   * Image generation
   * Write text prompts to generate


### Google MakerSuite

Google's MakerSuite is a suite of GUI tools for prototyping and building generative AI models by iterating on prompts, augment datasets with synthetic data, and deploy models to production, and monitor models in use.

* <a target="_blank" href="https://cloud.google.com/vertex-ai/docs/tutorials/text-to-image">Text to Image</a> (generate new images or generate new areas of an existing image)


### Generative AI App Builder

Generative AI App Builder creates apps for generating images.


### GenAI API




<hr />

## Text to Image generation

deeptomcruise by metaphyic.ai

midjourney (like Apple: a closed API, art-centric approach)

DALL-e (Open API released by a corporation - technical over design)

Stable Diffusion
   * https://github.com/CompVis/stable-diffusion uses Python Colab Notebooks
   * https://www.gofundme.com/c/help-changes-everything

Users: Stitchfix.com recommends styles.

https://prisma-ai.com/lensa

https://avatarmaker.com


<hr />



Resources:
* OpenAI
* ChatGPT Discord server
* Prompt Engineering Guide
* PromptVine
* Learn Prompting
* PromptPapers
* PromptHub

## Video generation

https://www.unite.ai/synthesys-review/


## Anomaly Detection

Variational Autoencoders (VAE)

Use cases:
   * Find financial fraud,
   * Find flaws in manufacturing,
   * Identity Network security breaches,

https://controlrooms.ai/



<hr />

## References

https://www.unite.ai/zero-to-advanced-prompt-engineering-with-langchain-in-python/

<a target="_blank" href="https://www.youtube.com/watch?v=YGGTcyxtV4g">VIDEO: "How to use ChatGPT to learn a language"</a>
(by English teacher learning Madarin)
   * Correct grammar mistakes
   * Correct word choice
   * Correct sentence structure
   * Learn new words
   * What words are used in what context
   * Write a story using words provided to it
   * How do you learn English?

<hr />

<a name="@AWS"></a>

## At AWS

Amazon Bedrock offers a marketplace of foundation models, which include:

   * <strong>AWS Titan</strong> for text summarization, generation, classification, open-ended Q&A, information extraction, embeddings and search.

   * <strong>Anthropic's Claude</strong> for conversations and workflow automation based on research into "training honest and responsible AI systems"

   * <strong>Stable Diffusion</strong> generation of images, art, logos, and desigs

   * AI21labs' Jurassic-2 multilingual LLM for text generation in Spanish, French, German, Portugest, Italian, Dutch.
   <br /><br />

The Amazon SageMaker JumpStart generates embeddings stored in Aurora database.
   * https://aws.amazon.com/sagemaker/jumpstart/
   * https://aws.amazon.com/blogs/machine-learning/using-amazon-sagemaker-jumpstart-to-generate-embeddings-for-your-text-data/
   <br /><br />

RAG (Retrieval Augmented Generation (RAG) can retrieve: PDFs, S3 text, Youtube, CSV, PPT.

AWS is adding Generative AI in QuickSight Analytics dashboard:
https://aws.amazon.com/blogs/business-intelligence/announcing-generative-bi-capabilities-in-amazon-quicksight/

Unlike Microsoft, which offers just OpenAI,
Amazon Bedrock https://aws.amazon.com/bedrock/
offers foundational models from several vendors.

SOCIAL: https://repost.aws/community/TA0veCRV2rQAmHpkzbMFojUA/generative-ai-on-aws


### Certification

The AWS Training and Certification team, on June 2024  introduced Foundational <strong>AIF-C01</strong> (AWS Certified AI Practitioner) to verify knowledge of artificial intelligence (AI), machine learning (ML), and generative AI technologies, along with practical use cases and the application of these concepts using AWS services.
For $100, answer 65 questions in 90-minute at Pearson VUE online, in English, Japanese, Korean, Portuguese (Brazil), and Simplified Chinese.

   * <a href="#AIF-C01-1">Domain 1</a>: Fundamentals of AI and ML (20% of scored content)
   * <a href="#AIF-C01-1">Domain 2</a>: Fundamentals of Generative AI (24% of scored content)
   * <a href="#AIF-C01-1">Domain 3</a>: Applications of Foundation Models (28% of scored content)
   * <a href="#AIF-C01-1">Domain 4</a>: Guidelines for Responsible AI (14% of scored content)
   * <a href="#AIF-C01-1">Domain 5</a>: Security, Compliance, and Governance for AI Solutions (14% of scored content)

<a href="#AIF-C01-1"></a>

### Domain 1: Fundamentals of AI and ML (20%)

1. Explain basic AI concepts and terminologies:

   * Define basic AI terms (e.g., AI, ML, deep learning, neural networks, computer vision, NLP, large language models).
   * Describe the differences between AI, ML, and deep learning.
   * Types of inferencing (e.g., batch, real-time).
   * Different types of data (e.g., labelled/unlabeled, tabular, time-series, structured/unstructured).
   * Learning paradigms (e.g., supervised, unsupervised, reinforcement learning).

2. Identify practical use cases for AI/ML:

   * Recognize when AI/ML can add value (e.g., automation, scalability).
   * Determine when AI/ML is not appropriate (e.g., cost-benefit analysis).
   * Select suitable ML techniques (e.g., regression, classification, clustering).
   * Identify real-world AI applications (e.g., computer vision, NLP, recommendation systems)

3. Describe the ML development lifecycle:

   * Components of an ML pipeline (e.g., data collection, feature engineering, model training).
   * Sources of ML models (e.g., pre-trained models, custom models).
   * Methods for using a model in production (e.g., managed API, self-hosted API).
   * Fundamental concepts of MLOps (e.g., repeatable processes, scalability, model monitoring).

<a href="#AIF-C01-2"></a>

### Domain 2: Fundamentals of Generative AI (24%)
1. Explain the basic concepts of generative AI:

   * Foundational concepts (e.g., tokens, embeddings, prompt engineering, transformer-based models).
   * Use cases for generative AI (e.g., text generation, image generation, chatbots).
   * The foundation model lifecycle (e.g., pre-training, fine-tuning, evaluation, deployment).

2. Understand the capabilities and limitations of generative AI:

   * Advantages (e.g., adaptability, responsiveness).
   * Disadvantages (e.g., hallucinations, inaccuracy, interpretability).
   * Business metrics for generative AI (e.g., conversion rate, efficiency).

3. Describe AWS infrastructure for building generative AI applications:

   * AWS services for generative AI (e.g., Amazon SageMaker JumpStart, Amazon Bedrock).
   * Benefits of AWS infrastructure (e.g., security, compliance, cost-effectiveness).
   * Tradeoffs in AWS generative AI services (e.g., responsiveness, pricing models).

<a href="#AIF-C01-3"></a>

### Domain 3: Applications of Foundation Models (28%)

1. Describe design considerations for foundation models:

   * Selection criteria for pre-trained models (e.g., cost, latency, model size).
   * Effect of inference parameters on model responses (e.g., temperature, input/output length).
   * Business applications of Retrieval-Augmented Generation (RAG).

2. Choose effective prompt engineering techniques:

   * Concepts of prompt engineering (e.g., context, instruction, negative prompts).
   * Prompt engineering techniques (e.g., chain-of-thought, zero-shot, few-shot).
   * Risks of prompt engineering (e.g., hijacking, jailbreaking).

3. Describe the training and fine-tuning process for foundation models:

   * Key elements of training a foundation model (e.g., pre-training, fine-tuning).
   * Methods for fine-tuning models (e.g., transfer learning, reinforcement learning).
   * Preparing data for fine-tuning (e.g., data curation, labeling, governance).
4. Evaluate foundation model performance:

   * Metrics to assess model performance (e.g., ROUGE, BLEU, BERTScore).
   * Approaches for performance evaluation (e.g., human evaluation, benchmark datasets).

<a href="#AIF-C01-4"></a>

### Domain 4: Guidelines for Responsible AI (14%)

1.Explain responsible AI development:

   * Features of responsible AI (e.g., fairness, safety, robustness).
   * Tools for responsible AI (e.g., Amazon SageMaker Clarify).
   * Legal risks in generative AI (e.g., intellectual property, bias).

2.Recognize the importance of transparent and explainable models:

   * Differences between transparent and non-transparent models.
   * Tradeoffs between model safety and transparency (e.g., interpretability vs performance).

<a href="#AIF-C01-5"></a>

### Domain 5: Security, Compliance, and Governance for AI Solutions (14%)

1. Explain methods to secure AI systems:

   * AWS services for securing AI (e.g., IAM roles, encryption).
   * Security considerations for AI systems (e.g., prompt injection, encryption at rest).

2. Recognize governance and compliance regulations for AI systems:

   * Compliance standards for AI (e.g., ISO, SOC).
   * AWS services for governance and compliance (e.g., AWS Config, Amazon Inspector).

   References:
   * <a target="_blank" href="https://www.youtube.com/watch?v=m46yTP5MDyw">K21Academy</a> by Atul Kumar
   * https://k21academy.com/ai-ml/aws/aws-certified-ai-practitioner/
   * https://k21academy.com/ai-ml/aws/aws-certified-ai-practitioner-labs/

What about AI-900?



### Fake AI images

Detection tool: AI or Not?

https://www.atlanticcouncil.org/programs/digital-forensic-research-lab/
The Atlantic Council's Digital Forensic Research Lab
tracks says "use of AI images are mostly been to drum up support, which is not among the most malicious ways to utilize AI right now,” she says.

   * https://uk.news.yahoo.com/israel-hamas-war-viral-image-094832419.html?
   <br /><br />

Harvard Kennedy School Misinformation Review
https://misinforeview.hks.harvard.edu/article/misinformation-reloaded-fears-about-the-impact-of-generative-ai-on-misinformation-are-overblown/

https://www.fabriziogilardi.org/team/
University of Zurich’s Digital Democracy Lab.

### AWS AI Shop the Look

<a target="_blank" href="https://www.youtube.com/watch?v=n5t0B3N71vs">VIDEO</a>:
<a target="_blank" href="https://www.aboutamazon.com/news/retail/stylesnap-will-change-the-way-you-shop-forever">Since 2019</a>, in Amazon's mobile app, click on the photo icon at the upper-right, then <a target="_blank" href="https://www.amazon.com/stylesnap"><strong>Shop the look</strong> (previously "StyleSnap")</a> at the bottom to take a photo or upload one. Amazon's AI then <a target="_blank" href="https://www.amazon.science/latest-news/the-science-behind-amazons-new-stylesnap-for-home-feature">recommends similar items</a> for purchase from among its hundreds and thousands of product photos.

## Chad Smith

https://github.com/brightkeycloud-chad/hands-on-aws-operations-with-chatgpt


## References

https://www.youtube.com/watch?v=pmzZF2EnKaA
I Discovered The Perfect ChatGPT Prompt Formula

https://learning.oreilly.com/live-events/building-text-based-applications-with-the-chatgpt-api-and-langchain/0636920092333/0636920094723/
by Lucas Soares

https://aitoolreport.beehiiv.com/
Learn AI on 5 minutes  a  day



https://docs.google.com/spreadsheets/d/1NX8ZW9Jnfpy88PC2d6Bwla87JRiv3GTeqwXoB4mKU_s/edit#gid=0
LLM Token based pricing: Embeddings and LLMs
by <a target="_blank" href="https://www.linkedin.com/in/jonathanafernandes/">Jonathan Fernandes</a> (TheGenerativeAIGuru.com)

https://platform.openai.com/tokenizer
https://www.anthropic.com/
Deployment: DeepScale in Azure
[76:20] About 7 billion parameters fits in today's smaller hardware accelerators
Falcon-Abudhabi - Technology Institute of Innovation
https://crfm.stanford.edu/helm/latest/?group=core_scenarios#/leaderboard = Stanford's Human Language Model Leaderboard
   * accuracy
   * calibration
   * robustness
   * fairness
   * efficiency
   * Bias
   * Toxicity
https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard
   * https://arxiv.org/pdf/2211.09110.pdf = "Holistic Evaluation of Language Models" by Stanford

https://twitter.com/_philschmid/status/1727047977473298486

https://colab.research.google.com/drive/1rSGJq_kQNZ-tMafcZHE2CXESEZBPeJUE?usp=sharing = ELO Rating


https://becomingahacker.org/numerous-cybersecurity-gpts-c8e89d454444


<hr />

<a name="Databricks"></a>

## Databricks

<a target="_blank" href="https://www.databricks.com/resources/learn/training/generative-ai-fundamentals"><img align="right" width="100" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1707240903/genai-databricks-cert-522x646_xxc582.png"></a>
<a target="_blank" href="https://wilsonmar.github.io/databricks/">My notes on Databricks</a>:

Generative AI Fundamentals:
Build foundational knowledge of generative AI, including large language models (LLMs), with
<a target="_blank" href="https://www.databricks.com/learn/training/generative-ai-fundamentals-accreditation#data-video">4 videos</a>:
1. Introduction to Generative AI Fundamentals (2 min)
   * Is Gen AI a threat or an opportunity for my business?
   * How exactly can I use Generative AI to gain a competitive advantage?
   * How can I use my data securely with Gen AI?
2. LLM Applications (22 min)
   * Everybody has access, but you have your own data
   * "Fine-tuning"
3. Finding Success with Generative AI (24 min)
   * <a target="_blank" href="https://www.databricks.com/blog/lakehouse-ai">Databricks Lakehouse AI</a> acquired MosaicML to unify AI and data stack in a secure environment
4. Assessing Potential Risks and Challenges (20 min)
   * Legal: Privacy "forgetting", Security, Intellectual Property Protection
   * Ethical issues: Bias, misinformation
   * Social/Environmental issues: impact on workforce, environment
   <br /><br />

https://dbricks.co/3SCjjAS

<br />

<a name="SAP"></a>

## SAP

https://open.sap.com/courses/genai1
"Generative AI at SAP" was offered Nov 14,2023 but reopened for January 29, 2024 - March 18, 2024.
The course is by <a target="_blank" href="https://www.linkedin.com/in/seankask/">Sean Kask</a>, the chief AI strategy officer in SAP Artificial Intelligence. It contains quizzes.

1. Approaches to artificial intelligence
2. Introduction to generative AI
3. Adapting generative AI to business context
4. Extending SAP applications with generative AI
   * SAP's BTP (Business Technology Platform) enhances customer support with LLMs.
   * SAP's Generative AI Hub offers: Developer tools, instant access, control and transparency
5. Generative AI business use cases by Jana Richter (VP)
   * Joule is SAP's natural-language copilot.
Learning Materials:
   * <a target="_blank" href="https://opensap-public.s3.openhpicloud.de/courses/5yEWM8WZnBKY33eI1trcws/rtfiles/7dO95wmgcJCazqzV89dxXR/SAP_Business_AI_Whitepaper.pdf">SAP Business AI Whitepaper (.pdf, 5 MB)</a>
   * <a target="_blank" href="https://www.sap.com/products/artificial-intelligence.html">Artificial Intelligence | SAP Business AI</a>
   * <a target="_blank" href="https://www.sap.com/products/artificial-intelligence/business-technology-platform.html">AI Solutions on SAP Business Technology Platform</a>
   * <a target="_blank" href="https://www.sap.com/products/artificial-intelligence/ai-ethics.html">AI Ethics</a>
   * <a target="_blank" href="https://pages.community.sap.com/topics/machine-learning">SAP Community: Artificial Intelligence and Machine Learning at SAP</a>
   * <a target="_blank" href="https://developers.sap.com/tutorial-navigator.html?tag=topic:technology-development/machine-learning">SAP Learning: SAP Tutorial Navigator | Tutorials for SAP Developers</a>
   * <a target="_blank" href="https://learning.sap.com/learning-journey/learning-how-to-use-the-sap-ai-core-service-on-sap-business-technology-platform">Learning Journey for SAP AI Core</a>

<br /><br />

<a name="EmbeddingDBs"></a>

## Embedding Vector Databases

- ChromaDB

- SingleStore https://www.wikiwand.com/en/SingleStore

- [Facebook AI Similarity Search (FAISS)](https://faiss.ai/index.html) is a widely used vector database because Facebook AI Research develops it and offers highly optimized algorithms for similarity search and clustering of vector embeddings. FAISS is known for its speed and scalability, making it suitable for large-scale applications. It offers different indexing methods like flat, IVF (Inverted File System), and HNSW (Hierarchical Navigable Small World) to organize and search vector data efficiently.

- [SingleStore](https://www.singlestore.com/): SingleStore aims to deliver the world’s fastest distributed SQL database for data-intensive applications: SingleStoreDB, which combines transactional + analytical workloads in a single platform.

- [Astra DB](https://www.datastax.com/products/datastax-astra): [DataStax](https://www.datastax.com/) Astra DB is a cloud-native, multi-cloud, fully managed database-as-a-service based on Apache Cassandra, which aims to accelerate application development and reduce deployment time for applications from weeks to minutes.

- [Milvus](https://milvus.io/): Milvus is an open source vector database built to power embedding similarity search and AI applications. Milvus makes unstructured data search more accessible and provides a consistent user experience regardless of the deployment environment. Milvus 2.0 is a cloud-native vector database with storage and computation separated by design. All components in this refactored version of Milvus are stateless to enhance elasticity and flexibility.

- [Qdrant](https://qdrant.tech/): Qdrant is a vector similarity search engine and database for AI applications. Along with open-source, Qdrant is also available in the cloud. It provides a production-ready service with an API to store, search, and manage points—vectors with an additional payload. Qdrant is tailored to extended filtering support. It makes it useful for all sorts of neural-network or semantic-based matching, faceted search, and other applications.

- [Pinecone](https://www.pinecone.io/): Pinecone is a fully managed vector database that makes adding vector search to production applications accessible. It combines state-of-the-art vector search libraries, advanced features such as filtering, and distributed infrastructure to provide high performance and reliability at any scale.

- [Vespa](https://vespa.ai/): Vespa is a platform for applications combining data and AI, online. By building such applications on Vespa helps users avoid integration work to get features, and it can scale to support any amount of traffic and data. To deliver that, Vespa provides a broad range of query capabilities, a computation engine with support for modern machine-learned models, hands-off operability, data management, and application development support. It is free and open source to use under the Apache 2.0 license.

- [Zilliz](https://zilliz.com/): Milvus is an open-source vector database, with over 18,409 stars on GitHub and 3.4 million+ downloads. Milvus supports billion-scale vector search and has over 1,000 enterprise users. Zilliz Cloud provides a fully-managed Milvus service made by the creators of Milvus. This helps to simplify the process of deploying and scaling vector search applications by eliminating the need to create and maintain complex data infrastructure. As a DBaaS, Zilliz simplifies the process of deploying and scaling vector search applications by eliminating the need to create and maintain complex data infrastructure.

- [Weaviate](https://weaviate.io/): Weaviate is an open-source vector database used to store data objects and vector embeddings from ML-models, and scale into billions of data objects from the same name company in Amsterdam. Users can index billions of data objects to search through and combine multiple search techniques, such as keyword-based and vector search, to provide search experiences.


## Groq from x.com

<a target="_blank" href="https://www.youtube.com/shorts/gmzd8dhlc0g">
is fast</a>. Its founder had worked on Google's TPU custom AI machines.


## References

https://arXiv_2307.10169_Challenges_and_Applications_of_Large_Language_Models.pdf

https://arxiv.org/pdf/2307.01850.pdf
Risks of using synthetic data to train your model, (Self-Consuming Generative Models Go MAD)

https://www.onlinetutorials.org/teaching-academics/chatgpt4-for-medical-writers-and-editors/
ChatGPT4 for Medical Writers and Editors
by https://www.linkedin.com/in/emmahittnichols/

https://thispersondoesnotexist.com/
displays full-screen photos using "Kerras, et al"

https://www.youtube.com/watch?v=4Icpq1vZkrw
99 GPT Prompts for Business Efficiency & Growth

https://learn.microsoft.com/en-us/training/modules/fundamentals-generative-ai/
Fundamentals of Generative AI

https://learn.microsoft.com/training/paths/introduction-generative-ai/
Microsoft Azure AI Fundamentals: Generative AI

https://ig.ft.com/generative-ai/
Generative AI exists because of the transformer

https://www.youtube.com/watch?v=4Qz4GfvjGLY
With GenAI, an organization only needs a programmer and a prompt engineer.
https://www.skool.com/new-society
by David Ondrej of https://www.skool.com/new-society
https://www.youtube.com/watch?v=9uQ-i3z_g0c

Pieter Levels @levelsio - single-employee millionaire

Devin
r/webdev charge money on Upwork and Reddit

Microsoft's AutoDev (see research paper)
a team of agents:
Tools library: file editing, retrieval, building, testing, git operations

Zapier Central

The future of AI is agentic.
The basis of competition will be who can build better agents
So building agents will be the most important skill

CrewAI

Claud 3 Haiku LLM costs $0.25 per million

emaggiori

## Leetcode

https://www.youtube.com/watch?v=ACgMG4c_PJc

https://theresanaiforthat.com/s/leetcode/

<hr />

<a name="NVIDIA"></a>

## NVIDIA

CUDA

<hr />

<a name="Groq"></a>

## Groq.com

(from Elon Musk's x.com) very large, fast, uncensored, and can access live data (Twitter/X feeds).

One public benefit from Elon Musk buying Twitter.

<a target="_blank" href="https://www.youtube.com/watch?v=0Is021E-Vps">VIDEO</a>:
In his comparison of LLMs:

<strong>Roast @LukeBarousee based on their posts, and be vulgar!</strong>

<a target="_blank" href="https://www.youtube.com/watch?v=Z0jqIk7MUfE">VIDEO</a>:
Groq CEO Jonathan Ross worked on Google's TPU AI computer.

Code.org has a <a target="_blank" href="https://studio.code.org/s/self-paced-pl-aiml2">
Teaching AI and Machine Learning</a> 100-minute self-paced module for teacher professional development (powered by AWS):

   * Get an introduction to artificial intelligence and machine learning.
   * Practice key concepts included in the unit.
   * Engage with AI Lab and App Lab.
   * Explore end of chapter projects.
   * Make a plan for implementing the unit with your students.
   <br /><br />

## Prediction

https://www.databricks.com/resources/analyst-research/gartner-hype-cycle-generative-ai/
Gartner believes that “by 2026, 80% of enterprises will have used generative AI APIs, models , and/or deployed GenAI-enabled applications in production environments, up from less than 5% in 2023.“

## Canva

https://www.youtube.com/watch?v=Ilc41CMceZw


## Handwriting

https://Onshape.pro/StuffMadeHere

https://www.youtube.com/watch?v=cQO2XTP7QDw
Sean Vasquez


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

https://medium.com/@anala007/hidden-dangers-of-using-cursor-ai-for-code-generation-what-every-developer-should-know-f4993c407b00


## Use with Security

https://learning.oreilly.com/library/view/developing-cybersecurity-programs/9780138073992/
Developing Cybersecurity Programs and Policies in an AI-Driven World, 4th Edition
By Omar Santos

https://learning.oreilly.com/live-events/-/0642572001334/
Cover of AI for Cybersecurity in 90 Minutes
AI for Cybersecurity in 90 Minutes
With Shaila Rana

## References

https://www.ft.com/content/389e505c-a1cc-4176-a592-dd1d0fa171b8?utm_source=pocket-newtab-en-us

Infosys has a Springboard Digital Academy which provides a class on  Prompt Engineering:
https://infyspringboard.us.onwingspan.com/web/en/app/toc/lex_auth_013719953643773952304_shared/overview

