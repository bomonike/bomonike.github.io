---
layout: post
date: "2025-04-17"
lastchange: "v010 + imgs :palantir.md"
url: "https://bomonike.github.io/palantir"
file: "palantir"
title: "Palantir"
excerpt: "How to learn Palantir system for enterprise use."
tags: [cloud, functions]
image:
# feature: pic green matrix hallway 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14623876/07afd066-0593-11e6-933a-2e596511ac67.jpg
  credit:
  creditlink:
comments: true
created: "2018-04-03"
---
<a target="_blank" href="https://bomonike.github.io/palantir"><img align="right" width="100" height="100" alt="palantir.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/palantir.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

## Why?

Many are taking time to learn Palantir because Palantir provides free tutorials and cloud time.

A "Palantir" is the mythical artifact from the "Lord of the Rings" which gives one the power of seeing and understanding the world.

Technically, at its core, Palantir provides an <strong>object-based database</strong> they call an <a href="#Ontology">Ontology</a>. It's unique in that <strong>branches</strong> of data in it can be <strong>versioned (forked)</strong> like GitHub source code. That enables "what-if" changes to be analyzed, which inform decisions. When a satisfactory outcome is achieved, changes can be "materialized" into production data. In addition to master reference data and transactional data, a Palantir Ontology can store <strong>decisions</strong> the organization makes over time.

Palantir provides tools to create:
   * Browsing like a spreadsheet
   * workflows
   * visualizations and dashboards of the Common Operational Pictures (COPs) - a display of relevant operational information shared across multiple organizations to facilitate awareness and collaboration. For example, you might build a Workshop application to serve as an “on-the-wall”, big-screen view of the current situation, containing a map, relevant statistics and charts, ways to filter or drill down on data, and connections to other views or workflows.
   * interactive apps (running on web, mobile, and mixed reality)

REMEMBER: The Ontology has a different vocabulary:
* "object type" is comparable to a dataset
* "object" is a row in a dataset
* "property" is a column (of various value instances) in a dataset.
* a unique column that can be used as a primary key. To find a unique column, open the dataset, click on a column you suspect is unique, and click "view stats" in the dropdown next to the column name.

QUESTION: How does Palantir identify and issue <strong>alerts</strong> based on events and metrics triggers?

Palantir's tools were not hobled together through acquisitions over time. Palantir being built initially for military use required its data governance features to be built-in (to include object lineage time series, auditability, and traceability). So Palantirians have a better chance of getting apps working together in production-scale -- in SaaS and on-premise.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1743332218/palantir-processes_yjzlsd.png"><img alt="palantir-processes.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1743332218/palantir-processes_yjzlsd.png" /></a>

PROTIP: What's not mentioned in Palantir's current docs are "AI agents" that have the "agency" to take autonomous action on their own, without human intervention, based on alerts triggered by events.

## Applied Notational Project

1. Play <a target="_blank" href="https://www.youtube.com/watch?v=ZeapLGUJSMw">step-by-step video</a> by Gena Coblentz at Ontologize

   1. Begin with raw data sets
   2. Prep data sets for ontology
   3. Combine into workshop app with write back

1. End-to-end speedrun https://learn.palantir.com/speedrun-your-first-e2e-workflow

   https://learn.palantir.com/deep-dive-building-your-first-pipeline
   Deep Dive: Building your First Pipeline
   
   https://learn.palantir.com/deep-dive-creating-your-first-ontology
   Deep Dive: Creating your First Ontology
   
   https://learn.palantir.com/deep-dive-building-your-first-application
   Deep Dive: Building your First Application

2. Sign in to the lesson text at:

   https://learn.palantir.com/applied-notional-project-automobile-inbox

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1744953889/palantir-notational-proj-2862x1746_gqtmh1.png"><img alt="palantir-notational-proj-2862x1746.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1744953889/palantir-notational-proj-2862x1746_gqtmh1.png" /></a>

   Expected Completion Time: This course will take a Foundry novice (1 week of experience) around 1 full business day to complete. If you are someone who has only completed the End to End Speedrun, it may take longer, but that's okay! This project is designed to challenge you so that you come out with all the skills needed to develop on your own in the real world!

   Overview: In this course, you will take on the role of a Foundry engineer tasked with constructing a dashboard for a used car leasing company. Designed to mimic real-world scenarios, the course provides raw datasets and application requirements, but not step-by-step instructions, challenging you to develop your problem-solving and development skills.

   The application requirements are framed from the viewpoint of a car leasing manager, who needs assistance in monitoring his fleet and addressing related issues. By the end of the course, you will have created a fully functional application that enables a company to oversee their automobile fleet, examine their cars, and rectify issues.

   This course is an excellent opportunity to learn Foundry development without rails, allowing you to gain practical skills in decomposing and solving problems. You will learn to critically analyze application requirements and transform them into development tasks. This hands-on experience will equip you with the ability to perceive Foundry not as a single-purpose application, but as a suite of tools designed to work together, ultimately helping you become an independent, self-sufficient developer.

   [1:21] Prerequisites
   Permissions & Help
   Project Objectives and Requirements
   Project Summary

