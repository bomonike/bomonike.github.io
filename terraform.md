---
layout: post
date: "2024-02-12"
lastchange: "v012 + from wilsonmar :terraform.md"
file: "terraform"
title: "Terraform"
excerpt: "Immutable declarative versioned Infrastructure as Code (IaC) and Policy as Code provisioning into AWS, Azure, GCP, and other clouds using Terragoat, Bridgecrew, and Atlantis team versioning GitOps"
tags: [DevOps, ecosystem]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2017-09-23"
---
<a target="_blank" href="https://bomonike.github.io/terraform"><img align="right" width="100" height="100" alt="terraform.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/terraform.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

This tutorial is a step-by-step <strong>hands-on deep yet succinct</strong> introduction to learn to use HashiCorp's Terraform to build, change, and version resources running in <a href="#MultiCloud">multiple cloud platforms</a>. The sequence of topics has been carefully arranged for quicker learning, based on <a href="Tutorials">various tutorials on this topic</a>.

{% include whatever.html %}

## Why Terraform?

<a target="_blank" href="https://www.terraform.io/intro/index.html">terraform.io</a> (HashiCorp's marketing home page) says the product is a "tool for building, changing, and versioning infrastructure safely and efficiently".

"Terraform makes infrastructure provisioning: <a href="#Repeatable">Repeatable</a>. <a href="#Versioned">Versioned</a>. Documented. Automated. Testable. Shareable."

<a target="_blank" href="https://www.youtube.com/watch?v=HmxkYNv1ksg" title="2020 by Sai Vennom when he was at IBM">
<img width="1680" alt="terraform-ibm-sai-vennam-3360x2100" src="https://user-images.githubusercontent.com/300046/161367565-7e7871ee-176f-4964-bd12-1b6f05534a6d.png"></a>

<a name="Repeatable"></a>

Repeatable from versioning: Terraform provides a <strong>single consistent set of commands and workflow</strong> on all clouds. That is "future proofing" infastructure work.

<a name="Versioned"></a>

Use of <strong>version-controlled</strong> configuration files in an elastic cloud means that the infrastructure Terraform creates can be treated as <strong>disposable</strong>. This is a powerful concept. Parallel production-like environments can now be created easily (without ordering hardware) temporarily for experimentation, testing, and redundancy for High Availability.


<hr />

## Topics

In <a target="_blank" href="https://www.linkedin.com/pulse/overview-devops-interview-process-from-application-part-lakhera-5hhzc/?trackingId=gPTmMsnaQ82%2F7f3DLalMow%3D%3D">this diagram</a> by <a target="_blank" href="https://www.linkedin.com/in/prashant-lakhera-696119b/">Prashant Lakhera</a> (Fremont, CA):

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1716242594/terraform_lakhera-1390x600_stm3gq.jpg"><img alt="terraform_lakhera-1390x600.jpeg" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1716242594/terraform_lakhera-1390x600_stm3gq.jpg"></a>

<hr />

<a name="LearningStrategy"></a>

## Secure Learning Tools and Ecosystem

Here is my proposal to ensure that cloud resources are <strong>secure when created</strong>, the first time and every time.

<amp-youtube data-videoid="Pb5Isu3Ed98" layout="responsive" width="480" height="270">
</amp-youtube>
<br /><br />

Although Terraform <a href="#MultiCloud">works on multiple clouds</a>, to simplify the explanation here, we'll focus on <a href="#AWS">AWS</a> for now.

Resources in AWS can be created and managed using several tools: manually using the AWS Management Console <strong>GUI</strong> or manually invoking on a Terminal running <strong>CLI</strong> (Command Line Interface) shell scripts or programs written to issue REST API calls. But many enterpise AWS users avoid using GUI and CLI and instead use an approach that provides <strong>versioning</strong> of <a href="#IaC">Configuration as Code (IaC)</a> in <strong>GitHub</strong> repositories, so you can go from dev to qa to stage to prod more quickly and securely.

Although AWS provides their own <strong>Cloud Formation</strong> language to describe what to provision in AWS, for <a href="#CFN">various reasons</a>, many prefer <strong>Terraform</strong>. Terraform files are commonly run within an automated <strong>CI/CD pipeline</strong> so that it is <a href="#Repeatable">repeatable</a>. Having configurations documented in GitHub enables <a href="#DriftManagement">drift detection</a> which identifies differences between what is defined versus what is actually running.

The <strong>AWS Config</strong> service logs every change in configuration of resources.
The <strong>AWS Security Hub</strong> service looks in logs for vulnerabilities to issue <strong>Findings</strong> based on its own “AWS Foundations” set of <strong>policies</strong>. AWS provides a webpage of <strong>recommendations</strong> for remediation, but only by using its own GUI or CloudFormation code, not Terraform coding.

More importantly, findings from AWS are raised for resource which have already been manifested on the internet, and thus vulnerable to public attack.

In today's hostile internet, we can't risk an incremental approach to achieving the security needed. We really need to achieve full "security maturity" in our Terraform code the first time we deploy it onto the internet.

PROTIP: We prevent vulnerabilities <srong>before</strong> they are created as vulnerable resources by finding <strong>violations</strong> in Infrastructure definition code, using a CI/CD pipeline to run <strong>static scans</strong> referencing <strong>Policies as Code</strong>.

<a href="#PolicyCheckTools">Several vendors have created static scan programs</a>. Checkov and TFSec have an interface to the popular <a href="#VSCode">VSCode</a> text editor on <strong>laptops</strong>, which "shifts left" the work of security earlier in the development lifecycle.

The crucial skill needed today is expertise at <strong>manually editing</strong> Terraform files which are "bulletproof".

One way to climb this steep learning curve is learning to learn <a href="#KnownGoodProjects">known-good</a> and fix <strong>known-bad</strong> sample Terraform code which are accompanied with policies used to detect violations. It's even better to have each policy be associated with <strong>recommendations</strong> for remediating the Terraform code, along with <a href="#Tutorials">tutorials</a> about <strong>configuration options</strong>.

Because cloud services change all the time, a <strong>policy creator</strong> helps to keep up with all the polices needed.
In the Terraform Cloud, policies are defined in the Sentinel language. Other vendors define policies in the Rego language processed by the OPA engine.

When a community of Terraform developers have policies which <strong>attest</strong> that Terraform code is <strong>known good</strong>, their <strong>templates</strong> can be <strong>Shareable</strong> and thus reduce both risk and much effort by others.

PROTIP: This approach is essentially TDD (Test Driven Development) applied to infrastructure code.

Atlantis provides a mechanism like GitHub Dependabot, which automatically creates Pull Requests containing remediations.
Terraform Cloud provides a GUI to display them.

So here it is, our ecosystem your you to create secure Terraform, the first time and every time.

<a name="Recap"></a>

### Recap

<a target="_blank" href="https://user-images.githubusercontent.com/300046/156488722-0dd6e2ad-c64a-494f-80d5-32b91cb3003b.png"><img width="1769" height="781" alt="terraform-strategy-22-03-02-1769x781" src="https://user-images.githubusercontent.com/300046/156488722-0dd6e2ad-c64a-494f-80d5-32b91cb3003b.png"></a>


<hr />

<a name="CoreWorkflow"></a>

## Terraform Usage Workflow Stages, Automated

PROTIP: Here is how to get started, from scratch, the quickest (and safest) way with the most automation:

1. <a href="#BaseTooling">Install base tools/utilities locally on your mac</a>.
2. <a href="#TaskTemplate">Use the GitHub Template to create your repo and use Task to install tools/utilities locally</a>.
3. <a href="#KnownGoodProjects">Obtain sample Terraform code</a> (from GitHub or Terraform.io module registry).
4. Obtain cloud credentials, <a href="#cidr-subnet-function">network CIDR subnet</a> definitions, and other preferences for your region(s) in AWS, Azure, GCP, etc., securely saved to and retrieved from a secure secrets vault.

5. <a href="#Folders">Define your Terraform project's folders and files</a>.
6. Code resources in HCL-formatted <tt>.tf</tt> files.

7. Use GitHub Actions to automatically kick off a CI/CD run instead of typing <a href="#AdhocCLIcommands">ad-hoc CLI commands</a> to <a href="#Testing">test Terraform</a>.

8. If defined, provisioners for <a href="#remote-exec-on-target-machines">remote-exec</a> and <a href="#local-exec-provisioner-ansible">local-exec (such as Ansible)</a> are run on servers to configure their processes.
9. Optionally, <a href="#dependency-graph-for-visualization">Generate a Dependency Graph for visualization</a>.
10. Identify security issues running in the cloud (using AWS Config, etc.).
11. Perform tuning using <a href="#densify-finops">Densify</a> for Finops, etc.
<br /><br />

<hr />

Among <a href="#CoreWorkflow">Terraform usage workflow stages</a>:

<a name="BaseTooling"></a>

## 1) Install base tools/utilities

1. In a Terminal, if you haven't already, install Homebrew (see https://brew.sh).
1. Use Homebrew to install base tools/utilities:

   <pre><strong>brew install jq, tree, git
   brew install go-task/tap/go-task  # https://taskfile.dev/
   </strong></pre>

   <pre><strong>brew install --cask visual-studio-code</strong></pre>

1. If you prefer using Python, there is a Python module to provide a wrapper of terraform command line tool at <a target="_blank" href="https://github.com/beelit94/python-terraform">https://github.com/beelit94/python-terraform</a>

   <a name="KeyboardAliases"></a>

   ### CLI Keyboard aliases

2. To save time typing <a href="#TerraformCommands">Ad hoc Terraform CLI commands</a>, define keyboard aliases in a shell file such as my <a target="_blank" href="https://github.com/wilsonmar/mac-setup/blob/master/aliases.zsh">.aliases.zsh</a> :

   <pre>alias tf="terraform $1"  # provide a parameter
alias tfa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tffd="terraform fmt -diff"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfr="terraform refresh"
alias tfs="terraform show"
alias tfsl="terraform state list"
alias tfsp="terraform state pull"
alias tfv="terraform validate"
   </pre>


   ### Shell files to call

1. PROTIP: To save yourself typing (and typos), define a shell file to invoke each different pipeline:

   <pre><strong>chmod +x abc-dev-fe.sh
abc-dev-fe.sh
   </strong></pre>

   <pre><strong>chmod +x abc-stage-fe.sh
abc-stage-fe.sh
   </strong></pre>


   ### tfvars & override precedence

   Terraform provides different mechanisms for obtaining dynamic values.

   When troubleshooting, REMEMBER: the order of precedence<a target="_blank" href="https://kodekloud.com/topic/using-variables-in-terraform/">*</a>

1. Environment variables defined in shell files are <strong>overridden by all other ways</strong> of specifying data:

   <pre><strong>export TFVAR_filename="/.../abc-stage.txt"</strong></pre>

   Alternately, specify a value for the variable "env" (abbreviation for environment) after prefix <tt>TF_VAR_</tt>:

   <pre><strong>TF_VAR_env=staging</strong></pre>

   CAUTION: It's best to avoid using enviornment variables to store secrets because other programs can read snoop in memory.
   When using environment variables to set sensitive values, those values remain in your environment and command-line history.

2. Within <tt>terraform.tfvars</tt>

3. Within <tt>terraform.tfvars.json</tt>

4. Within <tt>*.auto.tfvars</tt> (in alphabetical order)

   <pre>filename = "/root/something.txt"</pre>

5. Command-line flags -var or -var-file <strong>overrides all</strong> other techniques of providing values:

   <pre><strong>terraform apply -var "filename=/.../xxx-staging.txt"</strong></pre>

   Values for variables can be specified at run-time using variables names starting with "TF_VAR_", such as:

   But unlike other systems, environment variables have less precedence than -var-file and -var definitions, followed by automatic variable files.


<hr />

Among <a href="#CoreWorkflow">Terraform usage workflow stages</a>:

<a name="TaskTemplate"></a>

## 2) Task Template to Install Utilities Locally

PROTIP: Several utilities are needed to ensure the correctness and security of each type of file used.
Using the latest version may not result in all of them working well together.
So the multi-talented <a target="_blank" href="https://www.linkedin.com/in/kalenarndt/">Kalen Arndt</a> created a GitHub template that automatically installs versions of utilities your Mac needs which he has validated. His template makes use of <strong>Task</strong> (an improvement over Linux Make, but written in Go) and <strong>adsf</strong>.

1. In a browser go to:

   <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template">https://github.com/kalenarndt/terraform-repo-template</a>

2. Click "Uses this template" and "Create a new repository".
3. Click "Select an owner" and one of your accounts (which I call <em>your_acct</em> below).
4. Type a Repository name (which I call <em>your_repo_name</em> below)
5. Click the green "Create repository from template".

   In a Terminal app:

8. Construct a command to download the repo you created above:

   <pre><strong>clone git clone git@github.com:<em>your_acct</em>/<em>your_repo_name</em>.git
   cd <em>your_repo_name</em>
   </strong></pre>

   PROTIP: Pick a name with the most important keywords first.

9. <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/.tool-versions">File <strong>.tool-versions</strong></a> specifies current versions of each tool/utility installed.

   <a name="tool-versions"></a>

   * <a target="_blank" href="https://github.com/hashicorp/terraform/releases">terraform</a> [See <a target="_blank" href="https://wilsonmar.github.io/terraform/">my tutorial on Terraform</a>]

   * <a target="_blank" href="https://github.com/terraform-docs/terraform-docs/releases">terraform-docs</a> - Generate documentation from Terraform modules in various output formats

   * <a target="_blank" href="https://github.com/minamijoyo/tfupdate/releases">tfupdate</a> - Update version constraints in your Terraform configurations

   * <a target="_blank" href="https://github.com/bridgecrewio/checkov/releases">checkov</a> - Prevent cloud misconfigurations and find vulnerabilities during build-time in infrastructure as code, container images and open source packages with Checkov by <a target="_blank" href="https://bridgecrew.io/platform/">Bridgecrew</a> (owned by Prisma Cloud).

   * <a target="_blank" href="https://github.com/aquasecurity/tfsec/releases">tfsec</a> - Security scanner for your Terraform code. TODO: Use other scanners as well?

   * <a target="_blank" href="https://github.com/pre-commit/pre-commit/releases">pre-commit</a> - A framework for managing and maintaining multi-language git pre-commit hooks (that automates actions).

   * <a target="_blank" href="https://www.python.org/downloads/">python</a> - The Python programming language [See <a target="_blank" href="https://wilsonmar.github.io/python/">my tutorial on Python</a>]

   * <a target="_blank" href="https://github.com/mvdan/sh/releases">shfmt</a> -  A shell parser, formatter, and interpreter with bash support; includes shfmt

   * <a target="_blank" href="https://github.com/koalaman/shellcheck/releases">shellcheck</a> - ShellCheck, a static analysis tool for shell scripts

   * <a target="_blank" href="https://github.com/hashicorp/vault/releases">vault</a> - A tool for secrets management, encryption as a service, and privileged access management

   * TODO: Install awscli, kubectl, etc. for <a href="#EKSBFT">Blueprints (below)</a>

10. But rather than occassionally checking manually, <strong>Kalen updates</strong> each version based on <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/issues/10">GitHub issue such as this</a> created automatically by the <a target="_blank" href="https://docs.renovatebot.com/key-concepts/dashboard/">Renovate dependency checker</a>. The "renovate" utility automates update of 3rd-party dependencies (Multi-platform and multi-language) via pull requests. It is configured by <a target="_blank" href="https://docs.renovatebot.com/presets-default/#dependencydashboard">preset "extends"</a> (like ESLint).

   References:
   * https://docs.renovatebot.com/
   * https://www.mend.io/free-developer-tools/renovate/
   * https://www.augmentedmind.de/2021/07/25/renovate-bot-cheat-sheet/
   * https://blog.logrocket.com/renovate-dependency-updates-on-steroids/
   <br /><br />

11. FYI: Whether settings define whether pre-commit and asdf are enabled is specified in the <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/.github/renovate.json">renovate.json file</a> within folder <tt>.github</tt>.


12. Install the tools/utilities on your laptop as defined in the <a href="#tool-versions">.tools-versions file described above</a>:

    <pre><strong>task init</strong></pre>

    This command runs the <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/Taskfile.yaml">Taskfile.yaml</a>.

    Notice that to add a utility, both the <tt>Taskfile.yaml</tt> and <tt>.tool-versions</tt> files need to be edited.

    Note that Task invokes <a target="_blank" href="https://asdf-vm.com/">ASDF</a>, which provides a single CLI tool and command interface to manage the install of <strong>multiple versions of each project</strong> runtime. [<a target="_blank" href="https://asdf-vm.com/guide/introduction.html">Intro doc</a>]

    asdf is used instead of switching among different versions of Terraform using <tt>tfenv</tt> or the little-known <a target="_blank" href="https://blog.gruntwork.io/installing-multiple-versions-of-terraform-with-homebrew-899f6d124ff9">Homebrew pin and switch commands pointing to different git commits</a>.

13. Get to know the <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/.vscode/extensions.json">.vscode/extensions.json</a> file listing extensions Kalen likes to be installed in Visual Studio Code:

    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=pjmiravalle.terraform-advanced-syntax-highlighting">pjmiravalle.terraform-advanced-syntax-highlighting</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig">editorconfig.editorconfig</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow">oderwat.indent-rainbow</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one">yzhang.markdown-all-in-one</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint">davidanson.vscode-markdownlint</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=mohsen1.prettify-json">mohsen1.prettify-json</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=run-at-scale.terraform-doc-snippets">run-at-scale.terraform-doc-snippets</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree">gruntfuggly.todo-tree</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml">redhat.vscode-yaml</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons">vscode-icons-team.vscode-icons</a>
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced">shd101wyy.markdown-preview-enhanced</a>
    <br /><br />

14. FYI: The <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/.editorconfig">.editorconfig</a> file defines (for each type of file) the indents and other specifications Visual Studio Code should use to enforce consistent formatting.

15. View <strong>pre-commit</strong> actions defined in <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/.pre-commit-config.yaml">.pre-commit-config.yaml</a> to verify the version numbers:

    * https://github.com/pre-commit/pre-commit-hooks/releases/

    * https://github.com/antonbabenko/pre-commit-terraform/releases/

    * https://github.com/syntaqx/git-hooks/releases/

16. QUESTION: Within the <tt>.github/workflows</tt> folder is the <a target="_blank" href="https://github.com/kalenarndt/terraform-repo-template/blob/main/.github/workflows/push-tf-registry.yml">push-tf-registry.yml file</a> which defines GitHub Actions to "Release to terraform public registry" specific SHA's.

   <tt>renovate chore(deps): pin dependencies</tt>




<hr />

Among <a href="#CoreWorkflow">Terraform usage workflow stages</a>:

## 4) Obtain cloud credentials and network preferences

Running my <a target="_blank" href="https://github.com/wilsonmar/mac-setup/blob/master/aliases.zsh">script to defined keyboard aliases</a> enables you to issue on Terminal:

   <pre><strong>awscreds</strong></pre>

That would invoke your favorite editor to edit <tt>~/.aws/credentials</tt>.

Alternately, you can

   <pre><strong>aws configure</strong></pre>

to specify:

   <pre>AWS Access Key ID [****************MHQJ]:
AWS Secret Access Key [****************CXH7]:
Default region name [us-east-1]:
Default output format [json]:
   </pre>

<hr />

Among <a href="#CoreWorkflow">Terraform usage workflow stages</a>:

<a name="SampleTF"></a>
<a name="KnownGoodProjects"></a>

## 5) Get sample Terraform code

PROTIP: It's too dangerous to start from scratch because misconfigurations can cost large cloud bills and leak valuable data. So we need to help each other on a collaborative mutual "known-secure" platform.

PROTIP: Begin with your cloud vendor selection. Going directly to a Kubernetes cloud service is the least time-consuming approach. But that costs more money.

<table border="1" cellpadding="4" cellspacing="0">
<tr><th> Cloud
   </th><th> VMs
   </th><th> Container
   </th><th> <a href="#Kubernetes">K8s</a>
   </th></tr>
<tr valign="top" align="center"><td align="left"> <a href="#AWS" title="Amazon Web Services">AWS</a>:
   </td><td> <a href="#EC2" title="Elastic Compute Cloud">EC2</a>
   </td><td> <a href="#ECS" title="Elastic Container Service">ECS</a>
   </td><td> <a href="#EKS" title="Elastic Kubernetes Service first GA June 2018">EKS</a>
   </td></tr>
<tr valign="top" align="center"><td align="left">  <a href="#Azure" title="Azure (by Microsoft)">Azure</a>:
   </td><td> <a href="#AVM" title="Azure Virtual Machines">AVM</a>
   </td><td> <a href="#ACS" title="Azure Container Service">ACS</a>
   </td><td> <a href="#AKS" title="Azure Kubernetes Service first GA June 2018">AKS</a>
   </td></tr>
<tr valign="top" align="center"><td align="left"> <a href="#GCP" title="Google Cloud Platform">GCP</a>:
   </td><td> <a href="#GCE" title="Google Cloud Engine">GCE</a>
   </td><td> <a href="#GCS" title="Google Container Service">GCS</a>
   </td><td> <a href="#GKE" title="Google Kubernetes Engine since 2015">GKE</a>
   </td></tr>
</table>

Comparisons:
   * https://learn.boltops.com/curriculums/aws-and-terraform/courses/aws-eks-kubernetes/lessons/aws-eks-vs-azure-aks-vs-google-gke
   * https://github.com/boltops-learn (private repos by invitation)
   <br /><br />

Control Plane pricing: AKS is free. GKE is free for one zonal cluster, then $72/month.
<a target="_blank" href="https://calculator.aws/#/addService/EKS">Pricing for EKS alone</a> is $73/month for each cluster in us-west-2 (0.10 USD per hour x 730 hours per month).


Difficulty: click-button GUI makes AKS and GKE the easiest to setup.

There's also NKS (Naver Kuernetes Service).

<a name="Kubernetes"></a>

### Terraform Kubernetes

See <a target="_blank" href="https://wilsonmar.github.io/kubernetes/">my notes on Kubernetes</a>.

PROTIP: Kubernetes has a lot of "knobs". There is a lot to configure.
So we would like to have a "starter set" of versioned Infrastructure and Code (IaC) in Terraform to create a <strong>Baseline environment</strong> containing various <a href="#add-ons">add-ons typically added to Kubernetes</a> which, ideally, contain the security controls needed to be "production-worthy", but be brought up quickly for <strong>further customization</strong>.


Use of Kubernetes accelerates time to market for platform initiatives through the <a target="_blank" href="https://catalog.workshops.aws/eks-blueprints-terraform/en-US/010-introduction/what-is-blueprint/benefits">Separation of Concerns - Platform Teams vs Application Teams</a>:

> Platform teams build the tools that provision, manage, and secure the underlying infrastructure while application teams are free to focus on building the applications that deliver business value to customers. It also gives operators more control in making sure production applications are secure, compliant, and highly available.
Platform teams have full control to define standards on security, software delivery, monitoring, and networking that must be used across all applications deployed.

> This allows developers to be more productive because they don’t have to configure and manage the underlying cloud resources themselves.
Application teams need to focus on writing code and quickly shipping product, but there must be certain standards that are uniform across all production applications to make them secure, compliant, and highly available.

<a target="_blank" href="https://wilsonmar.github.io/kubernetes">My blog on Kubernetes</a> describes these advantages of using Kubernetes:
   * Resiliency (auto-restart nodes that fail)
   * Imposition of a shared operational workflow using common software development lifecycle (SDLC), common management API
Deployment velocity that can be better supported by a central team of experts
   * Achieve resource utilization density
   <br /><br />

Bear in mind that Kubernetes is not magic:
   * Nodes can take 15 seconds to start, so overprivisioning is necessary
   * Clusters run all time even when there is no traffic
   <br /><br />

Docs on Terraform Kubernetes:
   * https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs
   * https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/guides/getting-started
   * https://kubernetes.io/blog/2020/06/working-with-terraform-and-kubernetes/
   * https://opensource.com/article/20/7/terraform-kubernetes
   * https://unofficial-kubernetes.readthedocs.io/en/latest/user-guide/kubectl-overview/

   * <a target="_blank" href="https://www.youtube.com/watch?v=-UtqHkrvFro">VIDEO: Terraforming the Kubernetes Land</a> Oct 13, 2017 by <a target="_blank" href="https://www.linkedin.com/in/radeksimko/">Radek Simko</a> (@RadekSimko)

   * https://logz.io/blog/kubernetes-as-a-service-gke-aks-eks/


<a name="AWS"></a>

## AWS

The AWS Partner Solutions website has "Quick Starts" of IaC code.
<a target="_blank" href="https://aws.amazon.com/quickstart/?solutions-all.sort-by=item.additionalFields.sortDate&solutions-all.sort-order=desc&awsf.filter-content-type=*all&awsf.filter-tech-category=*all&awsf.filter-industry=*all&awsm.page-solutions-all=1&solutions-all.q=terraform&solutions-all.q_operator=AND">A search of for "terraform"</a> include:

   * <a target="_blank" href="https://aws.amazon.com/solutions/partners/terraform-modules/?quickstart-all.sort-by=item.additionalFields.sortDate&quickstart-all.sort-order=desc">Terraform modules</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-vpc">Amazon VPC for Terraform on AWS</a> Provisions Amazon Virtual Private Cloud (Amazon VPC) resources managed by Terraform on the Amazon Web Services (AWS) Cloud.
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-ipam">Terraform Module for create AWS IPAM Resources</a>

   * https://github.com/aws-quickstart/quickstart-eks-hashicorp-consul
   * https://aws-quickstart.github.io/quickstart-hashicorp-consul/
   <br /><br />

<a name="EC2"></a>

### EC2

   * https://aws.amazon.com/ec2/
   <br /><br />

<a name="ECS"></a>

### ECS

   * https://aws.amazon.com/ecs/
   * https://aws.amazon.com/eks/faqs/
   * https://developer.hashicorp.com/consul/tutorials/cloud-production/consul-ecs-hcp
   * https://logz.io/blog/aws-eks-features/
   * https://github.com/Capgemini/terraform-amazon-ecs/ (not updated since 2016)
   <br /><br />

<hr />

<a name="EKS"></a>

### EKS

   * https://aws.amazon.com/eks/
   * https://aws.amazon.com/blogs/aws/amazon-elastic-container-service-for-kubernetes/ from 2015
   * https://github.com/clowdhaus/eks-reference-architecture
   * https://github.com/terraform-aws-modules/terraform-aws-eks
   * https://appfleet.com/blog/amazon-elastic-container-service-for-kubernetes-eks/
   * https://www.youtube.com/watch?v=Qy2A_yJH5-o
   <br /><br />

Some "best practices" followed include:

   * <a target="_blank" href="https://aws.github.io/aws-eks-best-practices/">"EKS Best Practices Guides"</a> A best practices guide for day 2 operations, including operational excellence, security, reliability, performance efficiency, and cost optimization. <a target="_blank" href="https://github.com/aws/aws-eks-best-practices">From this repo</a>.
   * <a target="_blank" href="https://learnk8s.io/terraform-eks" titile="OCTOBER 2020 by Kristijan Mitevski">"Provisioning Kubernetes clusters on AWS with Terraform and EKS" (using eksctl)</a>
   <br /><br />

EKS can be based on AWS Fargate which manages nodes for you so you don't have to specify server instance types. Just tell EKS how much RAM and CPU you need.
(Same with GKE AutoPilot).

List commands: <tt>aws eks help</tt>
   * associate-encryption-config
   * associate-identity-provider-config
   * create-addon
   * create-cluster
   * create-fargate-profile
   * create-nodegroup
   * delete-addon
   * delete-cluster
   * delete-fargate-profile
   * delete-nodegroup
   * deregister-cluster
   * describe-addon
   * describe-addon-versions
   * describe-cluster
   * describe-fargate-profile
   * describe-identity-provider-config
   * describe-nodegroup
   * describe-update
   * disassociate-identity-provider-config
   * get-token
   * help
   * list-addons
   * list-clusters
   * list-fargate-profiles
   * list-identity-provider-configs
   * list-nodegroups
   * list-tags-for-resource
   * list-updates
   * register-cluster
   * tag-resource
   * untag-resource
   * update-addon
   * update-cluster-config
   * update-cluster-version
   * update-kubeconfig
   * update-nodegroup-config
   * update-nodegroup-version
   * wait
   <br /><br />


<a name="EKSBFT"></a>

#### EKS Blueprints for Terraform

So I created the shell script which enables you, with <strong>one command in Terminal</strong>, to install <strong>on a Mac</strong> utilities needed to create a base set of AWS resources and <strong>various utilities</strong> installed to support a production instance of EKS. It's a simpler <strong>local</strong> alternative than using <a target="_blank" href="https://catalog.workshops.aws/eks-blueprints-terraform/en-US/020-setup/self-paced">AWS Cloud9 IDE</a> on a Linux machine, using during delivery of <a target="_blank" href="https://catalog.workshops.aws/eks-blueprints-terraform/en-US/010-introduction/what-is-blueprint">Workshop Studio</a> sessions during AWS conferences.

<a target="_blank" href="https://www.youtube.com/watch?v=DhoZMbqwwsw"><img alt="tf-aws-blueprint-sai-1072x586.jpg by Sai Vennam" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1671256963/tf-aws-blueprint-sai-1072x586_wwkihq.jpg"></a>

AWS EKS Blueprint (<a target="_blank" href="https://aws.amazon.com/blogs/containers/bootstrapping-clusters-with-eks-blueprints/">announced April 20, 2022</a>) is a <strong>tool-chain platform</strong>" on top of Helm, Terraform, and ArgoCD, etc. that comes with "batteries included"  a pre-configured base of Terraform IaC components to assemble the desired state of each team's EKS environment, such as the control plane, worker nodes, and Kubernetes. Multiple teams to deploy EKS across any number of accounts and regions.

<ul><a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main">https://github.com/aws-ia/terraform-aws-eks-blueprints</a></ul>

Its <tt>gh-pages</tt> branch is used to display <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/">
this webpage</a>.

PROTIP: <a href="#MyShellScript">My shell script</a> makes use of The Blueprints repo created by the AWS IA (infrastructure and automation) team within AWS:


<a name="add-ons"></a>

##### Blueprint add-ons

<a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/add-ons/">That webpage lists the <strong>dozens</strong> of add-on containers (services)</a> that have already been integrated into the Blueprints for securing, scaling, monitoring, and operating containerized infrastructure.

Each add-on (feature) is defined as a <strong>module</strong> within <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules">this module folder</a>.

All embedded with relevant security controls built-in.

<a target="_blank" href="https://www.youtube.com/watch?v=CB79eTFbR0w&list=RDCMUCfz8x0lVzJpb_dgWm9kPVrw&start_radio=1&rv=CB79eTFbR0w">VIDEO</a>: <a target="_blank" href="https://gist.github.com/vfarcic/bc1188d2a4b8d5295890e9c5438b9ce4">"10 Must-Have Kubernetes Tools"</a>

CLI tools:
* Local development - Rancher Desktop
* Manifests
* Operate - kubectl extensions
   * https://github.com/ahmetb/kubectx to change context arn's and k8s namespaces
   * kubens
* 3rd-party apps - databases, etc. using Helm
* Observe with https://k9scli.io (Terminal + vim + k8s) https://www.youtube.com/watch?v=boaW9odvRCc
   https://www.youtube.com/watch?v=wEQJi7_4V9Q
<br /><br />

In cluster:
* Sychronize current state - ArgoCD or Flux
* Infrastructure - https://crossplane.io
* Applications definition - Instead of Helm, crossplane or KubeVela
* Metrics - Prometheus.io to collect for Grafana dashboards
* Log collection - grafana.com/oss/loki and Promtail to ship logs
* Policies (admission controllers) - Kyverno.io or open-policy-agent.github.io/gatekeeper
* Service Mesh sidecars
* TLS certificates - https://cert-manager.io use letsencrypt

https://www.youtube.com/watch?v=BII6ZY2Rnlc


<a name="examples"></a>

##### Blueprint examples

<a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples">
Several "examples" (cluster use cases)</a> have been defined. Each example references a particular set of modules.

From the <a target="_blank" href="https://aws.amazon.com/blogs/containers/bootstrapping-clusters-with-eks-blueprints/">AWS EKS Blueprints announcement</a>:
<a target="_blank" href="https://i.pinimg.com/originals/f9/64/e9/f964e92ee3ec338a27ea4eebbb87e258.jpg">
<img alt="eks-blueprints-ref-951x1024.png" src="https://i.pinimg.com/originals/f9/64/e9/f964e92ee3ec338a27ea4eebbb87e258.jpg"></a>

<a name="eks-cluster-with-new-vpc"></a>

##### example eks-cluster-with-new-vpc

This blog post demonstrates use of <a href="#MyShellScript">my shell script</a>, which enables a <strong>lone individual developer/SRE/student</strong> to independently and quickly create an isolated  <strong>full-featured production-candidate</strong> EKS environment, by typing a single command.

> Most Kubernetes tutorials (KodeKloud, etc.) teach you about atomic kubectl and eksctl commands. You need that to pass KCAD exams. But here I describe a way to repeatedly create a production environment with all its complexities, which is the job of Kubernetes admins.

Specifically, <a href="#MyShellScript">my shell script</a> currently <strong>automates</strong> several manual steps described at the <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/getting-started/">AWS EKS Blueprints "Getting Started" page</a>, to run Terraform in the <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples/eks-cluster-with-new-vpc"><strong>eks-cluster-with-new-vpc</strong> folder</a> to create a Kubernetes cluster (in one Terminal command):

   * A VPC with 3 Private Subnets and 3 Public Subnets (or more if you choose)
   * EKS Cluster Control plane with one managed node group
   * Internet gateway for Public Subnets and NAT Gateway for Private Subnets
   * Plus many possible add-ons
   <br /><br />

That is the starting point for a full-featured production-worthy environment.

   PROTIP: It's quicker and easier to run a script. Manually invoking one command at a time is time consuming and error prone. It's too easy to skip a step, which causes errors and wasted time troubleshooting. A script ensures that steps are run in sequence. Checks can be added to make sure conditions for each command are met before, and after each command to ensure that each step achieves what was intended.

<a href="#MyShellScript">My shell script</a> makes it quicker to test changes in Helm charts and addition of <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/add-ons/">add-on</a> for more capability in your Kubernetes environment (such as Observability, backup, etc.).

Once proven independently, changes to the IaC code base can then be confidently committed into the team GitHub repo for running within <strong>shared</strong> CI/CD infrastructure (using GitHub Actions, etc.). This enables you to say in your PR:

<ul>Yes, I have tested the PR using my local account setup (Provide any test evidence report under Additional Notes)</ul>

Use <a href="#MyShellScript">my shell script</a> while learning to use CI/CD SaaS operations (such as Argo CD), without begging for team access.

Let's start by the end-product of a cluster.

<a name="k8s_nodes_pods_list"></a>

#### k8s_nodes_pods created

To confirm what was created, run <a href="#MyShellScript">my shell script</a> with the -v parameter:

<ul><pre><strong>./eks-start1.sh -v</strong></pre></ul>

That does the same as manually typing these Kubernetes status commands:

<pre><strong>kubectl get nodes</strong></pre>

should return a list such as this:

<pre>NAME                                        STATUS   ROLES    AGE     VERSION
ip-10-0-10-190.us-west-2.compute.internal   Ready    &LT;none>   9m14s   v1.23.13-eks-fb459a0
ip-10-0-11-151.us-west-2.compute.internal   Ready    &LT;none>   9m9s    v1.23.13-eks-fb459a0
ip-10-0-12-239.us-west-2.compute.internal   Ready    &LT;none>   9m15s   v1.23.13-eks-fb459a0
</pre>

<pre><strong>kubectl get pods --all-namespaces</strong></pre>

should return "Running" status for:

<pre>NAME                                                         READY
amazon-cloudwatch   aws-cloudwatch-metrics-8c4dl                                 1/1
amazon-cloudwatch   aws-cloudwatch-metrics-g67tv                                 1/1
amazon-cloudwatch   aws-cloudwatch-metrics-khz28                                 1/1
cert-manager        cert-manager-559c84c94f-jpdlv                                1/1
cert-manager        cert-manager-cainjector-69cfd4dbc9-wpftq                     1/1
cert-manager        cert-manager-webhook-5f454c484c-j8jvl                        1/1
gatekeeper-system   gatekeeper-audit-9b7795dcf-gzn49                             1/1
gatekeeper-system   gatekeeper-controller-manager-78b8774b7c-57tt5               1/1
gatekeeper-system   gatekeeper-controller-manager-78b8774b7c-b7hks               1/1
gatekeeper-system   gatekeeper-controller-manager-78b8774b7c-hl2vg               1/1
kube-system         aws-load-balancer-controller-854cb78798-ckcs6                1/1
kube-system         aws-load-balancer-controller-854cb78798-rpmwc                1/1
kube-system         aws-node-f4zxh                                               1/1
kube-system         aws-node-gl9vt                                               1/1
kube-system         aws-node-qg4nz                                               1/1
kube-system         cluster-autoscaler-aws-cluster-autoscaler-7ccbf68bc9-d6hc5   1/1
kube-system         cluster-proportional-autoscaler-coredns-6fcfcd685f-5spb8     1/1
kube-system         coredns-57ff979f67-4nnh2                                     1/1
kube-system         coredns-57ff979f67-q4jlj                                     1/1
kube-system         ebs-csi-controller-79998cddcc-8fttd                          6/6
kube-system         ebs-csi-controller-79998cddcc-wkssp                          6/6
kube-system         ebs-csi-node-6pccm                                           3/3
kube-system         ebs-csi-node-wv2jm                                           3/3
kube-system         ebs-csi-node-xqjpp                                           3/3
kube-system         kube-proxy-cgjsq                                             1/1
kube-system         kube-proxy-fwmv9                                             1/1
kube-system         kube-proxy-lt8cg                                             1/1
kube-system         metrics-server-7d76b744cd-ztg98                              1/1
kubecost            kubecost-cost-analyzer-7fc46777c4-5kdjw                      2/2
kubecost            kubecost-kube-state-metrics-59fd4555f4-tghnt                 1/1
kubecost            kubecost-prometheus-node-exporter-89vg6                      1/1
kubecost            kubecost-prometheus-node-exporter-fll24                      1/1
kubecost            kubecost-prometheus-node-exporter-pjhsz                      1/1
kubecost            kubecost-prometheus-server-58d5cf79df-jxtgq                  2/2
</pre>

TODO: A <a href="#DiagrammingTools">diagram</a> of resources above?

TODO: Description of what each node provides and how they communicate with each other.

The 18 nodes created under namespace "kube-system" are:

   * 2 <a target="_blank" href="https://docs.aws.amazon.com/eks/latest/userguide/network-load-balancing.html">AWS Load Balancer Controllers</a>
   * 3 AWS nodes
   * 1 Cluster Autoscaler
   * 1 proportional autoscaler for CoreDNS
   * 2 CoreDNS
   * 2 EBS CSI (Container Storage Interface) controllers
   * 2 EBS CSI nodes
   * 3 kube-proxy nodes
   * 1 Prometheus metrics server
   * vpc-cni (Network Interface)
   <br /><br />

<hr />

<a name="MyShellScript"></a>

## The calling shell script

PROTIP: Before running any script on your machine, a good security practice is to understand what it really does.

1. In a browser, view the script online in GitHub:

   <a target="_blank" href="https://github.com/wilsonmar/mac-setup/blob/master/eks-start1.sh">https://github.com/wilsonmar/mac-setup/blob/master/eks-start1.sh</a>

   PROTIP: A basic tenant of this script's desig is that no action is taken unless the user specifies a parameter.

   If a script is called with no parameters:

   <pre><strong>./eks-start1.sh</strong></pre>

   the script presents a menu of parameters and command examples:

   <pre>=========================== 202?-??-15T15.05.50-0700 ./eks-start1.sh v0.19
PARAMETER OPTIONS:
   -h          #  show this help menu by running without any parameters
   -cont       #  continue (NOT stop) on error
   -v          # -verbose (list rundetails to console)
   -vv         # -very verbose (instance IDs, volumes, diagnostics, tracing)"
   -x          #  set -x to display every console command
   -q          # -quiet headings for each step
 &nbsp;
   -vers       #  list versions released
   -I          # -Install utilities brew, etc. (default is install)
   -tf "1.3.6"            # version of Terraform to install
   -gpg        #  Install gpg2 utility and generate key if needed
   -email "johndoe@gmail.com"     # to generate GPG keys for
 &nbsp;
   -DGB        # Delete GitHub at Beginning (download again)
   -c          # -clone again from GitHub (default uses what exists)
   -GFP "/Users/wilsonmar/githubs"   # Folder path to install repo from GitHub
 &nbsp;
   -aws        # -AWS cloud awscli
   -region "us-east-1"    # region in the cloud awscli
 &nbsp;
   -KTD        # Kubernetes Terraform Deploy
   -DTB        # Destroy Terraform-created resources at Beginning of run
   -DTE        # Destroy Terraform-created resources at End of run
   </pre>

   To run the script to establish Kubernetes cluster:

   <ul><pre><strong>time ./eks-start1.sh -v -KTD</strong></pre></ul>

   But before you do that, let's look at the tools and utilities that need to be installed.

   <a name="Utilities"></a>

   ##### Utilities to run Blueprint

   To install all the utilities needed (brew, jq, git, tree, awscli, kubectl, terraform, etc.):

   <ul><pre><strong>./eks-start1.sh -I -v</strong></pre></ul>

   <tt>-v</tt> displays additonal verbosity.

   <tt>-q</tt> quiets the headings displayed by the <tt>h2</tt> custom-defined command.


   ### GitHub to load Blueprints

   In STEP 9, the script clones:
   <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/README.md">https://github.com/aws-ia/terraform-aws-eks-blueprints</a>

   <tt>--depth 1</tt> excludes branches such as gh-pages referenced to display
   <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/">website "Amazon EKS Blueprints for Terraform"</a>.
   This results in the <tt>du -h</tt> command showing 26MB of disk space usage (instead of 40MB with all branches).

   ### Run

   Upon failure, the script automatically runs <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/getting-started/#cleanup">Cleanup <tt>terraform destroy</tt> commands</a> (unless the script's override parameter was specified).

   <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples/eks-cluster-with-new-vpc">Set your region</a>:

   <pre>export AWS_REGION=us-west-2
   aws ec2 describe-availability-zones --output text --query 'AvailabilityZones[0].[RegionName]'
   aws configure list | grep region
   aws configure get region --profile $PROFILE_NAME
   terraform plan
   </pre>

   PROTIP: Tfsec (and other scans of Terraform HCL) are run from the output of <tt>terraform plan</tt>.

   terraform apply -target="module.vpc" -auto

   Apply complete! Resources: 23 added, 0 changed, 0 destroyed.

   <pre>kubectl config view --minify -o jsonpath='{.clusters[].name}'
   </pre>

   <pre>arn:aws:eks:us-west-2:670394095681:cluster/eks-cluster-with-new-vpc%
   </pre>

   <pre>set configure_kubectl = "aws eks --region us-west-2 update-kubeconfig --name eks-cluster-with-new-vpc"
   aws eks --region "$AWS_REGION" update-kubeconfig --name eks-cluster-with-new-vpc
   Updated context arn:aws:eks:us-west-2:670394095681:cluster/eks-cluster-with-new-vpc in /Users/wilsonmar/.kube/config
   </pre>

   <a target="_blank" href="https://medium.com/hashicorp-engineering/terraform-to-airtable-for-analytics-and-reporting-afe4f3d285f">Cost estimates</a>

1. Configure AWS credentials. The account used should be granted <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/iam/minimum-iam-policy/">a minimum set of IAM policies</a>.

2. Download the script:

   <pre><strong>curl -s "https://raw.githubusercontent.com/wilsonmar/mac-setup/master/eks-start1.sh" --output eks-start1.sh
   </strong></pre>

3. Set permissions (needed only one time):

   <pre><strong>chmod +x eks-start1.sh
   </strong></pre>

4. Set your Mac to not sleep: Click the Apple logo on the top-left corner of your screen, and select System Preferences. In the upper-right, type on Battery. At the left menu, click Battery. Drag the slider to Never. Click "Power Adapter" and drag that slider to Never.

   <pre><strong>sudo systemsetup -setcomputersleep Never
   </strong></pre>

5. Among Application Utilities, invoke Apple's Activity Monitor to identify high CPU processes to close, then how much CPU and Memory is consumed by processes Terminal and "terraform".

6. In Terminal: Run using a timer and script parameters:

   <pre><strong>time ./eks-start1.sh -v
   </strong></pre>

   Update your AWS credentials if you see messages like this:
   <pre>│ Error: configuring Terraform AWS Provider: error validating provider credentials: error calling sts:GetCallerIdentity: operation error STS: GetCallerIdentity, https response error StatusCode: 403, RequestID: 9e49efe4-dd08-4b2c-a6df-22a754b8a04d, api error ExpiredToken: The security token included in the request is expired

   <tt>time</tt> outputs <a target="_blank" href="https://stackoverflow.com/questions/556405/what-do-real-user-and-sys-mean-in-the-output-of-time1/556411#556411">three timings: real, user and sys</a>, such as:

   <pre>real    1m47.363s
user    2m41.318s
sys     0m4.013s
   </pre>

1. QUESTION: What is the UI that can be seen?
2. QUESTION: How to access services within EKS?
3. QUESTION: AWS Config. security alerts, if any.

4.  <strong>Reuse</strong> configured blueprints (in GitHub) to consistently "stamp out" instances across <strong>multiple AWS accounts and Regions</strong> using continuous deployment automation.

## Add-on for Consul

   https://developer.hashicorp.com/consul/docs/k8s/installation/install

   Blueprints are defined/added <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/examples/external-secrets/main.tf">in main.tf file</a> in each example folder.

Add-on add-ons: There is <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/add-ons/">growing list of add-ons</a> to the Blueprints include Prometheus, Karpenter, Nginx, Traefik, AWS Load Balancer Controller, Fluent Bit, Keda, ArgoCD, and Consul.

Here we example <a target="_blank" href="https://aws-ia.github.io/terraform-aws-eks-blueprints/main/extensibility/">extensibility</a> for Consul.

Each add-on is a module defined in <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/main.tf">modules/kubernetes-addons/main.tf</a> file. For example:

   <pre>module "consul" {
  count             = var.enable_consul ? 1 : 0
  source            = "./consul"
  helm_config       = var.consul_helm_config
  manage_via_gitops = var.argocd_manage_add_ons
  addon_context     = local.addon_context
}
   </pre>

Each module has a folder, such as Consul's <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/kubernetes-addons/consul">modules/kubernetes-addons/consul</a>.

<a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/kubernetes-addons/consul">Consul's locals.tf file</a> defines:

   <pre>  default_helm_config = {
    name             = local.name
    chart            = local.name
    repository       = "https://helm.releases.hashicorp.com"
    version          = "1.0.1"
    namespace        = local.name
    create_namespace = true
    description      = "Consul helm Chart deployment configuration"
    values           = [templatefile("${path.module}/values.yaml", {})]
  }
  &nbsp;
  helm_config = merge(local.default_helm_config, var.helm_config)
  &nbsp;
  argocd_gitops_config = {
    enable = true
  }
     </pre>

Add-ons are enabled together by specification in the <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/locals.tf">modules/kubernetes-addons/locals.tf</a> file.

   <pre>argocd_addon_config = {
   ...
   consul = var.enable_consul ? module.consul[0].argocd_gitops_config : null
   </pre>

   The HashiCorp Consul add-on is described <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/docs/add-ons/consul.md?plain=1">here in the docs</a> [<a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/docs/add-ons/consul.md?plain=1">editable</a>].

   https://developer.hashicorp.com/consul/docs/k8s/installation/install

   https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/consul/README.md?plain=1
   which references docs at
   https://developer.hashicorp.com/consul/tutorials/get-started-kubernetes/kubernetes-gs-deploy

   added in <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/main.tf">modules/kubernetes-addons/main.tf</a>:

   <pre>module "consul" {
  count             = var.enable_consul ? 1 : 0
  source            = "./consul"
  helm_config       = var.consul_helm_config
  manage_via_gitops = var.argocd_manage_add_ons
  addon_context     = local.addon_context
}
   </pre>

   <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/consul/values.yaml">values.yaml</a> specifies a 3-replica server.

   The "Inputs" section in the <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/consul/README.md">README</a> are coded within <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/blob/main/modules/kubernetes-addons/consul/variables.tf">variables.yaml</a> which defines "addon_context" variables.

   To use GitOps, edit and change <tt>variable "manage_via_gitops"</tt>
   setting <tt>default     = false</tt> to <strong>true</strong>. QUESTION?


<a name="MoreAddons"></a>

#### Additional customizations

TODO: Add a sample application (such as HashiCups).

https://developer.hashicorp.com/consul/docs/k8s/helm

https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing

Additional capabilities to add:
    * Deployment platform
    * Deployment topology
    * TLS Certificates
    * Connectivity for operator and clients
    * Logging
    * Host monitoring
    * Application telemetry
    * Backups
    * Restores
    * Upgrades
   <br /><br />


#### Other add-ons

https://aws-ia.github.io/terraform-aws-eks-blueprints/main/extensibility/

You may want to try implementing other use cases in the <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples">example deployment options ("constructs") folder</a> not demonstrated here:

   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples/karpenter">Karpenter auto-scaler for EKS</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples/grafana-loki">Grafana Loki</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples/observability">Observability Grafana</a>
   * IPV6 EKS clusters
   * Analytics clusters with Spark or EMR on EKS
   <br /><br />

   PROTIP: Add-ons can be both open-source or licensed.

<a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules">Modules</a> include:

   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/aws-eks-fargate-profiles">aws-eks-fargate-profiles</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/aws-eks-managed-node-groups">aws-eks-managed-node-groups</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/aws-eks-self-managed-node-groups">aws-eks-self-managed-node-groups</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/aws-eks-teams">aws-eks-teams</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/aws-kms">aws-kms</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/emr-on-eks">emr-on-eks</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/irsa">irsa</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/kubernetes-addons">kubernetes-addons</a>
   * <a target="_blank" href="https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/modules/launch-templates">launch-templates</a>
   <br /><br />



 Process Helm charts to configure Kubernetes using CNCF GitOps tool ArgoCD:

   https://catalog.workshops.aws/eks-blueprints-terraform/en-US

   https://github.com/aws-ia/terraform-aws-eks-blueprints/tree/main/examples

   https://developer.hashicorp.com/consul/docs/k8s/installation/install

   https://github.com/hashicorp/terraform-aws-consul-ent-k8s

### More

   https://github.com/kalenarndt/terraform-vault-consul-k8s-integration from Kalen is a module that builds the Root CA, Server TLS Intermediate, Consul Connect Intermediate, Connect Inject Intermediate, Controller Intermediate, KV Secrets Engine, Bootstrap Tokens, Gossip Tokens, Consul Licenses, Vault Policies, Kubernetes Roles for authentication with the policies associated, and outputs a sample Helm values file.


Blueprints for Terraform is open-sourced two ways, in different repos and workshops:
   * <a href="#EKSBFT">EKS Blueprints for Terraform</a> (below)
   * EKS Blueprints for CDK workshop at https://catalog.workshops.aws/
   <br /><br />

* EKS Blueprints for CDK workshop at https://catalog.workshops.aws/eks-blueprints-for-cdk/en-US
   * https://github.com/aws-quickstart/cdk-eks-blueprints
   * https://www.npmjs.com/package/@aws-quickstart/eks-blueprints NPM module
   * https://github.com/aws-samples/cdk-eks-blueprints-patterns
   * https://github.com/aws-samples/eks-blueprints-workloads
   <br /><br />


<hr />

<a name="Azure"></a>

## Azure

<a name="AVM"></a>

### AVM

https://azure.microsoft.com/en-us/products/virtual-machines/

https://learn.microsoft.com/en-us/azure/architecture/aws-professional/compute

<a name="ACS"></a>

### ACS (Azure Container Service)

Retire on 31st Jan 2020.

A wrapper on top of Azure IAAS to deploy a production ready Kubernetes, DC/OS, or Docker Swarm cluster.

https://azure.microsoft.com/en-us/products/container-apps/

<a name="AKS"></a>

### AKS

https://learn.microsoft.com/en-us/azure/aks/quotas-skus-regions

https://azure.microsoft.com/en-us/products/kubernetes-service/

https://github.com/hashicorp/terraform-azure-consul-ent-k8s

   <pre><strong>git clone https://github.com/lukeorellana/terraform-on-azure
cd terraform-on-azure
   </strong></pre>

   It contains these folders:
   * 01-intro
   * 02-init-plan-apply-destroy
   * 03-terraform-state
   * 04-variables
   * 05-modules
   * 06-advanced-hcl
   <br /><br />

   https://github.com/KevinDMack/TerraformKubernetes
   to establish K8S using Packer within Azure

<hr />

<a name="GCP"></a>

## Google

<a name="GCE"></a>

### GCE

https://www.msp360.com/resources/blog/azure-vm-vs-amazon-ec2-vs-google-ce-cloud-computing-comparison/

<a name="GCS"></a>

### GCS

<a name="GKE"></a>

### GKE

https://github.com/hashicorp/terraform-gcp-consul-ent-k8s

1. To obtain the name of cluster (stored in custom metadata of nodes) from inside a node<a target="_blank" href="https://stackoverflow.com/questions/38242062/how-to-get-kubernetes-cluster-name-from-k8s-api">:</a>
<pre>curl http://metadata/computeMetadata/v1/instance/attributes/cluster-name -H "Metadata-Flavor: Google"</pre>

<hr />

<a name="CICD"></a>

### CI/CD

   <a target="_blank" href="https://github.com/fedekau/terraform-with-circleci-example">https://github.com/fedekau/terraform-with-circleci-example</a>

   <a target="_blank" href="https://www.youtube.com/watch?v=8ZTxeV737f4&list=PL81sUbsFNc5ZgO3FpSLKNRIIvCBvqm-JA&index=45">VIDEO</a>: "Create Preview Environments for Terraform" (using GitHub Actions)

<hr />

<a name="Terraspace"></a>

### Terraspace generates IaC code

<a target="_blank" href="https://learn.boltops.com/courses/terraspace-fundamentals/lessons/terraspace-getting-started-with-aws">VIDEO</a>: <a target="_blank" href="https://terraspace.cloud/">Terraspace.cloud</a> dynamically generates Terraform projects in a centralized manner (which eliminates duplication).
So the whole stack can be brought up by a single command: <a target="_blank" href="https://www.youtube.com/watch?v=GjlWeYAGWIE">VIDEO</a>:

<ul><pre>terraspace up STACK</pre></ul>

<a target="_blank" href="https://terraspace.cloud/docs/vs/terragrunt/">
Unlike Terragrunt</a>, Terraspace automatically creates <a target="_blank" href="https://terraspace.cloud/docs/config/backend/">storage Buckets in the back-end</a>. Terraspace intermixes its own features with those of Terraform (e.g. using ERB templates in backend configuration), needed because Terraform doesn’t allow expressions in the backend block.

Terraspace claims that their <a target="_blank" href="https://terraspace.cloud/docs/config/hooks/">CLI hook syntax</a> is <a target="_blank" href="https://blog.boltops.com/2020/09/28/terraform-vs-terragrunt-vs-terraspace/">"more concise and cleaner"</a>.


<hr />

Among <a href="#CoreWorkflow">Terraform usage workflow stages</a>:

<a name="Conventions"></a>

## 4) Terraform project conventions

PROTIP: Consistent definition of HCL folders and files in your Terraform projects would enhance efficiency and teamwork.


<a name="tfvars"></a>

### tfvars files by env

REMEMBER: Files named with the <tt>.tfvars</tt> file ending extension contains actual <strong>values</strong> used in each environment (dev, qa, stage, prod).

Each environment has different needs. For example, the number of instances:

   * In dev,   <tt>env_instance_count = 1</tt>
   * In qa,    <tt>env_instance_count = 2</tt>
   * In stage, <tt>env_instance_count = 4</tt>
   * In prod,  <tt>env_instance_count = 4</tt>
   <br /><br />

PROTIP: Since there can be secret values, use a mechanism that guarantees the file is never uploaded into GitHub.

The <tt>terraform.auto.tfvars</tt> file should be specified in .gitignore.

In <a target="_blank" href="https://www.youtube.com/watch?v=M90VcTPkb3w&t=1h44m7s">VIDEO: "Bootstrapping Terraform Secrets with 1Password CLI"</a>, <a target="_blank" href="https://www.linkedin.com/in/jillian-wilson/">Jillian (Wilson) Morgan</a> shows that plaintext secrets can be replaced with a reference to 1Password protocol "op://".

1. Within 1Password, the "devs" vault, "gcp" item, "credentials" field:

   <pre>GOOGLE_CREDENTIAL=op://devs/gcp/credential
   </pre>

1. To populate, run a keyboard alias command that executes:

   <pre>op run --env-file=.env terraform apply
   </pre>

References:
   * https://developer.1password.com/docs/cli
   * https://1password.developers
   * https://join.slack.com/t/1password-devs/shared_invite/zt-1halo11ps-609pEv96xZ3LtX_VEOfJQA
   <br /><br />

References:
   * https://www.terraform.io/language/modules/develop/structure
   * https://www.baeldung.com/ops/terraform-best-practices
   <br /><br />

<a name="HCL"></a>

### What's HCL?

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=3h46m36s">VIDEO</a>:

   Terraform defined HCL (HashiCorp Configuration Language) for both human and machine consumption. HCL is defined at <a target="_blank" href="https://github.com/hashicorp/hcl">https://github.com/hashicorp/hcl</a> and described at <a target="_blank" href="
   https://www.terraform.io/docs/configuration/syntax.html">
   https://www.terraform.io/docs/configuration/syntax.html</a>.

   Terraform supports JSON syntax to read output from programmatic creation of such files.
   The name suffix of files containing JSON "*.tf.json".

   HCL is less verbose than JSON and more concise than YML. <a target="_blank" href="https://www.terraform.io/docs/configuration/syntax.html">*</a>

   Unlike JSON and YML, <strong>HCL allows annotations (comments)</strong>. As in bash scripts: single line comments start with `#` (pound sign) or `//` (double forward slashes).

   Multi-line comments are wrapped between `/*` and `*/`.

   `\` back-slashes specify continuation of long lines (as in Bash).


<a name="HCL_Files"></a>

### Files in the root folder:

The root folder of the repo should contain these files:

* <a href="#.gitignore"><tt><strong>.gitignore</strong></tt></a> - files and folders to not add and push to GitHub

* <tt><strong>LICENSE</strong></tt> - (no file extension) to define the legal aspects (whether it's open source)

The root folder of <strong>each module</strong> should contain these files:

* <tt><strong>README.md</strong></tt> describes to humans how the module works. REMEMBER: Don't put a README file within internal module folders because its existance determines whether a module is considered usable by an external user.

* <a href="#main.tf"><tt>main.tf</tt></a> is the <strong>entry point</strong> of the module.

* <tt>providers.tf</tt> specfies how to process HCL code (aws, azure, etc.)

* <a target="_blank" href="https://www.terraform.io/language/values/outputs"><tt>outputs.tf</tt></a> defines data values output by a terraform run.

* <tt>versions.tf</tt>

* <a target="_blank" href="https://www.terraform.io/language/values/variables"><tt>variables.tf</tt></a> declares a description and optional default values for each variable in *.tf files


<a name="HCL_Folders"></a>

### Folders in the project:

Within folder <strong>examples</strong>

Within folder <strong>test</strong>

Within folder <a href="#Modules"><strong>modules</strong></a>

   IAM <em>(folder)</em>
      * README.md
      * <a href="#variables.tf">variables.tf</a>
      * <a href="#main.tf">main.tf</a>
      * <a href="#Outputs.tf">outputs.tf</a>
   Network <em>(folder)</em>
      * ...
   Vault
     * install-vault
        * install-vault.sh
     * run-vault
        * run-vault.sh
     * vault-cluster
     * vault-security-group-rules
     * vault-elb
     <br /><br />

REMEMBER: Terraform processes all .tf files in a directory invoked in <strong>alphabetical order</strong>.


<hr />

Among <a href="#CoreWorkflow">Terraform usage workflow stages</a>:

<a name="HCL"></a>

## 6) Code cloud resources in HCL


<hr />

## Links to Certification Exam Objectives

Pluralsight has a 20-question assessment: <a target="_blank" href="https://app.pluralsight.com/paths/skill/managing-infrastructure-with-terraform">Managing Infrastructure with Terraform Skill IQ"</a> covering (Google):

   * Add Terraform to a CI/CD Pipeline
   * Automate infrastructure deployment
   * Create and import Modules

   * Implement Terraform with AWS
   * Implement Terraform with Google Cloud Platform
   * Implement Terraform with Microsoft Azure

   * Import data from external sources
   * Install and Run Terraform
   * Manage State in Terraform
   * Troubleshoot Terraform Issues
   <br /><br />

<img align="right" width="200" alt="terraformassociate-704x704" src="https://user-images.githubusercontent.com/300046/154810637-8293e9a0-1c6a-4105-b9c0-3d100166ce42.png">
This page houses both links and my notes to pass the <a target="_blank" href="https://hashicorp.com/certification/terraform-associate/">HashiCorp Terraform Associate certification (at https://hashicorp.com/certification/terraform-associate)</a>. For only $70.50 (paid after <a target="_blank" href="https://candidate.psiexams.com/">picking a time on OSI Online</a>, <a target="_blank" href="https://www.reddit.com/r/Terraform/comments/k6pky2/terraform_exam_psi/">terrible)</a> , correctly answer 70%+ of 57 multiple-choice/fill-in questions to give your employers some assurance that you have a practical knowledge of these topics:

1. Understand infrastructure as code (IaC) concepts<br />
   a. Explain <a href="#IaC">what IaC is</a><br />
   b. Describe advantages of IaC patterns<br />
2. Understand Terraform's purpose (vs other IaC)<br />
   a. Explain multi-cloud and provider-agnostic benefits<br />
   b. Explain the benefits of <a href="#State">state</a> <em>management</em><br />
3. Understand Terraform basics<br />
   a. Handle Terraform and provider <a href="#Install">installation and versioning</a><br />
   b. Describe plugin based architecture<br />
   c. Demonstrate using multiple <a href="#Providers">providers</a><br />
   d. Describe how Terraform finds and fetches <a href="#Providers">providers</a> (from the <a href="#Registry">Terraform Registry</a>)<br />
   e. Explain when to use and not use <a href="#Provisioners">provisioners</a> and when to use <a href="#local-exec"><tt>local-exec</tt></a> or <a href="#remote-exec"><tt>remote-exec</tt></a><br />
4. Use the Terraform CLI (outside of core workflow)<br />
   a. Given a scenario: choose when to use <a href="#Fmt"><tt>terraform fmt</tt></a> to format code<br />
   b. Given a scenario: choose when to use <a href="#Taint"><tt>terraform taint</tt></a> to taint Terraform resources<br />
   c. Given a scenario: choose when to use <a href="#Import"><tt>terraform import</tt></a> to import existing infrastructure into your Terraform state<br />
   d. Given a scenario: choose when to use <a href="#Workspaces"><tt>terraform workspace</tt></a> to create workspaces<br />
   e. Given a scenario: choose when to use <a href="#State"><tt>terraform state</tt></a> to view Terraform state<br />
   f. Given a scenario: choose when to enable <a href="#Verbose">verbose logging</a> and what the outcome/value is<br />
5. <a href="#Modules">Interact with Terraform modules</a><br />
   a. Contrast module source options<br />
   b. Interact with module inputs and <a href="#Outputs">outputs</a><br />
   c. Describe variable scope within modules/child modules<br />
   d. Discover modules from the public <a href="#Registry">Terraform Module Registry</a><br />
   e. Defining module version<br />
6. Navigate <a href="#Workflow">Terraform workflow</a><br />
   a. Describe Terraform workflow ( Write -> Plan -> Create )<br />
   b. Initialize a Terraform working directory (terraform init)<br />
   c. Validate a Terraform configuration (terraform validate)<br />
   d. Generate and review an execution plan for Terraform (<a href="#tfplan">terraform plan</a>)<br />
   e. Execute changes to infrastructure with Terraform (terraform apply)<br />
   f. <a href="#Destroy">Destroy Terraform managed infrastructure (terraform destroy)</a><br />
7. Implement and maintain state<br />
   a. Describe default local backend<br />
   b.	Outline state locking<br />
   c. Handle backend authentication methods<br />
   d. Describe remote state storage mechanisms and supported standard backends<br />
   e. Describe effect of Terraform refresh on state<br />
   f. Describe backend block in configuration and best practices for partial configurations<br />
   g. Understand secret management in state files<br />
8. Read, generate, and modify configuration<br />
   a. Demonstrate use of variables and <a href="#Outputs">outputs</a><br />
   b. Describe secure secret injection best practice<br />
   c. Understand the use of collection and structural types<br />
   d. Create and differentiate resource and data configuration<br />
   e. Use resource addressing and resource parameters to connect resources together<br />
   f. Use Terraform built-in functions to write configuration<br />
   g. Configure resource using a dynamic block<br />
   h. Describe built-in dependency management (order of execution based)<br />
9. Understand Terraform Cloud and Enterprise capabilities<br />
   a. Describe the benefits of Sentinel, registry, and <a href="#Workspaces">workspaces</a><br />
   b. Differentiate OSS and TFE <a href="#Workspaces">workspaces</a><br />
   c. Summarize features of Terraform Cloud<br />
<br />

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&list=RDCMUC8butISFwT-Wl7EV0hUK0BQ&index=1&t=47309s">VIDEO</a>: Registering for the test takes several steps:

1. Clicking on "Register Exam" takes you to the <a target="_blank" href="https://hashicorp-certifications.zendesk.com/hc/en-us/articles/360049382552">Zendesk Exam Portal.
1. Read the <a target="_blank" href="https://hashicorp-certifications.zendesk.com/hc/en-us/articles/360048211571">Exam Handbook</a>. Key points:
   * 48 hour cancellation
1. There is a <a target="_blank" href="https://hashicorp-certifications.zendesk.com/hc/en-us">Exam FAQ</a>
1. Click <a target="_blank" href="https://learn.hashicorp.com/collections/terraform/certification">"Click here to go to the exam platform"</a> for the "Continue with GitHub".
1. Authorize HashiCorp to use your GitHub credentials to register for exam at the <a target="_blank" href="https://home.psiexams.com/#/dashboard/regular-dashboard">PSI Exam website</a>
1. Click "Schedule" to the right of "HashiCorp Certified: Terraform Associate - Ready to Schedule"
1. Select Country & Timezone. Click a day in green. Click a range of hours. Click a specific hour. Click Continue.
1. In the pop-up, click Continue for "Booking created successfully". Close.
1. Now you see the $70.50. Check "I acknowledge"... Pay Now.

1. <a target="_blank" href="https://hashicorp-certifications.zendesk.com/hc/en-us/articles/360049487571-How-do-I-access-my-badge-and-certificate-">FAQ</a>: After passing the exam, share your badge at

   <a target="_blank" href="https://www.credly.com/users/sign_in">https://www.credly.com/users/sign_in</a>

1. In your resume, add a link to your certification as:

   <tt>https://www.credly.com/earned/badge/[unique certification ID]</tt>
<br /><br />

The exam expires in 2 years.

HashiCorp doesn't have a deeper/more difficult "Professional level" cert at time of writing.


<hr />

<a name="IaC"></a>

### Infrastructure as Code (IaC) Provisioning Options

The objective is to accelerate work AND <strong>save money</strong> by automating the configuration of servers and other resources quicker and more consistently than manually clicking through the GUI. That's called the <a target="_blank" href="https://apparently.me.uk/terraform-environment-application-pattern/overview.html"> "Infrastructure-Application Pattern (I-A)"</a>.

<a target="_blank" href="https://blog.gruntwork.io/why-we-use-terraform-and-not-chef-puppet-ansible-saltstack-or-cloudformation-7989dad2865c">BLOG: Analysis</a>:

<table border="1" cellpadding="4" cellspacing="0">
<thead><tr><th>&nbsp;</th><th>Since</th><th>Community</th><th>Type
   </th><th>Infra.</th><th>Lang.
   </th><th>Agent</th><th>Master</th></tr>
</thead><tbody>
<tr valign="top"><td><a title="Cloud Formation (AWS)">CFN/CF</a></td><td>2011 Medium</td><td>Small<a href="#x1">*1</a>
   </td><td>Immutable</td><td><a href="#Declarative">Declarative</a>
   </td><td>No</td><td>No</td></tr>
<tr valign="top"><td>Heat</td><td>2012 Low</td><td>Small
   </td><td>Immutable</td><td><a href="#Declarative">Declarative</a>
   </td><td>No</td><td>No</td></tr>
<tr valign="top"><td><strong>Terraform</strong></td><td>2014 Low</td><td><a href="#Social"><u>Huge</u></a>
   </td><td>Immutable</td><td><a href="#Declarative">Declarative</a>
   </td><td>No</td><td>No</td></tr>
<tr valign="top"><td><a target="_blank" href="https://wilsonmar.github.io/pulumi/">Pulumi</a>></td><td>2017 Low</td><td>New
   </td><td>Mutable</td><td><a href="#Procedural">Procedural</a>
   </td><td>Yes</td><td>Yes</td></tr>
</tbody></table>

Terraform installs infrastructure in cloud and VM as <strong>workflows</strong>.

Kubernetes orchestrates (brings up and down) Docker containers.

Pulumi (see my notes on it)

dagger.io

<a name="CFN"></a>

## Terraform vs. AWS Cloud Formation

<table border="1" cellpadding="4" cellspacing="0">
<tr valign="bottom"><th> Feature </th><th> CloudFormation </th><th> Terraform </th></tr>
<tr><td> <a href="#Providers">Multi-Cloud providers</a> support </td><td> AWS only </td><td> AWS, GCE, Azure (20+) </td></tr>
<tr><td> Source code </td><td> closed-source </td><td><a href="#Licensing">open source</a> </td></tr>
<tr><td> Open Source contributions? </td><td> <a href="#OpenSourcing">No</a> </td><td> <a href="#OpenSourcing">Yes</a> (<a target="_blank" href="https://github.com/hashicorp/terraform/issues">GitHub issues</a>) </td></tr>
<tr><td> <a href="#State">State management</a> </td><td><a href="#AWSStateMgmt">by AWS</a> </td><td> in Terraform & AWS S3 </td></tr>
<tr><td> GUI </td><td> Free Console </td><td> <a href="#Licensing">licen$ed*</a> </td></tr>
<tr><td> Configuration format </td><td> JSON & Template </td><td> <a href="#HCL">HCL JSON</a> </td></tr>
<tr><td> <a href="#ExecControl">Execution control*</a> </td><td> No </td><td> Yes </td></tr>
<tr><td> Iterations </td><td> No </td><td> Yes </td></tr>
<tr><td> Manage already created resources </td><td> No (Change Set?)</td><td> Yes (hard) </td></tr>
<tr><td> Failure handling </td><td> Optional rollback </td><td> Fix &amp; retry </td></tr>
<tr><td> Logical comparisons </td><td> No </td><td> Limited </td></tr>
<tr><td> <a href="#Modules">Extensible Modules</a> </td><td> No </td><td> <a href="#Modules">Yes</a> </td></tr>
</table>

To get AWS certified, you’re going to need to know Cloud Formation.

<a name="Licensing"></a>

### Licensing open source for GUI

Although Terraform is "open source", the Terraform GUI requires a license.

   <a target="_blank" href="https://www.hashicorp.com/products/terraform-old/">
   Paid Pro and Premium licenses of Terraform</a>
   add version control integration, MFA security, HA, and other enterprise features.


References:
   * https://www.stratoscale.com/blog/data-center/choosing-the-right-provisioning-tool-terraform-vs-aws-cloudformation/


### CF to TF Tool

PROTIP: TOOL: <a target="_blank" href="https://github.com/DontShaveTheYak/cf2tf">cf2tf</a>
is a Python module that converts CloudFormation templates to Terraform configuration files so you use <a target="_blank" href="https://console.aws.amazon.com/cloudformation">https://console.aws.amazon.com/cloudformation</a> less.
It's by "shadycuz" Levi Blaney, author of the <a target="_blank" href="https://la-tech.co/post/hypermodern-cloudformation/getting-started/">Hypermodern Cloudformation series</a>.

1. Beware of the CF code refactoring that another has needed to do:
   https://medium.com/trackit/aws-cloudformation-to-terraform-translation-dacfc96e3994
1. Review issues that remain open for cf2tf:
   https://github.com/DontShaveTheYak/cf2tf/issues
1. Install Python with Conda or virtualenv (see my<br />https://wilsonmar.github.io/python-install/)
1. Create a folder to clone into (such as $HOME/Projects).
1. Create virtual Python enviornment:
   <pre><strong>conda activiate py310
   python --version
   </strong></pre>
1. Clone the repo:
   <pre><strong>git clone https://github.com/DontShaveTheYak/cf2tf --depth 1
   cd ct2tf
   </strong></pre>
1. Install Python module locally:
   <pre><strong>pip install cf2tf --upgrade
   cf2tf my_template.yaml
   </strong></pre>
1. Download my_template.yaml CloudFormation files that creates an AWS resource stack:
   * lambda_hello.yaml from https://leaherb.com/aws-lambda-tutorial-101/ describes creating a Lambda function using CF YAML.
   * ec2_stack1.yaml from https://github.com/smoya/cloudformation-hello-world/blob/master/hello_world_demo.json creates a Docker in ECR (Elastic Container Registry), RDS MySQL database, EC2 with VPC, subnet, Route, Security Group, IG, ELB, AutoScaling, CloudWatch alarms
   * https://reflectoring.io/getting-started-with-aws-cloudformation/ describes creating an ECS cluster running a Docker container using CF files from https://github.com/stratospheric-dev/stratospheric/tree/main/chapters/chapter-1/cloudformation
   * https://www.youtube.com/watch?v=YXVCdGyHDSk shows how to create a table with DBQueryPolicy within a pre-defined DynamoDB from https://gist.github.com/awssimplified/f96437a5a3beed65bf4782eb7b69afa4
1. Validate the template within AWS:
   <pre><strong>aws cloudformation validate-template --template-body file://lambda_hello.yaml
   </strong></pre>
1. Make sure it really creates the stack and resource within AWS:
   <pre>aws cloudformation create-stack --stack-name hello-lambda-stack \
  --template-body file://lambda_hello.yml \
  --capabilities CAPABILITY_NAMED_IAM
   </pre>
1. Run:
   <pre><strong>cd /;cd ~/Projects/cf2tf
   cf2tf lambda_hello.yaml >main.tf
   </strong></pre>
1. Compare input and output I got:

<font size="5" face="Courier New">
<table width="100%" border="1" cellpadding="4" cellspacing="0">
<tr><td>CloudFormation template.yaml</td><td>Terraform HCL</td></tr>
<tr valign="top"><td><pre>Resources:
  HelloLambdaRole:
    Type: AWS::IAM::Role
    Properties:
      RoleName: HelloLambdaRole
      AssumeRolePolicyDocument:
        Statement:
          - Effect: Allow
            Principal:
              Service: lambda.amazonaws.com
            Action: sts:AssumeRole
  HelloLambdaFunction:
    Type: AWS::Lambda::Function
    Properties:
      FunctionName: HelloLambdaFunction
      Role: !GetAtt HelloLambdaRole.Arn
      Runtime: python3.7
      Handler: index.my_handler
      Code:
        ZipFile: |
          def my_handler(event, context):
            message = 'Hello Lambda World!'
            return message
</pre></td><td><pre>resource "aws_iam_role" "hello_lambda_role" {
  name = "HelloLambdaRole"
  assume_role_policy = {
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  }
}
resource "aws_lambda_function" "hello_lambda_function" {
  function_name = "HelloLambdaFunction"
  role = aws_iam_role.hello_lambda_role.arn
  runtime = "python3.7"
  handler = "index.my_handler"
  code_signing_config_arn = {
    ZipFile = "def my_handler(event, context):
  message = 'Hello Lambda World!'
  return message"
  }
}
</pre></td></tr>
</table></font>
1. Try one with more resources:
   <pre><strong>cf2tf ~/Projects/cf2tf/ec2_stack1.yaml >main.tf
   </strong></pre>
1. Make it work:
   <pre><strong>terraform init
   terraform plan
   terraform apply
   </strong></pre>
1. Verify the stack was created:
   <pre><strong>aws cloudformation describe-stacks --stack-name hello-lambda-stack
   </strong></pre>
1. Delete the resources so you don't get charged:
   <pre><strong>terraform destroy
   </strong></pre>
1. Conform resource deletion using AWS GUI:

References:
   * https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/GettingStarted.Walkthrough.html
   * https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
   * https://dev.to/johntellsall/convert-cloudformation-to-terraform-in-two-seconds-6mm using CoPilot
   * https://stackoverflow.com/questions/64048258/how-to-convert-cloudformation-template-to-terraform-code
   * https://www.stratoscale.com/blog/data-center/choosing-the-right-provisioning-tool-terraform-vs-aws-cloudformation/


<hr />

<a name="Install"></a>

## Installation options

A) Manually type commands in Terminal. This is tedius and time consuming because there are several utilities to install.

B) Use a GitHub Template to install utilities and create a Terraform template.


<a name="ManualInstall"></a>

### Manual install

There is a version manager to enable you to install several versions of Terraform:
https://github.com/aaratn/terraenv

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&list=RDCMUC8butISFwT-Wl7EV0hUK0BQ&start_radio=1&rv=V4waklkBC38&t=51m19s">VIDEO</a>:

1. Terraform is open-sourced in GitHub. Metadata about <strong>each releases</strong> is at:

   <a target="_blank" href="https://github.com/hashicorp/terraform/releases">https://github.com/hashicorp/terraform/releases</a>

   PROTIP: Terraform is written in the [Go language](/golang/), so (unlike Java) there is no separate VM to download.

1. To download an install file for your operating system, click the list of Terraform versions at:

   <a target="_blank" href="https://releases.hashicorp.com/terraform/">https://releases.hashicorp.com/terraform/</a>

   PROTIP: But instead of manually downloading, get the latest version automatically using an installer by following instructions below.

   <a name="tf_version"></a>

1. After installation, get the version number of Terraform:

   <pre><strong>terraform --version</strong></pre>

   The response I got (at time of writing) is the version and what operating system:

   <pre>Terraform v1.1.16
on darwin_amd64
   </pre>

   If you need to upgrade:

   <pre>Your version of Terraform is out of date! The latest version
is 1.1.6. You can update by downloading from https://www.terraform.io/downloads.html
   </pre>


<a name="MacOS_Install"></a>

### Install on MacOS using tfenv

1. A search through brew:

   <pre><strong> brew search terraform</strong></pre>

   <pre>==> Formulae
hashicorp/tap/consul-terraform-sync      terraform-provider-libvirt
hashicorp/tap/terraform ✔                terraform-rover
hashicorp/tap/terraform-ls               terraform@0.11
iam-policy-json-to-terraform             terraform@0.12
terraform ✔                              terraform@0.13
terraform-docs                           terraform_landscape
terraform-inventory                      terraformer ✔
terraform-ls                             terraforming
terraform-lsp
&nbsp;
If you meant "terraform" specifically:
It was migrated from homebrew/cask to homebrew/core.
   </pre>

   Note there are back versions of terraform (11, 12, 13, etc.).


   ### Standard Homebrew install

1. Is there a brew for Terraform?

   <pre><strong>brew info terraform</strong></pre>

   Yes, but:

   <pre>terraform: stable 1.1.6 (bottled), HEAD
Tool to build, change, and version infrastructure
https://www.terraform.io/
Conflicts with:
  tfenv (because tfenv symlinks terraform binaries)
/usr/local/Cellar/terraform/1.1.6 (6 files, 66.7MB) *
  Poured from bottle on 2022-02-19 at 10:43:46
From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/terraform.rb
License: MPL-2.0
==> Dependencies
Build: go ✘
==> Options
--HEAD
	Install HEAD version
==> Analytics
install: 47,985 (30 days), 134,541 (90 days), 525,730 (365 days)
install-on-request: 44,756 (30 days), 125,786 (90 days), 493,333 (365 days)
   </pre>

Its popularity has grown since:
   <pre>terraform: stable 1.0.5 (bottled), HEAD
...
install: 41,443 (30 days), 125,757 (90 days), 480,344 (365 days)
install-on-request: 38,839 (30 days), 118,142 (90 days), 455,572 (365 days)
   </pre>

1. PROTIP: Although you can <tt>brew install terraform</tt>, don't. So that you can easily <strong>switch among several versions</strong> installed of Terraform, install and use the Terraform <strong>version manager</strong>:

   <tt><strong>brew install tfenv
   </strong></tt>

   The response at time of writing:

   <pre>==> Downloading https://github.com/tfutils/tfenv/archive/v2.2.0.tar.gz
Already downloaded: /Users/wilson_mar/Library/Caches/Homebrew/downloads/d5f3775943c8e090ebe2af640ea8a89f99f7f0c2c47314d76073410338ae02de--tfenv-2.2.0.tar.gz
🍺  /usr/local/Cellar/tfenv/2.2.0: 23 files, 79.8KB, built in 8 seconds
   </pre>

   Source for this is has changed over time: from <a target="_blank" href="https://github.com/Zordrak/tfenv">https://github.com/Zordrak/tfenv</a> (previously from <a target="_blank" href="https://github.com/kamatama41/tfenv">https://github.com/kamatama41/tfenv</a>)

   When tfenv is used, do not install from the website or using :

   <tt><strike>brew install terraform</strike></tt>

2. Install the latest version of terraform using tfenv:

   <tt><strong>tfenv install latest</strong></tt>

   The response:

   <pre>Installing Terraform v1.0.5
Downloading release tarball from https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_amd64.zip
######################################################################### 100.0%
Downloading SHA hash file from https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_SHA256SUMS
==> Downloading https://ghcr.io/v2/homebrew/core/pcre/manifests/8.45
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pcre/blobs/sha256:a42b79956773d
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sh
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/grep/manifests/3.7
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/grep/blobs/sha256:180f055eeacb1
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sh
######################################################################## 100.0%
==> Installing dependencies for grep: pcre
==> Installing grep dependency: pcre
==> Pouring pcre--8.45.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/pcre/8.45: 204 files, 5.5MB
==> Installing grep
==> Pouring grep--3.7.mojave.bottle.tar.gz
==> Caveats
All commands have been installed with the prefix "g".
If you need to use these commands with their normal names, you
can add a "gnubin" directory to your PATH from your bashrc like:
  PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
==> Summary
🍺  /usr/local/Cellar/grep/3.7: 21 files, 941.7KB
==> Upgrading 1 dependent:
zsh 5.7.1 -> 5.8_1
==> Upgrading zsh
  5.7.1 -> 5.8_1
&nbsp;
==> Downloading https://ghcr.io/v2/homebrew/core/zsh/manifests/5.8_1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/zsh/blobs/sha256:a40a54e4b686eb
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sh
######################################################################## 100.0%
==> Pouring zsh--5.8_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/zsh/5.8_1: 1,531 files, 13.5MB
Removing: /usr/local/Cellar/zsh/5.7.1... (1,515 files, 13.3MB)
==> Checking for dependents of upgraded formulae...
==> No broken dependents found!
==> Caveats
==> grep
All commands have been installed with the prefix "g".
If you need to use these commands with their normal names, you
can add a "gnubin" directory to your PATH from your bashrc like:
  PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
Unable to verify OpenPGP signature unless logged into keybase and following hashicorp
Archive:  tfenv_download.qXFIgg/terraform_1.0.5_darwin_amd64.zip
  inflating: /usr/local/Cellar/tfenv/2.2.2/versions/1.0.5/terraform
Installation of terraform v1.0.5 successful. To make this your default version, run 'tfenv use 1.0.5'
   </pre>

   PROTIP: The above commands create folder <strong>.terraform.d</strong> on your $HOME folder, containing files `checkpoint_cache` and `checkpoint_signature`.

   See <a target="_blank" href="https://www.hashicorp.com/blog/announcing-terraform-0-12">
   HashiCorp's blog</a> about version announcements.

3. Make the latest the default:

   <pre><strong>tfenv use 1.0.5</strong></pre>

   <pre>Switching default version to v1.0.5
Switching completed</pre>

1. Proceed to <a href="#Config">Configuration</a> below.


<hr />

<a name="Windows_Install"></a>

### Install on Windows

1. In a Run command window as Administrator.
2. Install Chocolatey cmd:
3. Install Terraform using Chocolatey:

   <tt><strong>choco install terraform -y
   </strong></tt>

   The response at time of writing:

   <pre>Chocolatey v0.10.8
Installing the following packages:
terraform
By installing you accept licenses for the packages.
Progress: Downloading terraform 0.10.6... 100%
&nbsp;
terraform v0.10.6 [Approved]
terraform package files install completed. Performing other installation steps.
The package terraform wants to run 'chocolateyInstall.ps1'.
Note: If you don't run this script, the installation will fail.
Note: To confirm automatically next time, use '-y' or consider:
choco feature enable -n allowGlobalConfirmation
Do you want to run the script?([Y]es/[N]o/[P]rint): y
&nbsp;
Removing old terraform plugins
Downloading terraform 64 bit
  from 'https://releases.hashicorp.com/terraform/0.10.6/terraform_0.10.6_windows_amd64.zip'
Progress: 100% - Completed download of C:\Users\vagrant\AppData\Local\Temp\chocolatey\terraform\0.10.6\terraform_0.10.6_windows_amd64.zip (12.89 MB).
Download of terraform_0.10.6_windows_amd64.zip (12.89 MB) completed.
Hashes match.
Extracting C:\Users\vagrant\AppData\Local\Temp\chocolatey\terraform\0.10.6\terraform_0.10.6_windows_amd64.zip to C:\ProgramData\chocolatey\lib\terraform\tools...
C:\ProgramData\chocolatey\lib\terraform\tools
 ShimGen has successfully created a shim for terraform.exe
 The install of terraform was successful.
  Software installed to 'C:\ProgramData\chocolatey\lib\terraform\tools'
&nbsp;
Chocolatey installed 1/1 packages.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).
    </pre>

1. Proceed to <a href="#Config">Configuration</a> below.


<a name="Linux_Install"></a>

### Install on Linux

* <a target="_blank" href="
   https://github.com/migibert/terraform-role">
   https://github.com/migibert/terraform-role</a>
   Ansible role to install Terraform on Linux machines

* <a target="_blank" href="
   https://supermarket.chef.io/cookbooks/terraform">
   https://supermarket.chef.io/cookbooks/terraform</a>

* <a target="_blank" href="
   https://forge.puppet.com/inkblot/terraform">
   https://forge.puppet.com/inkblot/terraform</a>

* <a target="_blank" href="
   https://github.com/hashicorp/docker-hub-images/tree/master/terraform">
   https://github.com/hashicorp/docker-hub-images/tree/master/terraform</a>
   builds Docker containers for using the terraform command line program.

To manually install on Ubuntu:

1. On a Console (after substituing the current version):

   <pre>sudo curl -O https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_linux_amd64.zip
sudo apt-get install unzip
sudo mkdir /bin/terraform
sudo unzip terraform_0.11.5_linux_amd64.zip -d /usr/local/bin/
   </pre>

<a name="LinuxDocker"></a>

### Install on Linux using Docker

1. To install Docker CE on Linux:

   <pre>sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
&nbsp;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
&nbsp;
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
&nbsp;
sudo apt-get update
sudo apt-get install docker-ce
   </pre>



<hr />

<a name="Configure"></a>

## Configure Terraform logging

<a target="_blank" href="https://kodekloud.com/topic/debugging/">VIDEO</a>:
1. To set a <strong>level of logging</strong> (similar to Log4j's INFO &LT; WARNING &LT; ERROR &LT; DEBUG &LT; TRACE to see Terraform's internal logs):

   <pre><strong>export TF_LOG=TRACE</strong></pre>

1. Define where logs are saved:

   <pre><strong>export TF_LOG_PATH=/tmp/terraform.log</strong></pre>

1. Define the above settings in a shell file used to call Terraform.


<hr />

<a name="Utilities"></a>

## Install Utilities

You'll need a text editor with plugins to view HCL:

   * <a href="#VScode">VSCode add-on</a>
   * <a href="#JetBrains">JetBrains IDE add-on</a>
   * <a href="#TFLint">Terraform Enterprise TFLint</a>


<hr />

<a name="VSCode"></a>

### VSCode

1. Use VSCode (installed by default) to view blocks in Terraform HCL files:

   <pre><strong>cd ~/clouddrive/terraform-on-azure/02-init-plan-apply-destroy/01-intro
code main.tf
   </strong></pre>

1. In VSCode, press shift+command+X or click the bottom-left menu icon and select "Extensions" to select the add-on from HashiCorp

   <img width="516" alt="terraform-vscode-addon-1032x470" src="https://user-images.githubusercontent.com/300046/158066434-38527f03-a729-4fe4-aa92-61488c27be2a.png">

1. If you use Azure, install the "Azure Terraform" extension from Microsoft.

   CAUTION: Avoid installing anything from publishers you don't know.

1. Define <a href="#.gitignore">.gitignore</a> for use with VSCode:

1. Review code:

   NOTE: Each key-value pair is an argument containing an expression of a text value.

   Each HCL file needs to specify the (cloud) provider being used is "azure".

   NOTE: Multiple providers can be specified in the same HCL file.

   Each Provider is a plugin that enables Terraform to interface with the API layer of various cloud platforms and environments.

1. Search for "Resource Group" in Terraform's Azure Provider docs:

   <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs">
   https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs</a>

   for "azurerm_resource_group".


<a name="JetBrains"></a>

### JetBrains add-ins

https://plugins.jetbrains.com/plugin/7808-terraform-and-hcl



<hr />

<a name="Issues"></a>

## Issues to look for

There are several industry standards which prescribe "controls" and configurations:

   * AWS Foundations referenced by the AWS Security Hub service
   * CIS

   * SOC2
   * ISO
   * FedRAMP

   * PCI
   * HIPAA
   * NIST
   * Hightrust
   * etc.
   <br /><br />

The trouble with written policies and standards is that they are in PDF and Excel files.
So few read them.


<a name="TFLint"></a>

### Terraform Enterprise TFLint

   An important distinction between Cloud Formmation and Terraform is that Terraform tracks the <strong>state</strong> of each resource.

   Terraform Enterprise automatically stores the history of all state revisions.
   <a target="_blank" href="https://www.terraform.io/docs/state/index.html">https://www.terraform.io/docs/state</a>

   <a target="_blank" href="https://www.youtube.com/watch?v=s8IZa_o5UGw/">VIDEO</a>:
   Terraform Enterprise has producers (experts) and read-only consumers.
   Terraform Enterprise processes HCL with <strong>auditing policies</strong> like linter
   <a target="_blank" href="https://github.com/terraform-linters/tflint">https://github.com/terraform-linters/tflint</a>, installed on Windows using <a target="_blank" href="https://chocolatey.org/packages/tflint">choco install tflint</a>. See https://spin.atomicobject.com/2019/09/03/cloud-infrastructure-entr/

   [8:25] Terraform Enterprise enforces "policy as code" which automates the application of what CIS (Center for Internet Security) calls (free) "benchmarks" -- secure configuration settings for <strong>hardening</strong> operating systems, for AWS settings at (the 155 page) <a target="_blank" href="https://www.cisecurity.org/benchmark/amazon_web_services/">https://www.cisecurity.org/benchmark/amazon_web_services/</a>.

   * Set to public instead of private?

   <a target="_blank" href="https://github.com/gruntwork-io/terratest/">Terratest</a> from Gruntwork.

   https://itnext.io/automatic-terraform-linting-with-reviewdog-and-tflint-f4fb66034abb



<a name="PolicyCheckTools"></a>

### Programs processing Policy as Code

PROTIP: To prevent vulnerabilities <strong>before</strong> they are manifested in resources on the internet,
several groups have created programs which can <strong>automatically attest</strong> to whether a Terraform file actually meets or violates specific <strong>policies</strong> defined as code.

This enables a CI/CD pipeline to stop processing if a Terraform file fails a scan.

<a target="_blank" href="https://github.com/iacsecurity/tool-compare">github.com/iacsecurity/tool-compare</a>
details each policy check and which tool performs them:

   * OSS Python-based <a target="_blank" href="https://github.com/bridgecrewio/checkov">Checkov</a> by <a target="_blank" href="https://bridgecrew.io/">Bridgecrew.io</a> (acquired by Palo Alto Networks)

   * Fremium <a target="_blank" href="https://www.indeni.com/cloudrail">Indeni Cloudrail</a>

   * OSS Go-based <a target="_blank" href="https://github.com/Checkmarx/kics">Kics</a> (Keeping Infrastructure as Code Secure) by Checkmarx

   * Freemium <a target="_blank" href="https://snyk.io/">Snyk</a>

   * OSS <a target="_blank" href="https://github.com/accurics/terrascan">Terrascan</a> by Accurics.

   * OSS Go-based <a target="_blank" href="https://github.com/tfsec/tfsec">Tfsec</a> by Aqua Security has a <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=tfsec.tfsec">VSCode extension</a> (/usr/local/Cellar/tfsec/0.56.0: 5 files, 16.9MB)

   * https://github.com/accurics/terrascan uses Rego policies

   * SonarQube

   * Terraform FOSS with <a href="#Atlantis">Atlantis</a>

   * Terraform Enterprise <a href="#Sentinel">Sentinel</a>

STAR: Rob Schoening presents <a target="_blank" href="https://get.soluble.cloud/posts/2021/03/a-guide-to-open-source-iac-testing/">an evaluation</a> of the above tools.

Post deployment, <a target="_blank" href="https://www.pulumi.com/blog/benefits-of-policy-as-code/">Pulumi</a> finds unused resources daily and shut them down.


<a name="Cloudrail"></a>

## Install Security Scanners

<a target="_blank" href="https://github.com/iacsecurity/tool-compare">https://github.com/iacsecurity/tool-compare</a> lists specific tests (of vulnerability) and which products can detect each.

<a target="_blank" href="https://github.com/bridgecrewio/checkov">Checkov</a> is an OSS static scanner of Terraform, AWS Cloud Formation, and Azure ARM templates.

<a target="_blank" href="https://www.indeni.com/">Cloudrail from Indeni</a> is a freemium scanner utility which audits Terraform IaC code for security concerns. It calls itself "context-aware" because (although Terratest requires that you deploy the infra and run tests against the live infra), Cloudrail takes a hybrid (SAST+DAST) approach - parsing static TF files into a database (of resources in a python object) and "continuously" comparing that against the live infrastructure in a separate python object fetched dynamically using their <a target="_blank" href="https://github.com/indeni/dragoneye">Dragoneye data collector</a> (for AWS and Azure).

When run on local environments, security scanning achieves "shift left".


<a name="InstallCheckov"></a>

### Install Checkov scanner

1. If you prefer using Conda, please <a target="_blank" href="https://wilsonmar.github.io/python-install/">install that up and setup an environment</a>.
1. The Terraform files can be analyzed (before they become resources) using static scanners TFSec or <a target="_blank" href="https://github.com/bridgecrewio/checkov/">Checkov</a> (Twitter: #checkov</a>):

   <pre>pip3 install -U checkov
checkov --help
   </pre>

1. Expand your Terminal to full screen.
1. Let's start by scanning a single tf file within <tt>terragoat/terraform/aws</tt>:

   <pre><strong>checkov -f db-app.tf > db-app.txt</strong></pre>

   It takes several minutes.

   <tt>> db-app.txt</tt> above sends the output to a new file. If the file already exists, it overwrites the previous run.

   Checkov is "freemium" to the licensed <a target="_blank" href="https://bridgecrew.io/platform">Bridgecrew platform</a>, the program asks:

   <pre>Would you like to “level up” your Checkov powers for free?  The upgrade includes:
&nbsp;
• Command line docker Image scanning
• Free (forever) bridgecrew.cloud account with API access
• Auto-fix remediation suggestions
• Enabling of VS Code Plugin
• Dashboard visualisation of Checkov scans
• Integration with GitHub for:
	◦ 	Automated Pull Request scanning
	◦ 	Auto remediation PR generation
• Integration with up to 100 cloud resources for:
	◦ 	Automated cloud resource checks
	◦ 	Resource drift detection
&nbsp;
and much more...
&nbsp;
It's easy and only takes 2 minutes. We can do it right now!
&nbsp;
To Level-up, press 'y'...
&nbsp;
Level up? (y/n): _
   </pre>

1. Edit the output file.

   <pre>       _               _
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V /
  \___|_| |_|\___|\___|_|\_\___/ \_/
&nbsp;
By bridgecrew.io | version: 2.0.829
Update available 2.0.829 -> 2.0.873
Run pip3 install -U checkov to update
&nbsp;
terraform scan results:
&nbsp;
Passed checks: 12, Failed checks: 14, Skipped checks: 0
&nbsp;
Check: CKV_AWS_211: "Ensure RDS uses a modern CaCert"
	PASSED for resource: aws_db_instance.default
	File: /db-app.tf:1-41
   </pre>

   As of this writing, <a target="_blank" href="https://github.com/bridgecrewio/checkov/blob/master/docs/3.Scans/resource-scans.md">Checkov has 50 built-in checks</a>.
   Each check has a Guide at https://docs.bridgecrew.io/docs/general-policies
   which defines recommended Terraform coding.

1. Remove the file to save disk space.

1. Scan a directory (folder), such as from <a href="#Terragoat">Terragoat</a>:

   <pre><strong>checkov -d aws</strong></pre>


   ### Install full-fast-fail scanner

   This library is not yet in Homebrew, so:

   <pre>git clone https://github.com/JamesWoolfenden/full-fast-fail --depth 1
cd full-fast-fail
./checker.sh
   </pre>




<hr />

<a name="Terragoat"></a>

### Terragoat for learning

   * <a target="_blank" href="https://github.com/bridgecrewio/terragoat/">https://github.com/bridgecrewio/terragoat</a>
   <br /><br />

   (It's in the same vein as <a target="_blank" href="https://github.com/RhinoSecurityLabs/cloudgoat">RhinoLabs’  penetration testing training tool, CloudGoat</a>.)

1. Get it on your laptop after navigating to a folder:

   <pre><strong>git clone <a target="_blank" href="https://github.com/bridgecrewio/terragoat/">https://github.com/bridgecrewio/terragoat</a> --depth 1
   cd terragoat/terraform
   </strong></pre>

1. Vulnerabilities designed into Terragoat are for <strong>specific services</strong> in AWS, Azure, and GCP clouds. Let's look at aws services:

   <pre><strong>ls aws
   </strong></pre>

   Response:

   <pre>db-app.tf <em>- database application</em>
ec2.tf
ecr.tf <em>- elastic Kubernetes service</em>
eks.tf <em>- elastic Kubernetes service</em>
elb.tf <em>- elastic load balancer</em>
es.tf
iam.tf
kms.tf <em>- key management service</em>
lambda.tf
neptune.tf
rds.tf <em>- relational database service</em>
xs3.tf <em>- key management service</em>
   </pre>

   PROTIP: BLAH: These are a few of the 200+ AWS services.

   QUESTION: How will you know when new AWS services become available or deprecated?




<hr />

<a name="KnownBad"></a>

## Known-bad IaC for training

1. To use the Terraform to create resources, I created a <strong>setup.sh</strong> based on CLI code in <a target="_blank" href="https://github.com/bridgecrewio/terragoat/blob/master/README.md">this README.md file</a>.

1. Edit <strong>my setup.sh</strong> file to override default values in file <tt>consts.tf</tt>:

   * "acme" for company_name in TF_VAR_company_name
   * "mydevsecops" for environment in TF_VAR_environment
   * TF_VAR_region
   <br /><br />

1. Edit <strong>my setup.sh</strong> file to override default values in file <tt>providers.tf</tt>:

   <pre>alias      = "plain_text_access_keys_provider"
  region     = "us-west-1"
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
   </pre>

   SECURITY WARNING: Replace key values with a variable name.

   https://github.com/bridgecrewio/terragoat#existing-vulnerabilities-auto-generated

1. <a target="_blank" href="https://codifiedsecurity.slack.com/join/shared_invite/zt-fsoojsjq-_7VMmkRvbrD2gklNlEidBA#/shared-invite/email">Sign up</a> for the <a target="_blank" href="https://slack.bridgecrew.io/?utm_source=github&utm_medium=organic_oss&utm_campaign=terragoat">#CodifiedSecurity Slack community</a> (confirm by email).

 , and #airiam,

https://medium.com/bridgecrew/terragoat-vulnerable-by-design-terraform-training-by-bridgecrew-524b50728887




<hr />

<a name="Gruntwork"></a>

### Gruntwork's sample

   <a target="_blank" href="#Gruntwork">Gruntwork.io</a> offers (for $795/month = $9,500/year), access to their 250,000-line Reference Architecture of (opinionated) starter code to create a <strong>production-worthy "defense in depth"</strong> setup on AWS:

   <a target="_blank" href="https://user-images.githubusercontent.com/300046/39746950-248190d8-5269-11e8-840d-ba14a45499bc.jpg">
   <img width="683" alt="terraform-ref-arch-683x407-106209" src="https://user-images.githubusercontent.com/300046/39746950-248190d8-5269-11e8-840d-ba14a45499bc.jpg"></a>

   An additional $500 a month gets you access to their <a target="_blank" href="https://gruntwork.teachable.com/p/reference-architecture-walkthrough/">
   Reference Architecture Walktrough video class</a>. But previews of the class is free:

   * <a target="_blank" href="https://gruntwork.teachable.com/courses/reference-architecture-walkthrough/lectures/4211191">Course overview</a>
   * <a target="_blank" href="https://gruntwork.teachable.com/courses/reference-architecture-walkthrough/lectures/4211435">Architecture overview</a>
   * <a target="_blank" href="https://gruntwork.teachable.com/courses/reference-architecture-walkthrough/lectures/4211737">Code organization overview</a>
   <br /><br />

The <a target="_blank" href="https://docs.gruntwork.io/docs/guides/production-framework/">
Gruntwork Production Framework</a> organizes <a target="_blank" href="https://docs.gruntwork.io/guides/production-framework/gruntwork-solutions/#gruntwork-solutions">app solutions</a> for going to production on the public cloud:

<a target="_blank" href="https://user-images.githubusercontent.com/300046/159250473-b6c8cb36-e6b6-4c23-b176-8fb7734b7c27.png">
<img alt="terraform-gruntwork-prod-framework-22-02" width-="696" height="771" src="https://user-images.githubusercontent.com/300046/159250473-b6c8cb36-e6b6-4c23-b176-8fb7734b7c27.png"></a>


For those who can't subscribe, Yevegeniy (Jim) Brikman (<a target="_blank" href="https://www.ybrikman.com/">ybrikman.com</a>, co-founder of DevOps as a Service <a target="_blank" href="https://Gruntwork.io/">Gruntwork.io</a>) has generously shared:

   * <a target="_blank" href="
   https://github.com/gruntwork-io/intro-to-terraform">
   https://github.com/gruntwork-io/intro-to-terraform.git</a>

   * <a target="_blank" href="https://github.com/brikis98/infrastructure-as-code-talk/tree/master/terraform-configurations">https://github.com/brikis98/infrastructure-as-code-talk/tree/master/terraform-configurations</a>

   * <a target="_blank" href="https://github.com/brikis98/terraform-up-and-running-code/tree/master/code">https://github.com/brikis98/terraform-up-and-running-code</a>
   provides bash scripts to run on Ubuntu server to install Apache, PHP, and a sample PHP app on an Ubuntu server.
   It also has automates tests written in Ruby script to make sure it returns "Hello, World".
   The repo is referenced by the book <a target="_blank" href="https://www.amazon.com/Terraform-Running-Writing-Infrastructure-Code-ebook/dp/B06XKHGJHP/">
   Terraform Up & Running (OReilly book $11.99 on Amazon)</a> and website:<br />
   <a target="_blank" href="http://www.terraformupandrunning.com/?ref=gruntwork-blog-comprehensive-terraform">terraformupandrunning.com</a>

   The sample scripts referenced by this tutorial contain moustache variable mark-up so that you can generate a set for your organization.

   * <a target="_blank" href="
   https://www.terraform.io/docs/providers/azurerm/r/virtual_machine_scale_set.html">
   https://www.terraform.io/docs/providers/azurerm/r/virtual_machine_scale_set.html</a>

   * <a targt="_blank" href="
   https://training.gruntwork.io/courses/reference-architecture-walkthrough/lectures/4211191">
   https://training.gruntwork.io/courses/reference-architecture-walkthrough/lectures/4211191</a>


<a name="Cloudposse"></a>

### Cloudposse

   <a target="_blank" href="
   https://github.com/cloudposse">
   https://github.com/cloudposse</a> has mostly AWS Terraform, such as
   https://github.com/cloudposse/load-testing




<hr />

<a name="FileStructure"></a>

## Standard Files and Folders Structure

<a target="_blank" href="https://gruntwork.teachable.com/courses/494207/lectures/9081271">
VIDEO: In this 2 hour video mastercourse "The Gruntwork Infrastructure Module Cookbook" on Teachable</a>,
<a target="_blank" href="https://www.linkedin.com/in/jbrikman/">Yevgeniy (Jim) Brikman (of Gruntwork)</a> demos the logic of how to structure (from 2017, before Workspaces) a Terraform project folder such as <a target="_blank" href="https://github.com/gruntwork-io/terragrunt-infrastructure-live-example/">Gruntwork's example</a>: Gruntwork recommends separate folders:
   * vpc (networking)
   * frontend
   * mysql (db)
   <br /><br />

<hr />

<a name="variables.tf"></a>

## variables.tf (vars.tf)

References:
   * https://www.terraform.io/language/values/variables
   * https://kodekloud.com/topic/understanding-the-variable-block/
   * PROTIP: Specifying passwords in environment variables is more secure than typing passwords in tf files<a target="_blank" href="https://www.youtube.com/watch?v=RA1mNClGYJ4&time=5m52s">*</a>.
   <br /><br />

   PROTIP: For reusability, static values are replaced with variables resolved in a separate <tt>variables.tf</tt> file.

   This file defines for each (and every) variable referenced within tf files its description, default.

   For example, reference to environment variables:

   <pre>variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}</pre>

   <pre>variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "subnet_count" {
  default = 2
}
   </pre>

   There are several types of variables:

   <pre>variable "image_name" {
  type        = "string"
  description = "The name of the image for the deployment."
  default     = "happy_randomizer"
}
variable "service_networks" {
  type        = "list"
  description = "The name or ID of one or more networks the service will operate on."
  default     = ["Joyent-SDC-Public","Joyent-SDC-Private"]
}
variable "image_version" {
  type        = "string"
  description = "The version of the image for the deployment."
  default     = "1.0.0"
}
variable "image_type" {
  type        = "string"
  description = "The type of the image for the deployment."
  default     = "lx-dataset"
}
variable "package_name" {
  type        = "string"
  description = "The package to use when making a deployment."
  default     = "g4-highcpu-128M"
}
variable "service_name" {
  type        = "string"
  description = "The name of the service in CNS."
  default     = "happiness"
}
   </pre>

   "Collection" variable types allow multiple values of one primitive type variable to be grouped together.

   <tt>type = list(string)</tt> can be iterated from index 0 for the first item.

   <tt>type = list(number)</tt> causes an error if entries are not numbers.


   A "structural"

   <pre>variable "someone" {
  type = object({
    name = string
    pant_size = number
    favorite_foods = list(string)
    is_available = bool
  })
  default = {
     name = "Joe"
     pant_size = 42
     favorite_foods = ["salmon", "chicken", "bananas"]
     is_available = true
  }
}
   </pre>
   Boolean true/false and numbers are never between quotes.

   <tt>type = set(string)</tt> cannot contain duplicates.

   <tt>type = tuple([string, number, bool])</tt> is used for mixed types in a list.

   NOTE: A tuple cannot be converted into a string.

   <pre>resource ... {
   ...
   for_each = toset(var.regio)
}
variable region {
   type = list
   default = ["us-east-1",
              "us-east-1",
              "ca-central-1"]
   description = "A list of AWS Regions"
}
   </pre>

   <a target="_blank" href="https://kodekloud.com/topic/more-terraform-functions/">KodeKloud's example map</a>:

   <pre>variable "ami" {
      type = map
      default = {
         us-west-1 = "ami-...123",
         us-east-1 = "ami-...456",
         eu-east-1 = "ami-...789",
      }
}
   </pre>

   To retrieve indirectly by key name to obtain value "HHD":

   <pre>ami = lookup( var.ami_map, "us-west-1")</pre>

   The result is <tt>ami-...123</tt>

1. To select the appropriate storage size based on your server plan even using nested lookups like in the example below.

   <pre>storage = lookup(var.storages,lookup(var.plans,var.config,"1xCPU-1GB"),"25")</pre>

   <pre>variable storages {
   type = map
   default = {
      "1xCPU-1GB" = "25"
      "1xCPU-2GB" = "50"
      "2xCPU-4GB" = "100"
   }
}
variable plans {
   type = map
   default = {
      "5USD"  = "1xCPU-1GB"
      "10USD" = "1xCPU-2GB"
      "20USD" = "2xCPU-4GB"
   }
}
variable config {
   default = "5USD"
}
   </pre>

   If the key does not exist in the map, the interpolation will fail. To avoid issues, you should specify a third argument, a default string value that is returned if the key could not be found. Do note though that this function only works on flat maps and will return an error for maps that include nested lists or maps.



   TODO: Obtain the latest ami.


<hr />

   Linters identify when they are not.


### Interpolation & HCL2 syntax

   Terraform 0.11 and earlier required all non-constant expressions to be provided via <strong>interpolation syntax</strong> with a format similar to shell scripts:

   <pre>image = "${var.aws_region}"</pre>

   PROTIP: Interpolation allows a single file to be specified for several environments (dev, qa, stage, prod), with a variable file to specify only values unique to each enviornment.

   But this pattern is now deprecated.

   <tt>var.</tt> above references values defined in file "variables.tf", which provide the "Enter a value:" prompt when needed:

   Values can be interpolated using syntax wrapped in $\{\}, called interpolation syntax, in the format of $\{type.name.attribute\}. For example, `$\{aws.instance.base.id\}` is interpolated to something like `i-28978a2`. Literal `$` are coded by doubling up `$$`.

   Interpolations can contain logic and mathematical operations, such as <tt>abs()</tt>, replace(string, search, replace).

   HCL does not contain conditional if/else logic, which is why <a href="#Modules">modules (described below)</a> are necessary.

   <a target="_blank" href="https://github.com/hashicorp/hcl2">HCL2</a>
   is the new experimental version that combines the interpolation language HIL to produce a single configuration language that supports arbitrary expressions.
   It's not backward compatible, with no direct migration path.


<hr />

<a name="main.tf"></a>

## main.tf

References:
   * https://www.terraform.io/language/values/variables#booleans
   <br /><br />

In this minimal sample file for AWS, HCL specifies the provider cloud, instance type used to house the AMI, which is specific to a region:

   <pre>terraform {
  required_version = ">= 0.8, < 0.9"
}
provider "aws" {
  version = ">= 1.2, < 1.2"
  alias = "${var.aws_region_alias}"
  region = "${var.aws_region}"
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
}
&nbsp;
resource "aws_instance" "web" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  subnet_id     = "subnet-c02a3628"
  vpc_security_group_ids = ["sg-a1fe66aa"]
  tags {
    Identity = "..."
    Name = "my_server"
  }
}
output "public_ip"  {
  value = aws.instance.my_server[*].public_ip
}
   </pre>

In this minimal sample file for Azure:

   <pre>provider “azurerm” {
   version = “~> 2.1.0"
   subscription_id = var.subscription_id
&nbsp;
   client_id = var.client_id
   client_secret = var.client_secret
   tenant_id = var.tenant_id
&nbsp;
   features {}
}
   </pre>

   <tt>terraform</tt>, the first block name, defines an argument (between curly braces) which defines the versions of terraform the file was tested for use.

   Each block defined between curly braces is called a <strong>"stanza"</strong>.

   REMEMBER: Key components of Terraform are: <a href="#Provicers">provider</a>, <a href="#Resources">resource</a>, <a href="#Provision">provision</a>.
   "provider" and "resource" are each a <strong>configuration block</strong>.

   In the <tt>resource</tt> block, "aws_instance" is the Resource Type. "web" is the Resource Name.

   If the prefix block name begins with a known provider name such as "time_" or "random_", a <tt>type =" is not needed because Terraform assumes that prefix as the type (<tt>type = time_static</tt>) referenced by <tt>${time_static.time_update.id}</tt>


   The ami (amazon machine image) identifier is obtained from Amazon's catalog of public images.

   "t1.micro" qualifies for the Amazon free tier available to first-year subscribers.

   PROTIP: Vertically aligning values helps to make information easier to find.

   `subnet_id` is for the VPC and vpc_security_group_ids array.

   `tags_identity` is to scope permissions.

   A data source is accessed through a data provider.


   References:
   * <a target="_blank" href="http://www.antonbabenko.com/2016/09/21/how-i-structure-terraform-configurations.html">   http://www.antonbabenko.com/2016/09/21/how-i-structure-terraform-configurations.html</a>
   * Another example is from the <a target="_blank" href="https://github.com/linuxacademy/terransible/blob/master/lab_scripts/main.tf">Terransible lab</a> and <a target="_blank" href="https://github.com/linuxacademy/terransible/blob/master/course_scripts/main.tf">course</a>
   * https://www.ahead.com/resources/how-to-create-custom-ec2-vpcs-in-aws-using-terraform/
   <br /><br />


<hr />

<a name="MultiCloud"></a>

## Multi-cloud/service

Terraform is more accurately characterized as a "<strong>multi-service</strong>" tool rather than a "multi-cloud tool" because PROTIP: One would need to rewrite templates to move from, say, AWS to Azure. Terraform doesn't abstract resources needed to do that. However, it does ease migration among clouds to avoid cloud vendor lock-in.

Terraform provides an alternative to each cloud vendor's IaC solution:
   * <a href="#CFN">AWS - Cloud Formation</a> & CDK
   * Microsoft Azure Resource Manager Templates
   * Google Cloud Platform Deployment Manager
   * OpenStack Heat (on-premises)
   <br /><br />

Terraform can also provision <strong>on-premises</strong> servers running OpenStack, VMWare vSphere, and  CloudStack as well as AWS, Azure, Google Cloud, Digitial Ocean, Fastly, and other <a href="#CloudProviders">cloud providers</a> (responsible for understanding API interacitons and exposing resources).

In GCP, Terraform state is stored as an object in a configurable prefix in a given bucket on GCS (Google Cloud Storage), which supports state locking.

To set an IAM policy for a specified project and replace any existing policy that is already attached, the use a <tt>google_project_iam_policy</tt> authoritative resource.

References:
   * https://oracle-base.com/articles/misc/terraform-variables


<a name="Providers"></a>

### Terraform Providers

   <a target="_blank" href="
   https://www.terraform.io/docs/language/providers/index.html">
   https://www.terraform.io/docs/language/providers/index.html</a>

1. List providers from <a target="_blank" href="https://github.com/terraform-providers">https://github.com/terraform-providers</a>

   <pre><strong>terraform providers</strong></pre>

   Most commonly, Terraform Providers translate HCL into API calls defined in (at last count, 109) cloud provider repositories from Terraform, Inc. Note there is a local provider and also a "random" provider to generate random data:

   ### Terraform Built-in Providers

   <a target="_blank" href="
   https://github.com/hashicorp/terraform/tree/master/builtin/providers">
   https://github.com/hashicorp/terraform/tree/master/builtin/providers</a>

   US Majors: "aws", "azurestack", "google", "google-beta", "azurerm", "azuread",

   "heroku", Kubernetes, "gitlab", DigitalOcean, Heroku, GitHub,
   "cloudscale", "cloudstack", "opentelekomcloud", "oci" (Oracle Cloud Infrastructure), "opc" (Oracle Public Cloud), "oracclepass" (Oracle Platform Cloud), "flexibleengine", "nsxt", "rancher", "rancher2", (VMware NSX-T), "vcd" (VMware vCloud Director ), "openstack", "scaleway", "UCloud", "JDcloud", Joyent Triton, Circonus, NaverCloud, TelefonicaOpenCloud, oneandone, Skytap, etc.

   Cloud operators in China: "alicloud", "huaweicloud", "tencentcloud", etc.

   Monitoring and other infrastructure services vendors:
   "datadog", "grafana", "newrelic", "pagerduty", "bigip" (F5 BigIP), "RabbitMQ", "acme", "yandex", "ciscoasa" (ASA), etc.

   CDN vendors: Dyn, "fastly", "cloudflare", "netlify", "packet" (Terraform Packet), "consul" (Terraform Consul), "nutanix", "ignition", "dnsimple", "fortis", LogicMonitor,  "profitbricks", "statuscake", etc.

   Database and repositories: "influxdb", "mysql", "postgresql", "vault" (Terraform), "bitbucket", "github", "archive", etc.

   Servers: "docker", "dns", UltraDNS, "helm" (Terraform), "http", "vsphere" (VMware vSphere), etc.

   chef, "spotinst", "linode", "hedvig", "selectel", "brightbox", "OVH", "nomad", "local", Panos, NS1, "rundeck", VMWare vRA7, random, external, "null", Icinga2, Arukas, runscope,  etc.

   The follow have been archived: <strong>Atlas (Terraform)</strong>, "clc" (CenturyLinkCloud), OpsGenie, (IBM) SoftLayer, PowerDNS, DNSMadeEasy, Librato, Mailgun, LogEntries, Gridscale, CIDR, etc.


<a name="CustomProviders"></a>

### Custom Providers

Custom Terraform Providers are written in the <a target="_blank" href="https://wilsonmar.github.com/golang">Go language</a>.

The steps below are based on
   <a target="_blank" href="
   https://www.terraform.io/intro/examples/">
   https://www.terraform.io/intro/examples</a>
and implemented in the setup scripts at:
   <a target="_blank" href="
   https://github.com/wilsonmar/mac-setup/">
   https://github.com/wilsonmar/mac-setup</a>
which performs the following steps for you:

1. Install a Git client if you haven't already.
1. Use an internet browser (Chrome) to see the sample assets at:

   <a target="_blank" href="
   https://github.com/terraform-providers/terraform-provider-aws.git">
   https://github.com/terraform-providers/terraform-provider-aws.git</a>

0. If you are going to make changes, click the <strong>Fork</strong> button.
0. Create or navigate to a container folder where new repositories are added. For example:

   `~/gits/wilsonmar/tf-sample`

0. Get the repo onto your laptop (substituting "wilsonmar" with your own account name):

   <tt><strong>git clone <a target="_blank" href="
   https://github.com/terraform-providers/terraform-provider-aws.git">
   https://github.com/terraform-providers/terraform-provider-aws.git</a> \-\-depth=1 &&
   cd tf-sample
   </strong></tt>

   The above is one line, but may be word-wrapped on your screen.

   The response at time of writing:

   <pre>Cloning into 'tf-sample'...
remote: Counting objects: 12, done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 9 (delta 0), pack-reused 0
Unpacking objects: 100% (12/12), done.
   </pre>

1. PROTIP: Make sure that the AWS region is what you want.

   <a target="_blank" href="
   https://www.terraform.io/docs/providers/aws/r/instance.html">
   https://www.terraform.io/docs/providers/aws/r/instance.html</a>
   AWS provider

   A template data store Template Provider exposes data sources which use templates to generate strings for other Terraform resources or outputs.




<hr />

<a name="tfvars"></a>

## Credentials in tfvars

Actual values which replace each variable in tf files are defined in a <a href="#tfvars">*.tfvars</a> file for each environment:

   PROTIP: Separate Terraform configurations by a folder for each environment:

   * base (template for making changes)
   * dev
   * loadtest (performance/stress testing)
   * stage
   * uat (User Acceptance Testing)
   * prod
   * demo (demostration used by salespeople)
   * train (for training users)
   <br /><br />

Credentials in a sample <strong>terraform.tfvars</strong> file for AWS:

   <pre>aws_access_key = "123456789abcdef123456789"
aws_secret_key = "<em>Your AWS SecretKey</em>"
aws_region = "us-east-1"
aws_accountId = "123456789123456"
private_key_path = "C:\\<em>PathToYourPrivateKeys</em>\PrivateKey.pem"
   </pre>

   It's not good security to store such information in a repo potentially shared, so tfvars files are specified in <a href="#.gitignore">.gitignore</a>,
   and <a href="#SecretStore">retrieved from secret storage</a> before running terraform commands.
   Also for security, the variables are then removed from memory shortly after usage.

1. Navigate into the base folder.

   PROTIP: Terraform commands act only on the current directory, and does not recurse into sub directories.

   A development.tfvars file may also contain:

   <pre>environment_tag = "dev"
tenant_id = "223dev"
billing_code_tag = "DEV12345"
dns_site_name = "dev-web"
dns_zone_name = "mycorp.xyz"
dns_resource_group = "DNS"
instance_count = "1"
subnet_count = "1"
   </pre>

   The production.tfvars file usually instead contain more instances and thus subnets that go through a load balancer for auto-scaling:

   <pre>environment_tag = "prod"
tenant_id = "223prod"
billing_code_tag = "PROD12345"
dns_site_name = "marketing"
dns_zone_name = "mycorp.com"
dns_resource_group = "DNS"
instance_count = "6"
subnet_count = "3"
   </pre>

   All these would use `main_config.tf` and `variables.tf` files commonly used for all environments:

   <strong>Tag</strong> for cost tracking by codes identifying a particular budget, project, department, etc.


   <a name="Lookups"></a>

   ### Defaults and lookup function

   PROTIP: Variables can be assigned multiple default values selected by a lookup function:

   <pre># AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# export AWS_DEFAULT_REGION=xx-yyyy-0
&nbsp;
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}
variable "amis" {
  type = "map”"
  default = {
    us-east-1 = "ami-1234"
    us-west-1 = "ami-5678"
  }
}
ami = ${lookup(var.amis, "us-east-1")}
   </pre>

   PROTIP: With AWS EC2, region "us-east-1" must be used as the basis for creating others.

   <a target="_blank" href="https://www.google.com/url?q=https%3A%2F%2Fdocs.aws.amazon.com%2FAWSEC2%2Flatest%2FUserGuide%2Flaunch-marketplace-console.html&sa=D&sntz=1&usg=AFQjCNGbWvcSfsheH4psSFED8ZF-w6mrqQ">NOTE</a>: Amazon has an approval process for making AMIs available on the public Amazon Marketplace.

   The "default" argument requires a literal value and cannot reference other objects in the configuration.


### Count of items processed

<a target="_blank" href="https://kodekloud.com/topic/count/">VIDEO</a>:
To create several items (such as files) using a count that is indexed from 0:

1. In a .tf file:

   <pre>resource "local_file" "my_data" {
  my_data_filename = var.my_data_filename[my_data_file_count.index]
  my_data_file_count = 3
}
   </pre>

1. In a variables.tf file, my_data_filename[0] is the first default file name:

   <pre>variable "my_data_filename" {
  default = [
     "/root/file_a.txt",
     "/root/file_b.txt",
     "/root/file_c.txt",
     "/root/file_d.txt"
  ]
}
   </pre>

1. After <tt>terraform apply</tt>, a list of files would yield:

   <pre>file_a.txt
file_b.txt
file_c.txt
   </pre>

   The default directory_permission and file_permission is <tt>0777</tt>.

<a target="_blank" href="https://kodekloud.com/topic/for-each/">VIDEO</a>:
To ensure that items are properly deleted, a for-each is used to create a map referenced by key values instead of a blind list referenced by an index.


<hr />

<a name=".gitignore"></a>

## .gitignore

1. In the <tt>.gitignore</tt> file are files generated during processing, so don't need to persist in a repository:

   <pre>.DS_Store
*.pem
*.tfvars
*.auto.tfvars
terraform.tfvars.json
*.tfplan
*.plan
*.tfstate
terraform.tfstate*
*.tfstate.backup
.terraform/
*.lock.info
*.iml
vpc
   </pre>

   `.DS_Store` is created internally within MacOS and so serves no purpose in GitHub.

   `.pem` are private key files which should never be stored in GitHub.

   `*.tfvars` contains secrets, so should not be saved in GitHub.

   `*.tfplan` is created each time `terraform plan` is run, so no need to save it in GitHub.

   `terraform.tfstate*` is a wildcard for folder `terraform.tfstate.d` and variants, which contain <a href="#Workspaces">Terraform Workspaces</a>.

   `tfstate.backup` is created from the most recent previous execution before the current `tfstate` file contents.

   `.terraform/` specifies that the folder is ignored when pushing to GitHub.

   Terraform apply creates a <tt>dev.state.lock.info</tt> file as a way to signal to other processes to stay away while changes to the environment are underway.

   PROTIP: CAUTION: tfstate files can contain secrets, so .gitignore and delete them before git add.

1. Define .gitignore for use with editors used by the team: <a href="#VSCode">VSCode</a>, PyCharm, IntelliJ, etc.

   https://www.toptal.com/developers/gitignore/api/terraform,intellij+all,visualstudiocode

   https://intellij-support.jetbrains.com/hc/en-us/community/posts/360006390300-Terraform

   https://community.opengroup.org/osdu/platform/deployment-and-operations/infra-azure-provisioning/-/blob/master/.gitignore

<hr />

## Upgrading Terraform version

When upgrading Terraform version, configurations may need syntax update.

1. To make updates automatically:

   <pre><strong>terraform <em>version</em>upgrade</strong></pre>


<hr />

<a name="Terraforming"></a>

### Terraform reversed from resources

Wisdom Hambolu analyzes use of a utility that attempts to convert Cloud Formation files to Terraform, with mixed results.

To generate from resources created under an AWS account/Azure Subscription Terraform HCL files, here are the options:

NOTE: No longer supported is the Ruby-based <a target="_blank" href="https://github.com/dtan4/terraforming">https://github.com/dtan4/terraforming</a>.
It also comes as a Docker container.

Created about the same time are:
* <a target="_blank" href="https://github.com/GoogleCloudPlatform/terraformer">Google's terraformer</a>
* <a target="_blank" href="https://docs.cycloid.io/open-source-software/terracognita.html">cloud diagram creator Cycloid's</a> <a target="_blank" href="https://github.com/cycloidio/terracognita">terracognita</a> https://blog.cycloid.io/what-is-terracognita
<br /><br />

Both are installed onto MacOS using Homebrew.

   <pre><strong>brew info terracognita
brew install terracognita
terracognita aws resources | wc -l      # 119
terracognita azurerm resources | wc -l  # 119
terracognita google resources | wc -l   #  21
   </strong></pre>

   On GCP, customize based on video at https://asciinema.org/a/330055 :

   <pre><strong>terracognita google --project cycloid-sandbox --region us-central1 \
   --credentials "$HOME/cycloid/google/cycloid-iam-9789b351a19b.json \
   --tfstate resources.tfstate \
   --hcl resources.tf \
   -i google_compute_instance \
   -i google_compute_network
   </strong></pre>

   On Azure:

   <pre><strong>terracognita azurerm --tenant-id $TENANT_ID \
   --subscription-id $SUBSCRIPTION_ID \
   --resource-group-name $GROUP_NAME [format to import] \
   --client-id $CLIENT_ID --client-secret $CLIENT_SECRET
   </strong></pre>

   On AWS with profiles:

   <pre><strong>terracognita aws --aws-default-region "$AWS_REGION" \
     [format to import] --aws-profile $PROFILE_NAME
   </strong></pre>

   On AWS with credentials:

   <pre><strong>terracognita aws --aws-default-region '$AWS_REGION" \
     [format to import] --aws-access-key $AWS_ACCESS_KEY \
     --aws-secret-access-key $AWS_SECRET_ACCESS_KEY
   </strong></pre>

   On AWS with credentials file:

   <pre><strong>terracognita aws --aws-default-region $AWS_REGION \
      [format to import] --aws-shared-credentials-file $FILE_PATH
   </strong></pre>

   Additionally on AWS:

   <pre><strong>--hcl <em>test.tf</em> \
   --module <em>module-name (as tf module) Optional with this format:</em> \
   --module-variables <em>file.json/yaml (to limit vars on the module)</em> \
   --tfstate <em>test.tfstate (as tfstate)</em>
   </strong></pre>

   More info at https://github.com/cycloidio/terracognita#modules

   <pre><strong>brew info terraformer
brew install terraformer
   </strong></pre>

   <a name="DiagrammingTools"></a>

2. Diagram generation tools:

   <a name="Hava.io"></a>

   ### Hava.io

   The <a target="_blank" href="https://www.hava.io/blog/aws-network-diagram-generator">AWS network diagram generator</a> from <a target="_blank" href="https://www.linkedin.com/company/team-hava/">Hava.io</a>
   visualizes security groups, connections, etc. on AWS, Azure, and GCP so that you can more easily spot anomalies, review cost forecasts, etc.

   <a target="_blank" href="https://i.pinimg.com/originals/99/16/40/99164086b2d6abf8f5e1356dac1f800f.jpg"><img alt="hava-multi-cloud-2788x1432.png" width="874" src="https://i.pinimg.com/originals/99/16/40/99164086b2d6abf8f5e1356dac1f800f.jpg"></a>

   Selecting each resource reveals its attributes: security groups, connections, subnets, ingress/egress IPs.

   <a target="_blank" href="https://i.pinimg.com/originals/b2/2c/4a/b22c4ac1e744a7f740a3a7c5aaa83c8b.jpg"><img alt="aws-hava.io-diagram-874x926.png" width="874" height="926" src="https://i.pinimg.com/originals/b2/2c/4a/b22c4ac1e744a7f740a3a7c5aaa83c8b.jpg"></a>

   For a 14-day trial on AWS, provide your Cross-Account ARN.

   <a target="_blank" href="https://www.hava.io/blog/aws-vpc-diagram-generator"><img alt="aws-hava.io-diagram-874x926.png" width="874" height="926" src="https://i.pinimg.com/originals/30/c6/57/30c657c2c3352b0d51d328fec541a9a2.jpg"></a>

   Export diagrams for on-boarding, management, audit and compliance purposes in 3D diagrams as well as output to Visio, draw.io or any VSDX.
   Diagrams can be <a target="_blank" href="https://www.hava.io/hava-embedded-diagram-viewer">embedded as iframes on webpages</a>.

   <a name="Cloudcraft"></a>

   ### Cloudcraft

   <a target="_blank" href="https://cloudcraft.co/">cloudcraft.co</a>

   <a name="Cloudviz"></a>

   ### Cloudviz

   https://cloudviz.io/ for AWS at $10/month

   LucidChart?

3. Deploy your existing CFT instead of trying to convert it:

   https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html

4. It may be possible for simple cases but perhaps very complex (almost impossible) to convert CFT <strong>intrinsic functions</strong>:

   https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html



### Azure AzTfy

From Azure:
https://github.com/Azure/aztfy
a tool to bring existing Azure resources under the management of Terraform,
based on https://github.com/hashicorp/terraform-provider-azurerm


<a name="OpenSourcing"></a>

<a name="x1"></a>*1 - CF/CFN (CloudFormation) is used only within the AWS cloud while others operate on several clouds. CFN is the only <strong>closed-sourced</strong> solution on this list.
Code for Terraform is open-sourced at <a target="_blank" href="https://github.com/hashicorp/terraform/">https://github.com/hashicorp/terraform</a>

Those who create AMI's also provide <a target="_blank" href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-guide.html">CFN templates</a> to customers.<a target="_blank" href="
https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-sample-templates.html">*</a> (<a target="_blank" href="https://templates.cloudonaut.io/en/stable/">cloudnaut.io has free templates</a>)

TOOL: Troposphere and Sceptre makes CFN easier to write with basic loops and logic that CFN lacks.

But in <a target="_blank" href="https://aws.amazon.com/about-aws/whats-new/2018/09/introducing-aws-cloudformation-macros/">Sep 2018 CloudFormation got <a target="_blank" href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">macros</a> to do iteration and interpolation (find-and-replace). Caveat: it requires dependencies to be setup.

CF/CFN (Cloud Formation) limits the size of objects uploaded to S3.

Can’t really do that with CFN alone. Even though Cloud Formation has <strong>nested stack</strong> only for AWS.

AWS Cloud Formation and Terraform can both be used at the same time.
Terraform is often used to handle security groups, IAM resources, VPCs, Subnets, and policy documents; while CFN is used for actual infrastructural components, now that cloud formation has released <a href="#DriftManagement"><strong>drift detection</strong> using Bridgecrew</a>.

<a target="_blank" href="https://www.reddit.com/r/aws/comments/9y25ei/why_should_i_learn_cloudformation_when_we_have/e9yqgcy/">NOTE</a>: "Combined with cfn-init and family, CloudFormation supports different forms of deployment patterns that can be more awkward to do in Terraform:
ASGs with different replacement policies, automatic rollbacks based upon Cloudwatch alarms, etc. due to state being managed purely internally by AWS.

Terraform is not really an application level deployment tool. So you wind up rolling your own.

Working out an odd mix of null resources and shell commands to deploy an application while trying to roll back is not straightforward and seems like a lot of reinventing the wheel."

References about CFN:
   * <a target="_blank" href="http://www.slideshare.net/AntonBabenko/managing-aws-infrastructure-using-cloudformation">Puppet, Chef, Ansible, Salt</a> AWS API libraries Boto, Fog
   * AWS CloudFormation Sample Templates at <a target="_blank" href="
   https://github.com/awslabs/aws-cloudformation-templates">
   https://github.com/awslabs/aws-cloudformation-templates</a>
   * <a target="_blank" href="https://www.safaribooksonline.com/library/view/aws-cloudformation-master/9781789343694/">AWS CloudFormation Master Class</a> by Stéphane Maarek from Packt May 2018
   * Some CloudFormation templates are compatible with OpenStack Heat templates.
   <br /><br />



<hr />

<a name="DependencyGraph"></a>

### Dependency Graph for visualization

<a target="_blank" href="https://user-images.githubusercontent.com/300046/131201026-93ada43f-58b1-43b5-ac70-c70c85fe15d5.png"><img alt="terraform-dependency-graph-2257x1019" width="2257" height="1019" src="https://user-images.githubusercontent.com/300046/131201026-93ada43f-58b1-43b5-ac70-c70c85fe15d5.png"><br /><em>(click image for full screen</em></a>

1. <a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=45m26s">VIDEO</a>:
The above <strong>Resource Graph</strong> visual representation of dependencies can be created by this command:

   <pre><strong>terraform graph | dot -Tsvg > graph.svg</strong></pre>

   The <tt>terraform graph</tt> command creates graphs specified in the DOT language, with the file name extension <tt>.gv</tt>, so the <tt>dot</tt> program is needed to generate <tt>.svg</tt> format used to specify graphics in programs.

1. Copy the SVG code to Clipboard to paste into <a target="_blank" href="https://www.webgraphwiz.com/">webgraphwiz.com</a>

   PROTIP: Save that URL among your browser bookmarks.

   <a target="_blank" href="https://user-images.githubusercontent.com/300046/154824803-0525264c-24f0-4ec7-a699-a8e0971b0613.png"><img alt="terraform-cloudacad-767x379" width="767" height="379" src="https://user-images.githubusercontent.com/300046/154824803-0525264c-24f0-4ec7-a699-a8e0971b0613.png"></a>

   The above is from <a target="_blank" href="https://cloudacademy.com/learning-paths/solving-infrastructure-challenges-with-terraform-197/">"Solving Infrastructure Challenges with Terraform" 5h videos on CloudAcademy</a> by <a target="_blank" href="https://www.linkedin.com/in/loganrakai/">Rogan Rakai</a> using GCP and VSCode on <a target="_blank" href="https://github.com/cloudacademy/managing-infrastructure-with-terraform">https://github.com/cloudacademy/managing-infrastructure-with-terraform</a> to create a two-tier sample WordPress app with a <a target="_blank" href="https://github.com/cloudacademy/managing-infrastructure-with-terraform/blob/master/src/5-gcp-demo/two-tier/cloudsql.tf">MYSQL_5_7 database</a>, both running under Kubernetes (GKE), with a replica in another region.

   Alternately, several apps can display SVG files, including Sketch.app.

1. A more colorful format using <a target="_blank" href="https://github.com/28mm/blast-radius">Blast Radius</a> <a target="_blank" href="https://28mm.github.io/blast-radius-docs/">[examples]</a>:
<img width="939" alt="terraform-resource-colorful-1878x1470" src="https://user-images.githubusercontent.com/300046/131344896-407d377a-046d-45b4-8159-a7168e2cabbc.png">


<hr />

<a name="Terragrunt"></a>

### Terragrunt from Gruntwork

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&list=RDCMUC8butISFwT-Wl7EV0hUK0BQ&index=2&t=47309s">VIDEO</a>:
A popular replacement of some standard terraform commands are <strong>terragrunt</strong> commands open-sourced at <a target="_blank" href="https://github.com/gruntwork-io/terragrunt">https://github.com/gruntwork-io/terragrunt</a> by <a href="#Gruntwork">Gruntwork</a>:

   <pre><strong>   terragrunt get
   terragrunt plan
   terragrunt apply
   terragrunt output
   terragrunt destroy
   </strong></pre>

   These wrapper commands provide a quick way to fill in gaps in Terraform:

   * provide dynamic values to a provider

   * provide extra tools for working with multiple Terraform modules

   * <a href="#State">managing remote state</a>, and keeping DRY (Don't Repeat Yourself), so that you only have to define it once, no matter how many environments you have. This reduces boilerplate.

   * configure remote state, locking, extra arguments, etc.

   WARNING: There are some concerns about Terragrunt's use of invalid data structures. See
   <a target="_blank" href="https://github.com/gruntwork-io/terragrunt/issues/466">https://github.com/gruntwork-io/terragrunt/issues/466</a>

   QUESTION: Terraform Enterprise cover features of Terragrunt?

References:
   * https://blog.gruntwork.io/introducing-the-gruntwork-module-service-and-architecture-catalogs-eb3a21b99f70 August 26, 2020
   * https://www.missioncloud.com/blog/aws-cloudformation-vs-terraform-which-one-should-you-choose
   <br /><br />


### Install on MacOS:

1. To install Terragrunt on macOS:

   <pre><strong>brew unlink tfenv
   brew install terragrunt
   brew unlink terraform
   brew link --overwrite tfenv
   </strong></pre>

   The unlink is to avoid error response:

   <pre>Error: Cannot install terraform because conflicting formulae are installed.
  tfenv: because tfenv symlinks terraform binaries
&nbsp;
Please `brew unlink tfenv` before continuing.
&nbsp;
Unlinking removes a formula's symlinks from /usr/local. You can
link the formula again after the install finishes. You can --force this
install, but the build may fail or cause obscure side effects in the
resulting software.
   </pre>

   Otherwise:

   <pre>==> Installing dependencies for terragrunt: terraform
==> Installing terragrunt dependency: terraform
==> Downloading https://homebrew.bintray.com/bottles/terraform-0.12.24.catalina.
Already downloaded: /Users/wilson_mar/Library/Caches/Homebrew/downloads/041f7578654b5ef316b5a9a3a3af138b602684838e0754ae227b9494210f4017--terraform-0.12.24.catalina.bottle.tar.gz
==> Pouring terraform-0.12.24.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/terraform/0.12.24: 6 files, 51.2MB
==> Installing terragrunt
==> Downloading https://homebrew.bintray.com/bottles/terragrunt-0.23.10.catalina
==> Downloading from https://akamai.bintray.com/d6/d6924802f5cdfd17feae2b561ab9d
######################################################################## 100.0%
==> Pouring terragrunt-0.23.10.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/terragrunt/0.23.10: 5 files, 30.4MB
   </pre>

1. For the Terragrunt menu on macOS:

   <pre><strong>terragrunt
   </strong></pre>

   Expand the Terminal/console window edge for full screen to see all lines without wrapping:

   <pre>DESCRIPTION:
   terragrunt - Terragrunt is a thin wrapper for Terraform that provides extra tools for working with multiple
   Terraform modules, remote state, and locking. For documentation, see https://github.com/gruntwork-io/terragrunt/.
&nbsp;
USAGE:
   terragrunt &LT;COMMAND> [GLOBAL OPTIONS]
&nbsp;
COMMANDS:
   run-all               Run a terraform command against a 'stack' by running the specified command in each subfolder. E.g., to run 'terragrunt apply' in each subfolder, use 'terragrunt run-all apply'.
   terragrunt-info       Emits limited terragrunt state on stdout and exits
   validate-inputs       Checks if the terragrunt configured inputs align with the terraform defined variables.
   graph-dependencies    Prints the terragrunt dependency graph to stdout
   hclfmt                Recursively find hcl files and rewrite them into a canonical format.
   aws-provider-patch    Overwrite settings on nested AWS providers to work around a Terraform bug (issue #13018)
   *                     Terragrunt forwards all other commands directly to Terraform
&nbsp;
GLOBAL OPTIONS:
   terragrunt-config                            Path to the Terragrunt config file. Default is terragrunt.hcl.
   terragrunt-tfpath                            Path to the Terraform binary. Default is terraform (on PATH).
   terragrunt-no-auto-init                      Don't automatically run 'terraform init' during other terragrunt commands. You must run 'terragrunt init' manually.
   terragrunt-no-auto-retry                     Don't automatically re-run command in case of transient errors.
   terragrunt-non-interactive                   Assume "yes" for all prompts.
   terragrunt-working-dir                       The path to the Terraform templates. Default is current directory.
   terragrunt-download-dir                      The path where to download Terraform code. Default is .terragrunt-cache in the working directory.
   terragrunt-source                            Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
   terragrunt-source-update                     Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
   terragrunt-iam-role                          Assume the specified IAM role before executing Terraform. Can also be set via the TERRAGRUNT_IAM_ROLE environment variable.
   terragrunt-iam-assume-role-duration          Session duration for IAM Assume Role session. Can also be set via the TERRAGRUNT_IAM_ASSUME_ROLE_DURATION environment variable.
   terragrunt-ignore-dependency-errors          *-all commands continue processing components even if a dependency fails.
   terragrunt-ignore-dependency-order           *-all commands will be run disregarding the dependencies
   terragrunt-ignore-external-dependencies      *-all commands will not attempt to include external dependencies
   terragrunt-include-external-dependencies     *-all commands will include external dependencies
   terragrunt-parallelism &nbsp;N>                   *-all commands parallelism set to at most N modules
   terragrunt-exclude-dir                       Unix-style glob of directories to exclude when running *-all commands
   terragrunt-include-dir                       Unix-style glob of directories to include when running *-all commands
   terragrunt-check                             Enable check mode in the hclfmt command.
   terragrunt-hclfmt-file                       The path to a single hcl file that the hclfmt command should run on.
   terragrunt-override-attr                     A key=value attribute to override in a provider block as part of the aws-provider-patch command. May be specified multiple times.
   terragrunt-debug                             Write terragrunt-debug.tfvars to working folder to help root-cause issues.
   terragrunt-log-level                         Sets the logging level for Terragrunt. Supported levels: panic, fatal, error, warn (default), info, debug, trace.
   terragrunt-strict-validate                   Sets strict mode for the validate-inputs command. By default, strict mode is off. When this flag is passed, strict mode is turned on. When strict mode is turned off, the validate-inputs command will only return an error if required inputs are missing from all input sources (env vars, var files, etc). When strict mode is turned on, an error will be returned if required inputs are missing OR if unused variables are passed to Terragrunt.
&nbsp;
VERSION:
   v0.31.7
&nbsp;
AUTHOR(S):
   Gruntwork &LT;www.gruntwork.io>
   </pre>

1. To define:

   <pre>terragrunt = {
     # (put your Terragrunt configuration here)
   }</pre>


### The problem with Terragrunt

A terragrunt.hcl is needed in each folder where we want Terragrunt to generates a Terraform project in that folder. So people end up with a bunch of folders that represent all your modules, environments, regions permutations - one folder for each permutation of env+server+region+account.<a target="_blank" href="https://www.reddit.com/r/Terraform/comments/naugwe/anyone_using_or_recommends_terraspace_or/">*</a>

The problem with that is <strong>duplicated</strong> terragrunt.hcl configurations, which create the need to plan Terragrunt project structure carefully upfront. However, recent TF versions have:

   * partial backend configurations (so you can pass backend as CLI flags)

   * ability to set data directory  tf_data_dir

   * Change to a directory with `-chdir` parameter.


<hr />


   <a name="Console"></a>

   ### Terraform Console

4. Open the Terraform Console (REPL) from a Terminal/command shell:

   <tt><strong>terraform console</strong></tt>

   The response is the prompt:

   <pre><strong>></strong></pre>

5. Commands can interpret numbers:

   <pre>element(list("one","two","three"),0,2)</pre>

   The response is (because counting begins from zero):

   <pre>1:3: element: expected 2 arguments, got 3 in:</pre>

6. Type <tt>exit</tt> or press (on a Mac) control+C to return to your Terminal window.

   The program also expects an additional top level in all <tt>.tfvars</tt> files:

   You should now be at your operating system console.


<a name="Fmt"></a>

### fmt HCL Coding Conventions

Terraform language style conventions include:

  * A block definition must have block content delimited by "{" and "}" starting on the same line as the block header.

  * Indent using two spaces (not tabs).

  * A space before and after "=" assignment is not required, but makes for easier reading.


<hr />

<a name="Modules"></a>

## Reusable Modules

Modules are self-contained packages of Terraform configurations that are managed as a group.

In other words, a Terraform module is a container for multiple resources used together.

Putting Terraform code in modules enable their reuse, which speeds development by reducing testing and increasing the pace of change.

Terraform modules provide "blueprints" to deploy.

References:
   * <a target="_blank" href="https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d">https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d</a>
   * <a target="_blank" href="https://www.youtube.com/watch?time_continue=147&v=LVgP63BkhKQ" title="[38:58] at Oct 12, 2017">How to Build Reusable, Composable, Battle tested Terraform Modules</a>
   * <a target="_blank" href="https://linuxacademy.com/howtoguides/posts/show/topic/12369-how-to-introduction-to-terraform-modules" title="Nov 18, 2016 by Giuseppe B">How to: Introduction to Terraform Modules</a>
   <br /><br />


<a name="CustomModules"></a>

### Custom modules

<a target="_blank" href="https://kodekloud.com/topic/using-modules-from-the-registry/">VIDEO</a>

To add more logic to continue using declarative specifications (templates), administrators can write <a href="#Modules">modules</a> of their own.

Thus Terraform defines the "desired state configuration" (DSC).

1. To get (download and update) modules in the root module <strong>without initializing state or pull provider binaries</strong> like <tt>terraform init</tt>:

   <pre><strong>terraform get</strong></pre>

### Output from within a module

From within a module named "some_module":

<pre>output "returned-variable" {
  value = "1"
}
</pre>

Output in the main Terraform code invoking the module:

<pre>module.some_module.returned-variable</pre>

The module's source can be on a local disk:

   <pre>module "service_foo" {
  source = "/modules/microservice"
  image_id = "ami-12345"
  num_instances = 3
}
   </pre>

   ### Modules from GitHub

   The source can be from a GitHub repo such as <a target="_blank" href="https://github.com/objectpartners/tf-modules">https://github.com/objectpartners/tf-modules</a>

   <pre>module "rancher" {
  source = "<a target="_blank" href="https://github.com/objectpartners/tf-modules//rancher/server-standalone-elb-db&ref=9b2e590">github.com/objectpartners/tf-modules//rancher/server-standalone-elb-db&ref=9b2e590</a>"
}
   </pre>

   * Notice "https://" are not part of the source string. It's assumed.
   * Double slashes in the URL above separate the repo from the subdirectory.
   * PROTIP: The ref above is the first 7 hex digits of a commit SHA hash ID. Alternately, semantic version tag value (such as "v1.2.3") can be specified. This is a key enabler for immutable strategy.
   <br /><br />

The ability to loop over modules with a single module call became available August 2020 with the release of Terraform 0.13.

   ### Terraform Registry

PROTIP: Learn from modules created by others in <a target="_blank" href="https://registry.terraform.io/browse/modules">Terraform Modules Registry (marketplace) at https://registry.terraform.io/browse/modules</a> which contains 9,000 modules shared globally by many.

For AWS in <a target="_blank" href="https://github.com/terraform-aws-modules/">github.com/terraform-aws-modules</a>: https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/acm/aws/latest">ACM</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/appsync/aws/latest">Appsync</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/alb/aws/latest">ALB</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/atlantis/aws/latest">Atlantis</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws/latest">autoscaling</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/apigateway-v2/aws/latest">API Gateway v2</a>

* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/bigquery/aws/latest">Big Query</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/cloudwatch/aws/latest">Cloudwatch</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/cloudfront/aws/latest">Cloud Front</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/dynamodb-table/aws/latest">dynamodb-table</a>

* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/eventbridge/aws/latest">Eventbridge</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/ebs-optimized/aws/latest">ebs-optimized</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest">ec2-instance</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/ecs/aws/latest">ECS</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest">EKS</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/elb/aws/latest">ELB</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/iam/aws/latest">IAM</a>

* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws/latest">key-pair</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/lambda/aws/latest">Lambda</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/lb-http/aws/latest">Load Balancer HTTP</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/org-policy/aws/latest">org-policy</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/redshift/aws/latest">redshift</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws/latest">rds-aurora</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/route53/aws/latest">Route 53 (DNS)</a>

* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest">S3-bucket</a> <a target="_blank" href="https://kodekloud.com/topic/introduction-to-aws-s3/">VIDEO</a>, <a target="_blank" href="https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">AWS docs</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest">security-group</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/step-functions/aws/latest">step-functions</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/transit-gateway/aws/latest">transit-gateway</a>

* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/vpn-gateway/aws/latest">vpn-gateway</a>
* <a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest">VPC</a>
<br /><br />

### Vault

HashiCorp Vault can store long-lived credentials in a secure way and dynamically inject short-lived, temporary keys to Terraform at deployment. <a target="_blank" href="https://registry.terraform.io/modules/hashicorp/vault">https://registry.terraform.io/modules/hashicorp/vault</a>
module installs HashiCorp's own Vault and Consul on <a target="_blank" href="https://registry.terraform.io/modules/hashicorp/vault/aws/">AWS EC2</a>, <a target="_blank" href="https://registry.terraform.io/modules/hashicorp/vault/azurerm/">Azure</a>, <a target="_blank" href="https://registry.terraform.io/modules/hashicorp/vault/google/">GCP</a>.

<a target="_blank" href="https://www.youtube.com/watch?v=LVgP63BkhKQ&t=15m46s">Video of demo</a> by Yevgeniy Brikman:
<a target="_blank" title="terraform-mod-vaults-1168x207-37317.jpg" href="https://user-images.githubusercontent.com/300046/39780285-1426518c-52c9-11e8-9544-8cac52ff2297.jpg">
<img alt="terraform-mod-vaults-640x114-16475.jpg" width="640" src="https://user-images.githubusercontent.com/300046/39780240-da22a9b8-52c8-11e8-995e-e8c4a7ce325e.jpg"></a>


<a name="CommunityModules"></a>

### Community modules

Terrafrom provides its own <a href="#Modules">modules</a>.

PROTIP: Don't blindly include public assets in your code. First scan them. Then copy lines and test them.


Terraform Modules are how to add "smartness" to manage each DevOps component:

<a target="_blank" href="https://user-images.githubusercontent.com/300046/39751305-fb4167b4-5274-11e8-9ee4-b62324002453.png">
<img alt="terraform-devops-vendors-807x352-107086" width="807" src="https://user-images.githubusercontent.com/300046/39751536-bd617afa-5275-11e8-943f-30ebbf17da0e.jpg"></a>

* <a target="_blank" href="https://github.com/terraform-community-modules">
https://github.com/terraform-community-modules</a>

* <a target="_blank" href="https://github.com/gruntwork-io/terratest">
https://github.com/gruntwork-io/terratest</a>
is a Go library that makes it easier to write automated tests for your infrastructure code.

https://terratest.gruntwork.io/docs/testing-best-practices/unit-integration-end-to-end-test/
https://terratest.gruntwork.io/
https://terratest.gruntwork.io/docs/testing-best-practices/unit-integration-end-to-end-test/

* <a target="_blank" href="
   https://www.ybrikman.com/writing/2017/10/13/reusable-composable-battle-tested-terraform-modules/">
   https://www.ybrikman.com/writing/2017/10/13/reusable-composable-battle-tested-terraform-modules</a>

* https://github.com/terraform-aws-modules

CAUTION: <a target="_blank" href="https://thenewstack.io/bridgecrew-all-these-misconfigured-terraform-modules-are-a-security-issue/">In 2020, 44%</a> of public registry modules did not meet <a target="_blank" href="https://www.cisecurity.org/cis-benchmarks/">CIS benchmarks</a>.
56% of the modules that have ever been downloaded contain what is now considered a misconfiguration.

<a target="_blank" href="https://www.youtube.com/watch?v=6UDePj5newo&list=PLLasX02E8BPA5IgCPjqWms5ne5h4briK7&index=10">VIDEO: Terraform Provider Azure.gov</a> for standardized templates across clouds at <a target="_blank" href="https://github.com/dod-iac">github.com/dod-iac (DOD Infrastructure as Code)</a> with 36 examples of how the Pentagon uses Terraform within AWS IAM, S3, EBS, KMS, Kinesis api gateway, Lambda, MFA, GuardDuty, Route53, etc.
Included is <a target="_blank" href="https://github.com/dod-iac/terraform-module-template">https://github.com/dod-iac/terraform-module-template  for creating new terraform modules</a>.


### Terraform Cloud

TFE provides easy access to shared state and secret data.

Terraform Cloud workspaces store the Terraform configuration in a linked version control repository.


<hr />

<a name="Terraform_AWS"></a>

### Terraform on AWS

<a target="_blank" href="https://app.pluralsight.com/courses/49b66fa5-6bcd-469c-ad04-6135ff739bb6" title="June 1, 2020">VIDEO: Implementing Terraform with AWS</a> by Ned Bellavance at <a target="_blank" href="https://github.com/ned1313/Implementing-Terraform-on-AWS">https://github.com/ned1313/Implementing-Terraform-on-AWS</a>


### CLI List AWS instances

1. Tagged AWS resources with the <tt>environment</tt>

   <pre>env_instance_tags = {
   "environment" = "prod"
   }
   </pre>

1. List instances filtered for only those resources tagged:

   <pre>export AWS_PAGER=""
   export ENV="dev"  # or "qa" or "prod"
    aws ec2 describe-instances \
    --filters Name=tag:environment,Values=${ENV} \
    --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,Environment:Tags[?Key==`environment`]|[0].Value}' \
    --output table
   </pre>

   <tt>export AWS_PAGER=""</tt> disables paging of output.

1. To list all instances:

   <pre>-filters Name=tag-key,Values=Name \</pre>


### VPC

<a target="_blank" href="https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest">
For example</a>, to create a simple AWS VPC (Virtual Private Cloud),

1. Allocate IPs outside the VPC module declaration.

   <pre>resource "aws_eip" "nat" {
  count = 3
  vpc = true
}
   </pre>

1. Set: https://github.com/terraform-aws-modules/terraform-aws-vpc/tree/master/examples

   <pre>module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
&nbsp;
  name = "my-vpc"
  cidr = "10.0.0.0/16"
&nbsp;
  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
&nbsp;
  enable_nat_gateway = true
  enable_vpn_gateway = true
&nbsp;
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
   </pre>

   REMEMBER: "azs" designates Availability Zones.

   PROTIP: Remember: a common mistake under each <tt>module</tt> is forgetting that <a href="#Providers">providers</a> are specified within a list:

   <pre>module "vpc" {
   source = "terraform-aws-modules/vpc/aws"
   providers = {
      aws = aws.eu
   }
   name = "my-vpc"
   cidr = "10.0.0.0/16"
   azs = "["eu-west-1a", "eu-west-1b", "eu-west-1c"]
   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
   &nbsp;
   enable_nat_gateway = true
   enable_vpn_gateway = true
   &nbsp;
   tage = {
      Terraform = "true"
      Environment = "dev"
   }
   </pre>



<a name="Terraform_Azure"></a>

### Terraform on Azure

https://medium.com/modern-stack/azure-management-using-hashicorp-terraform-e15744f7e612

https://www.oasys.net/posts/updating-azurerm-template-from-terraform/

<a target="_blank" href="https://app.pluralsight.com/courses/49b66fa5-6bcd-469c-ad04-6135ff739bb6" title="Oct 31, 2019
">VIDEO: Implementing Terraform on Microsoft Azure</a> by Ned Bellavance

1. In a browser, go to straight to the Azure Cloud Shell:

   <pre><strong>https://shell.azure.com</strong></pre>

1. PROTIP: Azure uses the subscription you last used (based on cookies saved from your previous session). So switch to another browser profile or switch to another Subscription.

   <pre><strong>az account list</strong></pre>

   <tt>"isDefault": true,</tt> means you're using the default Azure account.

   Alternately, environment variables can also be specified for a Service Principal with a cert/secret hard coded in a file run:

   <pre>export ARM_CLIENT_ID="..."
export ARM_CLIENT_SECRET="..."
export ARM_SUBSCRIPTION_ID="..."
export ARM_TENANT_ID="..."
   </pre>

   Alternately, to use a container's Managed Service Identity (MSI) instead of ARM_CLIENT_SECRET:

   <pre>export ARM_USE_MSI=true
export ARM_SUBSCRIPTION_ID="..."
export ARM_TENANT_ID="..."
   </pre>


1. Terraform is pre-installed:

   <pre><strong>terraform --version</strong></pre>

   <pre>Terraform v0.14.10
Your version of Terraform is out of date! The latest version
is 0.15.0. You can update by downloading from https://www.terraform.io/downloads.html
   </pre>

   See what is the <a target="_blank" href="https://releases.hashicorp.com/terraform/">latest version</a> and <a target="_blank" href="https://github.com/terraform-providers/terraform-provider-azure/releases">details for each release</a>.


<a target="_blank" href="https://docs.microsoft.com/en-us/azure/developer/terraform/">
Terraform on Azure documentation</a> index by Microsoft:
   * <a target="_blank" href="https://docs.microsoft.com/en-us/azure/developer/terraform/overview">Terraform with Azure</a> on Microsoft Docs summary
   * <a target="_blank" href="https://docs.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell">Quickstart: Configure Terraform using Azure Cloud Shell</a>
   * <a target="_blank" href="https://docs.microsoft.com/en-us/azure/developer/terraform/get-started-powershell">Quickstart: Configure Terraform using Azure PowerShell</a>
   * https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/custom-script-windows to pass in a ps to run, referenced in https://www.udemy.com/course/terraform-on-azure-2021/learn/lecture/25583448#overview

Videos:
   * <a target="_blank" href="https://www.udemy.com/course/terraform-on-azure-2021/">
   1.5 hr Udemy video course: Terraform on Azure 2021</a> by <a target="_blank" href="https://www.linkedin.com/in/luke-orellana/">Luke Orellana</a> under Mike Pfiffer's CloudSkills.io at https://github.com/CloudSkills/Terraform-Projects/tree/master/4-Build-Azure-Infrastructure
   * <a target="_blank" href="https://www.udemy.com/course/learning-terraform-on-microsoft-azure/">Learning Terraform on Microsoft Azure - Terraform v12 / v13</a>

<hr />

<a name="Testing"></a>

## Testing Terraform

   As with Java and other programming code, Terraform coding should be tested too.

   Gruntwork has an open-source library to setup and tear down conditions for verifying whether
   servers created by Terraform actually work.

   <a target="_blank" href="https://github.com/gruntwork-io/terratest">
   https://github.com/gruntwork-io/terratest</a>
   is a Go library that makes it easier to write automated tests for your infrastructure code.
   It's written in Go that uses Packer, ssh, and other commands
   to automate experimentation and
   to collect results (impact of) various configuration changes.

   <a target="_blank" href="https://terratest.gruntwork.io/docs/getting-started/quick-start/">
   Quick Start Terratest</a>

   <a target="_blank" href="https://www.linkedin.com/pulse/terratest-tf-lint-terraform-compliance-fabio-palumbo/?articleId=6677222508749438976">BLOG</a>:


<a name="validate"></a>

### terraform validate

1. Validate the <strong>folder</strong> (see <a target="_blank" href="
   https://www.terraform.io/docs/commands/validate.html">
   https://www.terraform.io/docs/commands/validate.html</a>)

   <pre><strong>terraform validate single-web-server
   </strong></pre>

   If no issues are identified, no message appears. (no news is good news)

1. Add a <a target="_blank" href="https://gist.github.com/jamtur01/a567078b7ba545c3492f7cd32a65450d">
   pre-commit hook to validate in your Git repository</a>

   <a name="main.tf"></a>

   ### Main.tf

   PROTIP: There should be only one <strong>main.tf</strong> per folder.


   <a name="TerraformInit"></a>

   ### Plug-in Initialization

   Cloud providers are not included with the installer, so...

1. In your gits folder:

   <pre>git clone https://github.com/terraform-providers/terraform-provider-aws.git --depth=1
   </pre>

0. Initialize Terraform working directory (like `git init`) <a href="#PlugIns">plug-ins</a>:

   <tt><strong>terraform init
   </strong></tt>

   Sample response:

   <pre>Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "aws" (1.17.0)...
&nbsp;
The following providers do not have any version constraints in configuration,
so the latest version was installed.
&nbsp;
To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.
&nbsp;
* provider.aws: version = "~> 1.17"
&nbsp;
Terraform has been successfully initialized!
&nbsp;
You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.
&nbsp;
If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
   </pre>

   See <a target="_blank" href="https://www.terraform.io/docs/commands/init.html">
   https://www.terraform.io/docs/commands/init.html</a>

   This creates a hidden `.terraform\plugins" folder path containing a folder for your os - `darwin_amd64` for MacOS.



<hr />

<a name="tfinit"></a>

## terraform init

   <tt>terraform init</tt> is run again if you modify or change dependencies.

   The command causes a <tt>.terraform</tt> folder in the folder.

1. To <strong>Download and install binaries of providers and modules</strong>, initialize each new Terraform project folder:

   <pre><strong>terraform init hashicorp/vault/aws
   </strong></pre>

   The above makes use of <a target="_blank" href="https://github.com/hashicorp/terraform-aws-vault">https://github.com/hashicorp/terraform-aws-vault</a> stored as sub-folder <tt>hashicorp/vault/aws</tt>

   It's got 33 resources. The sub-modules are:

   * private-tls-cert (for all providers)
   * vault-cluster (for all providers)
   * vault-lb-fr (for Google only)
   * vault-elb (for AWS only)
   * vault-security-group-rules (for AWS only)
   <br /><br />

   An example of initializing a backend in S3:

   <pre>terraform init \
    -backend-config="bucket=red30-tfstate" \
    -backend-config="key=red30/ecommerceapp/app.state" \
    -backend-config="region=us-east-2" \
    -backend-config="dynamodb_table=red30-tfstatelock" \
    -backend-config="access_key={ACCESS_KEY}" \
    -backend-config="secret_key={SECRET_KEY}"
   </pre>

   QUESTION: Are interpolations now allowed in backend .tf statements?

   Alternately, to skip default installation of plugins:

   <pre><strong>terraform init hashicorp/vault/aws -get-plugins-false
   </strong></pre>

   Alternately, to install from a target folder path:

   <pre><strong>terraform init hashicorp/vault/aws -plugins-dir="$PLUGIN_PATH"
   </strong></pre>

   Sample response:

   <pre>Initializing <a href="#Backends">backends</a>...
&nbsp;
Initializing provider plugins...
- Finding hashicorp/azurerm versions matching "2.40.0"...
- Installing hashicorp/azurerm v2.40.0...
- Installed hashicorp/azurerm v2.40.0 (signed by HashiCorp)
&nbsp;
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.
&nbsp;
Terraform has been successfully initialized!
&nbsp;
You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.
&nbsp;
If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
   </pre>

1. To confirm that command creates a (hidden) <tt><strong>.terraform</strong></tt> directory:

   <pre><strong>ls -al .terraform
   </strong></pre>

1. To confirm that command creates a (hidden) <strong>dependency lock file</strong> to enforce versioning of plugins and Terraform itself:

   <pre><strong>ls .terraform.lock.hcl
   </strong></pre>

1. Set a dependency lockfile mode:

   <pre><strong>terraform init -lockfile=MODE
   </strong></pre>

1. To upgrade all plugins to the latest version (which compiles with the configuration's version constraint):

   <pre><strong>terraform init -upgrade
   </strong></pre>

1. What if Terraform

   <pre><strong>terraform apply</strong></pre>

1. Respond to "Enter a Value:"

   <pre><strong>yes</strong></pre>

1. Verify it worked:

   <pre><strong>az group list -o table</strong></pre>

   "Environment" = "terraexample"

   <a name="Destroy"></a>

1. Done with Terraform

   <pre><strong>terraform destroy -auto-approve</strong></pre>

1. Respond to "Enter a Value:"

   <pre><strong>yes</strong></pre>

1. Navigate to the next example:

   <pre><strong>cd ~/clouddrive/terraform-on-azure/02-init-plan-apply-destroy/02-interpolation
terraform init
code main.tf
   </strong></pre>

1. Execute plan file "temp"

   <pre><strong>terraform apply temp -auto-approve</strong></pre>

   REMEMBER: Although <tt>terraform plan -out temp</tt> requires <tt>-out</tt> argument, <tt>terraform apply</tt> does not require an argument in front of the file name.

1. This example has output blocks to separate tfstate for the virtual network and each resource group (using interpolation):

   <pre><strong>code ~/clouddrive/terraform-on-azure/03-terraform-state/02-remote-state/main.tf
   </strong></pre>

   The output blocks can be moved to a separate <a href="#output.tf">output.tf</a> file.

1. data.
1. variables.tf for reusability. Define default values refered as "var." in:

   <pre><strong>code ~/clouddrive/terraform-on-azure/04-variables/02-deployvariables/terraform.tfvars
   </strong></pre>

   Environment variables are referenced as "TF_VAR_XXX"

   A map is a collection of variables, for use in conditional logic.

   An object can contain lists, etc.

1. 05-Modules passes NSG output

   <a target="_blank" href="
   https://registry.terraform.io/browse/modules?provider=azurerm">
   https://registry.terraform.io/browse/modules?provider=azurerm</a>

* Advanced location variable:

   <pre>variable "location" {
      type = string
      description = "Azure location (region)"
      default = ""
   }</pre>

   <pre>resource "azurerm_resource_group" "rg" {
   name = "rg-testcondition"
   location = var.location != "" ? var.location : "westus2"
   }
   </pre>

Docs:
   * <a target="_blank" href="https://www.udemy.com/course/terraform-on-azure-2021/learn/lecture/25583436#overview">chapter 37</a> shows use of for_each to specify hub-and-spoke networking.




4. To limit the number of <strong>concurrent operations</strong> as Terraform walks the graph:

   <tt>terraform apply ... -parallelism=3</tt>



<hr />

### Handle secrets in *.tfvars securely

   PROTIP: Since *.tfvars files typically containing secrets, handle them securely.

   Within <tt>abc-dev-fe.sh</tt> For local development only on a laptop, <strong>unencrypt</strong> a <tt>local.tfvars</tt> file.

   For other environments running in the cloud, retrieve a <tt>*.tfvars</tt> file from a trusted cloud vault storage  (such as a HashiCorp Vault, Azure Key Vault, AWS Secrets Manager, etc.).

   References:
   * https://learn.hashicorp.com/tutorials/terraform/sensitive-variables?in=terraform/0-14
   * <a target="_blank" href="https://learn.hashicorp.com/tutorials/terraform/secrets-vault?in=terraform/secrets">Inject Secrets into Terraform Using the Vault Provider</a>
   * https://www.terraform.io/language/state/sensitive-data
   * https://www.digitalocean.com/community/tutorials/how-to-securely-manage-secrets-with-hashicorp-vault-on-ubuntu-20-04
   * https://www.linode.com/docs/guides/secrets-management-with-terraform/
   <br /><br />

### Marking Variables as Sensitive

   <pre>variable "database_password" {
    description = "Password of database administrator"
    type = string
    <strong>sensitive = true</strong>
}
variable "database_username" {
    description = "Username of database administrator"
    type = string
}
   </pre>


<hr />

<a name="TerraformCommands"></a>

## Terraform CLI Commands


   Use them to perform the <a target="_blank" href="https://www.terraform.io/guides/core-workflow.html">traditional core Terraform "happy path" workflow</a> consists of <a target="_blank" href="https://developer.hashicorp.com/terraform/tutorials/aws-get-started/infrastructure-as-code">these steps</a>:

   <a name="AdhocCLIcommands"></a>

   ### Ad hoc Terraform CLI commands

1. <tt>terraform init</tt>
1. <tt>terraform validate</tt>
1. <tt>terraform plan -out plan_file</tt>
1. Scan Terraform files for violation of policies (running TFSec, etc.)
1. <tt>terraform apply plan_file</tt>

1. To validate whether HCL files are syntactically valid and internally consistent, regardless of any provided variables or existing state. Also, correctness of attribute names and value types:

   <pre><strong>terraform validate</strong>

   This is automatically run when terraform plan or terraform apply is run.

1. To reformat HCL files according to <a target="_blank" href="https://www.terraform.io/docs/configuration/style.html">rules</a>.

   <pre><strong>terraform fmt -diff</strong>

   This is a destructive command, so make sure to <tt>git commit</tt> before the command.



<a name="tfplan"></a>

### Terraform Plan command

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=6h18m9s">VIDEO</a>:

   A key differentiator of Terraform is its <strong>plan</strong> command, which provides more than just a "dry-run" before configurations are applied for real.

   Terraform identifies <strong>dependencies</strong> among components requested, and <strong>creates them in the order needed</strong>.

1. A simple way

   <pre><strong>terraform plan -out=happy.plan
   </strong></pre>

   Alternate format (instead of an equal sign):

   <pre><strong>terraform plan -out happy.plan
   </strong></pre>

   Alternately, leave out the .plan file extension, as it's assumed:

   <pre><strong>terraform plan -out happy
   </strong></pre>

   A sample response:

   <pre>"&LT;computered>" means Terraform figures it out.
   </pre>

   Under the covers, terraform plan <strong>generates an executable</strong>, and uses it to <a href="#TerraformApply">apply</a> configuration to create infrastructure. This guarantees that what appeared in plan is the same as when apply occurs.

   The Terraform Plan file output is a binary file (machine code).

   <a name="ParallelExecution"></a>

   ### Parallel execution

   When Terraform analyzes a configuration specification, it recognizes where <strong>parallel execution</strong> can occur, which means faster runs to create real infrastructure.

   Terraform control, iterations, and (perhaps most of all) management of resources already created (desired state configuration) over several cloud providers (not just AWS).

   * https://app.pluralsight.com/courses/49b66fa5-6bcd-469c-ad04-6135ff739bb6

   ### A more sophisticated plan

   Alternately, a more sophisticated way to have Terrform evaluate based on vars in a different (parent) folder:

   <pre><strong>terraform plan \
      -var 'site_name=demo.example.com' \
      -var-file='..\terraform.tfvars' \
      -var-file='.\Development\development.tfvars' \
      -state='.\Development\dev.state' \
      -out base-`date-+'%s'`.plan
   </strong></pre>

   The `-var` parameter specifies a value for var.site_name variable.

   The two dots in the command specifies to look above the current folder.

   The `-out` parameter specifies the output file name.
   Since the output of terraform plan is fed into the <a href="#TerraformApply">`terraform apply`</a> command, a static file name is best.
   However, some prefer to avoid overwriting by automatically using a different date stamp in the file name.

   The "%s" yields a date stamp like 147772345 which is the numer of seconds since the 1/1/1970 epoch.

   Pluses and minuses flag additions and deletions. This is a key differentiator for Terraform as a ""

   Terraform creates a dependency graph (specfically, a Directed Acyclic Graph).
   This is so that nodes are built in the order they are needed.


   <a name="tfshow"></a>

   ## Terraform show

1. View the plan created by <tt>terraform plan</tt>

   <pre><strong>terraform show "happy.plan"
   </strong></pre>

   This shows output variables defined by tf code such as:

   <pre>output "instance-dns" {
  value = aws_instance.nodejs1.public_dns
}
output "private-dns" {
  value = aws_instance.nodejs1.private_dns
}
   </pre>

   "(known after apply" is resolved by <tt>terraform apply</tt>.


   <a name="tfapply"></a>

   ## Terraform apply

   <a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=6h1m31s">VIDEO</a>:

1. Process the plan created by <tt>terraform plan</tt>

   <pre><strong>terraform apply "happy.plan"
   </strong></pre>

   REMEMBER: `terraform apply` generates a <strong><tt>terraform.tfstate</tt></strong> file (containing JSON) to persist the state of runs by mapping resource IDs to their data. There is a one-to-one mapping of resource instances to remote objects in the cloud.

   Alternately, to specify the state file's output name and attribute:

   <pre><strong>terraform apply -state=".\develop\dev.state"
      -var="environment_name=development"
   </strong></pre>

   Within the file, "version" defines the version of the tfstate JSON format.
   The "terraform_version" is the <a href="#tf_version">terraform program version</a>.
   , the file contains a <strong>serial</strong> number to increment every time the file itself changes.

<!--   <pre>dns_names = [
      [
         359f20b2-673d-6300-e918-fcea6a314a26.inst.d9a01feb-be7d-6a32-b58d-ec4a2bf4ba7d.us-east-3.triton.zone,
         happy-randomizer.inst.d9a01feb-be7d-6a32-b58d-ec4a2bf4ba7d.us-east-3.triton.zone
      ]
   ]
   primaryIp = [
      165.225.173.96
   ]
   </pre>
-->

1. List resources in the state:

   <pre><strong>terraform state list</strong></pre>

1. Pull current remote state and output to stdout:

   <pre><strong>terraform state pull</strong></pre>

1. Push (update) remote state from a local state:

   <pre><strong>terraform state push</strong></pre>
1. Show a specific resource in the state:

   <pre><strong>terraform state show</strong></pre>

1. Move an item in the state (to change the reference) instead of renaming a module, which would result in a create and destroy action:

   <pre><strong>terraform state mv</strong></pre>

1. Remove instances from the state:

   <pre><strong>terraform state rm</strong></pre>

   ### Alternative

   Alternative specification of environment variable:

   <pre><strong>TF_VAR_first_name="John" terraform apply
   </strong></pre>

   Values to Terraform variables define inputs such as run-time DNS/IP addresses into
   <a href="#Modules">Terraform modules</a>.

   What terraform apply does:

   1. Generate model from logical definition (the Desired State).
   2. Load current model (preliminary source data).
   3. Refresh current state model by querying remote provider (final source state).
   4. Calculate difference from source state to target state (plan).
   5. Apply plan.
   <br /><br />

   NOTE: Built-in functions:
   <a target="_blank" href="
   https://terraform.io/docs/configuration/interpolation.html">
   https://terraform.io/docs/configuration/interpolation.html</a>

   In Terraform, you cannot create your own user-defined functions.



   Primitive data types in Terraform are Number, String, Boolean.

   Dynamic blocks CANNOT be used with lifecycle blocks, because Terraform must process lifecycle blocks before it can safely evaluate expressions.


   <a name="AWSStateMgmt"></a>
   <a name="State"></a>

   ### Apply to create tfstate

   References:
   * https://kodekloud.com/topic/introduction-to-terraform-state/
   * <a target="_blank" href="https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa">BLOG:
   Yevgeniy Brikman (Gruntwork) "How to manage Terraform state"</a>
   <br /><br />

1. While in the same folder where there is a "backend.tf" file (above), have Terraform read the above to establish an EC2 instance:

   <pre>terraform apply -auto-approve</pre>

   The console shows resources provisioned in the cloud.



1. To force the state file to be updated during a plan operation:

   <pre><strong>terraform plan --refresh=false</strong></pre>

1. To force the state to be updated anytime:

   <pre><strong>terraform refresh</strong></pre>



1. If "-auto-approve" was not specified, responde to the prompt by typing "yes".

   Apply creates a new file <strong><tt>terraform.tfstate</tt></strong> define the status/condition of cloud resources at a specific time.

   NOTE: Subsequent to apply, any command that modify state results in a <tt><strong>terraform.tfstate.backup</strong></tt> created to store tfstate before it changes.

1. Manually verify on the AWS Management Console GUI webpage set to service S3.


### Terraform State commands

Rather than editing the tfstate file:

1. List

   <pre><strong>terraform state list</strong></pre>

1. State can be pulled from a remote state backend:

   <pre><strong>terraform state pull</strong></pre>

1. <a target="_blank" href="https://kodekloud.com/topic/terraform-state-commands/">VIDEO</a>: Extract from response above the hash_key:

   <pre>terraform state pull | jq '.resources[] | select(.name == "state-locking-db")|.instances[].attributes.hash_key'</pre>


<a name="StateS3"></a>

## Saving tfstate in S3 Backend

In a team environment, it helps to store state state files off a local disk and in a "backend" location central to all.

1. Using AWS IAM, define a AWS user with Permissions in a Role.
1. Obtain and save credentials for user in an environment variable.

   <a target="_blank" href="https://www.youtube.com/watch?v=rUPSyAG4C1g&list=PLQP5dDPLts65J8csDjrGiLH5MZgTyTsDB&index=3" title="Mar 17, 2019">
   VIDEO: Terraform Remote State on Amazon S3</a>
   describes use of a  file named <strong>`backend.tf`</strong>, such as <a target="_blank" href="https://github.com/Cloud-Yeti/aws-labs/blob/master/terraform-aws/lesson4-s3-backend-state-file/backend.tf">this AWS S3 specification</a>, after substituting "<em>YouOwn</em>" with the (globally unique) S3 bucket name defined with the current AWS credentials:

   <pre>terraform {
  backend "s3" {
    bucket = "<em>YouOwn</em>-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
   </pre>


   <a name="RemoteState"></a>

   ### Remote state

   <a target="_blank" href="https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa">NOTE</a>
   terraform.tfstate can be stored over the network in S3, etcd distributed key value store (used by Kubernetes), or a HashiCorp Atlas or Consul server. (HashiCorp Atlas is a licensed solution.)

1. State can be obtained using command:

   <pre><strong>terraform remote pull</strong></pre>

1. Retrieve state data from a remote data store:

   <pre><strong>terraform_remote_state</strong></pre>


   <a name="Backends"></a>

   ### Backends

   Terraform can manage state through these backends which persists (stores) data:

   * local (the default)
   HashiCorp products:
      * Terraform Enterprise (cloud)
      * Consul (a distributed key-value store)
      * Atlas
      <br /><br />

   * etcd (distributed key value store used by Kubernetes)

   Cloud vendors:
      * s3 - in AWS <a target="_blank" href="https://kodekloud.com/topic/remote-backends-with-s3/">VIDEO</a> with DynamoDB
      * gcs - Google Cloud
      * azurerm

   * artifactory - by JFrog
   * cos
   * postgres
   * manta
   * swift
   <br /><br />

   Some backends allows multiple named workspace instances to be associated with a single backend configuration (without configuring a new backend authentication).

1. When using remote state as a data source, use root-level outputs of Terraform configurations as input data for another configuration:

   <pre>data "terraform_remote_state" "vpc" {
  backend = "remote"
  &nbsp;
  config = {
    organization = "hashicorp"
    workspaces = {
      name = "vpc-prod"
    }
  }
}
resource "aws_instance" "foo" {
  subnet_id = data.terraform_remote_state.vpc.<strong>outputs.subnet_id</strong>
}
   </pre>


<a name="DriftManagement"></a>

### Drift management

   * https://www.youtube.com/watch?v=CsCdEvZ5la0
   * <a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=6h24m19s">VIDEO</a>:
   <br /><br />

Drift occurs when the actual state of resources provisioned diverges from the expected state.

If an approved manual configuration has been changed or removed, such as when a VM is terminated using the AWS Console GUI, the state can be <strong>refreshed</strong> by an alias of the command <tt>terraform apply -refresh-only -auto-approve</tt> which doesn't make changes:

   <pre><strong>terraform refresh</strong></pre>

1. When you can't create new resources (you're not in control of resource creattion), and an existing resource needs to be added, <strong>import</strong> an existing resource (one at a time) into a placeholder definition:

   <pre>resource "aws_instance" "example1" {
    # blank instance configuration
   }</pre>

   The resource address and its ID is required:

   <pre><strong>terraform import aws_instance.example1" i-abc1111
   </strong></pre>

   CAUTION: Importing the same resources is not recommended because that can cause weird behavior.


<a name="DataRefs"></a>

### data instance_id import

<a target="_blank" href="https://kodekloud.com/topic/terraform-import/">VIDEO</a>:
1. To reference an existing instance from within a .tf file, first capture the instance_id of the instance not managed by Terraform.

1. Reference that instance_id in a .tf file:

   <pre>data "aws_instance" "news_server" {
      instance_id = "i-234124897234"
   }
output news_server {
   value = data.aws_instance.news_server.public_ip
}
   </pre>

1. REMEMBER: terrform import brings in the <strong>state</strong> of another resource, and cannot change that other instance. So define a shell resource:

   <pre>resource "aws_instance" "other_server" {
   # (resource arguments)
   }
   </pre>

   Once imported, resources are available for management.



   <a name="Taint"></a>

   ### Taint to -replace

1. Due to Terraform's design for immutability, if an <strong>individual</strong> resource has been damaged or degraded such that it cannot be detected by Terraform, or to get Terraform to make a configuration change in real time, <strong>replace</strong> by resource address <strong>index</strong> in a plan or apply, for example:

   <pre><strong>terraform apply -replace="aws_instance.example[0]"</strong></pre>

   <tt>aws_instance</tt> is a module namespace or resource_type. "example" is its name.

   CAUTION: Replacement of "tainted" resources may cause other resources to be modified, such as public IPs.

   NOTE: <tt>terraform taint</tt> (to mark a resource for replacement) was deprecated as of version 0.152. <a target="_blank" href="https://kodekloud.com/topic/terraform-taint/">VIDEO</a>

   <pre><strike>terraform taint aws_instance.webserver</strike></pre>

   The above would cause the resource to be deleted and replaced with a resource with the new configuration.

   The opposite command was:

   <pre><strike>terraform untaint aws_instance.webserver</strike></pre>


<hr />

   <a name="Cleanup"></a>
   <a name="DestroyState"></a>

   ### Destroy state

   PROTIP: At time of this writing, Amazon charges for Windows instances by the hour while it charges for Linux by the minute, as other cloud providers do.

   <a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=1h55m48s">VIDEO</a>: Destroy instances (so they don't rack up charges unproductively):

1. While in the same folder where there is a "backend.tf" file (above), have Terraform read the above to establish an EC2 instance when given the command:
33
3333300
   <pre>terraform destroy</pre>

1. Confirm by typing "yes".

1. Manually verify on the AWS Management Console GUI webpage set to service S3.


   <a name="DestroyFlag"></a>

   ### Processing flags

   HCL can contain flags that affect processing. For example, within a resource specification,
   `force_destroy = true` forces the provider to delete the resource when done.


<a name="Crossplane"></a>

### Crossplane

<a target="_blank" href="https://blog.crossplane.io/">Crossplane.io</a> provides more flexible ways to interact with Kubernetes than Terraform. Their <a target="_blank" href="https://github.com/crossplane">github.com/crossplane</a> has providers for AWS, Azure, and GCP.

<a target="_blank" href="https://blog.crossplane.io/crossplane-vs-terraform/"><img src="../images/terraform-Crossplane-Stack.svg"></a>



<hr />

<a name="Workspaces"></a>

## Workspaces

NOTE: The <a target="_blank" href="https://github.com/gruntwork-io/terragrunt/">Terragrunt</a> wrapper for terraform plan/apply/destroy commands (and in file <tt>terraform.tfvars</tt>) provide an alternative to HashiCorp's Workspaces feature (described at https://www.terraform.io/docs/state/workspaces.html).

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=10h55m39s">VIDEO</a>:
Workspaces enable management of multiple "environments" in alternate state files (dev, qa, stage, prod).

   <a target="_blank" href="https://www.youtube.com/watch?v=zOS3v9We1cg">
   VIDEO INTRO</a>:
   Terraform now offers a Terraform Cloud provider to manage VCS provider GitHub
   in temporary test workspaces, to see the impact of incremental changes.

   Workspaces work locally or via remote backends.

1. By default, when working locally, Terraform creates a workspace in your local backend called "default".

   <pre><strong>terraform workspace list</strong></pre>

   `*` identifies the selected workspace

1. Create a new workspace projectX to contain a separate state file:

   <pre><strong>terraform workspace new projectX</strong></pre>

1. To change your current workspace to a workspace:

   <pre>terraform workspace select projectX</pre>

1. Reference the <tt>${terraform.workspace}</tt> named value in HCL:

   <pre>resource "aws_instance" "example" {
      // Return 5 instead of 1 if the value is not "default"
      count = "${terraform.workspace == "default" ? 5 : 1 }
      # ...
      tags = {
         Name = "web - ${terraform.workspace}"
      }
      # ...
   }
   </pre>

1. To output the current Workspace:

   <pre><strong>??? terraform.workspace</strong></pre>

1. Terraform stores workspace states in a folder called <tt><strong>terraform.tfstate.d</strong></tt>

   <pre><strong>ls -al terraform.tfstate.d</strong></pre>


PROTIP: Use a remote backend unless you're working by yourself.

Terraform Cloud workspaces act like differen working directories (like GitHub branches)





<hr />

## VPC Security Group

2. VPC Security group

   The example in <a target="_blank" href="https://github.com/gruntwork-io/intro-to-terraform/blob/master/single-web-server/main.tf">
   Gruntwork's intro-to-terraform</a> also specifies the vpc security group:

   <pre>resource "aws_instance" "example" {
  \# Ubuntu Server 14.04 LTS (HVM), SSD Volume Type in us-east-1
  ami = "ami-2d39803a"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p "${var.server_port}" &
              EOF
  <a href="#Taggging">tags</a> {
    Name = "ubuntu.t2.hello.01"
  }
}
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  \# Inbound HTTP from anywhere:
  ingress {
    from_port = "${var.server_port}"
    to_port = "${var.server_port}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
   </pre>

   The "var.server_port" is defined in variables file:

   <a name="Tagging"></a>

   The tag value AWS uses to name the EC2 instance.



   <a name="ExecControl"></a>

   ### Execution control

   Terraform automatically detects and enforces rule violations, such as
   use of rogue port numbers other than 80/443.


<a name="output.tf"></a>

<a name="Outputs"></a>

 ## outputs.tf

   Sample contents of an outputs.tf file:

   <pre>  output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}
  output "url" {
  value = "http://${aws_instance.example.public_ip}:${var.port}"
}
   </pre>

   Sample contents of an outputs.tf file for a cluster points to the Elastic Load Balancer:

   <pre>output "aws_elb_public_dns" {
  value = "${aws_elb.web.dns_name}"
}
output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}
   </pre>

   <pre>output "azure_rm_dns_cname" {
  value = "${azurerm_dns_cname_record.elb.id}"
}
   </pre>

   PROTIP: If the AMI is no longer available, you will get an error message.

1. Output Terraform variable:

   <pre>output "loadbalancer_dns_name" {
  value = "${aws_elb.loadbalancer.dns_name}"
}
   </pre>



<hr />

<a name="Provisioners"></a>

## Provisioners

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=2h0m10s">VIDEO</a>:
When a resource is initially created, provisioners can be executed to initialize that resource.

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=2h9m9s">VIDEO</a>:
This defines a string (from a variable) inside the file:

   <pre>resource "aws_instance" "web" {
  # ...
  provisioner "file" {
    content = "ami_used: ${self.ami}"
    destination = "/tmp/file.log"
}
   </pre>

1. <a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=2h10m5s">VIDEO</a>: To copy files or directories within a Linux machine, using the file provisioner:

   <pre>resource "aws_instance" "web" {
  # ...
  provisioner "file" {
    source = "conf/myapp.conf"
    destination = "/etc/myapp.conf"
&nbsp;
  connection {
    type     = "ssh"
    user     = "root"
    password = "${var.root_password}"
    host     = "${var.host}"
  }
}
   </pre>

A connection block is needed for the provisioner to pass authentication.

This examples copies a file through Windows Remote Management (winrm):

   <pre>resource "aws_instance" "web" {
  # ...
  provisioner "file" {
    source = "conf/myapp.conf"
    destination = "C:/App/myapp.conf"
&nbsp;
  connection {
    type     = "winrm"
    user     = "Administrator"
    password = "${var.admin_password}"
    host     = "${var.host}"
  }
}
   </pre>

QUESTION: How about a custom user name rather than generic root/admin account name?

<a name="cloudinit"></a>

CAUTION: What Cloud Provisioners do are not reflected in Terraform state, so better to use cloudinit scripts.

<strong>Cloud-init</strong> is an industry standard for cross-platform cloud instance initializations.
When your VM is launched on a Cloud Service Provider (CSP) based on YAML or Bash script such as:

<ul><pre>#!bin/bash
yum update -y
yum install -y httpd
sudo service httpd start
sudo service httpd enable
</pre></ul>

Packer (from HashiCorp) is an automated image-build service for multiple clouds.

   Provisioner definitions define the properties of each resource, such as initialization commands.

<a name="remote-exec"></a>

### remote-exec on target machines

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=2h6m47s">VIDEO</a>:
After a VM is provisioned, this <strong>inline</strong> script makes uses of Puppet:

   <pre>resource "aws_instance" "web" {
  # ...
  provisioner "remote-exec" {
    inline = [
      "puppet apply",
    "sudo service nginx start",
    "consul join ${aws_instance.web.private_ip}",
  ]
}
   </pre>

Observe that the last line is allowed to have a comma.

REMEMBER: A single "script" is the keyword for when a relative or absolute local script is copied to the remote resource for execution. The plural "scripts" is the keyword when executed <strong>in order</strong>:

   <pre>provisioner "remote-exec" {
  # ...
  scripts = [
    "./setup-users.sh",
    "/home/anyuser/Desktop/bootstrap",
  ]
}
   </pre>

Another inline example installs an nginx web server and displays a minimal HTML page:

   <pre>provisioner "remote-exec" {
  inline = [
    "sudo yum install nginx -y",
    "sudo service nginx start",
    "echo "&LT;html>&LT;head>&LT;title>NGINX server&LT;/title>&LT;/head>&LT;body style=\"background-color">&LT;/body>&LT;/html>"
  ]
}
   </pre>

PROTIP: SECURITY CAUTION: Better to pull in installers and libraries from an internal Artifactory registry which allows for forensics in case something bad happens, since the external one could have been infected an hour before.

To trigger a map of values

   <pre>resource "aws_instance" "web" {
  # ...
  triggers {
    cluster_instance_ids = "${join(",", aws_instance.cluster.*.id)}"
  }
  connection {
    host     = "${element(aws_instance.cluster.*.public_ip, 0)}"
  }
  provisioner "remote-exec" {
    inline = [
      "bootstrap-cluster.sh ${join(" ", aws_instance.cluster.*.private_ip)},
    ]
  }
}
   </pre>


<a name="Ansible"></a>
<a name="local-exec"></a>

### local-exec provisioner Ansible

Provisioner configurations are also plugins for Ansible configuration management:

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=2h4m2s">VIDEO</a>:
"Local" is where Terraform commands are run, which can be your laptop/workstation or
on a build server (Jenkins, GitHub Actions, GCP Cloud Build, AWS Code Build, etc.).
Another example is within HashiCorp's "Terraform Cloud Run Environment" of single-use Linux virtual machine.

<a target="_blank" href="https://www.terraform.io/docs/enterprise/runs/installing-software.html">NOTE</a>: Software can be specified for installation using Packer's `local-exec` provisioner which executes commands on host machines. For example:

   <pre>resource "null_resource" "local-software" {
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
    command = &LT;&LT;EOH
sudo apt-get update
sudo apt-get install -y ansible
EOH
  }
}
   </pre>

   NOTE: The <tt>apt-get</tt> installer is in-built within Ubuntu Linux distributions.

   PROTIP: Use this to bootstrap automation such as assigning permissions and running Ansible or PowerShell DSC, then use DSC scripts for more flexibility and easier debugging.

On a Windows machine:

   <pre>resource "null_resource" "windows-example" {
  provisioner "local-exec" {
    command = "Get-Date > completed.txt"
    interpreter = ["PowerShell", "-Command"]
  }
}
   </pre>

QUESTION: The interpreter is excuted first, then the command?


### Ansible local-exec

See https://github.com/radekg/terraform-provisioner-ansible

As a general rule, use Ansible for repetitive on-going maintenance tasks such as:

   * Backup table to Datawarehouse
   * Truncate daily tables
   <br /><br />


   To run Ansible playbook.yml:

   <pre>provisioner "local-exec" {
   command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
   -u {var.user} -i '${self.ipv4_address},' \
   --private-key ${var.ssh_private_key} playbook.yml"}
   </pre>

   The key component is <tt>${self.ipv4_address}</tt> variable. After provisioning the machine, Terraform knows its IP address. And we need to pass an IP address for Ansible. Therefore, we are using the built-in Terraform variable as input for Ansible.

   Another option is to run Terraform and Ansible separately but import the data from one to another.
   Terraform saves all the information about provisioned resources into a Terraform state file. We can find the IP addresses of Terraform-provisioned instances there and import them into the Ansible inventory file.

   <a target="_blank" href="https://github.com/adammck/terraform-inventory">Terraform Inventory</a> extract from the state file the IP addresses for use by ab Ansible playbook to configure nodes.

   Ansible can use hash_vault to retrieve secrets from a HashiCorp Vault.

   References:
   * https://www.hashicorp.com/resources/ansible-terraform-better-together
   * https://www.digitalocean.com/community/tutorials/how-to-use-ansible-with-terraform-for-configuration-management
   <br /><br />

   NOTE: Ansible Tower cannot be used with Terraform.


<a name="ConfigMgmt"></a>

### Configuration Management

<table border="1" cellpadding="4" cellspacing="0">
<thead><tr><th>&nbsp;</th><th>Maturity</th><th>Community</th><th>Type
   </th><th>Infra.</th><th>Lang.
   </th><th>Agent</th><th>Master</th></tr>
</thead><tbody>
<tr valign="top"><td>Puppet</td><td>2005 High</td><td>Large
   </td><td><a href="#ConfigMgmt">Config. Mgmt.</a>
   </td><td>Mutable</td><td><a href="#Declarative">Declarative</a>
   </td><td>Yes</td><td>Yes</td></tr>
<tr valign="top"><td>Chef</td><td>2009 High</td><td>Large
   </td><td><a href="#ConfigMgmt">Config. Mgmt.</a>
   </td><td>Mutable</td><td><a href="#Procedural">Procedural</a>
   </td><td>Yes</td><td>Yes</td></tr>
<tr valign="top"><td>SaltStack</td><td>2011 Medium</td><td>Large
   </td><td><a href="#ConfigMgmt">Config. Mgmt.</a>
   </td><td>Mutable</td><td ><a href="#Declarative">Declarative</a>
   </td><td>Yes</td><td>Yes</td></tr>
<tr valign="top"><td>Ansible</td><td>2012 Medium</td><td>Huge, fastest growing
   </td><td><a href="#ConfigMgmt">Config. Mgmt.</a>
   </td><td>Mutable</td><td><a href="#Procedural">Procedural</a>
   </td><td>No</td><td>No</td></tr>
</tbody></table>

Terraform and Ansible can work in unison, complementing each other. Terraform bootstraps the underlying cloud infrastructure for Ansible to configure app settings and the user space. To test a service on a dedicated server, skip using Terraform and run the Ansible playbook on that machine. Derek Morgan has a <a target="_blank" href="https://github.com/linuxacademy/terransible">"Deploy to AWS with Ansible and Terraform" video class</a> at LinuxAcademy which shows how to do just that, with <a target="_blank" href="https://github.com/linuxacademy/terransible">code</a> and <a target="_blank" href="https://www.lucidchart.com/documents/view/c1ceaa2b-647c-49bd-9dca-bcaffc04be3b">diagram</a>.


<a name="Procedural"></a>
<a name="Declarative"></a>

<strong>"Procedural"</strong> means "programmatic" as in a Python or JavaScript program applies logic.
This means procedures need to be written to check whether a desired resource is available before provisioning,
then logic is needed to check whether the provisioning command was effective.

<strong>"Declarative"</strong> means a (yaml format) file defines what is desired, and the system makes it so. tf files are <strong>declarative</strong>, meaning that they define the desired end-state (outcomes). If 15 servers are declared, Terraform automatically adds or removes servers to end up with 15 servers rather than specifying procedures to add 5 servers. Terraform can do that because <strong>Terraform knows how many servers it has setup already</strong>.

IaC code is <strong>idempotent</strong> (repeated runs results in what is described, and does not create additional items with every run). Terraform takes action only when needed (called "convergence" principle).

Terraform manages explicit and implicit (assumed) dependencies automatically.

Terraform automatically takes care of performing in the correct sequence.


<a name="Immutable"></a>

### Immutable?

PROTIP: WARNING: Terraform does not support rollbacks of changes made.

"Immutable" means once instantiated, components cannot be changed. In DevOps, this strategy means individual servers are treated like "cattle" (removed from the herd) and not as "pets" (courageously kept alive as long as possible).

Immutable and idempotent means "when I make a mistake in a complicated setup, I can get going again quickly and easily with less troubleshooting because I can just re-run the script."





<a name="Plugins"></a>

### Plugins into Terraform

All Terraform providers are plugins - multi-process RPC (Remote Procedure Calls).

   <a target="_blank" href="
   https://github.com/hashicorp/terraform/plugin">
   https://github.com/hashicorp/terraform/plugin</a>

   <a target="_blank" href="
   https://terraform.io/docs/plugins/index.html">
   https://terraform.io/docs/plugins/index.html</a>

Terraform expect plugins to follow a very specific naming convention of terraform-TYPE-NAME. For example, terraform-provider-aws, which tells Terraform that the plugin is a provider that can be referenced as "aws".

PROTIP: Establish a standard for where plugins are located:

For \*nix systems, `~/.terraformrc`

For Windows, `%APPDATA%/terraform.rc`

   <a target="_blank" href="
   https://www.terraform.io/docs/internals/internal-plugins.html">
   https://www.terraform.io/docs/internals/internal-plugins.html</a>

PROTIP: When writing your own terraform plugin, create a new Go project in GitHub, then locally use a  directory structure:

   `$GOPATH/src/github.com/USERNAME/terraform-NAME`

where USERNAME is your GitHub username and NAME is the name of the plugin you're developing. This structure is what Go expects and simplifies things down the road.

TODO:

   * Grafana or Kibana monitoring
   * PagerDuty alerts
   * DataDog metrics


<a href="#Registry">

### Plugin Registry

   https://registry.terraform.io is public

   hosts both providers and modules (a group of configuration files that provide common configuration).

https://www.youtube.com/watch?v=Qfp8Jv78yt8
Writing High Quality Terraform Modules for Exponential Organizations


<hr />

### CIDR Subnet function

   <pre>
variable network_info {
   default = “10.0.0.0/8” #type, default, description
}
cidr_block = ${cidrsubnet(var.network_info, 8, 1)} # returns 10.1.0.0/16
cidr_block = ${cidrsubnet(var.network_info, 8, 2)} # returns 10.2.0.0/16
     </pre>

   Also:

   <pre>
variable network_info {
   default = “10.0.0.0/8” #type, default, description
}
cidr_block = ${cidrsubnet(var.network_info, 8, 1)} # returns 10.1.0.0/16
cidr_block = ${cidrsubnet(var.network_info, 8, 2)} # returns 10.2.0.0/16
     </pre>

   In this example terraform.tfvars file are credentials for both AWS EC2 and Azure ARM providers:

   <pre>bucket_name = "mycompany-sys1-v1"
arm_subscription_id = "???"
arm_principal = "???"
arm_passsord = "???"
tenant_id = "223d"
aws_access_key = "insert access key here>"
aws_secret_key = "insert secret key here"
private_key_path = "C:\\MyKeys1.pem"
   </pre>

   The `private_key_path` should be a full path, containing `\\` so that the single slash is not interpreted as a special character.

   `bucket_name` must be globally unique within all of the AWS provider customers.


   ### Terraforming AWS Configuration

   PROTIP: Install from <a target="_blank" href="https://github.com/dtan4/terraforming">
   https://github.com/dtan4/terraforming</a>
   a Ruby script that enables a command such as:

   <pre><strong>terraforming s3 --profile dev
   </strong></pre>

   You can pass profile name by --profile option.



   ### Verify websites

0. The website accessible?

0. In the provider's console (EC2), verify



<hr />

### Densify FinOps

<a target="_blank" href="https://www.densify.com/">densify.com</a> dynamically self-optimizes configurations based on predictive analytics. This "FinOps" works by updating tags in AWS of recommendations for server type based on cost and performance analysis in real-time:

<pre>vm_size = "${module.densify.instance_type}"</pre>

 <a target="_blank" href="https://www.youtube.com/watch?v=pTxYwbC6GkY">VIDEO</a>:
![densify-real-time-807x261](https://user-images.githubusercontent.com/300046/131215844-d6e049b5-443c-4c45-96c6-33562ad0968e.png)

It's defined in a tf file:

<pre>module "densify" {
  source = "densify-dev/optimization-as-code/null"
  version = "1.0.0"
  &nbsp;
  densify_recommendations = "${var.densify_recommendations}"
  densify_fallback        = "${var.densify_fallback}"
  &nbsp;
  densify_unique_id       = "${var.name}"
}</pre>


## CDK for Terraform

<a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&t=12m59s58s">VIDEO</a>:
CDK for Terraform

## Create SSH key pair

1. To create a SSH key pair using CLI using the AWS Test Framework:

   <pre>aws ec2 create-key-pair --endpoint http://aws:4566
   --key-name jade \
   --query 'KeyMaterial' \
   --output text > /root/terraform-projects/project-jade/jade.pem
   </pre>

   <pre>aws ec2 describe-instances --endpoint http://aws:4566
   </pre>

   To just get the id of the EC2 created with this AMI and Instance Type, use filters and jq to filter the data:

   <pre>aws ec2 describe-instances --endpoint http://aws:4566 --filters "Name=image-id,Values=ami-082b3eca746b12a89" | jq -r '.Reservations[].Instances[].InstanceId'
   </pre>


<hr />

<a name="Atlantis"></a>

## Atlantis on Terraform

   References:
   * https://itnext.io/pains-in-terraform-collaboration-249a56b4534e
   <br /><br />

<a target="_blank" href="https://www.youtube.com/watch?v=bUWmJFzBh0A" title="Jan 24, 2021 by Agung Prasetya Dharma K">*</a>
ensure code reviews.

Atlantis was created in 2017 by Anubhav Mishra and Luke Kysow. Before they <a target="_blank" href="https://www.hashicorp.com/blog/terraform-collaboration-for-everyone">joined HashiCorp in 2018</a>, they saw Hootsuite use their <a target="_blank" href="https://github.com/runatlantis/atlantis">github.com/runatlantis/atlantis</a>, a self-hosted golang application that listens for Terraform pull request events via webhooks.
It can run as a Golang binary or Docker image deployed on VMs, Kubernetes, Fargate, etc.

Read the description and benefits at <a target="_blank" href="https://www.runatlantis.io/">runatlantis.io</a>:

![terraform-atlantis-flow-1005x209](https://user-images.githubusercontent.com/300046/132090669-bae6deea-e658-4e5d-a0a7-8cfce44513f2.png)

Developers and Operations people type <tt><strong>atlantis plan</strong></tt> and <tt><strong>atlantis apply</strong></tt> in the GitHub GUI to trigger Atlantis invoking <tt>terraform plan</tt> and <tt>terraform apply</tt> in the CLI.

<a name="AtlantisWorkflow"></a>

### Atlantis-based workflow with Terraform Enterprise

<a target="_blank" href="https://user-images.githubusercontent.com/300046/132103765-090a7081-6bb6-4f5f-838a-81e02e32dc30.png"><img alt="terraform-logical-flow-1249x626" width="1249" height="626" src="https://user-images.githubusercontent.com/300046/132103765-090a7081-6bb6-4f5f-838a-81e02e32dc30.png"></a>

1. In your GitHub account Developer settings, generate a <a target="_blank" href="https://github.com/settings/tokens/new">Personal Access Token</a> (named "Terraform Atlantis") and check only repo scope (to run webhooks).

   CAUTION: This is a static secret which should be updated occassionally.

   Click the clipboard icon. On your MacOS Terminal, within a project folder, <a target="_blank" href="https://www.youtube.com/watch?v=TmIPWda0IKg">install Atlantis bootstrap</a> locally and provide the GitHub PAT.

   Atlantis creates a starter GitHub repo, then downloads the ngrok utility to fork an "atlantis-example" repo under your account. It sets up a server at ngrok.io.

2. Copy in base Terraform configuration files.

   Within files are references to reusable <strong>modules</strong> used by other projects.

   An <a target="_blank" href="https://www.runatlantis.io/docs/custom-workflows.html#tfvars-files">atlantis.yaml file</a> specifies projects to be automatically planned when a module is modified.

3. Manually run <tt>tf init</tt> to install cloud provider plug-ins.

4. In main.tf add a null resource as a test: from perhaps https://github.com/jnichols3/terraform-envs

   <pre>resource "null_resource" "demo" {}</pre>

5. Anyone can open up a <strong>pull request</strong> in the GitHub repo holding your Terraform configuration files.

   This ensures that other team members are aware of changes pending. When plan is run, the directory and Terraform workspace are Locked until the pull request is merged or closed, or the plan is manually deleted. With locking, you can ensure that no other changes will be made until the pull request is merged. https://www.runatlantis.io/docs/locking.html#why

6. Instead of manually invoking <tt>terraform plan</tt>, Atlantis invokes them when <tt>atlantis plan</tt>is typed in GitHub GUI which triggers the Atlantis server to run. <a target="_blank" href="https://www.runatlantis.io/docs/autoplanning.html#example">Atlantis can be invoked automatically on any new pull request or new commit to an existing pull request</a>.

   and adds comments on the pull request
   in addition to creating an execution plan with dependencies.

   <a target="_blank" href="https://www.runatlantis.io/guide/testing-locally.html#create-a-pull-request">atlantis plan can be for a specific directory or workspace</a>

   https://www.runatlantis.io/docs/autoplanning.html#example

   <a name="Sentinel"></a>

   ### Sentinal apply

7. Those licenced to use Terrform Cloud as a remote backend provisioner, <tt>sentinel apply</tt> is also invoked to create cost projections and policy alerts based on sentinel policy definitions.

8. Someone else on your team reviews the pull request, makes edits and rerun <tt>atlantis plan</tt> several times before clicking <strong>approve PR</strong>.

9. In a GitHub GUI comment, type <tt>atlantis apply</tt> to trigger Atlantis to run <tt>terraform apply</tt> and add comments about its provisioning of resources. Atlantis makes output from apply visible in GitHub.

    Atlantis can be configured to automatically merge a pull request after all plans have been successfully applied.<a target="_blank" href="https://www.runatlantis.io/docs/automerging.html#how-to-enable">*</a>

    https://www.runatlantis.io/docs/security.html#mitigations

    Note that apply creates tfstate files.

10. Optionally, a "local-exec" provisioner can invoke Ansible to configure programs inside each server.


<hr />

<a name="Social"></a>

## Social

* <a target="_blank" href="
https://www.twitch.tv/hashicorplive">
https://www.twitch.tv/hashicorplive</a> 1st & 3rd PT Fridays every month

* <a target="_blank" href="https://discuss.hashicorp.com/">https://discuss.hashicorp.com</a>

* <a target="_blank" href="https://groups.google.com/forum/#!forum/terraform-tool">Google Group terraform-tool</a>
* <a target="_blank" href="https://linkedin.com/in/terraform">
   LinkedIn</a>
* <a target="_blank" href="https://stackoverflow.com/search?q=terraform">StackOverflow</a>
* <a target="_blank" href="https://www.reddit.com/r/Terraform/">r/Terraform (Reddit sub-reddit)</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=Q6SGhWK6y0o&list=PL4z1WbdlT5GKw1l2w0U-8YijoTwZp_GvU">0.12-alpha4</a> Dec 20, 2018 on <a target="_blank" href="https://www.youtube.com/channel/UC0gjVbm7HY5GzDTo5NbQruA">Mitchell Hashimoto (CEO) YouTube channel</a>

* No IRC (Internet Relay Chat)?



<hr />

<a name="RockStars"></a>

## Rock Stars

Here are people who have taken time to create tutorials for us about Terraform:

<strong>Ned Bellavance</strong> (<a target="_blank" href="https://twitter.com/ned1313">@ned1313</a> MS MVP at <a target="_blank" href="https://www.nerdinthecloud.com/">nerdinthecloud.com</a>) has several video classes on Pluralsight [subscription]:

   * <a target="_blank" href="https://app.pluralsight.com/courses/49b66fa5-6bcd-469c-ad04-6135ff739bb6/table-of-contents">video course "Implementing Terraform with AWS"</a>

   * <a target="_blank" href="https://www.pluralsight.com/courses/terraform-getting-started">
   Terraform - Getting Started (Beginner level)</a> Sep 14 2017 [3h 11m]

   * <a target="_blank" href="https://app.pluralsight.com/library/courses/deep-dive-terraform/table-of-contents">
   Deep Dive - Terraform</a> 6 Feb 2018 [3h 39m] shows how to export secret keys for back-end processes,
   use custom data sources, and incorporation into enterprise CI/CD frameworks.

   * Resource graphs of dependencies.


Derek Morgan in May 2018 released video courses on LinuxAcademy.com:

   * <a target="_blank" href="https://linuxacademy.com/linux/training/course/name/managing-applications-and-infrastructure-with-terraform"> Managing Applications and Infrastructure with Terraform [4:35:35]</a>

   * <a target="_blank" href="https://linuxacademy.com/amazon-web-services/training/course/name/deploying-to-aws-with-ansible-and-terraform"> Deploying to AWS with Ansible and Terraform</a> with <a target="_blank" href="https://linuxacademy.com/cp/livelabs/view/id/488">hands-on lab</a>.

Dave Cohen in April 2018 made a <a target="_blank" href="https://www.youtube.com/watch?v=1JAx2npuprk&list=PLtK75qxsQaMIHQOaDd0Zl_jOuu1m3vcWO">5 hands-on videos</a> using Digital Ocean  Personal Access Token (PAT).

<strong>Seth Vargo</strong>, Director of Evangelism at HashiCorp, gave a deep-dive hands-on introduction to Terraform at the O'Reilly conference on June 20-23, 2016. If you have a SafaribooksOnline subscription, see the videos: <a target="_blank" href="https://www.safaribooksonline.com/library/view/velocity-2016-/9781491944646/video255624.html">Part 1 [48:17]</a>, <a target="_blank" href="https://www.safaribooksonline.com/library/view/velocity-2016-/9781491944646/video255625.html">
Part 2 [37:53]</a>

<a target="_blank" href="https://www.linkedin.com/in/sauravsharma93/">Saurav Sharma</a> created a <a target="_blank" href="https://www.youtube.com/watch?v=RA1mNClGYJ4&list=PLQP5dDPLts65J8csDjrGiLH5MZgTyTsDB">YouTube Playlist</a> that references code at <a target="_blank" href="https://github.com/Cloud-Yeti/aws-labs">https://github.com/Cloud-Yeti/aws-labs</a> as starters for <a target="_blank" href="https://learn.cloudyeti.io/my-aws-videos/">website of videos</a> and <a target="_blank" href="https://www.udemy.com/lambda-course/?couponCode=LAMBDA10#instructor-1">on Udemy</a>.


<a name="Gruntwork"></a>

<strong>Yevgeniy (Jim) Brikman</strong> (<a target="_blank" href="https://www.ybrikman.com/">ybrikman.com</a>),
co-founder of DevOps as a Service <a target="_blank" href="https://Gruntwork.io/">Gruntwork.io</a>

   * <a target="_blank" href="https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180">Introduction to Terraform</a>

   * O'Reilly book "Hello Startup" about organizations.

   zero-downtime deployment, are hard to express in purely declarative terms.

   <a target="_blank" href="https://blog.gruntwork.io/a-comprehensive-guide-to-terraform-b3d32832baca">
   Comprehensive Guide to Terraform</a> includes:

   * <a target="_blank" href="https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa">
   BLOG: How to manage Terraform state</a>

   * <a target="_blank" href="https://github.com/brikis98/infrastructure-as-code-talk">
   Infrastructure-as-code: running microservices on AWS with Docker, ECS, and Terraform</a>

   * <a target="_blank" href="https://blog.gruntwork.io/terraform-tips-tricks-loops-if-statements-and-gotchas-f739bbae55f9">
   Terraform tips & tricks: loops, if-statements, and gotchas</a>

   * $500 <a target="_blank" href="https://gruntwork.teachable.com/p/terraform">
   A Crash Course on Terraform</a>
   * $500 <a target="_blank" href="https://training.gruntwork.io/courses/a-crash-course-on-docker-packer/lectures/4247382">
   A Crash Course on Docker & Packer</a>

   * <a target="_blank" href="https://www.safaribooksonline.com/library/view/terraform-up-and/9781491977071/"> BOOK: Terraform: Up and Running
   from O'Reilly Media published: March 2017</a>

   * <a target="_blank" href="https://www.ybrikman.com/writing/2016/03/31/infrastructure-as-code-microservices-aws-docker-terraform-ecs/">
   BLOG: Infrastructure as code: running microservices on AWS using Docker, Terraform, and ECS</a> Mar 31, 2016

<strong>Anton Babenko</strong> (<a target="_blank" href="https://github.com/antonbabenko/terraform-aws-devops/">github.com/antonbabenko</a> <a target="_blank" href="https://www.linkedin.com/in/antonbabenko/">linkedin</a>)

   * <a target="_blank" href="https://www.youtube.com/watch?v=rgzzkP2L1k8">
   Manage AWS infrastructure as code using Terraform</a>
   talk in Norway 14 Dec 2015

   * <a target="_blank" href="https://www.terraform-best-practices.com/">terraform-best-practices.com</a>

   * https://github.com/antonbabenko/terraform-best-practices-workshop


<strong>James Turnbull</strong>

   * The Terraform Book <a target="_blank" href="https://www.amazon.com/gp/product/B01MZYE7OY/">($8 on Kindle)</a> is among the first books on this subject, based on Terraform v0.10.3. Files referenced are at <a target="_blank" href="https://github.com/turnbullpress/tfb-code">
   https://github.com/turnbullpress/tfb-code</a>
   [<a target="_blank" href="https://www.safaribooksonline.com/library/view/the-terraform-book/9780988820258/">On SafariBooks]

<strong>Jason Asse</strong>

   * <a target="_blank" href="https://github.com/jason-azze/tf-web-exercise">
   https://github.com/jason-azze/tf-web-exercise</a>

<strong>Nick Colyer</strong> (Skylines Academy)

   * <a target="_blank" href="https://www.pluralsight.com/courses/terraform-automating-aws-vsphere">
   Automating AWS and vSphere with Terraform (Intermediate level)</a> Jun 12 2017 [1:22]

<strong>Kirill Shirinkin</strong>

   * <a target="_blank" href="https://www.safaribooksonline.com/library/view/getting-started-with/9781788623537/">Getting Started with Terraform - Second Edition</a>
   from Packt July 2017 (1st edition Jan 2017)


<strong>James Nugent</strong>

   * Engineer at HashiCorp


<strong>dtan4</strong>

   * <a target="_blank" href="
   http://terraforming.dtan4.net/">
   http://terraforming.dtan4.net</a>

   * <a target="_blank" href="
   https://github.com/dtan4/terraforming">
   https://github.com/dtan4/terraforming</a>
   is Ruby code.

<a target="_blank" href="https://www.linkedin.com/in/kylerockman/">
Kyle Rockman</a> (<a target="_blank" href="https://twitter.com/Rocktavious">@Rocktavious</a>, author of <a target="_blank" href="https://makers.underarmour.com/hello-jenkins-pipelines/">Jenkins Pipelines</a> and <a target="_blank" href="https://github.com/rocktavious">github.com/rocktavious</a>)
<a target="_blank" href="https://www.hashicorp.com/resources/how-non-technical-staff-use-terraform">presented at HashiConf17</a>
(<a target="_blank" href="https://slides.com/roctavious/estate">slides</a>)
a self-service app to use Terraform (powered by React+Redux using Jinga2 to Gunicorn + Djanjo back end running HA in AWS)
that he hopes to open-source at <a target="_blank" href="https://github.com/underarmour">github.com/underarmour</a>


<hr />

<a name="Tutorials"></a>

## Tutorials

* <a target="_blank" href="https://www.terraform.io/docs/glossary"> Glossary of Terraform terms</a>

* <a target="_blank" href="https://www.terraform.io/intro/getting-started/install.html">
   Official Getting Started docs at HashiCorp</a> focus on individual elements (i.e. resources, input variables, output variables, etc).

At the top of the list is the in-depth videos and <strong>hands-on labs with quizzes</strong> of
<a target="_blank" href="https://kodekloud.com/courses/hashicorp-certified-terraform-associate/">
KodeKloud's "HashiCorp Certified Terraform Associate"</a>. It's taught by <a target="_blank" href="https://www.linkedin.com/in/vijin-palazhi-163ba555/">Vijin Palazhi</a>, who also created tutorials on Kubernetes, Jenkins, and other DevOps tools and certifications.

<a target="_blank" href="https://learn.acloud.guru/search?query=terraform&page=1">ACloud.Guru</a> has a 11-hour Associate prep course by <a target="_blank" href="https://www.linkedin.com/in/moosa-khalid/">Moosa Khalid</a>.

On Linked Learning: <a target="_blank" href="https://www.linkedin.com/learning/advanced-terraform/terraform-in-the-real-world?autoplay=true">Advanced Terraform</a> by David Swersky references <a target="_blank" href="https://github.com/LinkedInLearning/advanced-terraform-2823489">https://github.com/LinkedInLearning/advanced-terraform-2823489</a>

Videos free on YouTube but a better UI to view vidoes is provided by:

   * <a target="_blank" href="https://www.linkedin.com/in/andrew-wc-brown/">Andrew Brown</a> posted from his <a target="_blank" href="https://www.exampro.co/terraform">$24 Exampro</a> to in <a target="_blank" href="https://www.youtube.com/watch?v=V4waklkBC38&list=RDCMUC8butISFwT-Wl7EV0hUK0BQ&start_radio=1&rv=V4waklkBC38">one 13-hour on YouTube</a> dated Oct 5, 2021, <a target="_blank" href="https://www.freecodecamp.org/news/hashicorp-terraform-associate-certification-study-course-pass-the-exam-with-this-free-12-hour-course/">described here</a>.

On Udemy.com:

   * <a target="_blank" href="https://www.udemy.com/course/terraform-beginner-to-advanced/">"Terraform: Beginner to Advanced"</a> by Zeal Vora has code at https://github.com/zealvora/terraform-beginner-to-advanced-resource

   * <a target="_blank" href="https://www.udemy.com/course/hashicorp-certified-terraform-associate-2020/">HashiCorp Certified: Terraform Associate Practice Exam 2021</a>

<a target="_blank" href="https://morethancertified.com/course-resources/more-than-certified-in-terraform/">More than Certified in Terraform</a> by <a target="_blank" href="https://www.linkedin.com/in/derekm1215/">Derek Morgan</a> "will get you ready to start using Terraform in the real world! We cover Terraform from the very basics to more advanced usage while building deployments of Docker, AWS, Kubernetes, Github, Terraform Cloud, and more!" Find the course on Teachable at https://courses.morethancertified.com


Another FreeCodeCamp.org video on YouTube:

   * <a target="_blank" href="https://www.youtube.com/watch?v=SLB_c_ayRMo" title="">
   2:20:57 VIDEO: Terraform Course - Automate your AWS cloud infrastructure</a>

<a target="_blank" href="https://www.joyent.com/blog/video-simple-terraform-app" title="February 21, 2018">
"Get started managing a simple application with Terraform"</a> by Alexandra White (at Joyant) shows the deployment of the <a target="_blank" href="https://github.com/heyawhite/joyent_packer-terraform-series/tree/master/1-create-image-with-packer/happy-randomizer">
Happy Randomizer app</a>



### Other YouTube videos :

* On Feb 2022 <a target="_blank" href="https://www.linkedin.com/in/sid-palas/">Sid Palas (of DevOps Directive)</a> released his
<a target="_blank" href="https://www.youtube.com/watch?v=7xngnjfIlK4">2h 38m VIDEO "Complete Terraform Course - From BEGINNER to PRO! (Learn Infrastructure as Code)"</a> with code at
<a target="_blank" href="https://github.com/sidpalas/devops-directive-terraform-course">https://github.com/sidpalas/devops-directive-terraform-course</a> and
<a target="_blank" href="https://discord.gg/pNhjgCYX">Discord channel for discussions</a>.

* <a target="_blank" href="https://www.youtube.com/watch?v=p2ESyuqPw1A">
Terraform w/ Lee Trout Chadev</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=WdV4eYZO5Ao">
Automating Infrastructure Management with Terraform</a>
at SF CloudOps Meetup

* <a target="_blank" href="https://www.youtube.com/watch?v=wgzgVm7Sqlk">
Evolving Your Infrastructure with Terraform</a>
Jun 26, 2017 by Nicki Watt, CTO at OpenCredo

* <a target="_blank" href="https://www.youtube.com/watch?v=jdDKjWZ2qbk">
Journey to the Cloud with Packer and Terraform</a>
Oct 12, 2017 by Nadeem Ahmad, Software Engineer at Box

* <a target="_blank" href="https://www.youtube.com/watch?v=Ynfo8qLb_Q8">
[JFrog Webinar] Infrastructure as Code with Terraform</a>
25:22

<hr />

## References

<a target="_blank" href="https://www.hashicorp.com/cloud-operating-model">PDF: HashiCorp';'s Cloud Operating Model whitepaper</a>

<a target="_blank" href="https://www.youtube.com/watch?v=UleogrJkZn0">VIDEO:
Learn Terraform in 10 Minutes Tutorial</a>
by Reval Govender

<a target="_blank" href="https://www.youtube.com/channel/UCgWfCzNeAPmPq_1lRQ64JtQ/videos">VIDEO:
SignalWarrant's videos on PowerShell</a>
by David Keith Hall
includes:

   * <a target="_blank" href="http://www.signalwarrant.com/automate-creating-lab-virtual-machines-in-azure-with-powershell/" title="July 12, 2017">Automate Creating Lab Virtual Machines in Azure with PowerShell</a> shows how to take input from a CSV file.
   <br /><br />


<a target="_blank" href="https://www.youtube.com/watch?v=1JAx2npuprk&list=PLtK75qxsQaMIHQOaDd0Zl_jOuu1m3vcWO&index=1">
Terraform Basics mini-course on YouTube in 5-parts</a> from "tutorialLinux".

http://chevalpartners.com/devops-infrastructure-as-code-on-azure-platform-with-hashicorp-terraform-part-1/
quotes https://www.hashicorp.com/blog/azure-resource-manager-support-for-packer-and-terraform from 2016 about support for Azure Resource Manager.


<a target="_blank" href="https://www.linkedin.com/in/sajithvenkit/">Sajith Venkit</a> explains Terraform file exampled in his <a target="_blank" href="https://www.codementor.io/alibabacloud/building-docker-enterprise-2-1-cluster-using-terraform-thh42zbd6?utm_swu=8964">"Building Docker Enterprise 2.1 Cluster Using Terraform" blog</a> and <a target="_blank" href="https://github.com/sajiv3m/docker-terraform-alicloud">repo for AliCloud</a> and <a target="_blank" href="https://github.com/sajiv3m/docker-terraform-azure">Azure</a>.

<a target="_blank" href="https://www.youtube.com/watch?v=uFaMUS6Z9fI">AWS Cloudformation vs Terraform: Prepare for DevOps/ Cloud Engineer Interview</a>

<a target="_blank" href="
https://www.youtube.com/watch?v=qFjGqPw1NUY">
How to create a GitOps workflow with Terraform and Jenkins</a>
by Alex Podobnik

<a target="_blank" href="https://www.youtube.com/watch?v=bKe4BkDfdvI">VIDEO:
Manage SSH with HashiCorp Vault</a>

https://medium.com/capital-one-tech/terraform-poka-yokes-writing-effective-scalable-dynamic-and-error-resistant-terraform-dcbd6a0ada6a

<a target="_blank" href="https://www.youtube.com/watch?v=YcJ9IeukJL8">2 hr. VIDEO: Terraform for DevOps Beginners</a> + <a target="_blank" href="https://beta.kodekloud.com/courses/lab-terraform-for-beginners/">Labs</a> by Vijin Palazhi.

https://medium.com/codex/devops-iac-setup-using-terragrunt-and-terraform-5d8a54c97724

Like Sentinel, the env0 includes policy as code guardrails.

https://medium.com/4th-coffee/on-devops-30-9-extraordinary-terraform-best-practices-that-will-change-your-infra-world-278d98d209ee

https://medium.com/@ben.arundel/godaddy-and-terraform-a-brief-poc-f3afac56c402

VIDEO: "Learning Live with AWS & HashiCorp" multi-part series by Jenna Pederson from AWS (@jennapederson) and J. Cole Morrison from HashiCorp (@jcolemorrison):
   1. <a target="_blank" href="https://www.youtube.com/watch?v=UAH3CkWrNmo">Laying the Foundations of a Microservices Architecture</a>
   2. <a target="_blank" href="https://www.youtube.com/watch?v=imppNTvnM18">Creating Your First Containerized Microservice</a>
   3. <a target="_blank" href="https://www.youtube.com/watch?v=q3zODwmSqp0">Extending Your Application with Private Microservices</a>
   4. <a target="_blank" href="https://www.youtube.com/watch?v=qYpqzbxPSdA">Introducing a Service Mesh with Consul</a>
   <br /><br />

<a target="_blank" href="https://www.youtube.com/watch?v=iKeItbMIyZE">VIDEO</a>:
Microsoft's <strong>Terrafy</strong> (pronounced "terrify" as in Holloween?) at <a target="_blank" href="https://github.com/Azure/aztfy">https://github.com/Azure/aztfy</a> generates *.tf (Terraform configuration files) and State based on resources based on what is in an AzureRM resource group. Those files can then be used in regular Terraform commands as if they were originally created using Terraform Plan and Apply.

https://open.spotify.com/episode/54xRbC6doIojY1edvB1QdT?si=8580a6cdebcd438a
PagerDuty

https://aws-ia.github.io/standards-terraform/
THE AWS INTEGRATION & AUTOMATION TEAM'S BEST PRACTICES FOR TERRAFORM

https://www.youtube.com/watch?v=G7l6ggJit3Q
HashiCorp - Terraform on AWS
by Chris Dunlap



<a name="Config"></a>

## Configuration

   ### Command Alias list & help

1. Use the abbreviated alternate to the `terraform` command:

   <tt><strong>tf</strong></tt>

   Alternately, use the long form:

   <tt><strong>terraform</strong></tt>

   Either way, the response is a menu (at time of writing):

   <pre>Usage: terraform [global options] &LT;subcommand> [args]
&nbsp;
The available commands for execution are listed below.
The primary workflow commands are given first, followed by
less common or more advanced commands.
&nbsp;
Main commands:
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure
&nbsp;
All other commands:
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  test          Experimental support for module integration testing
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management
&nbsp;
Global options (use these before the subcommand, if any):
  -chdir=DIR    Switch to a different working directory before executing the
                given subcommand.
  -help         Show this help output, or the help for a specified subcommand.
  -version      An alias for the "version" subcommand.
   </pre>

   NOTE: The `terraform remote` command configures remote state storage.

   BLAH: Terraform doesn't have an alias command (like Git) to add custom subcommands, so one has to remember which command is Terragrunt and which are standard Terraform?

3. Install Terragrunt wrapper:

   https://github.com/gruntwork-io/terragrunt

3. Help on a specific command, for example:

   <pre><strong>terraform plan --help</strong></pre>


## Identify versions

https://github.com/minamijoyo/tfupdate
to parse Terraform configurations and updates all version constraints.
brew install minamijoyo/tfupdate/tfupdate
It is a best practice to break your Terraform configuration and state into small pieces to minimize the impact of an accident. It is also recommended to lock versions of Terraform core, providers and modules to avoid unexpected breaking changes. If you decided to lock version constraints, you probably want to keep them up-to-date frequently to reduce the risk of version upgrade failures. It's easy to update a single directory, but what if they are scattered across multiple directories?

## Terraform tools

https://github.com/hieven/terraform-visual
an interactive way of visualizing your Terraform plan
by https://www.linkedin.com/in/hieven/

## References

https://github.com/terraform-aws-modules/terraform-aws-eks
in https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest

<pre>grep '^resource' modules/fargate/*.tf
grep '^resource' modules/node_groups/*.tf
grep '^resource' *.tf
grep '^module "' *.tf
</pre>

https://github.com/gruberdev/tf-free/issues
Use Terraform to create cloud-native resources which are free-of-charge on major cloud providers (AWS, Azure, Google).


<a target="_blank" href="https://www.linkedin.com/in/robertjordan2/">Robert Jordan</a>, author of <a target="_blank" href="https://learning.oreilly.com/videos/developing-infrastructure-as/9780136608776/">Developing Infrastructure as Code with Terraform LiveLessons</a > discusses module design and unit testing (terratest) in his
<a target="_blank" href="https://learning.oreilly.com/live-events/next-level-terraform/0636920082739/0636920082738/">"Next-Level Terraform" live course</a> on OReilly
<a target="_blank" href="https://github.com/bananalab/Next-Level-Terraform/blob/edb16f1cba145a103aec7f6602e78faa856e0c25/slides/Next-Level-Terraform.pdf">PDF</a>
references
https://github.com/bananalab/Next-Level-Terraform
and
https://github.com/bananalab/terraform-live-template

In his <a target="_blank" href="https://learning.oreilly.com/live-events/learn-infrastructure-as-code-with-terraform/0636920077731/">Learn Infrastructure as Code with Terraform</a>
on Feb 13...

https://www.youtube.com/watch?v=V53AHWun17s
Learn Terraform with Azure by Building a Dev Environment – Full Course for Beginners
by freecodecamp

https://learning.oreilly.com/live-events/hashicorp-certified-terraform-associate-certification-crash-course/0636920072267/0636920091198/
Aug 8-9, 2023
by Benjamin Muschko

https://github.com/shuaibiyy/awesome-terraform
A curated list of awesome Terraform tools, modules, resources and tutorials.

https://github.com/dstamen/Terraform
by David Stamen


## More on DevOps #

This is one of a series on DevOps:

{% include devops_links.html %}
