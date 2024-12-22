---
layout: post
url: https://bomonike.github.io/jetson
date: "2024-12-21"
lastchange: "v001 new :jetson.md"
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

* OpenUSD Stages, Prims, and Attributes https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-OV-17+V1
   * https://learn.nvidia.com/courses/course-detail?course_id=course-v1:DLI+S-OV-19+V1

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