1. From within the course:

1. Permissions to capabilities:

   * Project Creation [Optional, can use an existing project instead]
   * Raw Data Upload
   * Object Type Creation in the Ontology
   * Link Type Creation in the Ontology
   * Action Type Creation in the Ontology
   * Workshop Application Creation
   
   In almost all cases, your necessary permissions can be boiled down to having edit access in the project you are working in, as well as the ability to create and edit ontology object types.

1. [1:29] Getting Help:
   https://www.palantir.com/docs/foundry

   AIP prompts

1. Project Summary:

   I own a car leasing company and I am looking to make an application to support my business. Recently, my customers have been reporting lots of issues with their cars. I need a system to help me keep track of this! I would like you to create an application in Foundry for me and my employees to use. 

   In the first tab, I would like a high level dashboard of my cars. I have provided you with raw data that should have everything you need to build this application. 

   In the second tab, I would like a list of outstanding issues on my cars. In addition to viewing details about existing issues, I want my employees to be able to update the priority of an issue, and mark an issue as closed. 

   Keep in mind, the raw data is a bit messy, so you might have to clean it up before it can be application ready!

1. [1:34] Tips Before Getting Started

   The only Foundry applications that you need to use in order to complete this project are 
   Pipeline Builder, Ontology Manger Application (OMA), and Workshop.

1. Raw Data Downloads:

   Car info raw.csv
   Model information raw.csv
   Issues raw.csv
   Historical maintenance log raw.csv

   1. cars dataset called Car info raw. This dataset contains basic information about each of the cars.
   2. maintenance history dataset called Historical maintenance log raw. This dataset contains historical information on maintenance performed on the cars.  I don't need row level information from this dataset, I instead want aggregated information from this dataset, such as number of number of maintenance events per car.
   3. Model information raw. This dataset provides additional information on a car based on the manufacturer and model of that car.
   4. Issues raw. This dataset is a running list of active issues on the cars.



   Objective 1 - Data Cleaning
   Objective 2 - Cars Homepage
   Objective 3 - Issues Inbox
   Hints
   Hints Overview & General FAQ
   Architecture
   Raw Datasets
   Pipeline Builder
   Ontology Manager Application
   Workshop



<a name="Ontology"></a>

## The Ontology

https://www.palantir.com/docs/foundry/ontology/overview/

Palantir's uses the word "<strong>Ontology</strong>" instead of "database" to emphasize that, in addition to holding data like SQL databases, it maintains what's necessary to make a <strong>digital twin</strong> modeling the dynamic interactions within organizations. 

Built for each <strong>project</strong> are custom and pre-built<br />
"semantic" elements:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1743588147/palantir-objects-702x81_ulc52k.png"><img alt="palantir-objects-702x81.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1743588147/palantir-objects-702x81_ulc52k.png" /></a>

* An <a target="_blank" href="https://www.palantir.com/docs/foundry/object-link-types/object-types-overview/">Object type</a> defines real-world entities or events in an organization,
* A <a target="_blank" href="https://www.palantir.com/docs/foundry/object-link-types/link-types-overview/">Link type</a> defines the relationship between two object types,
* Properties define an object type’s characteristics

"kinetic" elements:
* An <a target="_blank" href="https://www.palantir.com/docs/foundry/action-types/overview/">Action type</a> is a <strong>set</strong> of changes (edits) to objects, properties, and links that can be taken at once. 
* An <a target="_blank" href="https://www.palantir.com/docs/foundry/actions/overview/">Action</a> is a single transaction that changes the properties of one or more objects, based on user-defined logic.
* <a target="_blank" href="https://www.palantir.com/docs/foundry/action-types/submission-criteria/">Submission criteria</a> define the conditions under which actions can be submitted.
* <a target="_blank" href="https://www.palantir.com/docs/foundry/action-types/rules/">Rules</a> define the conditions under which actions can be taken.
* <a target="_blank" href="https://www.palantir.com/docs/foundry/action-types/parameter-overview/">Parameters</a> define, in a standardized form, the inputs that can be passed to an action

