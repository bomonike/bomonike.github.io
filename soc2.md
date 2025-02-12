---
layout: post
date: "2025-02-12"
lastchange: "v002 + qr code :soc2.md"
file: "soc2"
title: "SOC2"
excerpt: "How to get a CPA attestation report on each service organization's information security controls, so salespeople can close faster with prospective customers by providing a SOC 2 Type II report."
tags: [security, management]
image:
# python-samples-1900x500.jpg
  feature: https://user-images.githubusercontent.com/300046/145717691-60b8c765-e0a3-4d63-bf7f-0cb89492c0ee.png
  credit: An Athlete Wrestling with a Python (1877) by Sir Frederic Leighton (1830-1896) at the Tate, London
  creditlink: https://www.wikiwand.com/en/An_Athlete_Wrestling_with_a_Python
comments: true
created: "2025-02-07"
---
<a target="_blank" href="https://bomonike.github.io/soc2"><img align="right" width="100" height="100" alt="soc2-qr.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/soc2-qr.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}


{% include whatever.html %}

## Why?

<a target="_blank" href="https://www.youtube.com/watch?v=KlE2grb4qo0">VIDEO: Summary</a>
A SOC 2 audit is not a legal or regulatory requirement like HIPAA, PCI DSS, or SOX.

PROTIP: Preparing for and conducting a SOC2 audit "pays for itself" because, by strengthening the organization's overall security posture, the effort lowers the potential impact of a security breach.
The effort also decreases sales cycles and increases win rates. Cloud salespeople report that it is "table stakes" to provide a <strong>SOC2 Type II report</strong> to prospects.
The document contains an attestation from a CPA firm hired by each service provider to evaluate and attest that there is proof the service provider indeed has measures in place to protect the integrity, confidentiality, and privacy of data on behalf of customers. This is done typically each year.


## Status Summary

Our organization's status toward achieving the <a href="#TSCs">five TSCs (Trust Services Criteria) for SOC2</a> developed by the AICPA Assurance Services Executive Committee (ASEC) is summarized in (<a target="_blank" href="https://7451111251303.gumroad.com/l/qagsq">this polar chart</a>, with a line for each moment of time, starting from A to B to C at completion: SAMPLE:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1705950775/soc2-polar-somm-240122-2176x1464_xzlizp.png"><img alt="soc2-polar-somm-240122-2176x1464.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1705950775/soc2-polar-somm-240122-2176x1464_xzlizp.png"></a>

<a target="_blank" href="https://www.youtube.com/watch?v=qXHlgZMOVfw&t=17m10s">VIDEO</a>:
This chart summarizes several charts for each <a href="#Who+Does+What">part of our organization</a>.


<a name="SOMM"></a>

### Maturity Model Levels

Levels for rating status are adapted from <a target="_blank" href="https://logrhythm.com/solutions/security-operations-maturity-model/">this SOMM (Security Operations Maturity Model)</a> <a target="_blank" href="https://7451111251303.gumroad.com/l/zyuba">illustration</a>:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1705947975/soc2-somm-240122-2884x1152_oehmgp.png"><img alt="soc2-somm-240122-2884x1152.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1705947975/soc2-somm-240122-2884x1152_oehmgp.png"></a>

   * 0 = INITIAL = Controls are not fully documented.
   * 1 = PERFORMED = Controls <strong>documented</strong> for each practice
   * 2 = MANAGED = Controls also <strong>follow plans and policies</strong>
   * 3 = MEASURED = Controls also <strong>measured and tested</strong>
   * 4 = DEFINED = Controls also <strong>standardized</strong>
   * 5 = OPTIMIZED = Controls also ("continuosly") <strong>improved</strong>
   <br /><br />

BTW, an alternative is <a target="_blank" href="https://www.wikiwand.com/en/Cybersecurity_Maturity_Model_Certification">CMMC maturity model rating</a> which was deprecated in 2021 in favor of a "Fundamental, Advanced, and Expert" levels.


### Org Levels

When considering that there are <a name="COSO+Principles">17 COSO Principls</a>, that's 17 x 3 x 4 = 204 items for an organization with 4 levels.

* Executive (Leadership) & Finance (Budget)
* Marketing & Sales (to prospects and customers)
* Legal, HR, PR, IAM & <a href="https://wilsonmar.github.io/soc/">SOC</a> teams
* Operations & R&D - Physical & Digital Infrastructure
<br /><br />

Please refer to the spreadsheet/database of people, their role in the organization, and other metadata.


### Who Does What

<table border="1" cellpadding="4" cellspacing="0">
<tr><th>Who</th><th>Deliverables</th><th> # Walkthroughs </th><th> Auditor Hours</th></tr>
<tr valign="top"><td> Sales & Marketing </td><td> <a href="#Timeline">Timeline</a>, Description of product/service in auditor reports
   </td><td> 1-2 </td><td> 4-8 </td></tr>
<tr valign="top"><td> Leadership </td><td> Auditor agreement, Assertion of Mangement in Draft auditor reports
   </td><td> 1-2 </td><td> 4-8 </td></tr>
<tr valign="top"><td> Legal, HR, PR </td><td> Customer Agreements, Employee Policies & Agreements, Breach Communications
   </td><td> 1-2 </td><td> 4-8 </td></tr>
<tr valign="top"><td> Security <a href="https://wilsonmar.github.io/soc/">SOC</a> </td><td> <a href="#RISK_MANAGEMENT">Risk management</a>, <a href="#BUSINESS_CONTINUITY">Business Continuity</a>, <a href="#monitoring-activities-cc4">Monitoring</a>, Malware detection, <a href="#AUDIT_&_COMPLIANCE">Audit & Compliance</a>
   </td><td> 1-2 </td><td> 10-20 </td></tr>

<tr valign="top"><td> Facilities </td><td> <a href="#ACCESS_CONTROL">Facilities Access Control</a>, <a name="ASSET_MANAGEMENT">Asset Management</a>
   </td><td> 1-2 </td><td> 1-2 </td></tr>
<tr valign="top"><td> Info technology Operations </td><td> <a href="#SECURITY_OPERATIONS">Security Operations</a> (Security Policies, Network security), <a href="#DATA_SECURITY">Data Security</a> (in IT Operations), <a href="#INFORMATION_&_COMMUNICATIONS">Information & Communications</a>
   </td><td> 1-2 </td><td> 10-20 </td></tr>
<tr valign="top"><td> Engineering, DevSecOps, Development </td><td> <a href="#ACCESS_CONTROL">Systems Access Control</a>, <a href="#SDLC_SECURITY">SDLC</a> (Change Controls)
   </td><td> 1-2 </td><td> 10-20 </td></tr>
<tr valign="top"><td colspan="2"> Total </td><td> 7-13 </td><td> 43-98 </td></tr>
</table><a href="#[2]">[2] 16:32</a>

