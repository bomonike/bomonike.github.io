---
layout: post
date: "2026-08-24"
lastchange: "v019 apps @cad.md"
url: https://bomonike.github.io/cad
file: "cad"
title: "CAD (Computer Assisted Design)"
excerpt: "To create stuff using 3D printers"
modified:
tags: [design]
image:
# kubernetes-head-1900x500-472493.jpg
  feature: https://user-images.githubusercontent.com/300046/39955449-b791191e-558b-11e8-8bde-9042df1b66ab.jpg
  credit: Jeremy Thomas
  creditlink: https://www.flickr.com/photos/132218932@N03/page2
comments: true
k8s_version: 1.19
created: "2020-09-09"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}


Learning CAD (Computer-Aided Design) is a valuable skill for engineering, architecture, product design, and manufacturing. 

Here is a structured, step-by-step guide to get you started, regardless of your background.


{% include whatever.html %}

## Begin with simply

I wanted to use 3D CAD to precisely plan out my <a target="_blank" href="https://wilsonmar.github.io/van-build/">van build</a> and create stuff using 3D printers. The workflow:
1. Select a pre-made model STL/3MF file on Printables.com or Thingiverse to print. A lego brick, a small rectangular box.
1. 3D mesh Modeling (CAD) modify https://www.autodesk.com/learn/ondemand/curated/mesh-modeling-with-fusion-360
2. Slicing → Convert the 3D model into printer instructions (G-code) 
3. Preparation (optional) → Fix models, add supports, optimize

## CAD file Formats

A large number of vendors have developed design products to meet the demands of both horizontal and vertical industries. 

Dedicated CAD packages for mechanical design, civil and industrial buildings, architecture, infrastructure, and GIS were developed.

There are 50 CAD file formats on the market. The main ones:

* STL (Standard Tessellation Language or Standard Triangle Language) is a file format used to describe the surface geometry of a three-dimensional object without any representation of color, texture, or other common CAD model attributes. It was invented by 3D Systems founder, Chuck Hull, in 1987. There are two types of STL files: ASCII and binary. Binary STL files are more compact and commonly used.

* OBJ files

* formats suitable for model sharing like STEP, IGES, and DWG.

* fdm 
* printer overhang
* chamoher on base to prevent element being squeezed on bottom
* https://www.autodesk.com/learn/ondemand/curated/additive-fff-and-sla-technologies = Additive FFF (fused filament fabrication) and SLA (stereolithography)  technologies

## Material

PETG softens at ~80°C, PLA at ~60°C.

## Social

https://www.reddit.com/r/cad/comments/khivlb/best_cad_program_for_3d_printing/

https://www.youtube.com/watch?v=J--QVhGheP4&t=445s

See who is available to teach. Community college

## Software to choose

<table border="1" cellpadding="4" cellspacing="0">
<tr><th> Product </th><th> $/year </th><th> Notes </th></tr>
<tr valign="top"><td> <a href="#Onshape">Onshape</a> </td><td align="right"> free </td><td> browser-based in cloud </td></tr>
<tr valign="top"><td> <a href="#Blender">Blender</a> </td><td align="right"> free </td><td> Best for organic/artistic models. Huge learning curve but incredibly powerful.</td></tr>
<tr valign="top"><td> <a href="#SolidWorks">SolidWorks</a> </td><td align="right"> free </td><td> &nbsp;</td></tr>
<tr valign="top"><td> <a href="#SketchUp">SketchUp</a> </td><td align="right"> $119 </td><td> Good for architectural models.</td></tr>
<tr valign="top"><td> <a href="#Fusion">Autodesk Fusion 360</a> </td><td align="right"> $495 [s] </td><td> 30-day trial. industry standard </td></tr>
<tr valign="top"><td> <a href="#AutoCAD">AutoCAD</a> </td><td align="right"> $2,340 </td><td> &nbsp;</td></tr>
<tr valign="top"><td> CATIA </td><td align="right"> ? </td><td> &nbsp;</td></tr>
</table>

[s] = Free for students.
    
    * OpenSCAD uses Python programming
    * Autodesk
    * TinkerCAD (web-based, open-sourced for absolute beginners/kids). 
    * FreeCAD (parametric, open-sourced more advanced).
    * Revit (Autodesk) is industry standard (harder). 
    * SketchUp is easier for beginners.
    
Architecture, Building, and Infrastructure (BIM)

