---
layout: post
date: "2025-03-28"
lastchange: "v005 + add new :palantir.md"
url: "https://bomonike.github.io/palantir"
file: "palantir"
title: "Palantir"
excerpt: "How to learn Palantir for enterprise use."
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
{% include l18n.html %}
{% include _toc.html %}

## Dive right in

At its core, Palantir provides an <strong>object-based database</strong>.
They call it an <strong>Ontology</strong> because in addition to holding data, it maintains all that is necessary to make a <strong>digital twin</strong> of the dynamic actions and workflows within organizations.

1. https://learn.palantir.com/speedrun-your-first-e2e-workflow
2. https://learn.palantir.com/foundry-aip-builder-foundations-quiz 10 questions
3. https://learn.palantir.com/applied-notional-project-automobile-inbo
4. <a target= "_blank" href="https://learn.palantir.com/applied-notional-project-automobile-inbo">Applied Notional Project</a> <a targete="_blank" href="https://www.youtube.com/watch?v=ZeapLGUJSMw" title="by Ontologize">VIDEO</a> to build a dashboard for a used car leasing company with minimal step-by-step instructions based on requirements taken from a notional statement of work. [1-2 days] an operational workflow 


## The company

Palantir (NYSE:PLTR) was founded by Peter Thiel in 2003 after 9/11 to serve CIA and other law enforcement companies.

Palantir employees are called Palantirians.

Corporate offices moved from the Silicon Valley to Denver, CO.

Jobs listed in <a target= "_blank" href="https://www.palantir.com/jobs/">Palantir careers</a> and LinkedIn show "Forward Deployed Software Engineers" around the world and within engineering offices in Seattle, DC, NYC:

   * 110 East End Ave: This office is a key player in Palantir's East Coast operations, focusing on financial services and media industries.
   * 620 Avenue of the Americas: Palantir has a significant presence here, having renewed a lease for 140,345 square feet.
   * 15 Little West 12th Street: This is another office location in New York, with a project size of 30,000 square feet.
   * 450 W 17th St: This address is also associated with Palantir in New York.
   * 45 West 18th Street (Lower East Side) used for events.


* https://youtube.com/c/palantirtech
* https://www.youtube.com/@palantirdevelopers

* Vimeo
* https://linkedin.com/company/palantir-technologies
* https://www.linkedin.com/newsletters/closing-the-loop-6930184863031459840/

* https://twitter.com/PalantirTech

* https://community.palantir.com
* https://learn.palantir.com

The company has changed from "We don't have salespeople".

As of this writing, the AIP con occured on June 6, 2024.
<a target= "_blank" href="https://www.youtube.com/watch?v=rE8-P-0h070">VIDEO</a>
"Our Ontology is "the only thing that creates quantifiable transformational value in Enterprise."
<a target= "_blank" href="https://learn.palantir.com/deep-dive-creating-your-first-ontology">Deep Dive: Creating Your First Ontology</a>


## Products



out-of-the-box workflow templates or reusable workflow components to create workflow applications quickly, often within a matter of days. This accelerated development process ensures that organizations can realize the value of their data and insights swiftly, enhancing efficiency and responsiveness.

Foundry includes built-in simulation capabilities that allow users to model “what-if scenarios.” For example, users can simulate the impact of varying parameter rates on key performance indicators (KPIs) or trends. These simulations help in exploring potential outcomes and making informed decisions.

The “what-if scenarios” can be used purely for exploration or can be materialized by writing the simulation results back into the data once a satisfactory outcome is achieved. This flexibility ensures that users can experiment and validate their strategies before implementation.
 

## Stack

https://learn.palantir.com/deep-dive-data-protection-tools-in-foundry
Deep Dive: Data Protection Tools in Foundry

## Ontology Software Development Kit (OSDK)

The Ontology SDK supports NPM (Node Package Manager) package for TypeScript, Pip or 
Conda for Python, Maven for Java, and OpenAPI spec for any other language

The OSDK uses a token that is scoped only to the ontological entities required for a single application to access, in addition to the user's own permissions to the data.

## Palantir platform tooling:

* Foundry is Palantir's data operations platform, with the Ontology at its heart - it allows for enterprises to execute faster with universal logic representing the objects, actions, and processes of their business. https://www.palantir.com/docs/foundry/ontology-sdk/overview

* Palantir AIP connects generative AI to operations. AIP is a suite of modules in Foundry with preferred LLM (LLAMA, GPT, Claude, etc.). 
   * AIP Logic: a no-code development environment for building, testing, and releasing functions powered by LLMs. Using Logic’s intuitive interface, application builders can engineer prompts, test, evaluate and monitor, set up automation, and more, while leveraging the Ontology.
   * AIP Logic Evaluations: a testing framework designed to enhance and track AIP Logic function quality over time by improving prompt engineering, deciding between using various models
   * AIP Assist: an LLM-powered support tool designed to help users navigate, understand
   * In-platform LLM powered assistance : Native LLM-backed features designed to help end users perform regular workflows in Foundry. These are highly-specific features that leverage knowledge of the Foundry platform to accelerate a user's day-to-day operations.
 
* <strong>Apollo</strong> is Palantir's <strong>mission control</strong> for autonomous software deployment (software delivery layer). https://www.palantir.com/platforms/apollo/
Build an end-to-end Foundry workflow from raw data to operational application as an introduction to core platform concepts. [60-90mins]



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

Every decision can be broken down into data, logic, and actions.
The Ontology automatically integrates the relevant data, logic and action components into a modern, AI-accessible computing environment.

   * Data: What are the relevant facts or truth about the world and our operations that form the context for this decision?
   
   * Logic: What organizational or business rules act as guardrails for this decision? What are the probabilities of certain outcomes under different assumptions? What have we done in previous, similar situations and what have the outcomes been? What are the inputs from our forecasting and optimization models?
   
   * Actions: What are the "kinetics" or effects of this decision - that is, how does the decision manifest in the world? How do we reduce or collapse the steps between taking a decision in AIP and affecting an outcome in a production setting?



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

Palantir Vision:
   * <a target= "_blank" href="https://www.youtube.com/watch?v=EZLr6EGGTPE">"Alex Karp CEO 2009 Interview"</a> by
   * <a target="_blank" href="https://www.youtube.com/watch?v=htUe8WkYre8">"The company that runs the world</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=KZWB5XGZy-Q">"I don't think in win/lose"

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

## Certification

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

## Quick Start

1. Create an account with a credit card, images of your ID & face.
1. At build.palantir.com
1. https://accounts.skilljar.com/accounts/signup/ with a company email.

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