$30-50K by a boutique CPA firm such as <a href="#[2]">risk3sixty[2]</a>, 4x for a "Big Four" firm.

   * <a target="_blank" href="https://linfordco.com/downloads/soc-1-soc-2/">Linford & Co</a> Denver, Colorado
   <br /><br />

<a target="_blank" href="https://www.youtube.com/watch?v=JyQ9QC86FyY&list=PLMyck54nPpLgR3OuOosljaOWQe1D3Wh6W&index=1">VIDEO</a>: SOC2 Intro by StrongDM by <a target="_blank" href="https://www.linkedin.com/in/justinmccarthy/">Justin McCarthy in San Mateo, CA</a>, who also has a <a target="_blank" href="https://www.strongdm.com/soc2/course">SOC2 Compliance Couse</a> and <a target="_blank" href="https://www.strongdm.com/soc2">COMPLY SaaS</a>.

Videos from the OneTrust (<a target="_blank" href="https://www.youtube.com/watch?v=y1KujIcMvUk" title="closing Sep. 2021">formerly Tugboat Logic</a>) SOC 2 Bootcamp:


<a name="Timeline"></a>

## Timeline & Strategies

<a target="_blank" href="https://user-images.githubusercontent.com/300046/148001432-89728855-0175-4c1a-a77f-4ba51ac12796.png"><img width="2962" alt="soc2-timeline-2692x850" src="https://user-images.githubusercontent.com/300046/148001432-89728855-0175-4c1a-a77f-4ba51ac12796.png"></a><br /><a href="#[2]">[2]</a>

1. <strong>Identify a CPA firm</strong> and choose timelines.

   * Auditors are in short supply, so the waiting list can extend your certification timeline.
   <br /><br />

1. Evaluate and <strong>hire a certified external consultant</strong> with experience in your particular industry (<a target="_blank" href="https://www.truvantis.com/blog/11-steps-to-achieve-soc-2-compliance">such as Truvantis</a>, etc.).

1. <strong>Educate</strong> each department on the need for each control, the audit process, what documents and evidence are needed, and how to prepare (format) them:

   * Send invitations and track attendance and follow-up
   * Outside speakers to provide perspective and enthusiasm
   * Tracking of activities and achievements by individuals
   <br /><br />

1. <strong>Survey</strong> the organization, conduct document reviews, employee interviews, and walk-throughs to identify the amount of time and work to develop controls needed

   * System to survey opinions about buy-in and guage understanding
   * System to track progress on gaps in each control within each  department
   <br /><br />

1. <strong>Clarify the scope and activities</strong> based on what customers want prioritized against limitations of time and resources.

   * Systems involved and their needs
   * Since internal audit resources are limited, plan <strong>readiness assessments</strong> one department at a time
   <br /><br />

1. <strong>Specify who is involved</strong> and each of their roles, responsibilities, and activities to achieve the desired objectives

   * Time requests into departmental Jira/Asana or other planning/tracking system in regular use
   * Metrics
   <br /><br />

1. Prepare the organization for mock and actual audits:

   * Schedules
   * Document <strong>Samples/templates</strong> with guidance on how to prepare (format) policies, procedures, playbooks (with linkages)
   * Traceability from Selection Of Controls through implementation and assessment (OSCAL)
   <br /><br />

   ### Perform

1. Write/revise and review <strong>security policies and procedures</strong> (System Security Plans) behind each control where prior efforts (ISO) did not cover.

1. <strong>Conduct processes to create evidence data</strong> and System Assessment Plans (SAPs) as the basis for audit and reporting during the <strong>audit period</strong> (6 months to a year). Processes may include internal and external pen-testing.

1. <strong>Track and report progress</strong> each week/month on where each team still needs additional work, with projections toward when audit readiness will occur. Metrics for the Security Operations Center incident response and corrective action:

   * Mean Time to respond/remediate
   * Mean Time to acknowledge
   * Mean Time to close (Incident dwell time)
   * Percentage of false positives
   <br /><br />

   ### SOC2 Type I audit (single process run)

1. Identify issues in audit preparations. This can be done by an internal auditor or an auditing consultant to provide guidance.

   A few weeks before the start of your audit, your auditor will send you a <strong>PBC (Provided By Client) list</strong> based on the controls identified for auditor review. There is often follow-up questions with some back-and-forth communication.

1. Prepare for and perform a <strong>SOC2 Type 1 mock audit</strong>  by ensuring that <strong>procedures and evidence</strong> for each control can be confidently presented for a single process run.

1. Assess System Assessment Results (SARs).

1. Manage auditors on Type 1 audit day if that is part of the strategy.
Challange controls auditors ask for, when appropriate.

   ### SOC2 Type 2 audit

1. Perform a Type 2 mock audit. Ensure that evidence for each control can be presented for the audit period (6 months to a year).

1. Prepare for Type 2 audit. Ensure that each department has the evidence at the ready before auditor arrival.

1. Manage auditors on audit day. Challange controls auditors ask for, when appropriate.

1. Dispute draft auditor report language where it's unfavorable.

1. Publicize/leverage the report with customers and prospects.


<a name="Applications"></a>

### Applications

SOC2 doesn't specify what systems are used.

PROTIP: Here are the most common ones used by enterprises:

* Email: Microsoft Exchange, Google G Suite, etc.
* Phishing education and simulation: KnowBe4, etc.
* Chat: Slack, Microsoft Teams, etc.
* SMS Text to mobile phones: Twilio, etc.
* Video: Zoom, Microsoft Teams, Loom, etc.
* Video editing: Camtasia, Loom, etc.

* Document creation: Microsoft Word, Google Docs, etc.
* Flowcharts: Lucid Chart, Figma, etc.
* File sharing: Microsoft OneDrive, Google Drive, etc.
* Project Management: Excel, <a target="_blank" href="https://wilsonmar.github.io/jira/">Jira</a>, Trello, Asana, etc.

* Payroll: ADP, etc.
* Documents & Signatures: Adobe sign, DocuSign, etc.
* Accounting: QuickBooks, etc.
* Recruiting & HR: Workday, etc.
* Training Presentation & Tracking: Workday, Cornerstone, etc.
* Surveys, Certifications: SurveyMonkey, etc.
* Spiffs: Xactly, etc.

* E-commerce: Shopify, GoDaddy, etc.
* Social media: LinkedIn, Instagram, Facebook, Twitter/X, etc.
* Employee reviews: Glassdoor, Indeed, etc.
* Conference: EventBrite, etc.
* CRM (Customer Relationship Management): HotSpot, Salesforce, Microsoft Dynamics, etc.

* Text editor IDEs: Visual Studio Code, etc.
* Text editor external plugins: Prettier, etc.
* macOS apps: iTerm2, etc.
* Windows apps: PuTTY, etc.
* Linux apps: Vim, etc.
* MDM: Jamf, etc.