* <a target="_blank" href="https://www.palantir.com/docs/foundry/actions/overview/">Function-backed Actions</a> are used to implement custom business logic where a <a target="_blank" href="https://www.palantir.com/docs/foundry/functions/overview/">Function</a> defines how complex objects should be modified.

* dynamic security.

For example, the "Assign Employee" Action type would define how users can change the role property value for a given Employee object. This Action type could require a parameter definition to ensure input of the new role in a standardized form and can include rules for how to automatically create a link between the Employee object and that of a new Manager. Also, include a notification side effect that will notify the old and new manager of the change. Plus, Validate that authorized employees such as those working in human resources can perform the Action.

An object is an instance of an object type.

types of <a target="_blank" href="https://www.palantir.com/docs/foundry/ontology/overview#object-and-link-types">data and links</a>:


<a target="_blank" href="https://www.palantir.com/docs/foundry/interfaces/interface-overview/">Interfaces</a> describes the shape of an object type and its capabilities. Interfaces provide object type polymorphism, allowing for consistent modeling of and interaction with object types that share a common shape.



The Ontology regarding decisions:

   * Data: the relevant facts about the world and operations that form the context for this decision.
   
   * Actions: the "kinetics" or effects of this decision - how does the decision manifest in the world. How do we reduce or collapse the steps between taking a decision in AIP and affecting an outcome in a production setting?

   * Links organizational or business rules act as guardrails for the decision. The probabilities of certain outcomes under different assumptions? What was done in previous, similar situations and  outcome metrics. Inputs from forecasting and optimization models.
   
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1743332764/palantir-role-actions_ttcfcg.png"><img alt="palantir-role-actions.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1743332764/palantir-role-actions_ttcfcg.png" /></a>

That enables Palantir to conduct <a target="_blank" href="https://www.youtube.com/watch?v=4LQCsPbA6rU">predicate-based data mining</a>.

treats data as code: Unlike SQL databases, experiments to data are a built-in feature. Copies of Palantir's Ontology 

<a target="_blank" href="https://www.youtube.com/watch?v=2NHgNBwTXRk">VIDEO</a> Fondary is fast!

Integration also applies to the granular access allowed human users and automated actions depending on specific role and rights based on object and links within the Ontology.

   * ___ to build Functions instead of AWS Lambda, Azure/Google <strong>Functions</strong>

Palantir provides a full suite (stack) of tools instead of others (but also integrates with them).
<a target="_blank" href="https://www.youtube.com/watch?v=k88WbxMEvPY&t=1m41s">VIDEO</a> "Workshop App: Supply Chain Control Tower" provides a quick tour:

   * in github.com/palantir organization

   * ___ to build visualizations dashboards & maps instead of Tableau & ArcGIS

   * "Quiver" for predicate-based data mining

For "full spectrum" enterprise AI:

   * "AIP" (AI Powered) Native LLM-backed features instead of Llamaindex, HuggingFace, etc. <a target="_blank" href="https://www.youtube.com/watch?v=akieze8_tSE">VIDEO</a>
   * "AIP Now" provides pre-built AI apps as starting points for quicker customization.
   * AIP Logic instead of n8n. AIP Logic is a no-code development environment for building, testing, and releasing functions powered by LLMs. Using Logic’s intuitive interface, application builders can engineer prompts, test, evaluate and monitor, set up automation, and more, while leveraging the Ontology.
   * "AIP Logic Evaluations" instead of ____. AIP Logic is a testing framework designed to enhance and track AIP Logic function quality over time by improving prompt engineering, deciding between using various models
   * "AIP Assist" instead of ___. AIP Assist is an LLM-powered support tool designed to help users navigate, understand

   * "Apollo" instead of ___ for mission control for autonomous software deployment (software delivery layer). https://www.palantir.com/platforms/apollo/ 

Operational App Building:

   * Workshop App Builder
   * Carbon Workspaces ???
   * Vortex Scenario Builder ???

   * Static App Builder
   * Mobile Frameworks
   * Mixed Reality (VR headsets)

https://www.youtube.com/shorts/Qvh2DovBi64
Parady: "We're making more money"

https://www.youtube.com/watch?v=A0yim6QYiUo&pp=0gcJCX4JAYcqIYzv
"What does Palantir Actually do?" by CTO Shyam Sankar on Shawn Ryan


## Dive right in

Get hands-on.

Out-of-the-box workflow templates or reusable workflow components to create workflow applications quickly, often within a matter of days. This accelerated development process ensures that organizations can realize the value of their data and insights swiftly, enhancing efficiency and responsiveness.

