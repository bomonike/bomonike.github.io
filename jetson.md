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

## Hardware

All Jetson 
https://developer.nvidia.com/buy-jetson?product=all&location=US
* Jetson Orin Nano (8GB LPDDR5 RAM) $249 USD/$369 Euros from https://www.amazon.com/dp/B0BZJTQ5YP?th=1 has Athlon 6-core ARM CPU 
   * https://www.arrow.com/en/products/945-13766-0000-000/nvidia
   * Datasheet https://static6.arrow.com/aropdfconversion/e5f9455a906908a5cd69a1b5f187a8e543689c1d/jetson-orin-datasheet-nano-developer-kit-3575392-r24.pdf
   * https://www.sparkfun.com/products/22098
   * https://www.seeedstudio.com/NVIDIAr-Jetson-Orintm-Nano-Developer-Kit-p-5617.html
* Jetson Orin NX (16GB) 
* Jetson AGX Orin (32GB) 
* Jetson AGX Orin (64GB) $1,999 USD https://www.seeedstudio.com/NVIDIArJetson-AGX-Orintm-64GB-Developer-Kit-p-5641.html
   https://www.youtube.com/watch?v=eFgsOeHMAW4

Previous :
* NVIDIA® Jetson AGX Xavier

## Hardware Components
* 40-pin expansion header
* x16 PCIe Slot support x8 PCIe Gen4
* Micro SD card slot
* two MIPI CSI connectors supporting camera modules with up to 4-lanes, allowing higher resolution and frame rate than before.

## SDK
NVIDIA has a different SDK for different hardware
* https://developer.nvidia.com/embedded/learn/jetson-agx-orin-devkit-user-guide/index.html
Jetson AGX Orin Developer Kit User Guide
* https://developer.nvidia.com/embedded/learn/jetson-orin-nano-devkit-user-guide/index.html
Jetson Orin Nano Developer Kit User Guide

* https://docs.nvidia.com/jetson/archives/r36.4/DeveloperGuide/index.html
Linux Developer Guide


## Glossary

* CUDA is NVIDIA's proprietary software for parallel computing on GPUs

   CUDA 12.6

* Jetson is NVIDIA's proprietary GPU computing platform

   * <a target="_blank" href="https://docs.nvidia.com/jetson/ ">https://docs.nvidia.com/jetson/ = Jetson Software Documentation</a>

* Jetson Linux 36.4 provides the Linux Kernel 5.15, UEFI based bootloader, Ubuntu 22.04 based root file system, NVIDIA drivers, necessary firmwares, toolchain and more.

* Jetson Platform Services (available soon.) is a collection of pre-built and cloud-native software services and reference workflows to accelerate AI applications on Jetson. These services are modular, API-driven and can be quickly configured to build Generative AI and other edge applications. There are 15+ services from AI services to system services. The services include:

* JetPack 6.1 Cannonical Ubuntu Linux Kernel - https://developer.nvidia.com/embedded/jetpack
supports the Jetson Orin Nano Super Developer Kit, featuring [MAXN mode] which boosts AI compute performance for the Jetson Orin Nano Developer Kit. https://developer.nvidia.com/blog/nvidia-jetson-orin-nano-developer-kit-gets-a-super-boost/

* NVIDIA SDK Manager
* NVIDIA Jetpack SDK - 
    https://docs.nvidia.com/jetson/archives/jetpack-archived/jetpack-61/install-setup/index.html#upgradable-compute-stack
    https://docs.nvidia.com/jetson/archives/jetpack-archived/jetpack-61/install-setup/index.html#package-management-tool
* Jetson AI Stack
* Isaac Framework for building high performance robotic applications https://developer.nvidia.com/isaac
* Metropolis application framework to build, deploy and scale Vision AI application
   https://www.nvidia.com/en-us/autonomous-machines/intelligent-video-analytics-platform/

* Holoscan for building high performance computing applications (HPC) with real time insights and sensor processing capabilities from edge to cloud. https://www.nvidia.com/en-us/clara/holoscan/

* NVIDIA Omniverse™ Replicator for synthetic data generation (SDG), 
* NVIDIA TAO Toolkit for fine-tuning pretrained AI models from the NGC™ catalog.

## Software

* CUDA 12.6
* TensorRT 10.3
* cuDNN 9.3
* VPI 3.2 VPI (Vision Programing Interface) is a unified API for computer vision and machine learning applications.
* DLA 3.1
* DLFW 24.0
* https://developer.nvidia.com/downloads/assets/embedded/secure/jetson/orin_nx/docs/jetson_orin_nx_16gb_pcn211361_bom_addition_of_dram.pdf

## Social

https://www.nvidia.com/gtc/pricing/?nvid=nv-int-unbr-171401
Exhibits March 18–21 | Workshops March 16–20 | San Jose, CA & Virtual

LinkedIn

https://forums.developer.nvidia.com/c/agx-autonomous-machines/jetson-embedded-systems/70
NVIDIA Community

Reddit

TwitterX

https://www.youtube.com/watch?v=mgUrthfw3ys
YouTube
   * https://www.youtube.com/watch?v=QHBr8hekCzg Dave's Garage

## Install

1. https://developer.nvidia.com/embedded/jetpack

1. Download Jetson Orin Nano Super Developer Kit
https://developer.nvidia.com/downloads/embedded/L4T/r36_Release_v4.0/jp61-rev1-orin-nano-sd-card-image.zip
    
1. Download JETSON ORIN NANO DEVELOPER KIT SD card image from https://developer.nvidia.com/embedded/jetpack

 https://docs.nvidia.com/jetson/archives/r36.4/DeveloperGuide/SD/Security/FirmwareTPM.html
 Firmware-based Trusted Platform Module (fTPM) on the Orin platform. Refer to the security page for all security features.

 sudo apt dist-upgrade
 sudo apt-install nvidia-jetpack


 