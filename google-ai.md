---
layout: post
date: "2025-01-20"
lastchange: "v002 + new :google-ai.md"
file: "google-ai"
title: "google-ai"
excerpt: "How to useGoogle AI services."
tags: [apple, mac, utilities]
image:
# feature: pic Giant-Swiss-Army-Knife-1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622061/afe5f5da-0584-11e6-8140-3278289baef4.jpg
  credit:
  creditlink:
comments: true
---
<a target="_blank" href="https://bomonike.github.io/google-ai"><img align="right" width="100" height="100" alt="google-ai.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/google-ai.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

Google has several divisions that are focused on different AI topics.

* DeepMind
* Google Research
* Google AI
* Google Cloud
* Google Cloud ML
* Google Cloud AI

## Glossary

LLMs vs Foundation Models
   * Risks and limitations include bias, inaccuracy, lack of reasoning capability, potential misuse for fraud, copyright issues and worker displacement.
   * Probabilistic models can generate inaccurate texts

From https://arxiv.org/abs/2108.07258 “On the Opportunities and Risks of Foundation Models”

"Vertex AI" is an assortment of AI services:
   * Generative AI and Predictive AI

Generative AI can generate text, images, audio, and video.
   * Translate text
   * Convert of synthesize speech
   * Gemini, Generative AI Studio, Model Garden, Model Registry

Predictive AI can predict the outcome of events.
   * AutoML, Training, Prediction, Feature Store, Experiments, Model Registry, Colab Enterprise

## Services

Bard, Gemini, AutoML, VertexAI

Google NotebookLM asks questions and returns answers in natural language.

1. Google Bard Large Language Model (25 minutes)

   1. Introduction to Bard and Gemini
   1. Prompt patterns for Bard and Gemini to generate natural language text
   1. Refining natural language text

   1. Generating Bash command line scripts
   1. Generating Python code

1. Generating Images with Generative AI Studio (15 minutes)

   1. Introduction to Generative AI Studio
   1. Overview of modalities: text, image, audio, and video
   1. Example use cases (text to image, image to text,image to image, image to video)
   1. Designing prompts for text generation
   1. Exercise: Generating images with Generative AI Studio (10 minutes)

1. Segment 5: Foundation Models and Model Garden in Vertex AI (30 minutes)

    1. Introduction to Foundation Models and Modalities
    1. Overview of Model Garden in Vertex AI
    1. General and Special Purpose Language Models
    1. Image and Vision Models
    1. Multi-modal Image and Text
    1. Exercises: Working with Vertex AI Model Garden (10 minutes)

1. Segment 6: Overview of Vertex AI (15 minutes)

    1. Managed ML Models
    1. Model monitoring and metrics
    1. Pipelines automate and orchestrate ML workflows structured as a directed acyclic graphs
(DAGs) of containerized tasks. Compiled ML pipelines defined in YAML files.
    1. Workflows: Each task in a pipeline performs a specific step in the workflow, such as data preprocessing, model training, or model deployment
    1. Feature Store = Centralized repository for organizing, storing, and serving ML
features. Supports offline execution engine feature data in BigQuery, Dataflow, or Dataproc Serverless.
    1. Batch prediction for batch usecases: model endpoint to serve predictions and a Dataflow job to fetch and process the data. Supports custom container images, debugging, and feature
filtering
    1. Exercise: Exploring Vertex AI (5 minutes)

1. Segment 7: Building ML Models with AutoML to automate the development of ML models without the need for machine learning expertise.
    1. Benefits of AutoML: • PyTorch • Tensorflow • scikit-learn • XGBoost
    1. Use Cases of AutoML: • Identify objects in images, • Content classification, sentiment analysis, entity extraction, • Predictions based on tabular data
    1. Limitations of AutoML: • Depends on high-quality, labeled data • Limited ability to customize models compared to building custom models in Vertex AI • May not be sufficient for more complex ML modeling • Expensive with large datasets or extensive usage
    1. Components: AutoML Vision, AutoML Natural Language, AutoML Tables

    1. AutoML Demontstration
    1. Exercise: Building a Model with AutoML (10 minutes)

https://cloud.google.com/vertex-ai/docs/start/introduction-unified-platform

## Setup

1. Sign up for a Google Cloud account:

   https://cloud.google.com/docs/get-started

   https://cloud.google.com/free

1. Read

   https://ai.google.dev/aistudio

1. Prompt Gallery

   https://ai.google.dev/gemini-api/prompts

   https://ai.google.dev/aistudio/prompt-gallery

1. Get API key

   aistudio.google.com


## Tutorials

<a target="_blank" href="https://learning.oreilly.com/live-events/ai-google-cloud-services/0790145069430/0642572011776/">OReilly</a>: AI Google Cloud Services
by Dan Sullivan, Lead Solutions Architect, Hydrolix and author of <a target="_blank" href="https://learning.oreilly.com/course/google-cloud-essentials/9780138174255/">Google Cloud Essentials</a> and <a target="_blank" href="https://learning.oreilly.com/course/google-cloud-ai-services/9780138174262/">Google Cloud AI Services</a> books.

## GCP

To request a quota increase: https://cloud.google.com/docs/quotas/view-manage


## References

https://cloudonair.withgoogle.com/events/startup-school-ai-q4

Gabi: please send us and email at startupschool-external@google.com, and we’ll try to help you after the session

https://aistudio.google.com/prompts/new_chat

What is the difference between “Google Vertex AI studio” (https://console.cloud.google.com/vertex-ai/studio/) and “Google AI studio” (https://aistudio.google.com/app/prompts/new_data)

https://idx.dev/

idx.google.com

https://console.cloud.google.com/vertex-ai

Instructions for Cloud Skills Boost and activating credits: https://services.google.com/fh/files/emails/ssgenai_cloudskillsboost_instructions.pdf

Nikita Andreyev https://riqli.com/main/search/67230274a7bbc5dea4d00a43 We are using Generative AI and Vertex for test preparation, and get main information from topics

Jay Veal For the folks asking about gen AI examples in education: - Design customized language lessons and exercises tailored to learner needs - Develop tailored tutoring materials and improvement guidance for students