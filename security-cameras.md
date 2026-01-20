---
layout: post
date: "2026-01-20"
lastchange: "26-01-20 v005 + Frigate :security-cameras.md"
url: https://bomonike.github.io/security-cameras
file: "security-cameras"
title: "Security Cameras"
excerpt: "See in the dark"
tags: [website, Android, iOS, Google]
image:
comments: true
created: "2019-03-21"
---
<i>{{ page.excerpt }}</i> 
{% include l18n.html %}
{% include _toc.html %}

## Capabilities

   References: 
   * <a target="_blank" href="https://www.youtube.com/@foxysLab">@foxysLab</a>
   * https://www.youtube.com/watch?v=tbCKWX34_G4 @NetworkChuck
   * Hook Up channel by Robert
   <br /><br />

What we want are continuous video feeds from wired and wifi cameras being stored locally in an NVR (Network Video Recorder) so I don't pay to send to China (violating my privacy). Cameras have Infrared (IR) <strong>night vision</strong> to see in the dark.

Many brands of cameras are junk (have problems keeping a connection, etc.).
UniFi has their own NVR ecosystem.
Reolink and Amcrest camera generally plays nicer than other brands.
The Reolink 811A PoE IP Wired Security Camera 4K - 123° FoV, 5X Optical Zoom, 2 Way Talk (<a target="_blank" href="https://www.amazon.com/REOLINK-Security-Detection-Spotlight-Time-Lapse/dp/B09873G7X3/">$130 from Amazon</a>) has higher performance than the $89 810A or 510A.
Annke B1200 has the highest performance but ???.

Human monitoring services such as SimpliSafe Pro would have a human call when hardware alarms are triggered.

We want to use AI object detection smart enough to recognize objects as named entitites such as "dog" vs "human", "porch pirate" vs "mailman", etc.
Recognition focuses on custom <strong>detection zones</strong>.

## Frigate

Frigate began in 2019 by Blake Blackshear.

To process streams from several cameras using AI requires a hefty computer with a TPU (Tensor Processing Unit) for running machine learning models efficiently. Frigate no longer supports use of the Coral USB accelerator, Google's edge TPU. And Google stopped making them. So look for them on Ebay or at Amazon UK.

Now consider the Hailo 8L accelerator.

We don't have time to scroll through hours of videos, so we want our AI to extract from the NVR relavent video clips and snapshot images across several cameras.

Since storage capacity is finite (and costs money), this enables flexibility in retention policy which controls how far back recordings are kept. We keep videos of our kids for a year, other people for 30 days, and car detections for 7 days.

On a Mac, the Scripted app passes recognitions to Apple HomeKit for viewing on Apple TV and/or Home Automation software???

<a target="_blank" href="https://frigate.video/">https://frigate.video</a>
Frigatae+ is $50/yr.

Discovery and auto-configuration of IP cameras use the ONVIF (Open Network Video Interface Forum) protocol.

Streaming makes use of cameras that sends out video streams in RTSP (Real Time Streaming Protocol).

Frigate can control cameras able to PTZ (Pan & Tilt & Zoom).



Triggers

Frigate was trained on the COCO (Common Objects in Context) dataset of random images.
Frigate+ subscription was trained on security-related images around the world.

Frigate 
Home Automation




## The problems with security cameras

1. Wi-Fi can be jammed by a cheap jammer. It's best to hard-wire cameras (PoE).
1. It's best to use local recording. Most cameras made in China sends videos to China (even though they say they don't).

https://www.cnet.com/home/security/eufy-says-software-bug-that-exposed-users-video-footage-to-strangers-has-been-fixed/

## Brands 

<a target="_blank" href="https://www.youtube.com/watch?v=Vmf3miW619M">VIDEO</a>: tested:

* Arlo Essential Indoor Camera (2nd Gen) - https://amzn.to/4lu7mtv
* Amazon Cloud Cam - https://amzn.to/4cBoycr
* Blink (Amazon) Indoor - https://amzn.to/42jxobz
* Blink Mini 2 - https://amzn.to/42Kyqxj

* D-Link Omna 180 - https://amzn.to/42ivp7p
* Ezviz Mini 360 Plus - https://amzn.to/4lwFvJ8

* Google Nest Cam Indoor (2nd Gen) - https://amzn.to/3GcmJ9Y
* Honeywell Lyric C1 - https://amzn.to/4cF8FSv
* Honeywell Lyric C2 - https://amzn.to/4immw1h

