---
layout: post
date: "2025-04-27"
lastchange: "v001 + new :ai-scaling.md"
url: "https://bomonike.github.io/ai-scaling"
file: "ai-scaling"
title: "Scaling dynamic AI infrastructure"
excerpt: "We dynamically setup and scale AI apps running locally and within AWS, Azure, GCP, and other clouds, using free open-source software (Ray.io, Anyscale, PyTorch)"
tags: [cloud, functions]
image:
# feature: pic green matrix hallway 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14623876/07afd066-0593-11e6-933a-2e596511ac67.jpg
  credit:
  creditlink:
comments: true
created: "2025-04-27"
---
<a target="_blank" href="https://bomonike.github.io/palantir"><img align="right" width="100" height="100" alt="palantir.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/palantir.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include _toc.html %}


## Dive in

1. Signup
1. Take the [Intro to Ray](https://courses.anyscale.com/courses/take/intro-to-ray/lessons/60941277-welcome-to-this-course) 
   by Max, author of OReily book 

1. Setup our own Ray.io instance locally on Wilson's MacMini.
1. Install MCP with agents within our local Ray.io instance.
   * Azure MCP 
   * Anthropic Reference MCP

1. Setup in cloud Digital Ocean or Hetzner.

1. What useful app? ____ written in Python in Docker image
   * https://res.cloudinary.com/dcajqrroq/image/upload/v1716481274/odoo-docker-officialapps-240522_tkt77p.png
   * Calendaring AI - what are available?
   * For Provost office to scour market trends - YouTube video about coding univ camps

Marketing:
1. Blog for Anyscale as Partners/resellers
1. 
1. Article - LinkedIn, DEv.to, Medium
1. YouTube video
1. Udemy
1. Market to colleges


## Ray.io

Ray, a high-performance distributed execution framework developed by UC Berkeley’s RISELab, is targeted at large-scale machine learning and reinforcement learning applications. Ray’s features make it suitable for any Python-based application that needs cluster-wide scalability. Join us for this edition of Meet the Expert with Dean Wampler to see how Ray meets the needs of ML/AI applications—without requiring the skills and DevOps effort typically required for distributed computing.

## Anyscale the company

online and in-person Ray Summit conferences (http://raysummit.org), speaking at and sponsoring other conferences, tutorial development, webinars, blog posts, advertising, etc.

https://www.linkedin.com/in/robert-nishihara-b6465444/
Robert Nishihara

https://learning.oreilly.com/videos/-/0636920487463/
Meet the Expert: Dean Wampler on Scaling ML/AI Applications with Ray - October 5 2020
By Dean Wampler</a> (<a target="_blank" href="https://deanwampler.com">deanwampler.com</a>) Head of DevRel at ray.io
<a target="_blank" href="https://www.linkedin.com/in/deanwampler/">now IBM's chief technical representative to the AI Alliance (@the-aialliance)</a>. Author of "Programming Scala, Third Edition", 2021


## Competitors:
* NVIDIA
* ex Facebook

## References


https://learning.oreilly.com/library/view/-/9781633437203/
LLMs in Production