* Cloud: AWS, Azure, Google Cloud, etc.
* Endpoint Security: CrowdStrike, etc.
* Cloud IAM: Okta, etc.
* CI/CD: GitHub Actions, Jenkins, etc.
* Source Code Versioning: GitHub, GitLab, etc.
* Containerization: Docker, Kubernetes, etc.
* Artifact (packages, containers): Artifactory, etc.

* SAST: SonarQube, etc.
* DAST: Burp Suite, etc.
* IAST: Contrast Security, etc.

* Configuration Management: Ansible, Chef, Puppet, etc.
* Infrastructure as Code: OpenTofu, Terraform, etc.
* IaC Scanning: Checkov, IPSec, etc.

* SIEM Observability/Monitoring: Prometheus, Grafana, Datadog, New Relic, etc.
* SOAR: Demisto, Phantom, etc.
* Logging: Grafana, Splunk, etc.
* Incident Management: PagerDuty, etc.

* ERP: SAP, Oracle, etc.
<br /><br />

Each of the above is considered an asset to be maintained and protected.


### GRC Automation

<a target="_blank" href="https://www.youtube.com/watch?v=9tLXJwkCr6g">VIDEO</a> <a target="_blank" href="https://www.vanta.com/">Vanta.com</a> was the first SaaS automated security and compliance system for companies who want to get SOC 2, ISO 27001, HIPAA, or other certifications. Vanta's software automatically gathers evidence and prepares companies for their security audits. Vanta integrates with 100+ cloud services, including AWS, GCP, and GitHub. Vanta obtained funding from Sequoia Capital, Y Combinator, and other investors after it reached $10 in sales.

<a target="_blank" href="https://reciprocity.com/product/">Reciprocity's ZenGRC</a> provides a platform for integrating <a target="_blank" href="https://reciprocity.com/compliance/">compliance</a>, audit, risk management, third-party risk solutions, and governance and policy management applications. It covers 32 domains and over 750 <a href="#Controls">controls</a>. It supports several compliance frameworks in addition to SOC2.

KnowB34, founded by reformed hacker Kevin Mitnick, offers their
<a target="_blank" href="https://kcmgrc.knowbe4.com/">KCM GRC</a> SaaS product, which claims "KCM GRC has a simple, intuitive user interface, easy to understand workflows, a short learning curve, and will be fully functional in a matter of days."

<a target="_blank" href="https://www.youtube.com/watch?v=mpxaZIUSOmc">VIDEO</a> by <a target="_blank" href="https://www.SecureFrame.com/">SecureFrame</a>

<hr />

## Auditors

<a target="_blank" href="https://aicpa.org/soc4so"><img align="right" alt="socforserviceorganizationslogocpas200x200" width="200" height="200" src="https://user-images.githubusercontent.com/300046/151661839-3029b7be-7c48-4e55-8bad-f9513ee4ded9.jpeg"></a>
Here, the "SOC" in "SOC2" stands for (“Systems and Organization Controls", formerly "Service Organization Controls") reports as defined by the American Institute of Certified Public Accountants (AICPA).<a href="#[1]">[1]</a> The AICPA was formed as an association of <a target="_blank" href="https://insidepublicaccounting.com/top-firms/ipa-400/">independent CPA firms</a> (such as PwC, Deloitte, EY, KPMG, etc.) who are approved by a <strong>company's shareholders</strong> to perform audits. Additionally, each CPA is licensed by the government after an examination. So they are built to be an "objective 3rd-party". However, SOC auditing is another line of business for CPAs.

NOTE: "SOC2" is implemented partly by a <a target="_blank" href="https://wilsonmar.github.io/soc/">Security Operations Center</a>", but does not mean "Systems on a Chip" (another <a target="_blank" href="https://wilsonmar.github.io/acronyms">acronyms</a>).


<hr />

<a name="Controls"></a>

## Controls

PROTIP: Each GRC vendor and auditor has its own names for controls, organized a different way.

Therefore, a mapping of company internal names and organization needs to be mapped to the auditor's structure.


### Specific Controls

Each TSC above contains <strong>points of focus</strong> -- specific controls when designing, implementing, and operating controls.

<a target="_blank" href="https://landing.dashsdk.com/soc-2-controls-list/">Request the "SOC2 Controls List" Excel file</a> of 291 detailed points of focused controls. From <a target="_blank" href="https://www.linkedin.com/in/brett-lieblich-/">Brett Lieblich</a> at consultantcy <a target="_blank" href="https://www.dashsdk.com/soc-2/">DashSDK.com</a>.


<a name="TSCs"></a>

## TSCs

The Five Trust Services Criteria (TSC) <a target="_blank" href="https://assets.ctfassets.net/rb9cdnjh59cm/2sK6Ih6dzy6t7aU6RQvoeD/d97a2a14609e74a1af1ce9ab0b142b69/92317096_trust_services_criteria_red-lined_version.pdf">2022</a>, listed here in alphabetical order:

* (A) <strong>Availability</strong> - Performance monitoring, Disaster Recovery, Security Incident Handling.

   Information and organizational systems are available (accessible) for operation and use to meet the entity’s objective requirements. Controls include fail-over.

* (C) <strong>Confidentiality</strong> - Protected information, Data subjects, Privacy. (<a href="#for-confidentiality-c1">Additional criteria</a>)

   Information designated as confidential is protected (such as passwords, encryption using security certificates, etc.) to meet the entity’s objectives.

* (P) <strong>Privacy</strong> (of Consumer Personal information) - Sector privacy rules, Encryption. (<a target="_blank" href="#for-privacy-pi">Additional Criteria</a>)

   Personal information is collected, used, retained, disclosed and disposed of to meet the entity’s objectives.

* (PI) <strong>Processing Integrity</strong> (over provisioning) - Payment transactions, Accurate process (via Quality Assurance), Errors corrected. <a target="_blank" href="#for-processing-integrity-pi1">Additional criteria</a>)

   System processing is complete, valid, accurate, timely, and authorized to meet the entity’s objectives.

* (CC) <strong>Security</strong> - (aka required <strong>Common Criteria</strong> applicable to all audits) Firewalls, Security controls, Device configuration.

   Information and system assets are protected against unauthorized access, unauthorized disclosure of information and damage to systems that could compromise security availability, confidentiality, integrity, and privacy of data or systems. That also affects the entity’s ability to meet its objectives.

PROTIP: Service providers are regularly advised to limit their first SOC 2 audit to <strong>just Security</strong> and only include additional criteria if necessary.


<hr />

## COSO

   * <a target="_blank" href="https://www.aicpa-cima.com/resources/download/2017-trust-services-criteria-with-revised-points-of-focus-2022">The 2017 Trust Services Criteria for Security, Availability, Processing Integrity, Confidentiality, and Privacy (With Revised Points of Focus — 2022) (2017 TSC)</a> from AICPA & CIMA
   * https://us.aicpa.org/interestareas/frc/assuranceadvisoryservices/sorhome.html
   * https://weaver.com/blog/coso-frameworks-17-principles-effective-internal-control
   <br /><br />

