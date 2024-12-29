---
layout: post
url: https://bomonike.github.io/jetson
date: "2024-12-28"
lastchange: "v006 + certs :jetson.md"
file: "jetson"
title: "Jetson AI"
excerpt: "How to get, install, and use NVIDIA's Jetson micro servers for AI at edge."
tags: [cloud, security, management, ai]
comments: true
created: "2024-12-21"
---

<a target="_blank" href="https://bomonike.github.io/jetson"><img align="right" width="100" height="100" alt="jetson.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/jetson.png?raw=true" />

## Overview

From https://developer.nvidia.com/embedded/develop/software

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1734884266/nvidia-software-7292x4792_jxwiyf.png">
<img alt="nvidia-software-7292x4792.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1734884266/nvidia-software-7292x4792_jxwiyf.png"></a>

## Professional Certifications

<a target="_blank" href="https://developer.nvidia.com/embedded/learn/jetson-agx-orin-devkit-user-guide/index.html">

For AI, NVIDIA offers one-hour (50-question) exams taken online, each at just $135 for a 2-year validity period:

1. <a target="_blank" href="https://www.nvidia.com/en-us/learn/certification/generative-ai-llm-associate/">NVIDIA-Certified Associate: Generative AI and LLMs (NCA-GENL)</a>
   validates skills in the use of generative AI and large language models.
   30% Core Machine Learning and AI Knowledge<br />
   24% Software Development<br />
   22% Experimentation<br />
   14% Data Analysis and Visualization<br />
   10% Trustworthy AI

   * <a target="_blank" href="https://nvdam.widen.net/s/rpdddpdgtc/nvt-certification-exam-study-guide-gen-ai-llm-3262644-r7-web">Exam Guide</a>. 
   * <a target="_blank" href="https://courses.nvidia.com/courses/course-v1:DLI+S-FX-07+V1/">$FREE Generative AI Explained</a>.
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-FX-01+V1">$90 Getting Started With Deep Learning</a>
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-DS-01+V1">$90 Accelerating End-to-End Data Science Workflows</a>.
   * <a target="_blank" href="https://courses.nvidia.com/courses/course-v1:DLI+S-FX-08+V1/">$30 Introduction to Transformer-Based Natural Language Processing</a>.
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-FX-03+V3">8-hour $500 Building Transformer-Based Natural Language Processing Applications</a>.
   * <a target="_blank" href="https://courses.nvidia.com/courses/course-v1:DLI+S-FX-08+V1/">3-hour $30 Prompt Engineering With LLaMA-2</a>.

   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-FX-16+V1">1-hour $FREE Augment Your LLM Using Retrieval-Augmented Generation</a>.
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-FX-15+V1">8-hour $FREE Buillding RAG Agents for LLMs</a>.

   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-FX-14+V1">8-hour $90 Generative AI With Diffusion Models</a>.

   * <a target="_blank" href="https://www.nvidia.com/en-us/training/instructor-led-workshops/efficient-large-language-model-customization/">8-hour $500 Efficient Large Language Model (LLM) Customization</a>.


2. <a target="_blank" href="https://www.nvidia.com/en-us/learn/certification/generative-ai-multimodal-associate/">NVIDIA-Certified Associate: Generative AI Multimodal (NCA-GENM)</a> 
   25% Experimentation<br />
   20% Core Machine Learning and AI Knowledge<br />
   15% Multimodel Data<br />
   15% Software Development<br />
   10% Data Analysis and Visualization<br />
   10% Performance Optimization<br />
    5% Trustworthy AI

   In addition to the resources for the GENL exam:

   * <a target="_blank" href="https://nvdam.widen.net/s/btdtlqshvh/nvt-certification-exam-study-guide-gen-ai-mm-3262600-r11-web">Study Guide</a> PDF</a>.
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-FX-06+V2">$500 Building Conversational AI Applications</a>
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-MF-01+V2">$500 Computer Vision for ​Industrial Inspection</a>
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-TC-01+V1">$500 Applications of AI for Anomaly Detection</a>
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-MF-02+V1">$500 Applications of AI for Predictive Maintenance</a>
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-FX-09+V1">$500 Rapid Application Development with Large Lanaguage Models</a>
   * <a target="_blank" href="https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-FX-03+V1">$30 Deploying a Model for Inference At Production Scale</a>

 
   * <a target="_blank" href="https://www.nvidia.com/en-us/on-demand/session/gtcspring23-S51531/?ncid=em-even-124008-vt33">High-Resolution Image Synthesis via Two-Stage Generative Models</a> (on-demand video, 35 minutes)
   * <a target="_blank" href="https://www.nvidia.com/en-us/on-demand/session/gtcspring23-S51531/?ncid=em-even-124008-vt33">Accelerated Creative AI—Using NVIDIA-Optimized Image Generation for Media and Entertainment</a​ (on-demand webinar, 1 hour) 
   * <a target="_blank" href="https://developer.nvidia.com/blog/building-lifelike-digital-avatars-with-nvidia-ace-microservices/">Building Lifelike Digital Avatars With NVIDIA ACE Microservices​</a> (blog, 15 minutes) 
   * <a target="_blank" href="https://www.nvidia.com/en-us/on-demand/session/gtcspring23-S52095/?ncid=em-even-124008-vt33">The Future of Generative AI for Content Creation</a> (on-demand video, 35 minutes) ​