1. At https://build.palantir.com click "Sign Up" to get an environment using your company email.
1. At https://learn.palantir.com click "Start Building Now" to get an dev account using your email, phone, credit card, etc.
1. https://accounts.skilljar.com/accounts/signup/ with a company email.

   WARNING: I can't find what Palantir charges for dev & prod use.

1. https://learn.palantir.com/speedrun-your-first-e2e-workflow at
   https://github.com/palantir/first-e2e-workflow
1. https://learn.palantir.com/foundry-aip-builder-foundations-quiz 10 questions

1. <a target="_blank" href="https://learn.palantir.com/deep-dive-data-protection-tools-in-foundry">Deep Dive: Data Protection Tools in Foundry</a>

1. https://learn.palantir.com/applied-notional-project-automobile-inbo
1. <a target= "_blank" href="https://learn.palantir.com/applied-notional-project-automobile-inbo">Applied Notional Project</a> <a targete="_blank" href="https://www.youtube.com/watch?v=ZeapLGUJSMw" title="by Ontologize">VIDEO</a> to build a dashboard for a used car leasing company with minimal step-by-step instructions based on requirements taken from a notional statement of work. [1-2 days] an operational workflow 


## Socials

1. On your calendar, set a recurring WEEKLY appointment to to read <a target= "_blank" href="https://www.palantir.com/docs/foundry/announcements/">Announcements</a> and <a target="_blank" href="https://www.palantir.com/docs/foundry/release-notes/2025/">Release Notes</a> from Palantir about specifics about changes that impact how you build software.

1. <a target= "_blank" href="https://discord.com/invite/XbabtYtqsn">Accept CodeStrap.me Discord invite</a>

* https://youtube.com/c/palantirtech
* https://www.youtube.com/@palantirdevelopers

* Vimeo
* https://linkedin.com/company/palantir-technologies
* https://www.linkedin.com/newsletters/closing-the-loop-6930184863031459840/

* https://twitter.com/PalantirTech

* https://community.palantir.com
* https://learn.palantir.com

As of this writing, the AIP con occured on June 6, 2024.
<a target= "_blank" href="https://www.youtube.com/watch?v=rE8-P-0h070">VIDEO</a>
"Our Ontology is "the only thing that creates quantifiable transformational value in Enterprise."
<a target= "_blank" href="https://learn.palantir.com/deep-dive-creating-your-first-ontology">Deep Dive: Creating Your First Ontology</a>


## The company

Palantir was founded <strong>May 3, 2003</strong> after 9/11 to serve CIA and other law enforcement companies.

In early 2025 Palantir (stock <a target="_blank" href="https://www.google.com/finance/quote/PLTR:NASDAQ?sa=X&ved=2ahUKEwiGzKXwlbuMAxWtIDQIHYb6GXgQ3ecFegQIRBAf">PLTR</a>) was among the fastest-growing among all stocks, peaking at $125 before the Trump tariff meltdown brougt it back to $80/share at P/E of 1457.
 
Co-founders are billionaire Peter Thiel, Joe Lonsdale, Nathan Gettings, Stephen Cohen, and Alex Karp.

They came from PayPal which had to develop complex fraud detection software to stem large losses with "Pattern of Life Analysis" that later was used to hunt terrorists: <a target="_blank" href="https://www.youtube.com/watch?v=xUnI0E33t6s">VIDEO</a>.

CEO Alex Karp wrote NYTimes Bestseller <a target="_blank" href="https://techrepublicbook.com">"The Technological Republic"</a> "Hard Power, Soft Belief, and the Future of the West". <a target="_blank" href="https://www.youtube.com/watch?v=j0Oz4P-NX84">VIDEO</a>. He was named by The Economist’s “best CEO of 2024”.
But he has a (middling) <a target="_blank" href="https://www.glassdoor.com/Reviews/Palantir-Technologies-Reviews-E236375.htm">69% approval rating on Glassdoor</a>.
Karp describes himself as "anti-woke, pro-Israel, pro-Ukraine". VIDEOS:
   * <a target= "_blank" href="https://www.youtube.com/watch?v=EZLr6EGGTPE">"Alex Karp CEO 2009 Interview"</a> 
   * <a target="_blank" href="https://www.youtube.com/watch?v=htUe8WkYre8">"The company that runs the world</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=KZWB5XGZy-Q">"I don't think in win/lose"

<a target="_blank" href="https://www.youtube.com/watch?v=jLH0FALLRtg&t=4m47s">VIDEO</a>: Fund manager Kathy Wood said "Alex Karp believes that Plantir will be the largest AI company in the world. .. I think that might be right. ... It could be a big disruptor to Microsoft."
Others:

