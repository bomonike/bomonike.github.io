---
layout: post
date: "2024-12-06"
lastchange: "v001 new :azure-local.md"
file: "azure-local.md"
title: "Azure Arc Local"
excerpt: "Run Azure CLI commands on low-cost local hardware to manage VMs and containers, without Active Directory."
tags: [cloud, IoT, Azure, macOS]
comments: true
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

<a target="_blank" href="https://bomonike.github.io/azure-local"><img align="right" width="100" height="100" alt="azure-local.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/azure-local.png?raw=true" />

Part of their "Adaptive Cloud" offerings.
https://www.youtube.com/watch?v=0zc_O7U2YqM&

<a target="_blank" href="https://www.youtube.com/watch?v=NoIMUd0Gemw&list=PLZuSmETs0xIZGmVtFTuoRoR7kyiHVWzna&index=22">VIDEO</a>:
"Cloud-to-edge" development is about bridging the gap between cloud and edge.

In 2025, Microsoft has a competitor to Amazon's Outpost on AWS
and IBM AS400 since 1990.

## HCI AKS

Azure Arc Local rebranded from Azure Stack HCI (hyperconverged Infrastructure) team who have working on Azure Arc on-premises
since 2020. HCI provides the option to implement AKS.
See https://learn.microsoft.com/en-us/training/modules/manage-azure-kubernetes-service-azure-stack-hci/4-deploy-aks-cluster
Instead of using Windows Admin Center feed manager settings, automate AKS cluster deployment by using Windows PowerShell.

A pod corresponds roughly to a container, although it can include multiple, tightly-coupled containers running on the same cluster node.

Microsoft's Azure Local (part of Azure Arc), enables distributed physical machines to be treated remotely like cloud resources.

<img alt="az-arc-local.png" src=="https://res.cloudinary.com/dcajqrroq/image/upload/v1732280114/az-arc-local_j6cdjj.png" />

It uses Azure portal and APIs to perform lifecycle operations like deployment, configuration, updates, and monitoring.

https://docs.microsoft.com/en-us/azure/azure-arc/Azure Arc on-premises:     https://docs.microsoft.com/en-us/azure/azure-arc/overview


## Azure Arc

https://jumpstart.azure.com/
for Azure Arc Jumpstart: https://aka.ms/ArcJumpstart
to
<a target="_blank" href="https://azurearcjumpstart.com/">https://azurearcjumpstart.com/</a>


git clone <a target="_blank" href="https://github.com/microsoft/azure_arc.git">https://github.com/microsoft/azure_arc.git</a>


<a target="_blank" href="https://www.youtube.com/playlist?list=PLZuSmETs0xIZGmVtFTuoRoR7kyiHVWzna">VIDEO demos</a>


Microsoft developed <strong>Mariner Linux</strong> as the default OS for Azure Arc.

https://learn.microsoft.com/en-us/azure/azure-local/manage/disconnected-operations-overview
Azure Local for disconnected operations.

https://learn.microsoft.com/en-us/azure/aks/hybrid/aks-whats-new-23h2
AKS on Azure Local

## Local Hardware

Find compatible hardware at https://azurestackhcisolutions.azure.microsoft.com/

"Azure Local for Small Form Factor (SFF)" for edge computers that meet
Windows Server certification requirements as well as relaxed requirements from Software Defined Data Center (SDDC) and Windows Server Software-Defined (WSSD) program. See https://learn.microsoft.com/en-us/azure/azure-local/concepts/system-requirements-small-23h2

<a target="_blank" href="https://www.youtube.com/watch?v=yxlAfS9mh2E">https://www.youtube.com/watch?v=yxlAfS9mh2E</a>
shows install on two PCs (HPE ProLiant MicroServer Gen11) with 4-core, <strong>64GB RAM</strong>, 1 TB SSD, two Ethernet ports. Without keyboard, mouse, or monitor.

An additional USB SSD (in addition to the OS disk)
is used to securely connect to the cloud.

The machine must work with virtualization.

Gigabit Ethernet is required for the VMs.

<a target="_blank" href="https://docs.microsoft.com/en-us/azure/azure-arc/azure-arc-on-premises-quickstart">https://docs.microsoft.com/en-us/azure/azure-arc/azure-arc-on-premises-quickstart</a>


## Azure Arc on-premises

https://docs.microsoft.com/en-us/azure/azure-arc/Azure Arc on-premises: https://docs.microsoft.com/en-us/azure/azure-arc/overview

On Azure, instead of Active Directory, the Identity provider is "Local identity with Azure Key Vault" (see https://docs.microsoft.com/en-us/azure/azure-arc/azure-arc-on-premises-quickstart)


## Socials

<a target="_blank" href="https://techcommunity.microsoft.com/blog/azurearcblog/introducing-azure-local-cloud-infrastructure-for-distributed-locations-enabled-b/4296017)">BLOG</a> "Introducing Azure Local: cloud infrastructure for distributed locations enabled by Azure Arc" mentions introduction of Azure Local at Ignite Novemeber 20,2024.

<a target="_blank" href="https://www.youtube.com/watch?v=o_sQvOHWIcU&list=PLDkX8OJhBFVsVqsbjvSNscAsxZsD6ZWza">VIDEO</a>:
"Deploy Azure Kubernetes Service(AKS) Cluster using Terraform and Azure DevOps YAML Pipeline" using github.com/labdemo2233/AKS-Terraform.


https://www.youtube.com/watch?v=n8I4hjBbMMU
"Disconnected operations using Azure Local" shows how Azure Local is used by distributed emergency response teams.

https://www.youtube.com/watch?v=KMuAzS2tGXQ
"Security in Azure Local"



## More about Security

This is one of a series about cyber security:

{% include security_links.html %}
