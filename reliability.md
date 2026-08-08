---
layout: post
date: "2026-08-08"
lastchange: "v008 steps @reliability.md"
url: https://bomonike.github.io/reliability
file: "reliability"
title: "Reliability"
excerpt: "Efficient, secure, performant concurrent systems programming that compiles to machine code"
tags: [Rust, Python, Machine Learning]
image:
  feature: https://user-images.githubusercontent.com/300046/136715984-3033af38-810d-4b29-a555-aac392b374ac.png
  credit: RustLang.org
  creditlink: https://www.rust-lang.org/
comments: true
created: "2021-10-03"
---
<i>{{ page.excerpt }}</i>

{% include whatever.html %}

This article defines systems for organizations to ensure reliability in building and operating trusted IT systems.

1. Define the scope of processes.
1. Define states of processes, such as start, active, waiting, and done.
1. Decide whether “done” means merged, released to production, or customer-available.
1. Capture work-item timestamps and states from each repeatable operation:\.

REMEMBER: Each metric has an average (p50), p90, and p99 calculation.

Useful dashboards answer: What changed? Did it worsen reliability? How quickly did we detect and recover?
Are we on track against the target?

What changed since the prior period?

Which segment, service, or owner needs action?

five Flow Framework-style measures: time, velocity, efficiency, load, and distribution.

use for diagnostic

A manager who only uses dashboards to manage (take action) is like steering a car based only on what is in the rear-view mirror.

??? because dashboards are only artifacts, while improvements are driven by process.

Often, important data can pass by without notice and just end up in a bar chart showing the past.

REMEMBER: Improvements occur through change in processes and culture, not just exhorttions such as "work harder and smarter".

During  weekly reviews, discuss outliers.
During monthly reviews, discuss trends. 
Focus on insights and improvements rather than manual data gathering.
   * Calendar
   * Task list
   * Notifications (emails, Slack)

1. A complete dashboard infographic would show <strong>16 ooperational metrics</strong> about work-items in each repeatable <strong>discrete operation</strong>. There are profound unintended consequences to focusing too much on individual metrics to the detriment of others.

   Bars of variable length show <strong>throughput</strong>:
   * Velocity: frequency of items per day/week/month/year deployed/made
   * Volume delivered per day/week/month/year
   * Costs per item deployed/made

   Horizontal columns of variable length in seconds/minutes/hours/days show:
   * <strong>Change Lead time</strong> in seconds/minutes/hours/days from commit to full delivery of each change
   * <strong>Cycle time</strong> in seconds/minutes/hours/days between work start and end. Example: UPS delivery timeline.
   * <strong>Latency</strong> in seconds/minutes/hours/days of <strong>waiting</strong>
   * <strong>Recovery time</strong> seconds/minutes/hours/days after a defect occurred -- the MTTR (Mean Time To Repair)

   Labeled vertical lines slicing above metrics indicate <strong>targets</strong> or 
   projections -- SLO (Service Level Objectives).
   * MTTF (Mean Time To Failure) based on history and analysis
   * distribution of planned (Keep the Lights On) vs unplanned work

   Half-moon Guages show the divide of availability vs. usage to 100%:
   * Percentage <strong>resource usage</strong>, each for CPU, memory, disk I/O, queue depth, connection-pool use, and Kubernetes resource throttling.

   * Load: Percent of Current work in progress (WIP) = count(items started but not done at time t)

   * Percentage <strong>on-time start</strong>
   * Percentage <strong>on-time finish</strong>

   Split columns of fixed size show 3 components:
   * Percentage <strong>completion rate</strong> of instances completed as expected
   * Percentage <strong>failure rate</strong> of instances did not complete as expected
   * Percentage <strong>rework rate</strong> of work which had to be repeated due to some defect

   lead time and deployment frequency are throughput measures.
   fail rate and rework rate indicate level of stability (or instability).

1. Tap a metric title to toggle the screen to horizontal lines illustrating the variation up/down of that metric over time:
   * Comparison vs. previous day/week/month/year
   * Projection vs. future by day/week/month/year

   * Qualitative "Satisfaction level" opinions from people to guage Wellbeing — devex surveys, cognitive load, busyness, etc. sent out automatically and regularly, with tickler reminders to stragglers

   The <strong>Error rate</strong> failed requests divided by total requests, separated by endpoint and error class.

   ??? Incident volume and MTTA: incidents by <strong>severity</strong>

   ??? trends and trajectory.
  
1. Tap the top or bottom of the pyramid icon to switch <strong>scope of summary</strong> by team, dept, location, etc.

   * Vertical lines illustrate <strong>alert levels</strong> when notifications are sent.

   * mean time to acknowledge alert


   compliance - roadmap delivery

1. Tap the square icon to toggle back to the dashboard.

## AI interpretation

## A practical metrics contract:

* dora_deployments_total{service,repo,team,environment,status}
* dora_lead_time_seconds_bucket{service,repo,team,environment,le}
* dora_lead_time_seconds_sum{service,repo,team,environment}
* dora_lead_time_seconds_count{service,repo,team,environment}
* dora_incidents_total{service,team,cause="deployment"}
* dora_failed_deployment_recovery_seconds_bucket{service,team,le}
* dora_rework_deployments_total{service,team,environment}

Cost accounting ???

## Individual

As an individual, if we asked your family and co-workers, what:
   * % of instances you <strong>showed up</strong> as pre-scheduled?
   * % of instances you <strong>completed</strong> tasks?

software:
https://dora.dev/guides/dora-metrics/
   * How often production deployments occurred per day/week?  Deployment frequency,
   * How quickly 
Change lead time	Time from code commit to production	production_time − commit_time
Change fail rate	Deployments needing urgent remediation	failed_or_rollback_deploys / total_deploys
Failed-deployment recovery time	Time to restore service after a failed deployment	recovery_time − incident_start
Deployment rework rate	Production deployments that are unplanned remediation work	unplanned_remediation_deploys / total_deploys



<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
