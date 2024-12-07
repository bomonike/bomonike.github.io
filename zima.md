---
url: "https://bomonike.github.io/zima"
---

<a target="_blank" href="https://bomonike.github.io/zima">This<img align="right" width="100" height="100" alt="zima.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/zima.png?raw=true" /></a> is part of a series about low-cost, low-power SOC (System on a Chip) microcontrollers (MCUs):

* <a target="_blank" href="https://bomonike.github.io/arduino/">Arduino</a>
* Raspberry Pi
* <a target="_blank" href="https://bomonike.github.io/esp332/">ESP32</a>
* <a target="_blank" href="https://bomonike.github.io/microbit/">micro:bit</a>
* <a target="_blank" href="https://bomonike.github.io/zima/">zima</a>

* Intel NUC

## Zima board

Unlike many other single-board computers, Zima is x86 based rather than ARM.
So it can run TruNAS.

Its specs say it has a Intel Celeron "Apollo Lake" processor N3450 with 4 cores
at 1.1GHz base frequency and 2.2GHz Burst mode. There is a 2MB L2 cache.

It is rated with 12V 5.5x2 5mm plugs that consumes 6W TDP, with no fan (passive cooling).

CAUTION: You'll probably need a fan blowing on it if you make use of Zima's PCIe x4 card slot for SATA control cards, etc.

### Memory

The 832 model has that name for its 8GB LPDDR4 memory.

### PCIe for USB

An alternative the extra cables is the $14.90 PCIe x4 (4 Channel) USB Adapter from Zima.

PROTIP: 3D print a bracket mountig plate to hold the card so it doesn't break off.
https://www.printables.com/model/215289-zimaboard-wall-mount-for-generic-pcie-cards

### USB

It has only 2 USB 3.0 ports, so an <strong>external USB </strong> is needed
for the mouse, keyboard, USB stick, USB drive, Yubikey, and WiFi.

PROTIP: I plug the USB drive to the 2nd USB port.

CAUTION: A USB wifi device is needed since the Zima doesn't have wifi built-in.

### More data

You can use that SDD as a NAS from casaos to copy movies from main PC to the Zima SSD and make plex or jellyfin use it as the media folder.

CAUTION: You need to buy a cable that supports both drives. The cable that comes with the board supports only one drive.

### LAN

Although the Realtek 8111H <a target="_blank" href="https://www.youtube.com/watch?v=CO8gagCrAZk&t=3m50s">does not have a stellar reputation</a>, it
enables 2 GbE LAN ports for use as a router.

### Monitor

It Intel HD Graphics 500 board supports 4k@60Hz 1080p at 200MHz-700MHz.

CAUTION: It requires a <strong>mini HDMI DisplayPort 1.2</strong> cable.

### Data storage

The Zima boards have 2 ports to support SATA 3.0 6Gb/s data transfer.

The 832 model has 32GB eMMC 5.1 data storage, which comes with CasaOS.

## CasaOS

   * <a target="_blank" href="https://www.youtube.com/watch?v=ohzy9lkHf0M">VIDEO</a>:
   ZimaOS VS CasaOS What's the Difference? What is New? What is to Come?

CasaOS comes with a Zima board.

CasaOS can be installed on top of Debian.
It has Files and App Store app.

ZimaOS is installed on bare-metal hardware.
Its GUI has a black background.
It also comes with a Docker ready-to-go ZVM (Virtual Machine) and PeerDrop apps.

Meant to be used as a ZumaCube,
ZimaOS can be configured to use RAID5 (butr FS) but not ZFS.

IceWhale

https://wiki.casaos.io/en/get-started


## Default Bootup

1. BLAH: The Zima board doesn't have a reset/powerup button, so get a power strip with a switch.

1. Plug everything except USB drives in and power up off the built-in CasaOS. I see

   ```
   Debian GNU/Linux 11 casaos tty1
   casaos login:
   ```
   BLAH: What's the response? I'm stuck here.

   https://github.com/IceWhaleTech/CasaOS/issues/1849

   If you do get through, switch from tty1 to GUI:

1. Press Ctrl+Alt+F2 to switch to another terminal.
1. Type startx to start the graphical user interface.

   You can also switch from tty1 to GUI by a CLI command to set the default boot when the system boots up:

   ```
   sudo systemctl set-default graphical.target
   ```

   https://wiki.debian.org/GDM



### Bootup to GRUB

1. To boot up using the GRUB GUI menu, press <strong>Ctrl+Alt+F1</strong> all at once which you press power up. ???

1. When the blue menu appears (for less than a second), use the arrow keys to select "Advanced options for Debian" to bring up a list of all the available boot options.

1. Press Enter to select the Graphical Interface option.

## Bootup from USB chip

1. Hold down F11 when powering up.





## Videos

* <a target="_blank" href="https://www.youtube.com/watch?v=RIMYGvVmclE&t=3m21s">VIDEO</a>: by Mike Faucher

* <a target="_blank" href="https://www.youtube.com/watch?v=CO8gagCrAZk">VIDEO</a>: by (Tom) Lawrence Systems</a>

## CasaOS

CasaOS supports
amd64 / x86-64
arm64
armv7
running on ZimaBoard, Intel NUC, and Raspberry Pi SoC micro servers.
   * https://github.com/IceWhaleTech/CasaOS

CasaOS fully compatible with Ubuntu, Debian, Raspberry Pi OS, and CentOS with one-liner installation.




https://www.youtube.com/watch?v=RIMYGvVmclE

https://www.youtube.com/watch?v=Lk6LJPcYhcE
How to install CasaOS on Debian
https://community.bigbeartechworld.com/t/step-by-step-guide-installing-casaos-on-ubuntu-debian-and-proxmox/201

## Remote Access

<a target="_blank" href="https://www.youtube.com/watch?v=OAeQwdFXsQQ">VIDEO</a>:
Remote Access to CasaOS (and Apps) via Cloudflare Tunnels
