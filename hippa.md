---
layout: post
date: "2026-06-13"
lastchange: "26-06-13 v003 HIPPA roles @hippa.md"
url: "https://bomonike.github.io/hippa"
file: "hippa"
title: "HIPPA"
excerpt: "How to use Prometheus and Grafna for observability bashboards and alerts based on highly secure US HIPPA (Health Information Portability Act) saudit requirements"
tags: [AI, production, macos]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-05-19"
---
<a target="_blank" href="https://bomonike.github.io/hippa"><img align="right" width="100" height="100" alt="hippa.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/hippa.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

{% include whatever.html %}

## Audit frameworks

23 global audit frameworks:

(NIST AI RMF, EU AI Act, ISO/IEC 42001, HIPAA, GDPR, and more),

The Adobe corporation comadress them all in a single set of controls in a pdf file:
https://www.adobe.com/trust/compliance/adobe-ccf.html


## Implementation Principals and Artifacts

https://overt.is (Open Standard for Runtime Trust in AI Systems)

to produce independent, tamper‑evident proof that those controls actually executed 

1. Sample configuration settings and feature flags
1. CLI script to install Prometheus and Grafana
1. Troubleshooting and ops/security incident (CASB/SIEM) response


## Why HIPPA with Observability?

* Authentication rules ...
* Auto-logoff after 3 minutes
* 6 year data retention
* Every attestation is signed with an Ed25519 key and verifiable months later with openssl.
* Storage of IP address and time stamps on every action
* Tracing
* Management triggers and alerts


enacted during the Clinton While House years.

## References:

1. https://www.youtube.com/watch?v=DlzkIjhJ18o&pp=ugUEEgJlbg%3D%3D

1. https://www.youtube.com/watch?v=DlzkIjhJ18o
   12 Self-Hosted Apps to Finally Quit Big Tech.