3. <a target="_blank" href="https://developer.nvidia.com/certified-associate-ai-infrastructure-and-operations">NVIDIA-Certified Associate: AI Infrastructure and Operations (NCA-AIIO)</a>
   validates fundamental skills in AI infrastructure and operations learned from <a target="_blank" href="https://nvdam.widen.net/s/9hxmprb8gq/nvt-certification-exam-study-guide-aiio-3262763-r1-web">Study Guide</a> 

   15% Troubleshoot and Optimize	
   * Identify and troubleshoot hardware faults (e.g., GPU, fan, network card)
   * Identify faulty cards, GPUs, power supplies
   * Replace faulty cards, GPUs, power supplies
   * Optimize AMD and Intel servers for performance
   * Optimize storage

   17% Systems and Network
   * Configure routing tables on InfiniBand and NVIDIA Spectrum-X™
   * Install and configure NVIDIA NVLink™ Switch
   * Set up network fabric ports for the hosts
   * Identify network topologies for data centers

   33% Systems and Servers
   * Install GPU-based servers
   * Install physical GPUs
   * Install NVIDIA® Bluefield® DPU-based servers
   * Identify cable types and transceivers
   * Validate hardware operation for workloads
   * Validate hardware installation
   * Validate power and cooling
   * Establish storage requirements in a cluster design

   35% Physical Layer Management
   * Install, update, and remove NVIDIA GPU drivers
   * Install the NVIDIA Container Toolkit
   * Demonstrate how to use NVIDIA GPUs with Docker
   * Install NGC command line interface on hosts
   * Configure and manage Bluefield
   * Configure MIG (AI and HPC)
   * Deploy the Bluefield OS image to Arm
   * Manage cloud-native stack

   * <a target="_blank" href="https://academy.nvidia.com/en/course/ai-infrastructure-operations-fundamentals-course-and-certification/?cm=86222">7-hour $150 AI Infrastructure Operations Fundamentals</a> with exam coupon. This covers compute platforms, networking, and storage solutions. The course also addresses AI operations, focusing on infrastructure management and cluster orchestration.

   * <a target="_blank" href="https://academy.nvidia.com/en/ai-infrastructure-public-training/">7-sessions 4-hours each $3500 hands-on AI Infrastructure Professional Public Training</a> explores configuration, management and troubleshooting of AI Infrastructure.

2. <a target="_blank" href="https://www.nvidia.com/en-us/learn/certification/ai-infrastructure-professional/">NVIDIA-Certified Professional: AI Infrastructure (NCP-AII)</a>, for $400 answer 50 questions in 90-minutes to validates the ability to deploy, manage, and maintain AI infrastructure by NVIDIA.