The 2017 TSC standards for SOC 2 reports integrate the 2013 framework from COSO (Committee of Sponsoring Organizations of the Treadway Commission) at <a target="_blank" href="https://www.coso.org/">coso.org</a>, which consists of <a target="_blank" href="https://www.buffalo.edu/content/dam/www/administrative-services/pdf-docs/Internal%20Control/COSO%20Poster.pdf">PDF</a>:
<a href="#COSO+Principles">17 principles</a> organized in these 5 categories:

   * <a href="#control-environment-cc1">CC1 = Control Environment</a>
   * <a href="#communication-and-information-cc2">CC2 = Communication and Information</a> (formerly called Communication and Information)
   * <a href="#risk-assessment-cc3">CC3 = Risk Assessment</a>
   * <a href="#monitoring-activities-cc4">CC4 = Monitoring Activities</a>
   * <a href="#control-activities-cc5">CC5 = Control Activities</a>
   <br /><br />

The above aligns with the first five criteria sections within the security/common criteria.

The 2013 version was illustrated by this 5 x 3 x 4 (60 cell) matrix for 4 organizational levels.
<a target="_blank" href="https://user-images.githubusercontent.com/300046/148309270-862cf0ca-10b9-48db-ade9-f1d2e85daa1e.png">
<img width="816" alt="soc2-coso-816x844" src="https://user-images.githubusercontent.com/300046/148309270-862cf0ca-10b9-48db-ade9-f1d2e85daa1e.png"></a>

TSP Section 100.08 describes four additional internal controls criteria:

   * <a href="#logical-and-physical-access-security-cc6">CC6 = Logical and Physical Access</a> = How an entity restricts access (physical and logical), adds and removes said access, and avoids unauthorized access.
   * <a href="#system-operations-cc7">CC7 = System Operations</a> = How an entity manages the operation of the system(s) and detects and mitigates processing nonconformities, including access (physical and logical) security nonconformities.
   * <a href="#change-management-cc8">CC8 = Change Management</a> = How an entity recognizes the necessity for changes, executes the changes using a controlled process and stops unauthorized changes from occurring.
   * <a href="#risk-mitigation-cc9">CC9 = Risk Mitigation</a> = How the entity recognizes, chooses, and advances risk mitigation activities that have occurred from business disruptions, and the monitoring and evaluation of the use of business partners and vendors.
   <br /><br />

That makes for 9 x 3 x 4 = 108 items among <a href="#Org+Levels">4 organizational levels</a>.

### Aspects (of evidence)

Each <a href="#COSO+Principles">principle</a> is assessed these aspects of evidence:
   * <strong>Operations</strong> - Policies and Procedures
   * <strong>Reporting</strong> - Metrics collection, dashboards, alerts
   * <strong>Compliance</strong> - Time-stamped evidence stored
   * <strong>Strategic</strong> - added
   <br /><br />


<hr />

<a name="COSO+Principles"></a>

### 17 COSO Principles

Items marked with "FOCUS" <a target="_blank" href="https://linfordco.com/blog/trust-services-critieria-principles-soc-2/">added in 2022</a> are relevant to all SOC2 engagements.

### Control Environment (CC1)

CC1.1 \1 The entity demonstrates a commitment to <strong>integrity and ethical values</strong>.

CC1.2 \2 The board of directors demonstrates <strong>independence from management</strong> and
exercises <strong>oversight</strong> of the development and performance of internal control.

CC1.3 \3 FOCUS: Management establishes, with board oversight, structures, reporting lines, and appropriate authorities and responsibilities in the pursuit of
objectives.

CC1.4 \4 The organization demonstrates a commitment to attract, develop, and retain competent individuals in alignment with objectives.

CC1.5 \5 FOCUS: The organization holds individuals accountable for their internal control responsibilities in the pursuit of objectives.

### Communication and Information (CC2)

CC2.1 \13 FOCUS: The entity obtains or generates and uses relevant, <strong>quality information</strong> to support the functioning of internal control.

CC2.2 \14 FOCUS: The entity internally communicates information, including <strong>objectives and responsibilities</strong> for internal control, necessary to support the functioning of internal control.

CC2.3 \15 FOCUS: The entity communicates with <strong>external parties</strong> regarding matters affecting the functioning of internal control.

### Risk Assessment (CC3)

CC3.1 \6 The entity specifies objectives with sufficient clarity to enable the <strong>identification and assessment</strong> of risks relating to objectives.

CC3.2 \7 FOCUS: The entity identifies risks to the achievement of its objectives across the entity and analyzes risks as a basis for determining how the <strong>risks should be managed</strong>.

CC3.3 \8 The entity considers the <strong>potential for fraud</strong> in assessing risks to the achievement of objectives.

CC3.4 \9 FOCUS: The entity identifies and <strong>assesses changes</strong> that could significantly affect the system of internal control.

### Monitoring Activities (CC4)

CC4.1 \16 The entity selects, develops, and performs ongoing and/or
separate <strong>evaluations</strong> to ascertain whether the components of internal control are present and functioning.

CC4.2 \17 The entity evaluates and communicates internal control <strong>deficiencies</strong> in a timely manner to those parties responsible for taking corrective action, including senior management and the board of directors, as appropriate.

### Control Activities (CC5)

CC5.1 \10 The entity selects and develops control activities that contribute to the <strong>mitigation of risks</strong> to the achievement of objectives to acceptable levels.

CC5.2 \11 The entity selects and develops general <strong>control activities over technology</strong> to support the achievement of objectives.

CC5.3 \12 The entity deploys control activities through <strong>policies</strong> that establish what is expected and <strong>procedures</strong> that put policies into action.

### Logical and Physical Access Security (CC6)

CC6.1 FOCUS: The entity implements logical access security software, infrastructure, and architectures over protected information assets to protect them from security events to meet the entity's objectives

CC6.2 Prior to issuing system credentials and granting system access, the entity registers and authorizes new internal and external users whose access is administered by the entity. For those users whose access is administered by the entity, user system credentials are removed when user access is no longer authorized.

CC6.3 The entity authorizes, modifies, or removes access to data, software, functions, and other protected information assets based on roles, responsibilities, or the system design and changes, giving consideration to the concepts of least privilege and segregation of duties, to meet the entity’s objectives.

CC6.4 FOCUS: The entity restricts physical access to facilities and protected information assets (for example, data center facilities, back-up media storage, and other sensitive locations) to authorized personnel to meet the entity’s objectives.

CC6.5 The entity discontinues logical and physical protections over physical assets only after the ability to read or recover data and software from those assets has been diminished and is no longer required to meet the entity’s objectives.

CC6.6 The entity implements logical access security measures to protect against threats from sources outside its system boundaries.

CC6.7 The entity restricts the transmission, movement, and removal of information to authorized internal and external users and processes, and protects it during transmission, movement, or removal to meet the entity’s objectives