Glassdoor's employee rating of the company is 3.8/5.0 (on the lower end of scale, not among <a target="_blank" href="https://www.glassdoor.com/Award/Best-Places-to-Work-LST_KQ0,19.htm">Best Places to Work</a>). One employee commented:

<ul>"Intense work environment with strict deadlines, long hours, and some micromanagement. This affects the culture a bit where it can be very cut throat if you aren’t performing at a certain level constantly."
</ul>

LinkedIn reports 2.7 year average tenure (short vs. other employers)

Palantir employees are called <strong>Palantirians</strong>. 

The company has "we don't have salespeople" philosophy. "each contract is tailored to the customer's needs."
One employee commented on Indeed: 
"They will do whatever they possibly can to avoid paying out owed commissions. Every salesperson I have worked with at Palantir have been owed hundreds of thousands in commissions."

* https://www.palantir.com/careers/
* https://www.palantir.com/careers/students-and-early-talent/
* https://palantirfoundation.org/foundation/fellowships/
* https://www.youtube.com/@palantirbite-sized 

Corporate offices moved from the Silicon Valley to Denver, CO.

Jobs listed in <a target= "_blank" href="https://www.palantir.com/jobs/">Palantir careers</a> and LinkedIn show <a target="_blank" href="https://blog.palantir.com/dev-versus-delta-demystifying-engineering-roles-at-palantir-ad44c2a6e87">"Forward Deployed Software Engineers"  (Deltas)</a>, what others call Solution Engineers) around the world and within engineering offices in Seattle, DC, NYC:

   * 110 East End Ave: This office is a key player in Palantir's East Coast operations, focusing on financial services and media industries.
   * 620 Avenue of the Americas: Palantir has a significant presence here, having renewed a lease for 140,345 square feet.
   * 15 Little West 12th Street: This is another office location in New York, with a project size of 30,000 square feet.
   * 450 W 17th St: This address is also associated with Palantir in New York.
   * 45 West 18th Street (Lower East Side) used for events.


## Tech Stack

Palantir sells its <strong>data operations platform</strong> as "Gotham" to governments and "Foundry" to commercial clients.

1. Click "INSTALL" at <a target="_blank" href="https://build.palantir.com/platform/2fded05d-0d74-41a7-93f6-fa665114ab7b">"Ontology SDK (OSDK) With AIP Logic - Build a To Do application Powered by AIP Logic</a> 
1. Enter your <strong>enrollment URL</strong> such as "almond-latte.palantirfoundry.com".

   QUESTION: Where do we get the enrollment URL???

1. <a target="_blank" href="https://www.palantir.com/docs/foundry/administration/configure-application-access">Configure application access</a>

The Developer Console is the platform used to create both Ontology SDK applications as well as OAuth clients (formerly known as third-party applications in Control Panel). To access the Developer Console, open the application portal and search for developer console.


Object Views are a central hub for all information and workflows related to a particular object. This includes key "biographical data" about an object, any linked objects, key related metrics, and links to (or embedding of) key analyses, dashboards, and applications related to the object.

Use Jupyter to analyze data from the Ontology or trigger AIP Logic functions

Create a Dataset of tasks within projects within the Ontology 

## AI/ML

To operationalize AI/ML in Foundry for live inference with the Ontology:

1. Create a LLM model in Foundry.
1. Configure a direct model deployment.
1. Publish a simple wrapper function for your model and optionally call it from another function to orchestrate complex logic around your model.
1. Use that function for live inference in Workshop, Vertex and other end-user facing applications.

https://www.palantir.com/docs/foundry/model-integration/tutorial-train-code-repositories/#2b4-how-to-test-inference-logic-in-code-repositories
Ontology Objects can also be backed with datasets that leverage a model for batch inference - 


## Functions

A <a target="_blank" href="https://www.palantir.com/docs/foundry/functions/overview/">Function</a> 
is a piece of code-based logic that takes in input parameters and returns an output. Functions are natively integrated with the Ontology: they can take objects and object sets as input, read property values of objects, and be used across action types and applications that build on the Ontology.

AIP Logic can be used from anywhere. 

AIP Logic functions from front-end React or back-end Python applications.

Call Query functions which uses GPT-4o from a TypeScript Query function. 

from which Jupyter notebooks run to analyze data and trigger AIP Logic functions from your OSDK application.



## Ontology Software Development Kit (OSDK)

The Ontology SDK is multi-lingual. It supports NPM (Node Package Manager) package for TypeScript, PIP, or 
Conda for Python, Maven for Java, and OpenAPI spec for any other language. It generate:
   * Registry URL for NPM
   * Index URL for PyPI
   * Chanel URL for Conda