3. <a target="_blank" href="https://www.nvidia.com/en-us/learn/certification/ai-operations-professional/">NVIDIA-Certified Professional: AI Operations (NCP-AIO)</a> has 2-3 year preprequisite. For $400, answer 50 questions in 90-minutes to validate your ability to monitor, troubleshoot, and optimize AI infrastructure by NVIDIA.

   36% Administration	
   * Administer Fleet Command
   * Administer Slurm cluster
   * Understand data center architecture for AI workloads
   * Administer Base Command Manager (BCM) and cluster provisioning
   * Administer Run.ai (potentially part of ACM)
   * Configure MIG (for AI and HPC)
   16% Workload Management
   * Administer Kubernetes cluster
   * Use system management tools to troubleshoot issues
   26% Installation and Deployment
   * Install and configure BCM
   * Install and initialize Kubernetes on NVIDIA hosts using BCM
   * Deploy containers from NGC
   * Deploy cloud VMI containers
   * Understand storage requirements for AI data centers
   * Deploy DOCA services on DPU Arm
   20% Troubleshooting and Optimization
   * Troubleshoot docker
   * Troubleshoot the fabric manager service for NVIDIA NVlink™/NVswitch™ systems
   * Troubleshoot BCM 
   * Troubleshoot Magnum IO components
   * Troubleshoot storage performance

   * <a target="_blank" href="https://academy.nvidia.com/en/course/ai-operations-fundamentals/?cm=86222">7-hour $50 AI Operations Fundamentals</a>

   * <a target="_blank" href="https://academy.nvidia.com/en/course/ai-infrastructure-operations-fundamentals-course-and-certification/?cm=86222">7-hour $150 AI Infrastructure & Operations Fundamentals</a> includes exam certificate. covers essential components of AI infrastructure, including compute platforms, networking, and storage solutions. The course also addresses AI operations, focusing on infrastructure management and cluster orchestration.

   * <a target="_blank" href="https://academy.nvidia.com/en/ai-operations-public-training/">$3,000 for six 4-hour session AI Operations Professional Public Training</a> for hands-on experience with NVIDIA's DCGM, InfiniBand networking, NVIDIA BlueField™ DPUs, and GPU virtualization, while learning to leverage tools for infrastructure provisioning, workload scheduling, and cluster orchestration.

4. <a target="_blank" href="https://www.nvidia.com/en-us/learn/certification/infiniband-professional/">NVIDIA-Certified Professional: InfiniBand (NCP-IB)</a>. For $220 answer 40 questions in 90-minutes to validate skills in AI networking by NVIDIA. Correctly answer 40 questions in 90-minutes online, for $220, with a 2-year validity period for those who installs, configures, manages, troubleshoots, or monitors InfiniBand fabrics.

   * <a target="_blank" href="https://academy.nvidia.com/en/course/ib-pro-online/?cm=137">6-hour $200 AI Operations Professional Workshop</a>

## Hardware

https://developer.nvidia.com/embedded/jetson-modules

All Jetson 
https://developer.nvidia.com/buy-jetson?product=all&location=US

Developer Kits:

* Jetson Orin Nano (8GB LPDDR5 RAM) 1024-core ARM CPU with 32 Tensor Cores
   * $249 USD/$369 Euros from https://www.amazon.com/dp/B0BZJTQ5YP?th=1 has Athlon 6-core ARM CPU 
   * https://www.arrow.com/en/products/945-13766-0000-000/nvidia
   * Datasheet https://static6.arrow.com/aropdfconversion/e5f9455a906908a5cd69a1b5f187a8e543689c1d/jetson-orin-datasheet-nano-developer-kit-3575392-r24.pdf
   * https://www.sparkfun.com/products/22098
   * https://www.seeedstudio.com/NVIDIAr-Jetson-Orintm-Nano-Developer-Kit-p-5617.html

* Jetson AGX Orin (64GB) 2048-core ARM CPU with 64 Tensor Cores
   * 64 GB eMMC (+ NVMeSSD)
   * $1,999 USD https://www.seeedstudio.com/NVIDIArJetson-AGX-Orintm-64GB-Developer-Kit-p-5641.html
   https://www.youtube.com/watch?v=eFgsOeHMAW4

* Jetson AGX Orin (32GB) 
   * 64 GB eMMC (+ NVMeSSD)

<a target="_blank" href="https://forums.developer.nvidia.com/t/agx/65068/3">BTW</a>:
AGX is "not an acronym persay, but it loosely means Autonomous machines accelerator technology."

Others:
* Jetson Orin NX (16GB) 

Previous :
* NVIDIA® Jetson AGX Xavier was the first generation of Jetson AGX platform. 
Released in 2019 and is now EOL.

## Hardware Components
* 40-pin expansion header
* x16 PCIe Slot support x8 PCIe Gen4
* Micro SD card slot
* two MIPI CSI connectors supporting camera modules with up to 4-lanes, allowing higher resolution and frame rate than before.
   * $21.99 Logitech C270 USB Webcam https://www.amazon.com/Logitech-Widescreen-designed-Calling-Recording/dp/B004FHO5Y6/ref=sr_1_2?gclid=Cj0KCQjwi43oBRDBARIsAExSRQHtMypbRxcsZLLG2O91x0rEosiP8DcfcNzNWsjdQlfzSMCaU3J7_bUaAqEiEALw_wcB&hvadid=321859566873&hvdev=c&hvlocphy=9032151&hvnetw=g&hvpos=1t1&hvqmt=b&hvrand=4551797936993747797&hvtargid=aud-676677759524%3Akwd-297700966697&hydadcr=18004_9429434&keywords=c270%2Bhd%2Bwebcam&qid=1560694108&refinements=p_85%3A2470955011&rnid=2470954011&rps=1&s=gateway&sr=8-2&th=1

