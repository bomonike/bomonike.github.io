---
layout: post
date: "2025-02-17"
changes: "v001 + new :chromebook2linux.md"
file: "chromebook2linux"
title: "Chromebook to Linux"
excerpt: "How to work with cheaper Chromebooks and turn them into useful Linux laptops."
tags: [python, apple, mac, setup]
image:
# pic white python logo 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622164/4230c848-0585-11e6-957b-be11147346e6.jpg
  credit:
  creditlink:
comments: true
created: "2016-07-10"
---
<a target="_blank" href="https://bomonike.github.io/chromebook2linux"><img align="right" width="100" height="100" alt="chromebook2linux.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/chromebook2linux.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

Following the steps below would enable you to add to your resume/LinkedIn profile:

   <ul>Independently converted Chromebooks to Ubuntu Linux. Applied skill with Linux CLI commands to display Google Calendar and Task List constantly, and as a Plex server to display mp4 videos and mp3 music playlists. Referenced Subreddits and AI Chats.
   </ul>

Chromebooks run a barebones operating system with just a browser on top.
So they are inexpensive, low-powered, and thus relatively slow.

Many schools buy them for use in the classroom.

## Repurposing Chromebooks

CAUTION: Chromebooks too old to receive updates from Goolge should not be connected to the internet.

But a Chromebook with internet disabled can be used as a <strong>photoframe</strong>, music player, or <strong>video player</strong>.

Chromebooks are cheap, but they don't have the same features as a desktop computer.
So the options are limited.

<a target="_blank" href="https://chromestory.com/2021/08/google-calendar-in-chromebook/">VIDIEO</a>: Windows OS has a built-in "dumb" Calendar app, but older Chromebooks did not. Newer Chromebooks have a keyboard shortcut to access the calendar view:
ALT + SHIFT + C

PROTIP: I wanted to repurpose my Chromebook to display my <a target="_blank" href="https://calendar.google.com/calendar/r">Google Calendar</a> and <a target="_blank" href="https://tasks.google.com/">Google Tasks List</a> like a photo frame.

CAUTION: That requires an internet connection.

To get Security updates, I had to replace the old operating system with a Linux operating system.

Using a Linux-based operating system enables a wide range of apps, which
makes Chromebook hardware far more versatile than it was before.

   <ul>Firefox, Transmission (BitTorrent), LibreOffice, Steam, VLC Media Player, Kodi Media Center, the GIMP, VirtualBox, etc.
   </ul>

PROTIP: It's useful to be comfortable making use of Linux.

Google provides "Crostini" as its official method for running custom Linux within containers Under ChromeOS:

   * https://www.chromium.org/chromium-os/developer-library/guides/containers/containers-and-vms/
   * https://www.chromium.org/chromium-os/developer-library/guides/containers/crostini-developer-guide/

1. Look for you Chromebook manufacturers are listed in what supports ChromeOS:

   https://www.chromium.org/chromium-os/chrome-os-systems-supporting-linux/

   If your Chromebook doesn't support Crostini, you can install an Ubuntu desktop alongside Chrome OS with an unofficial chroot environment called Crouton. It's extremely quick and easy to set up, and most users will probably end up going this route.

   ### Remove admin on Chromebook

1. If you see "This device is managed by an Administrator" when you try to sign in, then you need to remove the Administrator lock. Open the Chrome OS settings: <a target="_blank" href="https://www.youtube.com/watch?v=jCdZzFyQXeo" title="How To Remove Administrator lock on School Chromebook (2024) by vSwitchHype">VIDEO</a>:

    At the same time, press Shift + Control + Alt + R.

    * https://www.youtube.com/watch?v=DMQ2nXx3TDY
    "How to Factory Reset a Chromebook by SelmaTeacher7 - TechGenius Tips"
    Press the power button + the volume down button at the same time.

1. <a target="_blank" href="https://www.youtube.com/watch?v=1LaKO8tKqaY">VIDEO</a>: Click "Confirm Powerwash".

    ## Replacement steps

   * https://www.perplexity.ai/search/steps-to-convert-chromebook-to-0NFpYayjT9qAfTlM4e6D7w

1. WARNING: Any OS needs to have <strong>drivers</strong> that supports specific hardware. Several manufacturers make Chromebooks using Intel chips.

   * Acer Chromebook Spin 713, 
   * Dell Chromebook 11 (3100)
   * HP Chromebook x360 14c
   * Lenovo

1. Obtain THREE removeable USB drive (I use a 16 GB USB Flash drive). Older laptops have a USB-A port. Newer laptops have a USB-C port. So an adapter from USB-A to USB-C may be needed.

    1. A recovery disk before you start messing with your Chromebook as it is, so you have a fall-back. 
    2. A boot-up to convert to Linux.
    3. Backup of your new configuration with Linux.

1. Type the model number at the back of your Chromebook hardware.
1. Use a Chrome browser to install the Chromebook Recovery Utility extension from:

   https://chromewebstore.google.com/detail/chromebook-recovery-utili/jndclpdbaamdhonoechobihbbiimdgai

1. Paste the model number into the Chromebook Recovery Utility search field.
1. Click Install.

1. Create a recovery disk using the removeable USB drive described at a previoius step above.

   See https://www.pcmag.com/3/281780/creating-a-recovery-disk-for-your-chromebook

1. Enable Developer Mode on your Chromebook. CAUTION: This erases all files and settings. 
   See https://www.pcmag.com/how-to/install-linux-on-your-chromebook

1. Turn off your Chromebook, hold down the Esc and Refresh keys, then press the Power button.

1. At the recovery screen that appears, press Ctrl + D, then press Enter when asked if you want to turn off OS verification. From now on, you'll need to press Ctrl + D every time you boot your Chromebook and see the OS verification screen.

   Notice that https://github.com/dnschneid/crouton describes why Crouton has reached its EOL (End of Life) and so should no longer be used except for Chromium OS version 110 and earlier. From there, Chromium OS has introduced several security features that impede the installation and usage of crouton.

1. Download the firmware utility script by opening a terminal (Ctrl + Alt + T) and entering:
   ```
   bash
   cd; curl -LO https://mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh
   ```

   Once you're back in Chrome OS, download Crouton by clicking the link at the top of this page. Then, press Ctrl + Alt + T to open the Chrome OS terminal, type shell, and press Enter to open a shell. Next, run the following command, which copies the Crouton installer to the /usr/local/bin folder, where it can be executed:

   ...

   1. Cycle between the Chrome OS and Linux desktops with Ctrl + Alt + Shift + Back and Ctrl + Alt + Shift + Forward on your keyboard - no rebooting required. 
   
   From the Linux desktop you can install apps, customize your workspace, and basically live your life within that Linux environment.

1. Run the script and select option 3 to flash a full UEFI-capable ROM onto your system.

1. Power off the Chromebook and insert a USB drive containing your chosen Linux distribution2.

1. Boot from the USB drive and follow the standard Linux installation process2.

1. (Optional) Set up UEFI boot options following the instructions in the MrChromebox FAQ2.


<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1740073776/chromebook2linux-boot_hazbmd.webp"><img alt="genai-1-1750x799.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1740073776/chromebook2linux-boot_hazbmd.webp" /></a>


## Reference

<a target="_blank" href="https://www.youtube.com/watch?v=LX6jP5zpNHo">
"Installing Linux on a Chromebook"</a>

<a target="_blank" href="https://www.youtube.com/watch?v=z6oyqrrXTLM">
"Linux on a Chromebook, my favorite way"
by Veronica Explains