https://www.palantir.com/docs/foundry/ontology-sdk/overview
Functions are executed using the Ontology SDK to create a To Do webapp.

QUESTION: Application RID???

The OSDK uses a token that is scoped only to the ontological entities required for a single application to access, in addition to the user's own permissions to the data.

## Palantir platform tooling:

Palantir has three tools for building Apps & Dashboards:

* <strong>Quiver</strong> provides a visual point-and-click interface to define <strong>analytical workflows</strong> (time series analysis) in the Ontology layer leveraging a powerful charting library. Quiver supports simple linear drill-down analyses to highly-branched and complex analyses with aggregations and statistical functions. Quiver analyses can be templatized into read-only dashboards for broader consumption.

* <strong>Workshop</strong> provides a visual point-and-click code-less <strong>application-building</strong> natively on the Ontology layer. Applications built in Workshop are more dynamic and interactive than typical dashboards created in other point-and-click tools. High-quality Layouts and an easy-to-use but sophisticated Events system enable Workshop apps to be as user-friendly and high-quality as custom React applications.

* <strong>Slate</strong> interacts directly with <strong>datasets</strong>, which enables significant visual customization, but also requires more technical knowledge to build and maintain applications than Workshop.

* <strong>Carbon</strong> enables workflow builders to perform the "last mile" of customization to create a highly tailored and usable experience for <strong>operational end users</strong> to create highly curated workspaces that combine multiple resources or applications - analytical results such as dashboards, applications built in Workshop or Slate, and out-of-the-box capabilities such as Object Views and Object Explorer.

* <a target="_blank" href="https://www.palantir.com/docs/foundry/map/overview/">Map</a> (a GIS app like ArcGIS and Google Maps) analyzes objects and other data in a <a target="_blank" href="https://www.palantir.com/docs/foundry/geospatial/overview/">geospatial</a> context. The Map application renders maps using the <a target="_blank" href="https://en.wikipedia.org/wiki/Web_Mercator_projection">Web Mercator Projection</a> (EPSG:3857), and expects latitude/longitude coordinates in WGS 84 degrees (EPSG:4326). See Geospatial data in Foundry for more information on transforming geospatial data in Foundry.

* AIP (AI Powered) is a suite of modules in Foundry with preferred LLM (LLAMA, GPT, Claude, etc.).  AIP connects generative AI to operations. 

   * AIP Logic: a no-code development environment for building, testing, and releasing functions powered by LLMs. Using Logic’s intuitive interface, application builders can engineer prompts, test, evaluate and monitor, set up automation, and more, while leveraging the Ontology.
   * AIP Logic Evaluations: a testing framework designed to enhance and track AIP Logic function quality over time by improving prompt engineering, deciding between using various models
   * AIP Assist: an LLM-powered support tool designed to help users navigate, understand
   * In-platform LLM powered assistance : Native LLM-backed features designed to help end users perform regular workflows in Foundry. These are highly-specific features that leverage knowledge of the Foundry platform to accelerate a user's day-to-day operations.
 
* <a target="_blank" href="https://www.palantir.com/platforms/apollo/">Apollo</strong> is Palantir's <strong>mission control</strong> for autonomous software deployment (software delivery layer). Build an end-to-end Foundry workflow from raw data to operational application as an introduction to core platform concepts. 

* QUESTION: Backup & retore?


## What is

<a target="_blank" href="https://www.youtube.com/watch?v=K-JZH4oOJhI">What is Palantir?</a>
Eric Timberling's description

https://build.palantir.com

<a target="_blank" href="https://www.youtube.com/watch?v=4LQCsPbA6rU">VIDEO: predicate-based Data mining</a> named for the device in "Lord of the Rings" for seeing vast distances.
Rather than using a wide net.

Only AWS cloud - US East or UK.

"AIP" is their product.

Ontology for AI
<a target="_blank" href="https://www.youtube.com/watch?v=ZgokFqUAAsE">VIDEO</a>

The Ontology serves as the semantic layer that integrates data, models, and business logic,
The Ontology is a semantic layer that models a company’s data to ensure it is usable and understandable by all business users. Objects within the Ontology can be linked together to reflect business activities. For example, a signed contract (one object) would be linked to the client it is signed with (another object), which is then associated with cashflows (yet another object). These links create a comprehensive and interconnected view of the business.
 
The Ontology is composed of objects, which represent unique entities such as banks, cashflows, people, clients, contracts, or policies. These objects serve as the building blocks of the Ontology.