CC6.8 The entity implements controls to prevent or detect and act upon the introduction of unauthorized or malicious
software to meet the entity’s objectives.

### System Operations (CC7)

CC7.1 To meet its objectives, the entity uses detection and monitoring procedures to identify (1) changes to configurations that result in the introduction of new vulnerabilities, and (2) susceptibilities to newly discovered vulnerabilities

CC7.2 The entity monitors system components and the operation of those components for anomalies that are indicative of malicious acts, natural disasters, and errors affecting the entity's ability to meet its objectives; anomalies are analyzed to determine whether they represent security events.

CC7.3 FOCUS: The entity evaluates security events to determine whether they could or have resulted in a failure of the entity to meet its objectives (security incidents) and, if so, takes actions to prevent or address such failures.

CC7.4 FOCUS: The entity responds to identified security incidents by executing a defined incident -response program to
understand, contain, remediate, and communicate security incidents, as appropriate.

CC7.5 The entity identifies, develops, and implements activities to recover from identified security incidents.

### Change Management (CC8)

CC8.1 FOCUS: The entity authorizes, designs, develops or acquires, configures, documents, tests, approves, and implements changes to infrastructure, data, software, and procedures to meet its objectives.

### Risk Mitigation (CC9)

CC9.1 The entity identifies, selects, and develops risk mitigation activities for risks arising from potential business disruptions.

CC9.2 FOCUS: The entity assesses and manages risks associated with (vulnerabilities arising from) vendors and business partners.



<hr />

## Additional Criteria (A1)

<a name="additional-criteria-a1"></a>

<a href="https://us.aicpa.org/content/dam/aicpa/interestareas/frc/assuranceadvisoryservices/downloadabledocuments/trust-services-criteria.pdf" target="_blank" rel="noopener">PDF: 2017 Trust Services Criteria TSP Section 100.05</a> (<a href="https://us.aicpa.org/content/dam/aicpa/interestareas/frc/assuranceadvisoryservices/downloadabledocuments/trust-services-criteria-redlined.pdf" target="_blank" rel="noopener">March 2020 redline version</a>) describes criteria in addition to COSO principles

### FOR OPERATIONS (A1)

A1.1 The entity maintains, monitors, and evaluates current <strong>processing capacity</strong> and use of system components (infrastructure, data, and software) to manage capacity demand and to enable the implementation of additional capacity to help meet its objectives.

A1.2 The entity authorizes, designs, develops or acquires, implements, operates, approves, maintains, and monitors environmental protections, software, data back-up processes, and recovery infrastructure to meet its
objectives.

A1.3 The entity <strong>tests recovery plan procedures</strong> supporting system recovery to meet its objectives.


### FOR CONFIDENTIALITY (C1)

C1.1 The entity identifies and maintains confidential information to meet the entity’s objectives related to confidentiality

C1.2 The entity disposes of confidential information to meet the entity’s objectives related to confidentiality.


### FOR PROCESSING INTEGRITY (PI1)

PI1.1 The entity obtains or generates, uses, and communicates relevant, quality information regarding the objectives
related to processing, including definitions of data processed and product and service specifications, to support the use of products and services.

PI1.2 The entity implements policies and procedures over system inputs, including controls over completeness and
accuracy, to result in products, services, and reporting to meet the entity’s objectives.

PI1.3 The entity implements policies and procedures over system processing to result in products, services, and reporting to meet the entity’s objectives.

PI1.4 The entity implements policies and procedures to make available or deliver output completely, accurately, and
timely in accordance with specifications to meet the entity’s objectives.

PI1.5 The entity implements policies and procedures to store inputs, items in processing, and outputs completely,
accurately, and timely in accordance with system specifications to meet the entity’s objectives.

### FOR PRIVACY (PI)

P1.1 The entity provides <strong>notice</strong> to data subjects about its privacy practices to meet the entity’s objectives related to privacy. The notice is updated and communicated to data subjects in a timely manner for changes to the entity’s privacy practices, including changes in the use of personal information, to meet the entity’s objectives related to privacy.

P2.1 The entity communicates <strong>choices</strong> available regarding the collection, use, retention, disclosure, and disposal of personal information to the data subjects and the consequences, if any, of each choice. Explicit consent for the collection, use, retention, disclosure, and disposal of personal information is obtained from data subjects or other authorized persons, if required. Such consent is obtained only for the intended purpose of the information to meet the entity’s objectives related to privacy. The entity’s basis for determining implicit consent for the collection, use, retention, disclosure, and disposal of personal information is documented.

P3.1 Personal information is collected consistent with the entity’s objectives related to privacy.

P3.2 For information requiring explicit consent, the entity communicates the need for such consent, as well as the
consequences of a failure to provide consent for the request for personal information, and obtains the consent prior
to the collection of the information to meet the entity’s objectives related to privacy

P4.1 The entity limits the use of personal information to the purposes identified in the entity’s objectives related to privacy.

P4.2 The entity retains personal information consistent with the entity’s objectives related to privacy.

P4.3 The entity securely disposes of personal information to meet the entity’s objectives related to privacy.

P5.1 The entity grants identified and authenticated data subjects the ability to access their stored personal information for review and, upon request, provides physical or electronic copies of that information to data subjects to meet the entity’s objectives related to privacy. If access is denied, data subjects are informed of the denial and reason for such denial, as required, to meet the entity’s objectives related to privacy.

P5.2 The entity corrects, amends, or appends personal information based on information provided by data subjects and
communicates such information to third parties, as committed or required, to meet the entity’s objectives related to
privacy. If a request for correction is denied, data subjects are informed of the denial and reason for such denial to meet the entity’s objectives related to privacy.

P6.1 The entity discloses personal information to third parties with the explicit consent of data subjects, and such
consent is obtained prior to disclosure to meet the entity’s objectives related to privacy.

P6.2 The entity creates and retains a complete, accurate, and timely record of authorized disclosures of personal
information to meet the entity’s objectives related to privacy.

P6.3 The entity creates and retains a complete, accurate, and timely record of detected or reported unauthorized
disclosures (including breaches) of personal information to meet the entity’s objectives related to privacy.

P6.4 The entity obtains privacy commitments from vendors and other third parties who have access to personal
information to meet the entity’s objectives related to privacy. The entity assesses those parties’ compliance on a
periodic and as-needed basis and takes corrective action, if necessary.

P6.5 The entity obtains <strong>commitments from vendors</strong> and other third parties with access to personal information to notify the entity in the event of actual or suspected unauthorized disclosures of personal information. Such notifications are reported to appropriate personnel and acted on in accordance with established incident -response procedures to meet the entity’s objectives related to privacy.

P6.6 The entity provides <strong>notification of breaches and incidents</strong> to affected data subjects, regulators, and others to meet the entity’s objectives related to privacy.

P6.7 The entity provides data subjects with an <strong>accounting</strong> of the personal information held and disclosure of the data subjects’ personal information, upon the data subjects’ request, to meet the entity’s objectives related to privacy.