* Ring Stick Up Cam - https://amzn.to/4lB1wGL
* Ring Indoor Cam (2nd Gen) - https://amzn.to/4cBoycr

* TP-Link Tapo C120 - https://amzn.to/3YyeSJW

* Nest Cam IQ Indoor - https://amzn.to/44tlj4R
* Netgear Arlo Q - https://amzn.to/4cCSaX8

<a name="Eufy"></a>

## Eufy

According to https://en.wikipedia.org/wiki/Eufy
the Eufy company is a smart home brand launched in 2016 by parent Anker Innovations,
starting with robot vacuum cleaners.

Both Eufy and Anker operate from Shengen, China. 

WARNING: Although Eufy clains "local storage", it continues to send videos to China "to create thumbnails". Although "end-to-end encryption" is claims references transmission and not storage on Eufy's servers, which can be accessed by Chinese political authorities.

<a target="_blank" href="https://www.youtube.com/watch?v=pS5ARrEvXe0">VIDEO</a>: Remote Takeover of Chinese IP Camera - IoT Pentesting Basics

Americans keep buying Anker and Eufy through Amazon and Walmart because their
brand is known to offer industry-leading features at competitive prices.

https://service.eufy.com/search?q=e30
https://www.eufy.com/products/t8417121?ref=search&variant=44434340446394

https://www.eufymake.com/eufymake-uv-printer-e1?utm_source=web&utm_medium=referral&utm_content=eufyweb&utm_campaign=US_eufyMake_official_launch_V8260_0704&utm_term=ZZ1Ab899&ref=navimenu_6_copy

* Eufy Indoor Cam 2K - https://amzn.to/42O9Tr6 was obsoleted
* Eufy Indoor Cam C120 - https://amzn.to/4lxVTsY
* Eufy Indoor Cam E220 vs Eufy E30 Indoor Security Camera COMPARISON <a target="_blank" href="https://www.youtube.com/watch?v=zVd1Qxghq9o">VIDEO</a> by Just A Dad Tips
   E220 records in 2K.
   https://amzn.to/42PuOdq

* Eufy Indoor Camera E30 List $69.99 USD, $59.99 on Amazon
   Latest Generation, 4K UHD Security Camera, Pet/Dog/Baby Camera with Phone app, Color Night Vision, Human/Pet Auto Tracking, 360 Pan-Tilt, Works with Homekit
   Referral: https://www.eufy.com/referral-new?ref=listing
   Send out: https://share.eufylife.com/v1/shopping/s/g/tDarUzSqd
   The camera creates a network named starting with "eufy".
   It's ironic that the camera is 4K resolution but can only connect to a 2.4GHz wi-fi, so you cannot connect directly to newer gateways which have a 5Ghz channel.
   Connect your Mac to the Wi-Fi network.

Hold down the Option (⌥) key on the keyboard.

While holding the Option key, click the Wi-Fi icon in the menu bar at the top right of the screen.

A detailed Wi-Fi info window will appear. Look for the "Channel" field—if the channel number is between 1 and 14, the Mac is connected to a 2.4GHz network.

Also, look for the "Tx Rate" or "Transmit Rate" field in the window, which shows the current connection speed in Mbps on that 2.4GHz network.

PROTIP: hook up an older hub to your Gateway.

On HomeKit: 3840x2160 @15FPS with 125 degree diagonal FOV

PROTIP: The most thorough video:
* <a target="_blank" href="https://www.youtube.com/watch?v=dWMZ6-H5pYw&t=43s">VIDEO</a>
eufy Indoor Cam E30 - BEST Indoor Home Security Camera 2024 - 2025? Homekit Compatible
(by LifeHackster) 
   * <a target="_blank" href="https://www.youtube.com/watch?v=j4aEBEmVTzc">VIDEO</a> "Best Smart Home Security Cameras of 2025" "US-based brands have stopped innovating in 2025".

* <a target="_blank" href="https://www.youtube.com/watch?v=EUgvHIY3mps">VIDEO</a>
Eufy Indoor Cam E30 Unboxing & Review | Is This the Best Home Security Camera Under $100? 🔍
by Feelin Tech Today

* <a target="_blank" href="https://www.youtube.com/watch?v=4qs4II-h7eA">VIDEO</a>
How To Setup Eufy Indoor Camera E30 / Review.