The most popular CAD software in China:
   * Dassault Systèmes SolidWorks (Global, for mechanical design)
   * ZWCAD (Chinese domestic, for general 2D/3D drafting) Almost identical to AutoCAD in commands and interface. 
   The most strategically important and fastest-growing is 
   * CAXA (Chinese domestic, for engineering/ manufacturing in state-owned factories.
   * Zhongwang 3D Another domestic contender, gaining traction.
   * Solid Edge (Siemens)
<br /><br />

https://www.simscale.com/blog/2016/06/best-cad-software-how-to-choose-it/

https://www.lifewire.com/top-free-cad-packages-485330

<hr />

## Parametric modeling

Before drawing anything, understand Parametric Modeling used by Fusion 360, SolidWorks, Inventor:

1. Sketches: start by drawing 2D shapes (lines, circles) on a "plane."
1. Constraints: You tell the computer relationships (e.g., "this line is horizontal," "these circles are concentric," "this edge is 10mm long"). This makes it smart.
1. Extrude/Revolve: You turn the 2D sketch into a 3D shape.
1. Features: You create holes, fillets (rounded edges), and chamfers (beveled edges).
    1. Assemblies: Combine multiple parts together (e.g., a gear and a shaft).

<hr />

<a name="Onshape"></a>

## Onshape

https://www.onshape.com/
Onshape (free for public and educational use)

Onshape is a free <strong>browser-based</strong> CAD program with much of the functionality of installed applications like Fusion360 and SolidWorks.

Onshape is the first and only full-cloud 3D CAD system that lets everyone on a design team work together using any web browser, phone, or tablet. 
The whole team has secure and simultaneous access to a single master version of their CAD data without the hassle of software licenses or copying files.

Onshape is a pay-as-you-use alternative -- no license or upgrade fees, no additional or hidden costs.

 https://www.onshape.com/en/blog/

<a target="_blank" href="https://www.onshape.com/en/professional-trial">Discovery program</a> for
6 months free

Buying a Pro license gets you:
   * Built-in PDM (Product Data Management) that tracks every change made to models
   * Release management
   * Simulation
   * Rendering
   * ECAD/MCAD
   <br /><br />

<a target="_blank" href="https://www.youtube.com/@OnshapeInc">OnShape's YouTUbe channel</a>:

https://www.makerbot.com/stories/3d-printing-education/educational-3d-design-apps/
Onshape offers free professional level 3D CAD to students and teachers through its Education plan. “It’s one of the most powerful 3D modeling programs available online. Its very similar to Solidworks, which is a professional program,” Lyttle explains. Onshape uses in-program tutorials to give students a thorough understanding of all the options they have to build out models. It has a version control feature to ensure that the latest version of your work is always saved. It’s also compatible with other CAD systems, so you can import work from other programs and continue to work on it in Onshape. This program includes everything you need to begin exploring professional 3D design work. 

https://www.simscale.com/blog/2015/12/introducing-simscale-connector-app-for-onshape/
Onshape and SimScale Connector App provides a complete design workflow―CAD design, meshing, simulation, and results―right in the web browser. 

https://www.simscale.com/
is a cloud-based 3D simulation platform enables designers to optimize their product designs in a virtual environment instead of using a costly physical prototyping process.

<a target="_blank" href="https://www.youtube.com/watch?v=2eGG2PnkYYY&list=PL4FdDkwWXT9ovtt9-zdpRZyCgf25JU4IX&index=63">VIDEO</a>: For a Keyboard shortcuts cheat sheet, click on Share blue button.

<a target="_blank" href="https://www.youtube.com/watch?v=MlHsEirSRJk&list=PL4FdDkwWXT9ovtt9-zdpRZyCgf25JU4IX&index=62">VIDEO</a>:
* Set Variable value layer height in mm.
* Set nozzle size. The most common nozzle size is 0.4 mm. Set walls a multiple of that variable.
* If a part is too large, split it to print separately.

<a target="_blank" href="https://www.youtube.com/watch?v=JOyQ9LfpuY8">VIDEO</a>: Featurescript


<a name="Blender"></a>

## Blender (free)

Blender is open-sourced with a massive selection of different tools and a sizable community to contribute additional plug-ins and techniques. 

So Blender has among the steepest learning curves of any 3D modeling program. 


<hr />

<a name="Fusion"></a>

## Autodesk Fusion 360

Autodesk Fusion360 is a full featured CAD/CAM suite by a compnay that's been around since the 1970s. See https://www.autodesk.com/products/fusion-360/overview

Fusion360 unifies design, engineering, electronics, and manufacturing into a single software platform.
It can be used for 3D design and for generating toolpaths for CNC machines. 

The free hobbyist version has all of the capabilities of the paid professional version. Pro versions have a 30-day free trial period, then 
   * $2,190/ YEAR for Pro design capabilities
   * $2,040/ YEAR for Pro manufacturing capabilities (CNC)

PROTIP: Know the pro capabilties buzzwords.
Fusion360 integrates CAD, CAM, CAE, and PCB software. 
Transition to the manufacturing workspace to learn everything you need to know about milling, turning, toolpath creation, multi-axis machining, and inspection.

1. On MacOS, the Homebrew cask (unofficial)
   ```bash
   brew install --cask autodesk-fusion360
   ```
   Direct download from Autodesk from:
   https://autodesk.com/fusion-360-personal

   Step 1: Get a Free License
1. In a browser, go to address: 
   ```
   https://www.autodesk.com/products/fusion-360/personal
   ```
Autodesk's "Getting Started with Autodesk Fusion" video series
https://www.youtube.com/watch?v=Sw4001eqi_o&list=PLmA_xUT-8UlJYjo3X_xUAR057IfpvvbkB

1. Click "Get started free"
1. Sign up or log in with an Autodesk account tied to a 3rd-party such as Apple.
1. Confirm email.
1. Select "Free for personal use" (this is the hobbyist/student license)
1. Complete the registration
1. Click "Download Now" for macOS for a .dmg file 
1. Double-click the downloaded .dmg file
   "Fusion Client Downloader.dmg"
1. Double-click "Install Autodesk Fusion 360.app
1. Click the pop-up
1. In Finder notice what was installed:
   * Autodesk Fusion.app
   * Autodesk Fusion Service Utility.app
   * Remove Autodesk Fusion.app
   * Autodesk Fusion.app
   REMEMBER: Use the "Remove" app.   
1. Click "Autodesk Fusion.app"
1. Click "Sign in" with your Autodesk account when prompted
1. Check "Always 
1. Wait for the download (it needs ~5-10 GB of components)
1. Fusion 360 will appear in your Applications folder
1. It also creates a menu bar icon for quick access
1. Create a hub. "wm1"
1. Do not allow discovery.


https://www.youtube.com/watch?v=7lKpzGtoQX0&pp=ugUHEgVlbi1HQg%3D%3D
31:24
Fusion 360 Year 2026 | Beginners Guide | 30 minute Guide to 3D Design | Step-by-Step
Design Forge

by Product Design Online
   * https://www.classcentral.com/course/youtube-fusion-360-for-3d-printing-53787/classroom
   How to 3D Model a Beer Bottle - Learn Autodesk Fusion 360 in 30 Days: Day #2
   * https://www.youtube.com/watch?v=DrLOPJq_stc
   How to 3D Model a Lego Brick - Learn Autodesk Fusion 360 in 30 Days: Day #1

https://www.youtube.com/watch?v=A5bc9c3S12g&list=PL40d7srwyc_PUk-XisDh54N-hVtLg5p6u
by Lars Christensen

https://www.youtube.com/watch?v=mRvfoHxLgqE&pp=ugUEEgJlbg%3D%3D


https://www.udemy.com/course/designing-for-3d-printing-with-fusion-360/?couponCode=CP260817G1
Designing for 3D Printing with Fusion 360
Learn to design for 3D printing with my easy to follow video lessons using Fusion 360

https://www.youtube.com/watch?v=61roFSkwAy4&pp=ugUHEgVlbi1VUw%3D%3D
10 tips for Fusion 360 that I wish someone told me sooner.
by Austin Shaner

https://www.youtube.com/watch?v=y5tp4QXciK4
Learn Fusion 360 or Die Trying LESSON 1: Introduction tutorial for Absolute Beginners
https://www.youtube.com/watch?v=_qTcZ8ynk4U&pp=ugUEEgJlbg%3D%3D
Paul McWhorter
https://toptechboy.com/fusion-360-lesson-1-introduction-tutorial-for-absolute-beginners/



<a name="SketchUp"></a>

## SketchUp

1. https://www.sketchup.com/
   SketchUp: 3D Modeling for Everyone

   SketchUp was originally developed by Google.
   In 2012, Google sold the product to Trimble. 

1. It's free to view 3D models. 30-Day FREE Trial.

1. <a target="_blank" href="https://www.sketchup.com/plans-and-pricing/">Other plans</a>:

   <strong>$119/year</strong> SketchUP Shop to edit models on the web (not on laptop).
   
   $299/year SketchUp Pro to edit models locally with a downloaded app on your laptop.

   $55/year for educators.
   
1. https://3dwarehouse.sketchup.com/collection/b4cf1a0e-3eb2-4f4c-bf09-23923ce8f158/Van-Layouts?sortBy=modifyTime%20DESC&searchTab=model&hl=en
   3D Van models in SketchUp format.

1. <a target="_blank" href="https://3dwarehouse.sketchup.com/model/9ae3183a-34e2-4798-92f0-39e3436676a3/Mercedes-Sprinter-Race-Van">View this model</a>
   to see Greg Vergoe's Mercedes Sprinter LWB panel van conversion into an Off Grid Camper Van with rear garage for 2 racing bikes.
   A permanent king size double bed is over the garage.

   <a target="_blank" href="https://www.youtube.com/watch?v=b47sF7l1yDM">VIDEO</a>: How to draw your Camper Van in SketchUp Make, from scratch.

   <a target="_blank" href="https://www.youtube.com/watch?v=SoytP-XmtfI&list=PLLhAyWhGGbi6JLJBHePgsmR-jSbyC_RgO&index=17">VIDEO shows use of SketchUp from scratch</a> shows making components.

   His <a target="_blank" href="https://www.dropbox.com/s/zvtyj0z7cdeb9d8/Greg%20Virgoe%20Campervan%20Parts%20List.docx?dl=0">parts list on Dropbox</a> totals <strong>15,158 UK pounds</strong> (including tools), all in metric from european suppliers.

   Greg shared videos of his <a target="_blank" href="https://www.youtube.com/watch?v=RLwaqbn_f6s&list=PLLhAyWhGGbi6JLJBHePgsmR-jSbyC_RgO">entire build on his YouTube channel</a>.

   It ran from the first video on 3 Sep 2017 to <a target="_blank" href="https://www.youtube.com/watch?v=QBeGQc3WoMk&list=PLLhAyWhGGbi6JLJBHePgsmR-jSbyC_RgO&index=57">tour</a> on 14 Jun 2019. <a target="_blank" href="https://www.youtube.com/watch?v=eje0wEBlnzk&list=PLLhAyWhGGbi6JLJBHePgsmR-jSbyC_RgO&index=58">What Would I Do Differently?</a> on 14 Jul 2019 talks about the quiet Max Fan (from AirExcel) which have a motor with remote.
   <a target="_blank" href="https://www.youtube.com/watch?v=IwBJGIvhyAc&list=PLLhAyWhGGbi6JLJBHePgsmR-jSbyC_RgO&index=59">Unbox</a> and <a target="_blank" href="https://www.youtube.com/watch?v=tyY8HIxzwv4&list=PLLhAyWhGGbi6JLJBHePgsmR-jSbyC_RgO&index=60">install</a>.

   <a target="_blank" href="https://www.youtube.com/watch?v=1nrAE5Q3lVQ&time=7m34s">Math and tiltable solar panels</a> on the roof to power all electrical appliances.

   * A wet room with shower and flushing toilet with cartridge. 
   * A kitchen with sink/ double burner gas hob combo
   * electric fridge.
   * Bench seating which will pull out and form another double bed so the van could sleep 4 people.
   * <a target="_blank" href="https://www.youtube.com/watch?v=zV3J0KNC8YM">VIDEO</a>: Sealed compartment with external fill of LPG autogas for stove, water heat. With remote on/off switch. and leak drop-out on floor.
   <br /><br />

1. Professors in the Department of Civil Engineering at the National Taiwan University developed several courses on Coursera:

   * Professor Jessy Kang <a target="_blank" href="https://www.coursera.org/learn/3d-cad-fundamental">3D CAD Fundamentals</a> A 14-hour video course on Coursera</a>

   * <a target="_blank" href="https://www.coursera.org/learn/3d-cad-application">3D CAD Application</a> A 14-hour video course on Coursera to build a 5-story model.

Professor Shang-Hsien Patrick Hshieh:
<strong>BIM = Building Information Modeling</strong>
using Autodesk Revit

BIM app including clash detection, quantity takeoff, and 4D simulation.

Other tutorials:

* Maxwell plug-in: http://www.nextlimit.com/maxwell/integrations/

* <a target="_blank" href="https://www.youtube.com/watch?v=RJtSeS5zcgI">Intro to SketchUp Free</a> by Aaron Kennedy Published on Apr 12, 2018

* <a target="_blank" href="https://www.youtube.com/watch?v=BZ-uPJLxav0&list=PLEQT0qjXe6zgmMMP6ZzoUDG_fdjcRmCQE
https://www.youtube.com/watch?v=9QREMRZqb3o"> 18:38
SketchUp 2017 Tutorial for Beginners - Part 2</a> - Modeling a House
TheSketchUpEssentials


<a name="SolidWorks"></a>

## SOLIDWORKS

http://my.solidworks.com/
SolidWorks is the most popular option among professional engineers.
This is the go to for many individuals and companies working on professional 3D modelling.
It has the most full-featured design toolset, an expansive texture library, and a wide variety of different plug-ins, 

SolidWorks Premium the ‘industry standard for 3D product development’, SolidWorks offers mechanical CAD, design validation, product data management, design communication, and CAD productivity tools in one single package.

The platform’s publisher, Dassault Systèmes, estimates that there are 3,246,750 SOLIDWORKS users on the planet, withan active online community.
Join the EAA for $40 a year, and get a free subscription to Solidworks Education edition included: https://www.eaa.org/en/eaa/eaa-chapters/chaptergram-articles/2016-09-new-eaa-member-benefit-free-solidworks

https://www.youtube.com/channel/UCRmLnVaHsSAH0HkXfeoxG6w
SolidWorksTutorials With Aryan

https://www.youtube.com/watch?v=4wlEKAwpUX4
Ultimate SolidWorks Tutorial 2021 for Beginners (In depth explanation) Part 2

https://www.youtube.com/watch?v=qtgmGkEPXs8
2017 Ultimate SolidWorks Tutorial for Absolute Beginners- Step-By-Step 




<a name="TurboCAD"></a>

## TurboCAD is $100

https://www.turbocad.co.uk/windows-range/turbocad-pro-platinum

with TurboCAD Pro Platinum you can create 3D models using parametric or direct modeling features. You can also use some advanced surfacing features to add curves and deform your 3D model to your specifications.

<a name="TurboCAD"></a>

## CorelCAD 

CorelCAD 2019 Design and Drafting Software for PC/Mac $699

<a name="3DSMax"></a>

## 3DSMax (paid)

3DSMax is developed by Autodesk and a top pick for those working in both the product design and animation industries. Its toolset competes with that of Blender and is developed by the full time and experienced team at Autodesk. With professional texture libraries and rendering tools like Vray, 3DSMax is a top pick for industry professionals working on polished products and visualizations.

<a name="TinkerCAD"></a>

## TinkerCAD

https://www.tinkercad.com/
is a 3D tool created for young students.

> "Tinkercad is a free, easy-to-use web app that equips the next generation of designers and engineers with the foundational skills for innovation: 3D design, electronics, and coding!"

It is from Autodesk, the maker of AutoCAD for professionals.

"The tutorials take students through the fundamentals of 3D modeling, giving them the skills they’ll need to create complex shapes for projects. It’s a great tool to introduce 3D design and 3D printing.”

<a name="AutoCAD"></a>

## AutoCAD

AutoCAD for students and faculty is free, with a watermark on plots generated.

AutoCAD LT (Light) is for 2D drafting.$1,099.95
from Adobe costs $195 per month ($2,340)
https://www.amazon.com/AutoCAD-Architecture-Retail-Media-5-Seats/dp/B07M5QK13P/
	Autocad Architecture $899 5 seats

AutoCAD Inventor ?

<a target="_blank" href="https://www.amazon.com/Mastering-AutoCAD-2018-LT/dp/1119386799?SubscriptionId=AKIAINYWQL7SPW7D7JCA&tag=aboutcom02lifewire-20&linkCode=sp1&camp=2025&creative=165953&creativeASIN=1119386799&ascsubtag=2192%7Cnfa9cf3b6620e4178838944be28d94ad318">
Mastering AutoCAD 2018 and AutoCAD LT 2018 1st Edition</a>

https://www.linkedin.com/learning/search?keywords=autocad
LinkedIn Learning has courses.


## Design

https://www.youtube.com/channel/UCoc2ZM2cYas4DijNdaEJXUA
30X40 Design Workshop
Published on Apr 12, 2018


## Auto buying


https://gnomadhome.com/build-your-van/
calls itself "Ultimate Guide to Converting a Van into a DIY Camper for Life on the Road"

http://www.sprinter-rv.com/sprinter-rv-conversion-sourcebook/

https://www.pinterest.com/mattgamerlester/van-conversion-plans/


https://www.cargurus.com/  Atlanta


Ford Transit is more boxy (square) makes for easier conversion process.
https://gnomadhome.com/build-your-van/

https://gnomadhome.com/dodge-promaster-for-van-life/
is the most square option,

Before insulating and putting in the ceiling, the high roof Transit is about 6’7”. After my build, it’s still 6’4”.

The width of a Ford Transit is about 67” wide. Anyone who is a little shorter (I’m 5’10”) can sleep width-wise instead of length-wise.

Any mechanic in the country can work on Ford Transit. If I break down or need maintenance/repairs, I can take it to the nearest mechanic. And parts are cheaper.


## Process for Manufact

<a target="_blank" href="https://www.youtube.com/watch?v=07ynjb23r5c&t=2m55s">VIDEO</a>:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714427624/mfg-process-240429_k9zyox.png"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714427624/mfg-process-240429_k9zyox.png"></a>

The 7 phases to reach production via Engineering, Supply Chain, and Manufacturing.




## Living

https://www.parkedinparadise.com/how-to-live-in-van/


https://www.rvrepairclub.com/video/how-to-use-an-rv-inverter-007979/

Lisa Jacobs (https://www.instagram.com/vacayvans/, https://vacayvans.com/)


<hr />

## What to 3D Print

https://cults3d.com/en/3d-model/gadget/lego-box-stackable-sorter
Stackable box

https://cults3d.com/en/3d-model/game/lego-2-gang-light-switch-cover-plate
LEGO-compatible two-gang light switch cover plate

https://cults3d.com/en/3d-model/home/lego-compatible-decora-light-switch-cover
LEGO-compatible Decora light switch cover plate

https://www.mecabricks.com/

https://all3dp.com/2/3d-print-lego-fantastic-parts-minifigs/#google_vignette
https://cults3d.com/en/3d-model/game/muneco-lego-para-personalizar
Customizable Lego mini figure
https://cults3d.com/en/3d-model/game/lego-compatible
measurements
https://www.reddit.com/r/3Dprinting/comments/12i6c81/3d_printing_entire_lego_sets/

https://cults3d.com/en/3d-model/home/lego-wall-hanger-andini
LEGO wall hook

https://cults3d.com/en/3d-model/game/lego-compatible-12-x-16-base-plate
12x16 LEGO base plate

https://cults3d.com/en/3d-model/gadget/power-bank-kubik-lego
battery holder (power bank)

https://cults3d.com/en/tags/lego?page=15
LEGO replacement bricks
https://www.printables.com/model/135873-lego-brick

https://www.printables.com/model/25470-easy-print-lego-brick


## Slicing

* Cura (Ultimaker Cura)	Free	The most popular. Excellent presets for Ender 3, Anycubic, etc. Highly customizable.
* PrusaSlicer	Free	Excellent for Prusa printers, but works great for any printer. Advanced features (tree supports, variable layer height).
* Orca Slicer	Free	Fork of PrusaSlicer. Very modern, fast, and has calibration tools built-in. Highly recommended.
* Simplify3D	$199	Not recommended for cheap printers. Overpriced, slow updates.
* Creality Slicer	Free	Modified version of Cura for Creality printers. Works, but Cura is better.

Step 2: Slice
Software: Orca Slicer or Cura.
Import your STL/3MF file.
Select your printer profile (e.g., "Ender 3" or "Anycubic Kobra").
Adjust settings: Layer height (0.2mm for speed, 0.12mm for detail), infill (20% for functional, 5% for decorative), supports (if needed).
Slice and preview. Check for overhangs, travel moves, and print time.
Step 3: Print
Export G-code to SD card (or send via USB/OctoPrint).
Level your bed (critical for cheap printers!).
Start print. Watch the first layer closely.
Step 4: Post-Process
Remove supports (use flush cutters).
Sand, prime, paint if desired.


<sub>{{ page.lastchange }} created {{ page.created }}</sub>