P7.1 The entity collects and maintains accurate, up-to-date, complete, and relevant personal information to meet the
entity’s objectives related to privacy.

P8.1 The entity implements a process for receiving, addressing, resolving, and communicating the <strong>resolution of</strong> inquiries, complaints, and disputes from data subjects and others and periodically monitors compliance to meet the entity’s objectives related to privacy. Corrections and other necessary actions related to identified deficiencies are made or taken in a timely manner.


<hr />

## Controls per TugboatLogic

The "Audit Readiness Module" from Tugboat Logic (https://tugboatlogic.com) translated SOC 2 requirements into a set of controls using a questionnaire, service providers can define their own scope. From questionaire answers, a list of 80-90 prebuilt policies and controls is mapped to the SOC2 framework:

* AA = Access Authentication
* AC = Access Control
* AT = Awareness and Training
* CM = Change Management
* CR = Continuity and Resilience

* DS = Data Security
* HR = Human Resources
* IM = Incident Management
* OM = Organization and Management
* RM = Risk Management

* SO = Security Operations
* VM = Vendor Management
* WS = Workstation Security

* SDLC Security?
* Asset Management?
* Audit and Compliance?
<br /><br />

Specifically:

<a name="ACCESS_CONTROL"></a>

### ACCESS CONTROL

   * ACCESS CONTROL - Access Control Policy defines high-level requirements and guidelines on user account management, access enforcement and monitoring, separation of duties, and remote access.

   * KEY MANAGEMENT AND CRYPTOGRAPHY - The organization utilizes the latest commercially accepted encryption protocols.

   * SERVER SECURITY - The organization manages, configures, and protects organization servers and hosts based on industry best practices.

   * PHYSICAL AND ENVIRONMENTAL SECURITY - The organization protects managed systems and personnel from unauthorized access and from natural and human caused damage or destruction.

   * SERVERLESS SECURITY - The organization has established guidelines for the secure deployment and maintenance of the serverless architecture.

   * IT ASSET MANAGEMENT - A formal change management policy governs changes to the applications and supporting infrastructure. That aids in minimizing the impact that changes have on organization processes and systems.

<a name="SECURITY_OPERATIONS"></a>

### SECURITY OPERATIONS

   How the organization handle system vulnerabilities, detect system operational issues and respond to security incidents:

   * VULNERABILITY MANAGEMENT - The organization conducts scheduled application/network scanning and penetration tests.

   * INCIDENT MANAGEMENT - It is critical to the organization that security incidents that threaten the security or confidentiality of information assets are properly identified, contained, investigated, and remediated.

   * CHANGE MANAGEMENT - how the organizations conduct scheduled application/network scanning and penetration tests.

   * MONITORING ACTIVITIES – how the organizations develop, monitors, and ensure that internal security controls are active and functioning.


<a name="RISK_MANAGEMENT"></a>

### RISK MANAGEMENT

   * RISK ASSESSMENT - The organization institutes regular risk assessments and uses industry best practices in remediation.

   * VENDOR MANAGEMENT - The organization actively manages risks around 3rd party vendors and their access to your company’s data.

   * INFORMATION SECURITY - The business utilizes (ex. “Tugboat Logic Platform”) to manage InfoSec policies, provide security awareness training, implement and document security controls, and track compliance with customers, third party vendors, independent auditors and regulatory agencies.

<a name="BUSINESS_CONTINUITY"></a>

### BUSINESS CONTINUITY

   * BUSINESS CONTINUITY AND DISASTER RECOVERY - Your company has a Business Continuity and Disaster Recovery Policy that ensures that the organization can quickly recover from natural and man-made disasters while continuing to support customers and other stakeholders.

<a name="ORGANIZATION_&_MANAGEMENT"></a>

### ORGANIZATION & MANAGEMENT

   The "Control Environment" is how the organization sets security roles, manages oversight and deals with security as related to employees, hiring, and overall management.

   * ACCEPTABLE USE - the "Acceptable Use Policy" is a document stipulating constraints and practices that a user must agree to for access to a corporate network and other organizational assets.

   * CORPORATE ETHICS - The organization values ethics, trust, and integrity throughout its business practices. How are they promoted and enforced?

   * PERSONNEL SECURITY - Organization members understand their roles and responsibilities around security and privacy.

<a name="ASSET_MANAGEMENT"></a>

### ASSET MANAGEMENT

   * IT ASSET MANAGEMENT - A formal change management policy governs changes to the applications and supporting infrastructure.

   * TECHNOLOGY EQUIPMENT HANDLING AND DISPOSAL - The organization appropriately disposes of equipment that contains sensitive information.

   * BRING YOUR OWN DEVICE (BYOD) - Protect the security and integrity of organization’s data and technology infrastructure when employees are using their personal device(s) to connect to organization’s assets.

<a name="INFORMATION_&_COMMUNICATIONS"></a>

### INFORMATION & COMMUNICATIONS

   * INFORMATION CLASSIFICATION - Information classification assigns a value to information in order to organize it according to its risk to loss or harm from disclosure.

   * WORKSTATION SECURITY - The organization protects laptops and workstations and their contents using industry best practices.

   * NETWORK SECURITY - Your business provides a protected, interconnected computing environment through the use of securely configured network devices to meet organizational missions, goals, and initiatives.

   * DATA INTEGRITY - Your company ensures that system processing is complete, valid, accurate, timely, and authorized to meet the entity’s objectives.regulatory agencies.

<a name="AUDIT_&_COMPLIANCE"></a>

### AUDIT & COMPLIANCE

   * CUSTOMER SUPPORT AND SLA - Customers are important to your business. You provide Customer Support and a Service Level Agreement (SLA) to support customers.

   * INTERNAL AUDIT - The organization conducts Internal Audits on its existing policies and controls to ensure the best level of service to  customers.

   * CUSTOMER SUPPORT AND SLA - Customers are important to your business. You provide Customer Support and a Service Level Agreement (SLA) to support customers.

<a name="DATA_SECURITY"></a>

### DATA SECURITY

   * DATA RETENTION AND DISPOSAL - This policy is about the organization’s approach for data retention and secure disposal.

   * MOBILE DEVICE MANAGEMENT - This policy defines procedures and restrictions for connecting mobile devices to organization’s corporate network.

<a name="SDLC_SECURITY"></a>

### SDLC SECURITY

   * SOFTWARE DEVELOPMENT - The organization designs and builds software with security and privacy as design principles.

   * CHANGE MANAGEMENT – The organization defines how organizations handle development, testing, and deployment of systems and applications.

   * PHYSICAL AND ENVIRONMENTAL SECURITY - The organization protects managed systems and personnel from unauthorized access and from natural and human caused damage or destruction.

## CONTINUOUS COMPLIANCE

<a target="_blank" href="https://pages.nist.gov/OSCAL/">NIST Open Security Controls Assessment Language (OSCAL)</a> at <a target="_blank" href=" https://github.com/usnistgov/OSCAL">https://github.com/usnistgov/OSCAL</a>
has <a target="_blank" href="https://github.com/usnistgov/OSCAL/tree/master/json/schema/">JSON Schema files</a>

https://www.slideshare.net/MichaelaIorgaPhD/open-security-controls-assessment-language-oscal-1st-workshop-nov-57-2019
https://pages.nist.gov/OSCAL/contribute/devlunch
Bi-weekly conf.

ArmorCode provides a tool which integrates DevSecOps pipelines with
<a target="_blank" href="https://www.armorcode.com/platform/continuous-compliance">their tracking</a>

<hr />

## Types of SOC2

The "2" in "SOC2" and "Type II" refers to the specific type of report issued. A SOC 2 Type II report of "attestation" is issued by a CPA for the service organization to provide to prospective customers. (By contrast, <a target="_blank" href="https://www.iso.org/isoiec-27001-information-security.html">ISO 27001</a> auditors issue a "certificate of compliance".)

<a target="_blank" href="https://us.aicpa.org/interestareas/frc/assuranceadvisoryservices/aicpasoc1report.html"><strong>SOC1</strong></a> is on audits of a service organization’s <strong>Internal Control over Financial Reporting (ICFR)</strong>. It is applicable only to service organizations which perform <strong>outsourced services</strong> that affect the financial statements of another Company (the "User Organization"), such as
Payroll Processing, Loan Servicing, Data Center/Co-Location/Network Monitoring Services, Software as a Service (SaaS), Medical Claims Processors, etc.

REMEMBER: "POLICIES" refer to rules defined to protect assets.
"CONTROLS" are rules implemented (such as use MFA, etc.).

<a target="_blank" href="https://us.aicpa.org/content/dam/aicpa/interestareas/frc/assuranceadvisoryservices/downloadabledocuments/56175896-2011-04977-soc-2-commonly-asked-questions-final.pdf">AICPA FAQ</a>

SOC2 Type I reports address the suitability of policies and procedures in operation at a <strong>specific moment in time</strong>.

"SOC2 Type II" reports address both the suitability and <strong>effectiveness</strong> of policies and procedures over a <strong>period of time</strong> -- no less than six months (usually a year). Since this report takes into account historical data generated, it is a more accurate and comprehensive audit. However, many companies are not able to adequately generate data as the basis for an audit until they have adequate controls in place.

<strong>Type 3</strong> reports are a simplified version of the SOC 2 report. It is designed to <strong>publicly</strong> attest that the service provider has completed a SOC 2 assessment, while also limiting the information to what is relevant to public parties. SOC 3 report were created as a result of the growing demand for a public facing report.

<a target="_blank" href="https://user-images.githubusercontent.com/300046/148081964-22b59a02-0493-4274-8bf9-2172f42700d4.png">
<img width="936" alt="soc2-rpt-sections-vanta-1872x694" src="https://user-images.githubusercontent.com/300046/148081964-22b59a02-0493-4274-8bf9-2172f42700d4.png"></a><br /><a href="#[6]">[6]</a>

These defined controls are a series of standards designed to help measure how well a given service organization conducts and regulates its information. They are designed to provide clients with confidence that an organization can be trusted to keep their data secure.


## SSAE 18

The AICPA "Statement on Standards for Attestation Engagements" (SSAE) define standards auditors use to conduct audits. Verion 16 of SSAE replaced SAS ("Statement on Auditing Standards") 70 on 2011. <a target="_blank" href="https://en.wikipedia.org/wiki/SSAE_No._18">SSAE version 18</a> <a target="_blank" href="https://us.aicpa.org/content/dam/aicpa/research/standards/auditattest/downloadabledocuments/ssae-no-18.pdf">PDF</a> was created May 2017. Its requirements defines some acronymns:

<a name="IPE"></a>

* <strong>IPE</strong> (Information Produced by the Entity): Companies must provide evidence of the accuracy of any information provided. Examples include SQL queries or Tableau report parameters.

* Vendor management and monitoring of <strong>sub-service organizations</strong>: Service providers or data centers must include controls for sub-service organizations. The goal is to ensure that anybody with access to the data is adhering to control standards.

* <strong>CUECs</strong> or Complementary User Entity Controls: limited to controls that are needed to achieve the stated control objectives

* Internal audit and regulatory examinations: service organizations read the latest reports relating to internal and regulatory examinations. For example, SOC Cybersecurity examination and updated trust services principles went into effect on December 15th, 2018.

The equivalent for SSAE 18 internationally is the ISAE 3402 (International Standards for Audit Engagements) published by the International Auditing and Standards Board (IASB).

<hr />

## Management Insights

Management of the process requires these areas of insight:

* Audit report countdown: When can salespeople provide customers with a current SOC2 Type II report?

* Audit readiness: Are policies, controls, and procedures defined and reviewed in each area?

* Compliance status: Are proofs of compliance being generated for controls in each area?

* Gap analysis: In what areas do compliance gaps exist?

* Trend: How has our security posture improved over time?

* Future gap analysis: How much effort is required to comply with additional frameworks?

* Benchmarking: How are we doing relative to competitors?

<hr />

## Additional frameworks

Many controls covered by SOC 2 are also of concern in legal standards as well as ISO, CCPA, GDPR, and customer-specific requirements.

Since 2017, a <strong>SOC 2+</strong> report allow a service organization to address additional criteria from other compliance standards such as HITECH, HIPAA compliance, Cloud Security Alliance (CSA), NIST 800-53, or COBIT 5.

### ISO 27001

<a target="_blank" href="https://www.youtube.com/watch?v=Pqdr6WTgZx8">VIDEO</a>:
Customers outside the US will ask for a "Certificate of Compliance" from <a target="_blank" href="https://www.iso.org/isoiec-27001-information-security.html">ISO 2700x</a> <a target="_blank" href="https://www.itgovernanceusa.com/blog/list-of-us-accredited-certification-bodies-for-iso-27001">independent auditors</a> (not CPAs).

ISO 27001 focuses on the development and maintenance of an information security management system (ISMS). An ISMS provides a systematic approach for managing an organisation’s information security.

<a target="_blank" href="https://www.itgovernance.eu/blog/en/iso-27001-vs-soc-2-certification-whats-the-difference">BLOG</a>:
"It should take about two or three months to implement SOC 2 and three to six months to implement ISO 27001."

PROTIP: <a target="_blank" href="https://learngrc.aronlange.com?referral_code=3TFJD2">ISO 27001 Project video tutorial</a> with <a target="_blank" href="https://www.aronlange.com/project-plan">Excel sheet</a> by Deliotte Germany Lead Auditor <a target="_blank" href="https://www.linkedin.com/in/aronlange/">Aron Lange</a>. The Gantt chart is based on 100 tasks on a dynamic timeline:

1. Management Support
2. Initiate the ISMS
3. Determine Scope
4. Information Security Policy
5. Competence Assurance
6. Inventory of Assets
7. Risk Management Methodology
8. Risk assessment
9. Risk Treatment Plan
10. Performance Evaluation
11. Improvement
12. Certification audit
<br /><br />

<a target="_blank" href="https://www.udemy.com/course/information-security-for-beginners/?couponCode=497EF13CFCAD2C44C27C">VIDEO: ISO 27001 Lead Implementer course on Udemy</a>, with mind maps.

His <a target="_blank" href="https://www.youtube.com/watch?v=Y8hGa2mpqd8">
6-minute VIDEO "Exploring ISO 27000: A Comprehensive Overview of Information Security Standards"</a> is a good intro to ISO 27000.



<hr />

Public companies required under Section 404 of the Sarbanes-Oxley Act (SOX) to file annual reports on the design and operating effectiveness of their internal controls.


<hr />

## References

<a name="[1]">[1]</a> <a target="_blank" href="https://us.aicpa.org/interestareas/frc/assuranceadvisoryservices/aicpacybersecurityinitiative">https://us.aicpa.org/interestareas/frc/assuranceadvisoryservices/aicpacybersecurityinitiative</a>

<a name="[2]">[2]</a> <a target="_blank" href="https://www.youtube.com/watch?v=lZ3YWsmTvT4&t=13m34s">Timeline from VIDEO: "SOC 2: Everything You Need to Get a SOC 2 Report"</a> by <a target="_blank" href="https://risk3sixty.com/category/soc-reporting">risk3sixty</a>

<a name="[3]">[3]</a> <a target="_blank" href="https://www.dashsdk.com/resource/soc-2-trust-services-criteria-tsc/">TSC</a> by DashSDK.

<a name="[4]">[4]</a> <a target="_blank" href="https://www.youtube.com/watch?v=KlE2grb4qo0">VIDEO: CertMike Explains SOC Audits</a> by Mike Chapple (who created the preminent tutorials for <a target="_blank" href="https://wilsonmar.github.io/security-certs">security certifications</a>)

<a name="[5]">[5]</a> <a target="_blank" href="https://www.ssae-16.com/ssae-16/ssae-16-preparation-checklist/">https://www.ssae-16.com/ssae-16/ssae-16-preparation-checklist</a>

<a name="[6]">[6]</a> <a target="_blank" href="https://www.youtube.com/watch?v=9tLXJwkCr6g&t=8m19s" title="Sep 24, 2020">VIDEO: SOC2 Compliance for Startups</a> by Venta CEO Christina Cacioppo

<a target="_blank" href="https://learning.oreilly.com/library/view/jump-start-your-soc/9781484269046/">"Jump-start Your SOC Analyst Career: A Roadmap to Cybersecurity Success" (Apress March 2021)</a> by Tyler Wall, Jarrett Rodrick

https://www.strikegraph.com/strikegraph_blog/how-auditors-test-and-what-to-expect

<a target="_blank" href="https://s3.amazonaws.com/practicalassurance.com/Webinars/January+2022+-+SOC+2+Checklist.pdf">Great pdf intro to SOC2</a> from
PracticalAssurance.com

heylaika.com offers their "Unified SOC 2 Platform".

https://www.youtube.com/watch?v=QV43QDKSRD8
"How to Add SOC 2 to Your ISO 27001" by Schellman notes ISO 27001:
   * ISMS scope
   * ISMS Leadership
   * Risk Assessment
   * Internal Audit
   * Management Review
   * Corrective Action Processes
   <br /><br />

(AAC-02.1) Cloud vendors post their reports in the <a target="_blank" href="https://cloudsecurityalliance.org/star/registry/">Cloud Security Alliance Registry</a> and on their website to signed-on users at:
   * https://console.aws.amazon.com/artifact/reports
   * https://servicetrust.microsoft.com/
   * https://cloud.google.com/security/compliance/soc-2
   * etc.
   <br /><br />

https://www.securitypalhq.com/

https://pages.nist.gov/OSCAL/resources/sources/concepts/terminology/

<a target="_blank" href="https://github.com/opencontrol/discuss/issues/78">No longer active</a> is the <a target="_blank" href="https://open-control.org/">OpenControl.org</a> tool to customize <a target="_blank" href="https://open-control.org/framework.html">security control standard</a> and a <a target="_blank" href="https://open-control.org/schema.html">machine-readable format</a> to enable automation and tooling. for FEDRAMP ATO.

## Training

<a target="_blank" href="https://app.letsdefend.io/homepage">LetsDefend.io</a> offers online text-based
<strong>SOC Analyst Learning</strong> (for $199/yr). Topics:

* SOC Fundamentals
* Cyber Kill Chain
* MITRE ATT&CK Framework
* Phishing Email Analysis
* Detecting Web Attacks
* Detecting Web Attacks - 2
* Investigate Web Attack
* Malware Analysis Fundamentals
* SA - Malware - Event ID: 77
* Dynamic Malware Analysis
* MSHTML
* Malicious Document Analysis
* Security Solutions
* Network Log Analysis
* SIEM 101
* Incident Management 101
* Splunk
* Cyber Threat Intelligence
* VirusTotal for SOC Analysts
* SA - Malware - Event ID: 76
* IT Security Basis for Corporates
* Detecting Brute Force Attacks
* Building a Malware Analysis Lab
* <a target="_blank" href="https://app.letsdefend.io/training/lessons/building-a-soc-lab-at-home">Building a SOC Lab at Home</a> on an AMD64 Windows PC running in a VirtualBox with
   * Active Directory
   * MediaCreationTool_22H2.exe Windows Workstation
   * <a target="_blank" href="https://www.pfsense.org/download/">pfSense</a>
   * <a target="_blank" href="https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon">Sysmon</a> for log analysis
   * <a target="_blank" href="https://www.crowdsec.net">CrowdSec IP Blocklist</a> and Windows Firewall Bouncer.
<br /><br />


For hands-On labs, pay their $199/year "VIP" pass for

* <a target="_blank" href="https://app.letsdefend.io/path/soc-analyst-learning-path">SOC Analyst Path</a>
<br /><br />

Pay their <a target="_blank" href="https://app.letsdefend.io/vip">$359/year VIP offering</a>
to also add:

* <a target="_blank" href="https://app.letsdefend.io/path/malware-analysis-skill-path">Malware Analysis path</a>
* <a target="_blank" href="https://app.letsdefend.io/path/incident-responder-path">Incident Responder career path</a>
* <a target="_blank" href="https://app.letsdefend.io/path/detection-engineering-path">Detection Engineering career path</a>
<br /><br />

https://github.com/gjyoung1974/soc2-policy-templates
ACME Anvil Corporation Compliance Program
This repository consolidates all documents related to the ACME Anvil Corporation Compliance Program.
https://pandoc.org/demos.html


<hr />

## More about Security

This is one of a series about cyber security:

{% include security_links.html %}