Objects and Links within the Ontology can be configured to granularly provide access rights to different users, depending on their role and rights with regards to data access and modification.
It bridges the gap between complex data from various source systems and the business logic, translating it into familiar business terms. This makes the data accessible and actionable for everyone in the organization, providing a single source of truth for data-driven operations and decision-making.
https://www.youtube.com/watch?v=Qa5KlRdk5UE

## Digital Twin

The Ontology is designed to represent the decisions in an enterprise, not simply the data.

Branch: A branch on the Ontology is a separate version of that Ontology, derived from the main version, designed to enable experimentation and changes without impacting the main branch. This allows users to test and refine adjustments to the Ontology in an isolated environment before merging them back into the main branch.

Proposal: A proposal is analogous to a Pull Request in a version control system, specifically tailored for Ontology branches. A proposal is automatically created alongside a branch and contains metadata such as reviews, name, and descriptions of the changes being merged into the main branch. Proposals serve as a mechanism for reviewing and approving changes made in a separate branch before they are integrated into the main Ontology.

RFC (Request for Comments): A RFC is a document that outlines a new feature or change to the Ontology. It is submitted for review and discussion by the community, and after approval, it is implemented in the Ontology.

## Workflows

<strong>Foundry</strong> workflow DevOps operating system
How Palantir Foundry Fuels Your Data Platform

<strong>Gotham</strong> is for goernments to do decision analysis with AI.

version of Foundary is called <strong>"Foundry Gov"</strong>

Vertically integrated
https://www.youtube.com/watch?v=m2u6KL2Hz2I
Workflow Builder

https://github.com/palantir/aip-community-registry

* https://github.com/palantir/aip-community-registry/tree/develop/Meal%20Planning using vision model working on a picture of your fridge contents. Data lineage.  by <a target="_blank" href="https://www.linkedin.com/in/shivambansal0804/">Shivam Bansal in London</a>

* https://github.com/palantir/aip-community-registry/tree/develop/DevOps%20for%20AI%20Products

* https://www.youtube.com/watch?v=0FdHouw0yXg Trip planning

https://www.youtube.com/watch?v=k88WbxMEvPY
Palantir Architecture Speedrun | From Integration to Application
Palantir

## Analytics

With traditional linear, there is often a disconnect between the front-line personnel and the back-office data analytics team. This lack of a feedback loop can hinder continuous improvement and innovation.

Analytics in Foundry go beyond conventional “read-only” paradigms.
It can write data back into the Ontology, producing valuable new insights within unified security, lineage, and governance models.

Foundry’s core Analytics applications include:

* Code Workbook, an application that blends data engineering and data science motifs, allowing for Python-, R-, or SQL-driven transformations to be constructed, building and training machine learning models.

* Fusion, a <strong>spreadsheet-driven</strong> application that synthesizes tabular computation with the power of Foundry’s Ontology and object-driven query system.
* Contour, a top-down analysis application for rapidly exploring <strong>tabular</strong> data at scale, deriving new datasets through visual transformations, and creating charts. <a target= "_blank" href="https://learn.palantir.com/deep-dive-data-analysis-in-contour">Deep Dive: Data Analysis in Contour</a>

* Quiver, a multimodal charting application that allows for object-driven analysis, time series-driven analysis, point-and-click machine learning, and dashboard building. <a target= "_blank" href="https://learn.palantir.com/deep-dive-data-analysis-in-quiver">Deep Dive: Data Analysis in Quiver</a>

* Notepad, an integrated solution for embedding dynamic analytical, visual, and operational artifacts from across Foundry, alongside formatted text and media.


<a name="Certifications"></a>

## Certifications

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1744953699/palantir-certs-2048x791_v2pzld.jpg"><img alt="palantir-certs-2048x791.jpeg" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1744953699/palantir-certs-2048x791_v2pzld.jpg"/></a>

1. At https://learn.palantir.com
1. Sign up with Palantir Foundry Platform account.
1. Sign-in

Palantir's Certification Program was <a target= "_blank" href="https://www.palantir.com/newsroom/press-releases/palantir-introduces-certification-program-to-scale-platform-and-empower/">introduced Jan 2022</a>
as part of <a target= "_blank" href="https://www.palantir.com/platforms/foundry/amplify/">Palantir's Amplify service offerings</a>.

https://accounts.skilljar.com/accounts/login/?t=38ttrnhi4ve49&d=1n4nregc1qhy8&next=%2Fauth%2Fendpoint%2Flogin%2Fresult%3Fnext%3D%252F%26d%3D1n4nregc1qhy8
Four cert tracks, $260 for 70% of 60 multiple choice questions in 120 minutes:

* <a target= "_blank" href="https://www.palantir.com/certification/application-developer/">Application Developer</a> to  design and create an Ontology in Foundry, and build operational applications on top of it. It will assess your knowledge of the different tools in the Foundry suite that can be used to build applications, and your understanding of the optimal use cases for each. 

   1. Design Applications based on Business Requirements
   1. Implement Applications using appropriate Foundry tools
   1. Implement Complex Cross-App Workflows
   1. Maintain Operational Apps as Usage Grows and Requirements Change

    https://learn.palantir.com/app-dev-guide-2023/1481796

* <a target= "_blank" href="https://www.palantir.com/certification/data-engineer/">Data Engineer</a>

   1. Data Pipeline Development in Foundry
   1. Data Pipeline Maintenance in Foundry
   1. Data Connection and Integration in Foundry
   1. Ontology Design and Development in Foundry 

   https://learn.palantir.com/data-engineer-guide-2023/1388785

   https://www.palantir.com/docs/foundry/transforms-python

   https://www.palantir.com/docs/foundry/contour Contour provides a point-and-click user interface to perform data analysis on tables at scale. These analyses can be used to create interactive dashboards that allow others to explore and investigate the data in a guided, structured way.

* Data Science<
* Data Analyst

Exam guides, including an outline of topics, relevant documentation, and other study materials, will be provided to all candidates.



Code Repositories

VS Code workspaces

Palantir extension for Visual Studio Code

Jupyterlab®



## GitHub

Open source from https://github.com/palantir

* blueprint - A React-based UI toolkit for the web
* pkg - A collection of stand-alone Go packages
* go-baseapp - A lightweight starting point for Go web servers
* go-githubapp - A simple Go framework for building GitHub Apps
* goastwriter - Go library for writing Go source code programatically
* amalgomate - Go tool for combining multiple different main packages into a single program or library

* metric-schema - Schema for standard metric definitions (octo-correct-managed)
* tritium - a library for instrumenting applications to provide better observability at runtime (Java)



## Certification

All resources and files in the Foundry platform must live in a ____. 

Dataset
x Project - A Project in Foundry is a collaborative space that organizes people, resources, and folders for a particular purpose. All resources (Apps, files, media sets) are stored in Projects while Objects are stored in the Ontology. 
Ontology
Data Lineage

What actions can a user take to load data into Foundry?

Create a data connection from their source system to Foundry and use one of the 300+ connectors available
Manually upload files to datasets
Manually type their data in Fusion Sheets
x All of the above
Upload files manually is particularly useful for low volume or for prototyping. Establishing data connection is advised for production workflows. Upload files directly in folders as raw files is not advised, as you won’t be able to consume those files in your pipelines: files need to be uploaded to datasets to be easily consumable. 


True or False: Pipeline Builder is the only tool users can use to build production-grade pipelines.
True
x False
Upload files manually is particularly useful for low volume or for prototyping. Establishing data connection is advised for production workflows. Upload files directly in folders as raw files is not advised, as you won’t be able to consume those files in your pipelines: files need to be uploaded to datasets to be easily consumable. 

Question 3:
 Correct answer
True or False: Pipeline Builder is the only tool users can use to build production-grade pipelines.

 True
 False
Feedback:
Other applications are available to create production grade pipelines in Foundry, like Code Repositories; however, Pipeline Builder should always be your go-to starting point.


Which of the following is not needed to create an Object type?

Primary Key
Permissions
Defined Object properties
x Data transformations
In Foundry, data transformations are not strictly necessary to create an object type because the ontology system can directly ingest raw data sources.


What can Actions be performed on? 

x One or many Objects
A pie chart
A Workshop application
A pipeline
Actions are events and edits that are performed on an Object or set of Objects in the Ontology. 


True or False: there is no way to restrict who can use an Action. 

True
x False
You can restrict the Action so that only a specific person or group can use it. 


True or False: Workshop is the only tool in Foundry to build user-facing applications. 

True
x False
Other applications are available to create user facing applications in Foundry, like Slate or Quiver. 


Which of the following is not available in Object Tables?

Properties from an Object Set
Function-backed columns
Conditional formatting
x Action buttons
Object Tables can display current object properties, linked object properties, aggregations, object titles, URLs, and Function-backed properties.


Use your final Workshop Application from the Speedrun: Your First End-to-End Workflow course to answer the following question.

How many open orders does ACME Australia have? 
0
37
x 5
10


For A4 Paper orders that are open and due in 30 days or less, what is the highest quantity of product included in a single order? 

22
x 92
100
6
Utilize the filters, charts, and Object Table in your application to explore your data. (Hint: ensure you use the sorting feature of the Object Table to sort by highest quantity).

<hr />
<i>{{ page.lastchange }}</i>