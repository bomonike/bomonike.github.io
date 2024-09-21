---
layout: post
date: "2024-09-21"
file: "ros"
title: "ROS (Robotic Operating System)"
excerpt: "Learn the operating system for controlling simple robots"
tags: [Robots, DevOps]
image:
# pic silver robot white skin handshake 1900x500
  feature: https://cloud.githubusercontent.com/assets/300046/14622149/306629f0-0585-11e6-961a-dc8f60dadbf6.jpg
  credit:
  creditlink:
comments: true
created: "2021-08-02"
---
<i>{{ page.excerpt }}</i>

This is at https://bomonike.github.io/ros
with source at https://github.com/bomonike/bomonike.github.io/blob/master/ros.md

## Robot in space

![ros-Robonaut2-ISS-770x578](https://user-images.githubusercontent.com/300046/133761877-fd7d01b0-9c81-4def-a644-ebcae4b7aba0.jpg)

<a target="_blank" href="https://www.youtube.com/channel/UCaigdIdLyOlAEBYj8U3camg">VIDEO</a>:
The "first human-like robot to space" went onboard the NASA STS-133 ULF-5 mission to the International Space Station "to become a permanent resident" on the orbiting spacecraft. With a pair of robotic arms and nimble hands, the humanoid robot known as Robonaut2 (<strong>R2</strong>) <a target="_blank" href="https://www.nasa.gov/sites/default/files/files/Robonaut2_508.pdf">can</a> "one day venture outside the station (for EVA) to help spacewalkers to make repairs or additions to the station or perform scientific work."

> "It can lift heavy objects in space. But then, since everything is weightless, anyone can."

## Amazing

The IEEE catalogs robot projects at

https://robots.ieee.org/robots/

## Mechatronics

<a target="_blank" href="https://www.youtube.com/@OliverFoote">Oliver Foote</a> talks <a target="_blank" href="https://www.youtube.com/watch?v=1G6iwH0pn4c">Mechatronics</a> on his <a target="_blank" href="https://www.youtube.com/@OliverFoote">YouTube channel</a>

## Why ROS?

ROS (Robotic Operating System) is the <em>de facto</em> standard for robot programming.
It provides libraries and tools to help software developers create robot applications.
It provides hardware abstraction, device drivers, libraries, visualizers, message-passing, package management, and more.

ROS was originally developed in 2007 at
Stanford university's Artificial Intelligence Laboratory.
Since 2013 it is managed by the OSRF (Open Source Robotics Foundation) at <a target="_blank" href="https://www.openrobotics.org/">openrobotics.org</a> and offered free to use under open source BSD license at<br /><a target="_blank" hre="https://github.com/ros/">https://github.com/ros</a>

But in December 2022, the business of OSRC and OSRC-SG was acquired by <a target="_blank" href="https://www.intrinsic.ai/">Intrinsic.ai</a>, an Alphabet (Google) company that sells a the Flowstate robot developer environment.

<img alt="ros-intrinsic-flow-1898x1162.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726565022/ros-intrinsic-flow-1898x1162_skd1rn.png">

## ROS Versions

* ROS
* ROS2 facilitates a multi-robot architecture, which ROS was not build for.
* ROS3

URDF (Unified Robot Description Format) is a popular code-independent, human-readable format to describe the geometry of robots and their cells. It's used for collision checking and dynamic path planning. Think of it like a textual CAD description: “part-one is 1 meter left of part-two and has the following triangle-mesh for display purposes.”


## ROS Specs

ROS runs within Ubuntu 14.04 (not other Linux flavors).

ROS <strong>modules</strong> can be written in any language for which a client library exists (C++, Python, Java, MATLAB, etc.).

   * <a target="_blank" href="http://wiki.ros.org/CppStyleGuide">http://wiki.ros.org/CppStyleGuide</a>

   * Python - <a target="_blank" href="https://www.youtube.com/watch?v=oxK4ykVh1EE">VIDEO</a>

   * MATLAB - <a target="_blank" href="https://www.mathworks.com/hardware-support/robot-operating-system.html">MATLAB</a>

   * <a target="_blank" href="https://github.com/siemens/ros-sharp">https://github.com/siemens/ros-sharp</a>ROS# is a set of open source software libraries and tools in C# for communicating with ROS from .NET applications, in particular Unity3D

https://docs.google.com/presentation/d/1qPtCeO6QDLKaYEKVROqICuv20lecLNQAEz7J8GD73c4/edit#slide=id.g119ec7c0a1_0_190


<a name="Hardware"></a>

## Hardware

https://wiki.ros.org/Industrial/supported_hardware

Richard Wang
https://www.youtube.com/watch?v=lgWnBWncRkU
Closed-loop Control of a Hardware Robot in ROS (part 5)

https://www.instructables.com/id/Autonomous-Mobile-Robot-Using-ROS/



<a name="Installation"></a>

## Installation

<a target="_blank" href="http://wiki.ros.org/ROS/Installation">http://wiki.ros.org/ROS/Installation</a>

<a target="_blank" href="http://wiki.ros.org/indigo/Installation/Ubuntu">http://wiki.ros.org/indigo/Installation/Ubuntu</a>

<a target="_blank" href="http://wiki.ros.org/catkin/workspaces">http://wiki.ros.org/catkin/workspaces</a>


### Simulators

Gazebo, Bullet, Issac

<a name="Gazebo"></a>

### Gazebo 3D Simulator

Gazebo visually simulates (displays) what the robot does.

<a target="_blank" href="http://gazebosim.org/">http://gazebosim.org</a>

<a target="_blank" href="http://gazebosim.org/tutorials">http://gazebosim.org/tutorials</a>

1. The Gazebo software includes a database of many robots and environments (<strong>Gazebo worlds</strong>)

   <ul><pre>rosrun gazebo_ros gazebo</pre>
   </ul>

   <a name="Catkin"></a>

   ## Catkin

   Catkin is the ROS build system to generate executables, libraries, and interfaces.

   A CMake-based build system that is used to build all packages in ROS.

1. Build the Eclipse project files with additional build flag

   § The project files will be generated in ~/catkin_ws/build

   <pre><strong>catkin_make</strong></pre>

1. Setup a Project in the Eclipse IDE:

   <pre><strong> catkin build package_name -G"Eclipse CDT4 - Unix Makefiles"
-DCMAKE_CXX_COMPI</strong></pre>


   ### Download

1. Directly clone to your <strong>catkin workspace</strong>.

   Using a common git folder is convenient if you have multiple catkin workspaces.

1. Open a terminal and browse to your git folder

   <pre><strong>cd ~/gits</strong>

1. Clone the Git repository with

   <pre><strong> git clone https://github.com/ethzasl/ros_best_practices.git</strong></pre>

1. Symlink the new package to your catkin workspace

   <pre><strong>ln -s ~/git/ros_best_practices/ ~/catkin_ws/src/</strong></pre>


   ## Launch

1. Launch files are written in XML as *.launch files


   <a name="Master"></a>

   ## Master

   The ROS Master manages the communication between nodes.

   Every node registers at startup with the master.

1. Start a master with

   <pre><strong> roscore </strong></pre>

1. See http://wiki.ros.org/Master


   <a name="Nodes"></a>

   ## Nodes

1. Run a talker demo node with

   <pre><strong> rosrun roscpp_tutorials talker</strong></pre>

<a name="Ideas"></a>

## Ideas

http://robotwebtools.org/
IS A COLLECTION OF OPEN-SOURCE MODULES AND TOOLS FOR BUILDING WEB-BASED ROBOT APPS.

http://robotwebtools.org/demos.html


### Justin Huang

(<a target="_blank" href="https://github.com/jstnhuang">jstnhuang on GitHub</a>), PhD student in robotics <a target="_blank" href="https://homes.cs.washington.edu/~jstn/">at the University of Washington in Seattle, Washington</a>

<a target="_blank" href="https://www.youtube.com/watch?v=9U6GDonGFHw">
ROS tutorial #1: Introduction, Installing ROS, and running the Turtlebot simulator</a>
135K views

<a target="_blank" href="https://www.youtube.com/watch?v=bJB9tv4ThV4">
ROS tutorial #2: Publishers and subscribers</a>
39K views

<a target="_blank" href="https://www.youtube.com/watch?v=2Cmdu6mkxD0">
ROS tutorial #2.1: C++ walkthrough of publisher / subscriber lab</a>
41K views

<a target="_blank" href="https://www.youtube.com/watch?v=MD255BS0YH4">
Tutorial Thursday! #1: ROS basics</a>
47K views


### Peter Frankhauser

<a target="_blank" href="https://pfankhauser@ethz.ch/">pfankhauser@ethz.ch</a>
<a target="_blank" href="http://www.rsl.ethz.ch/education-students/lectures/ros.html">rsl.ethz.ch</a>
at <a target="_blank" href="http://www.rsl.ethz.ch/">rsl.ethz.ch</a> in
Zurich, Switzerland

Programming for Robotics (ROS) Course

   <a target="_blank" href="https://www.youtube.com/watch?v=0BxVPCInS3M">Course 1</a>
   Slides <a target="_blank" href="https://www.ethz.ch/content/dam/ethz/special-interest/mavt/robotics-n-intelligent-systems/rsl-dam/ROS2017/lecture1.pdf">PDF</a>

<a target="_blank" href="https://www.youtube.com/watch?v=jYqDnuxTwK8">2</a> Eclipse IDE C++
Slides at <a target="_blank" href="https://www.ethz.ch/content/dam/ethz/special-interest/mavt/robotics-n-intelligent-systems/rsl-dam/ROS2017/lecture2.pdf">PDF</a>

<a target="_blank" href="https://www.youtube.com/watch?v=_GgHFuib_LU">3</a> UI, Robot Models
TF Transformation System http://wiki.ros.org/tf2
rqt User Interface
Robot models (URDF) Unified Robot Description Format describes your robot.
(composition, length of the different parts of the arm, which joints it contains, etc.)
The MoveIt! assistant for configuration.

   roslaunch moveit_setup_assistant setup_assistant.launch

Simulation descriptions (SDF) <a target="_blank" href="http://sdformat.org/">sdformat.org</a>
See <a target="_blank" href="https://www.ethz.ch/content/dam/ethz/special-interest/mavt/robotics-n-intelligent-systems/rsl-dam/ROS2017/lecture3.pdf">PDF</a>

<a target="_blank" href="https://www.youtube.com/watch?v=feXC7aQrkeM">4</a>
Slides at
<a target="_blank" href="https://github.com/ethz-asl/ros_best_practices/wiki">
https://github.com/ethz-asl/ros_best_practices/wiki</a>


<a target="_blank" href="https://www.youtube.com/watch?v=EnSpiaD4S1g">
[ROS tutorial for beginners] Chapter 1- Intro to Robot Operating System</a>
The Construct
12K views


### Lentin Joseph

<a target="_blank" href="https://www.packtpub.com/hardware-and-creative/mastering-ros-robotics-programming-second-edition">
Mastering ROS for Robotics Programming - Second Edition February 26, 2018</a>
By Lentin Joseph, Jonathan Cacace | $39.99 $8
Discover best practices and troubleshooting solutions when working on ROS.

ROS Robotics Projects
By Lentin Joseph | $39.99 $8

Build a variety of awesome robots that can see, sense, move, and do a lot more using the powerful Robot Operating System.


### Anil Mahtani

Effective Robotics Programming with ROS - Third Edition
By Anil Mahtani et al. | $39.99 $20.00
Find out everything you need to know to build powerful robots with the most up-to-date ROS.

   * ROS Programming: Building Powerful Robots (Packt)



### Robot Ignite Academy

<a target="_blank" href="https://www.theconstructsim.com/robotigniteacademy_learnros/ros-courses-library/"
title="Mar 27, 2017">ROS in 5 days by the Robot Ignite Academy at theconstructsim.com/robotigniteacademy_learnros/ros-courses-library</a>



## References

<a target="_blank" href="http://rosrobots.com/">rosrobots.com</a>
Exciting Robotics Projects and Tutorials using ROS
Build a variety of awesome robots that can see, sense, move, and more using the powerful Robot Operating System.
Packt Book
talks about interfaces to self-driving cars, Leap Motion VR, Tensor Flow.

<a target="_blank" href="https://www.packtpub.com/hardware-and-creative/ros-robotics-example-second-edition">ROS Robotics By Example - Second Edition November 30, 2017</a>
By Carol Fairchild, Dr. Thomas L. Harman | $39.99 $20.00
Learning how to build and program your own robots with the most popular open source robotics programming framework.

<a target="_blank" href="https://www.youtube.com/watch?v=DBFYZRMLr70">
VIDEO</a>:

<a target="_blank" href="http://www.ros.org/browse/list.php">http://www.ros.org/browse/list.php</a>

<a target="_blank" href="https://github.com/ros/cheatsheet/releases/download/0.0.1/ROScheatsheet_catkin.pdf">PDF in GitHub</a>

<a target="_blank" href="https://github.com/ethz-asl/ros_best_practices/wiki">github.com/ethz-asl/ros_best_practices/wiki</a>

"All I want is a two-finger robot that presses up/down buttons on a remote device."

<a target="_blank" href="https://www.youtube.com/watch?v=Z8mkwvJW-Xs">
VIDEO</a> <a target="_blank" href="http://www.openbionics.org/">http://www.openbionics.org</a>
focus on robotic hands with 5 fingers.

<a target="_blank" href="https://www.youtube.com/watch?v=DFfeY7PUh5Q">
VIDEO: The microdot push by Naran</a> is it (for $50). But it's out of stock.

https://www.youtube.com/watch?v=7TVWlADXwRw
What Is ROS2? - Framework Overview

## Hardware

https://www.robotshop.com/collections/clearpath-robotics
* Clearpath Robotics TurtleBot 4 Lite Mobile Robot
SKU: RB-Cle-04 is $1,336.99
* Clearpath Robotics TurtleBot 4 Mobile Robot
SKU: RB-Cle-03 is $2,191.44