## SDK
NVIDIA has a different SDK for different hardware
* https://developer.nvidia.com/embedded/learn/jetson-agx-orin-devkit-user-guide/index.html
Jetson AGX Orin Developer Kit User Guide
* https://developer.nvidia.com/embedded/learn/jetson-orin-nano-devkit-user-guide/index.html
Jetson Orin Nano Developer Kit User Guide

* https://docs.nvidia.com/jetson/archives/r36.4/DeveloperGuide/index.html
Linux Developer Guide


## Glossary

https://www.nvidia.com/en-au/glossary/

* CUDA is NVIDIA's proprietary software for parallel computing on GPUs

   CUDA 12.6

* CuOPT
* CSP & 3P Service

* BSP
* HPC (High Performance Computing)

* JetPack 6.1 Cannonical Ubuntu Linux OS Kernel - https://developer.nvidia.com/embedded/jetpack
supports the Jetson Orin Nano Super Developer Kit, featuring [MAXN mode] which boosts AI compute performance for the Jetson Orin Nano Developer Kit. https://developer.nvidia.com/blog/nvidia-jetson-orin-nano-developer-kit-gets-a-super-boost/
   * Supports CUDA-X accelerated libraries and GPU APIs
   * https://developer.nvidia.com/blog/nvidia-jetson-orin-nano-developer-kit-gets-a-super-boost/

* Jetson is NVIDIA's proprietary GPU computing platform

   * <a target="_blank" href="https://docs.nvidia.com/jetson/ ">https://docs.nvidia.com/jetson/ = Jetson Software Documentation</a>

* Jetson Linux 36.4 provides the Linux Kernel 5.15, UEFI based bootloader, Ubuntu 22.04 based root file system, NVIDIA drivers, necessary firmwares, toolchain and more.

* Jetson Platform Services (available soon.) is a collection of pre-built and cloud-native software services and reference workflows to accelerate AI applications on Jetson. These services are modular, API-driven and can be quickly configured to build Generative AI and other edge applications. There are 15+ services from AI services to system services. The services include:


* NVIDIA SDK Manager
* NVIDIA Jetpack SDK - 
    https://docs.nvidia.com/jetson/archives/jetpack-archived/jetpack-61/install-setup/index.html#upgradable-compute-stack
    https://docs.nvidia.com/jetson/archives/jetpack-archived/jetpack-61/install-setup/index.html#package-management-tool
* Jetson AI Stack
* Isaac Framework for building high performance robotic applications https://developer.nvidia.com/isaac
* Metropolis application framework to build, deploy and scale Vision AI application
   https://www.nvidia.com/en-us/autonomous-machines/intelligent-video-analytics-platform/

* Holoscan for building high performance computing applications (HPC) with real time insights and sensor processing capabilities from edge to cloud. https://www.nvidia.com/en-us/clara/holoscan/

* NVIDIA Omniverse™ Replicator for Synthetic Data Generation (SDG)
* <a target="_blank" href="https://developer.nvidia.com/tao-toolkit">NVIDIA TAO Toolkit</a>
   from data preparation to training to optimization,
   fine-tuning pretrained AI models from the <a target="_blank" href="https://catalog.ngc.nvidia.com/models?filters=&orderBy=scoreDESC&pageNumber=0&query=TAO&quickFilter=&page=&pageSize=">
   NVIDIA NGC™ catalog</a> of pre-trained models.
   * TF2
   * ODISE 1.1

* OpenACC

* OpenVLA (Vision-Language-Action) Model https://openvla.github.io

* OpenUSD

* TAO Toolkit https://developer.nvidia.com/tao-toolkit

* Triton inference server

## Software

* CUDA 12.6
* TensorRT 10.3
* cuDNN 9.3
* VPI 3.2 VPI (Vision Programing Interface) is a unified API for computer vision and machine learning applications.
* DLA 3.1
* PVA
* ISP
* DLFW 24.0
* https://developer.nvidia.com/downloads/assets/embedded/secure/jetson/orin_nx/docs/jetson_orin_nx_16gb_pcn211361_bom_addition_of_dram.pdf
* RIVA

### OpenUSD

* OpenUSD <a target="_blank" href="https://www.openusd.org">https://www.openusd.org</a> 3D scenes USD scene description data files on Stages, Hydra rendering architecture, Prims (primatives  hierarchy of objects from geometry, to materials, to lights and other organizational elements.), and Attributes https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-OV-17+V1
   * https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-OV-19+V1

  * rendering backend, such as OpenGL or DirectX. 
  OpenUSD is an open-source USD library for creating and working with USD scenes.
  * https://github.com/PixarAnimationStudios/OpenUSD
  * HdStorm is included in OpenUSD 

