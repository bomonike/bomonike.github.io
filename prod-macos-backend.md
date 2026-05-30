---
layout: post
date: "2026-05-30"
lastchange: "26-05-30 v001 new @prod-macos-backend.md"
url: "https://bomonike.github.io/prod-macos-backend"
file: "prod-macos-backend"
title: "Production Stack Backend"
excerpt: "AI prompt to generate code and docs to stand up and run a production enviornment of enterprise-worthy servers that run macos locally."
tags: [AI, production, macos]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-05-19"
---
<a target="_blank" href="https://bomonike.github.io/prod-macos-backend"><img align="right" width="100" height="100" alt="prod-macos-backend.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/prod-macos-backend.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

{% include whatever.html %}

Below is a prompt for AI:

Create a new project called "backend" containing all that is needed to stand up and run a production enviornment of enterprise-worthy servers that run macos locally on a macos M3 machine (which runs systemd).

Services in this include:
- PostgreSQL database instance
- Redis server for caching
- Ollama to use downloaded LLMs.
- Firewall to dynamically block outgoing traffic when running batch jobs.
- Prometheus observability server to serve a dashboard and alerts about request counts, latency, business metrics over time.
- Test coverage tracking

Apps are written in Python with centralized config and secretes out of code.
- Apps contain structured logging with structlog, Typer, dependency injection, and tests.
- Calls to APIs have retry, exponential backoff, timeout, and circuit-breaker policies.
- Service interfaces can replace real HTTP calls with a fake in tests.

Build it to be scalable, reliant, and secure. 
- Dockerfile for each service to work in Kubernetes to use more storage classes and for future scaling on clouds
- Local Kubernetes uses Weave CNI (don't use docker-compose)
- ci.yml GitHub workflow CI/CD build CLI has linting, type checking, and security scanning.
- Full test suite with unit, integration, and contract tests.
- Release automation for wheel publishing.
- Backup services on a separate cloud with write-only (no delete) access.

The files generated include:
- README with detailed instructions for newbie SREs describe the manual actions needed to setup, operate,and troubleshoot all aspects.
- .gitignore containing all temporary folders and files created by the system
- pyproject.toml define current versions of all dependencies
- ClI scripts to create chaos and break-in conditions (to test organizational response)