Each file format can be created through Python bindings in the OpenUSD library. When creating a new stage we can pass in a string to represent a file name that ends in .usdc, .usd, .usda, or .usdz.
File Formats (USD, USDC, USDA and USDZ) are used for storing and exchanging various types of 3D scene data, including meshes, cameras, lights, and shaders.

* A USD (.usd) file can have either ASCII or binary format. This switch can be done at any point without breaking references for debugging. 

   Separate heavier data from more light weight data. When doing so, consider using .usdc and .usda explicitly to avoid obfuscation and create large .usda files unintentionally.

* USDA (.usda) is a native file format used by OpenUSD to store and exchange 3D scene data. Its format is ASCII text and therefore "Human Readable" and editable. This makes USDA optimal for small files, such as a stage that is referencing external content. 

* USDC (.usdc) - the Crate Binary Format -- is a <strong>compressed binary</strong> file format designed to minimize load time and provide a more efficient representation of the scene data compared to the human-readable ASCII format (USDA). USDC is extremely efficient for numerically-heavy data, like geometry. Various compression techniques  reduce the file size and improve loading performance. It also employs memory mapping for faster file access and loading times.

* USDZ (.usdz) is an <strong>atomic, uncompressed, zipped archive</strong> for delivery of all necessary assets ( a mesh with its texture) together in a single file. It’s generally intended as read-only and is optimal for XR experiences. We would not use USDZ if we are still making edits to the asset.

* We may choose to use some other 3D format backed by an SdfFileFormatPlugin when we prefer to keep our source data as is and still leverage all of OpenUSD for scene manipulation and rendering.


## Social

https://www.nvidia.com/gtc/pricing/?nvid=nv-int-unbr-171401
Exhibits March 18–21 | Workshops March 16–20 | San Jose, CA & Virtual

LinkedIn

https://forums.developer.nvidia.com/c/agx-autonomous-machines/jetson-embedded-systems/70
NVIDIA Community

Reddit

TwitterX

https://www.youtube.com/@NVIDIADeveloper
YouTube
   * https://www.youtube.com/watch?v=mgUrthfw3ys
   * https://www.youtube.com/watch?v=QHBr8hekCzg Dave's Garage

## Tutorials

https://developer.nvidia.com/embedded/learn/get-started-jetson-orin-nano-devkit
The NVIDIA® Jetson Orin Nano™ Developer Kit empowers the development of AI-powered 
robots, smart drones, and intelligent cameras built on the Jetson Orin series.



https://learn.nvidia.com/en-us/training/self-paced-courses

https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+C-RX-02+V2

https://www.nvidia.com/en-us/training/
DLI (DEEP LEARNING Institute)

https://www.jetson-ai-lab.com/tutorial-intro.html

https://www.jetson-ai-lab.com/ros.html

The 22GB for nano_llm:humble container image
ros2_nanollm package provides ROS2 nodes for running optimized LLM's and VLM's 
locally inside a container. These are built on NanoLLM and ROS2 Humble for 
deploying generative AI models onboard your robot with Jetson.


## Install

1. https://developer.nvidia.com/embedded/jetpack

1. Download Jetson Orin Nano Super Developer Kit
https://developer.nvidia.com/downloads/embedded/L4T/r36_Release_v4.0/jp61-rev1-orin-nano-sd-card-image.zip
    
1. Download JETSON ORIN NANO DEVELOPER KIT SD card image from https://developer.nvidia.com/embedded/jetpack

 https://docs.nvidia.com/jetson/archives/r36.4/DeveloperGuide/SD/Security/FirmwareTPM.html
 Firmware-based Trusted Platform Module (fTPM) on the Orin platform. Refer to the security page for all security features.

 sudo apt dist-upgrade
 sudo apt-install nvidia-jetpack


 ## Keyboard Shortcuts

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1734884307/keyboard-shortcuts-576x331_yqq5zg.png">
<img alt="keyboard-shortcuts-576x331.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1734884307/keyboard-shortcuts-576x331_yqq5zg.png"></a>


## RAG
https://www.youtube.com/watch?v=N_OOfkEWcOk
Within
https://github.com/NVIDIA/GenerativeAIExamples
https://github.com/NVIDIA/GenerativeAIExamples/tree/main/community/5_mins_rag_no_gpu
Run using Streamlit: