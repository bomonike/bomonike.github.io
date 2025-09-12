---
date: "2025-09-12"
lastchange: "25-09-12 v003 + Starlink :ham-radio.md"
file: "ham-radio.md"
created: "2024-05-14"
---

<a target="_blank" href="https://bomonike.github.io/ham-radio"><img align="right" width="100" height="100" alt="ham-radio.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/ham-radio.png?raw=true" />

I'm KK7UFL

## Goverment & Community bands

The FCC (Federal Communications Commission) in the US, and its equivalent in each country (except Yemen and North Korea) have rules on how its citizens can use the airwaves.

The US NIST operates two Short Wave radio stations which broadcast atomic clock times on lower HF:
<a target="_blank" href="https://www.nist.gov/pml/time-and-frequency-division/time-distribution/radio-station-wwv">WWV</a> near Fort Collins, Colorado & WWVH in Hawaii
10 000 W on 5 MHz, 10 MHz, and 15 MHz; and 2500 W on 2.5 MHz and 20 MHz.

Listen to https://www.weatherusa.net/radio from <a target="_blank" href="https://www.aoml.noaa.gov/general/graphics/lib/radio.html">NOAA weather service</a> 29 VHF-FM transmitters have a 40 mile range. [<a target="_blank" href="https://en.wikipedia.org/wiki/NOAA_Weather_Radio">Wikipedia</a>: daily schedule]
   1. 162.550 MHz on 1,000 watts in SF bay
   2. 162.400 MHz
   3. 162.475 MHz
   4. 162.425 MHz
   5. 162.450 MHz
   6. 162.500 MHz
   7. 162.525 MHz
   <br /><br />
Increasingly, Police and Fire use encrypted communications on P25 systems.

Search and Rescue.

Local TV and radio stations

Back in the day, the nickname for someone with amature skills (not professional) was "ham".

CTCSS (Continuous Tone Coded Squelch System) subaudible

DTSS (Dual Tone Multi-Freq)uency)


## Wireless Tech

Form factors: handheld, mobile, and base station units.

Wireless radio manufacturers create transcivers to operate on specific frequency bands.

<a target="_blank" href="https://www.youtube.com/watch?v=dnUH80LuySQ&t=12s">VIDEO</a>:
Technologies citizens can buy from retail stores (Walmart, Costco, etc.):

* CB (Citizens Band Radio Service) (that truckers using <a target="_blank" href="https://wiki.radioreference.com/index.php/Expanded_APCO_10_Codes">10 codes</a>) cannot use repeaters.

* FRS (Family Radio Service) on 22 bands between 462.562250 to 462.72500 MHz 4W up to 25W for 4 miles

* MURS (Multi-Use Radio Service) is limited to 2W on only 5 VHF channels designed for commercial use. The antenna on the BTech MURS-V1 can be replaced. Better out in the open.

* <a target="_blank" href="https://www.fcc.gov/wireless/bureau-divisions/mobility-division/general-mobile-radio-service-gmrs">GMRS (General Mobile Radio Service)</a> adds 8 more channels (at 462-467 MHz) to FRS. <strong>50W max</strong> up to 35 miles = more range and clarity than CB. No-test $35 for 10 year family license. Text & GPS added in 2017.

    * <a target="_blank" href="https://www.repeaterbook.com/gmrs/index.php?state_id=none">U.S. GMRS Repeaters</a>, including all countries not listed above.
    * https://medium.com/@life-is-short-so-enjoy-it/applying-gmrs-radio-license-purchasing-gmrs-radio-5421f1ee729b
    <br /><br />
* Ham/Amateur radio individual operators licensed at the Technician level can build their own equipment.

* Ham/Amateur radio operators licensed at the General level can communicate all over the world on additional frequencies. <a target="_blank" href="https://www.amazon.com/ARRL-General-Class-License-Manual/dp/162595171X/">$29.66 BOOK: AARL manual</a>

* LoRa (Long Range) is a proprietary patented technique to exchange <strong>text messages</strong> (which can include GPS locations) within a low-power but wide-area network (WAN) off cellular networks. No license needed. <a href="#Meshtastic"></a>

* Cellular WiFi hotspots by AT&T, Verizon, T-Mobile, etc.

* <a target="_blank" href="https://www.youtube.com/watch?v=HMtnHC5z0Lg&t=6m40s">VIDEO</a>: <a target="_blank" href="https://members.calyxinstitute.org/enroll/device?">Calyx Institute</a> 4G & 5G hot spots off T-Mobile.

* <a target="_blank" href="https://www.dolphmicrowave.com/default/what-is-the-default-ghz-for-starlink/">BLOG</a>: Starlink’s phased-array dish automatically changes frequencies every few milliseconds, so exact band use depends on congestion and local conditions. Starlink operates mainly in the Ku-band (50–150 Mbps 10.7–12.7 GHz) because it has ​​wider global coverage​​ and ​​better penetration through light obstructions​​. For rural areas and Ka-band (​​100–200 Mbps 17.8–19.3 GHz) for urban-like speeds. For satellite-to-satellite backhaul, the E-band (71–86 GHz) is used. Additional minor allocations include bands from 13.85–14.5 GHz, 27.5–30 GHz, and 29.5–30 GHz depending on region and regulatory approval.



## Wavelengths vs Frequencies

Light travels at about a constant velocity of 300,000 kilometers per second.<br />
That's 300 Meters per second.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1715686931/ham-wavelengths-1920x1047_e5sbk8.png"><img alt="ham-wavelengths-1920x1047.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1715686931/ham-wavelengths-1920x1047_e5sbk8.png"></a>

To convert between wavelength and frequency for Technician class Ham raio bands:
   * 300 M/sec/ 10 meters ~ 440 MHz (for phones)
   * 300 M/sec / 2 meters ~ 144 MHz
   * 300 M/sec / 6 meters ~ 50 MHz
   <br /><br />
The 6-meter (50 MHz) band is excellent for meteor scatter communications, when radio waves are reflected back to Earth from the ionized atmospherem where meteorites enter Earth's atmosphere and burning up on entry.



## Maximum PEP Watts:

1,500 Watts is the legal limit on most ham radio bands.

* 1,500 W - EHF (Extremely High Frequency) 30-300 GHz
* 1,500 W - SHF (Super High Frequency) 3-30 GHz
   * 9 cm =  3.300 -  3.500 GHz
   * 5 cm =  5.650 -  5.925 GHz
   * 3 cm = 10.000 - 10.500 GHz
   * 1.2 cm = 24.000 - 24.250 GHz
* 1,500 W - UHF (Ultra High Frequency) 300-3000 MHz
   * contains spliter frequencies of FRS simplex operation
* 1,500 W - VHF (Very High Frequency) 30-300 MHz

* 200 watts - HF (High Frequency) 3-30 MHz  REMEMBER
   * "shortwave" for very long distance (transcontinental) communication
* 5 watt MF (Medium Frequency) 300-3000 kHz
* 1 watt LF (Low Frequency) 30-300 kHz
<br /><br />

### Shortwave

   * Voice of America: 6.040, 7.335, 15.580 MHz
   * BBC World Service: 5.875, 6.195, 9.410 MHz
   * Radio Havana Cuba: 6.000, 6.165 MHz
   * Radio Romania International: 9.535, 11.940 MHz

   * 120 meter band: 2.3 - 2.495 MHz
   * 90 meter band: 3.2 - 3.4 MHz
   * 75 meter band: 3.9 - 4.0 MHz
   * 60 meter band: 4.75 - 4.995 MHz
   * 49 meter band: 5.9 - 6.2 MHz
   * 41 meter band: 7.2 - 7.45 MHz
   * 31 meter band: 9.4 - 9.9 MHz
   * 25 meter band: 11.6 - 12.2 MHz
   * 22 meter band: 13.57 - 13.87 MHz
   * 19 meter band: 15.1 - 15.8 MHz
   * 16 meter band: 17.48 - 17.9 MHz
   * 13 meter band: 21.45 - 21.85 MHz
   * 11 meter band: 25.67 - 26.1 MHz
   <br /><br />

To get
want the length of a half-wavelength antenna in inches based on a given wavelength.

Now that we have our frequency (50 MHz), let's use the tried-and-true formula for a half-wavelength antenna: 468 / frequency in MHz = antenna length in feet. 468 / 50 MHz = 9.36 feet. To convert to inches, take 9.36 feet x 12 = 112.32 inches.

An <strong>antenna analyzer</strong> measures whether an antenna is resonant at the desired operating frequency. It puts out a tiny signal to determine the reactance, impedance, standing wave ratio and resonant frequency of the antenna being evaluated. In some cases it can detect a cable fault in your feed line.


## Modes of modulation
FCC Rule §2.201 on emission types:
* CW (Continuous Wave) = Morse Code - generally on the low side of a band, using just 150 Hz of  bandwidth
* AM (Amplitude Modulation) upper SSB (Single Side Band) at 2.4 kHz 28.3 - 28.5 MHz (yellow on the chart). 3 Khz without carrier for long range 10 meter
* FM (Frequency Modulation) uses 10-15 kHz bandwidth (2 meters+) vertical polarization. One signal
* PM (Phase Modulation) created by connecting a reactance modulator to a transmitter RF amplier stage.
* FSK (Frequency Shift Keying) is direct digital modulation of oscillation
* FT8 (FSK with 8-tones)
* QPSK (Quadrature Phase Shift Keying) with four phases shifted to create data bits
* NTSC (National Television System Committee) video UHF analog fast scan
<br /><br />

A <strong>space station</strong> is any amateur state more than 50 km above earth.
Satellites (such as SpaceX) at "Low Earth Obit" (LEO) are from 160 km (100 miles) but never more than about one-third of the radius of Earth about 2,000 kilometers (1,200 mi).
In mode U/V, the satellite uplink is in the 70-centimeter band and the downlink is in the 2-meter band. Your signal strength on the downlink should be about the same as the beacon.

No music can be transmitted except to the Space Station 50 km above earth.

Most VHF power amplifiers are multimode: operate SSB, CW, and FM.

At frequencies below 29.7 MHz, which includes all HF bands,
the maximum bandwidth for a RTTY or data emission is 2.8khz.

* 20 KHz On 6 meters and 2 meters, max. symbol rate of 19.6k baud.
* 100 KHz on 1.25 meters and 70 cm, max. symbol rate of 5.6k baud.
* No limit on 30 cm and above.
<br /><br />

AM transmissions are 6 kHz wide. But<br />
FM transmissions can use 2.8 kHz with SSB (Single Side Band), using only one side of the Carrier Frequency is transmitted, for
   * LSB (Lower Side Band) is used at 10 MHz and higher
   * USB (Upper Side Band)


(most people don't use 6m)

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44705801-mixing-digital-microwave-video">VIDEO</a>:
The combination of harmonnic frequencies create spurious output called <strong>intermodulation</strong>.

## Multi-band radio

Retail radios have a short antenna that cannot be swapped out,
so are limited to a range of about a mile.

<a target="_blank" href="https://www.youtube.com/watch?v=x_rhmFntwwc">VIDEO</a>:
<a target="_blank" href="https://amzn.to/43X2UuS">$__ TidRadioTD-H3</a> 3W from China
https://amzn.to/4asgKrQ It can receive FM Airband, NOAA channels. Can scramble (not encryption).
It contains a GMRS radio and ham radio "mode". Not waterproof. Everytime mode is changed, it resets to factory defaults, wiping out all custom settings. But you can backup and restore via its micro USB connector and low-bit-rate chirp (echolocation like the way dolphins and bats communicate). Hold side button to clone OTW. Hold down 1 to detect nearby frequencies.



## Repeaters

HF reception depends on many factors, such as location, time of year, time of day, the frequency being used, and atmospheric and ionospheric propagation conditions.

A FM VHF packet repeater is called a digipeater.

[RadioReference.com's database of 224K frequencies](https://www.radioreference.com/db/)

* http://mygmrs.com

* http://repeaterbook.com searches within QRZ, HamOTH, HamCall, Wiki Search as well

    * <a target="_blank" href="https://www.repeaterbook.com/repeaters/index.php?state_id=none">North American Amateur Radio Repeaters</a>, including the USA and its territories, Canada, and Mexico.

    * <a target="_blank" href="https://www.repeaterbook.com/row_repeaters/index.php?state_id=none">Worldwide Amateur Radio Repeaters</a>, including all countries not listed above.

    * <a target="_blank" href="https://www.repeaterbook.com/repeaters/niche/index.php?mode=DStar">D-Star Repeaters</a>

    * <a target="_blank" href="https://www.repeaterbook.com/repeaters/niche/index.php?mode=DMR">DMR (Digital Mobile Radio) Repeaters</a> for "walkie talkies" which can display call signs, addresses. DMR color codes are similar to CTCSS or DCS codes.

    C4FM GPS walkie-talkies can only display call signs and distance information.

    * <a target="_blank" href="https://www.repeaterbook.com/repeaters/niche/index.php?mode=P-25">APCO P-25 Repeaters</a>

    * <a target="_blank" href="https://www.repeaterbook.com/repeaters/niche/index.php?mode=YSF">Yaesu System Fusion Repeaters</a>

Common repeater Frequency offset between send and receive in the 70m band is Plus or Minus 5 MHz.

Rules for GMRS are at <a target="_blank" href="https://www.ecfr.gov/current/title-47/chapter-I/subchapter-D/part-95/subpart-E?toc=1">Title 47, Part 95, Subpart E of the Code of Federal Regulations</a>. Call 1-888-CALLFCC (877) 480-3201 or https://apps.fcc.gov/cores/html/help.html

nggmrs.org of North Georgia


## Digital bridge to the internet

Several ways to use digitial technologies with analog voice:

   * VoIP Link
   * Text LoRa Meshtastic
   * WIRES-X
   <br /><br />


### EchoLink

<a target="_blank" href="https://www.youtube.com/watch?v=fB1ozVc2WKM&pp=ygUHRWNvbGluaw%3D%3D">VIDEO</a>:
Ecolink software runs on Windows and Android which streams VoIP data through the internet to a <strong>ham/amateur band</strong> base station.

<a name="Meshtastic"></a>

### LoRa Meshtastic

Intro "How it Works" videos:
   * <a target="_blank" href="https://www.youtube.com/watch?v=hMOwbNUpDQA">VIDEO from 2016</a> by andreasspiess.
   * <a target="_blank" href="https://www.youtube.com/watch?v=SmDza__-wAA">by Things Network</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Bsue0PzNRDU">by Sylvain Montagny 2022</a> says Coding Rate and Spreadshing Factor has to be same on both sides. EU requires 1% Duty Cycle.
   * Semtech Corp</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=jp_2gwBrQc8&list=PLZKn4hapodtfZiTGy8VBIwqAwJd7NaIZh&pp=iAQB">CETech</a>

LoRa technology is based on spread-spectrum modulation technique derived from chip spread spectrum (CSS) tech developed by Cycleo (of Grenoble, France), then acquired by Semtech, the founding member of the LoRA alliance.

LoRA devices connect with other LoRa devices on the <strong>license-free</strong> narrow ISM (industrial, Scientific, Medical) band to create a mesh network by <a target="_blank" href="https://meshtastic.org/">Meshtastic.org</a>. So that can be used "off-grid" in case the internet goes down.

<a target="_blank" href="https://www.thethingsnetwork.org/">TheThingsNetwork.org</a> in Amsterdam () (co-founded by Johan Stokking) publishes a:
   * <a target="_blank" href="https://www.thethingsnetwork.org/map">LoRa Meshtastic Repeater map</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=_I4c-Al9hCI">Microsoft interview</a>


It operates in Europe on the 70cm band. In the US on the 433, 868, <strong>915 MHz</strong> ISM radio band. The longest range is 150m, but line-of-sight. Its low power, low bit rate, wireless platform used in <a target="_blank" href="https://www.instructables.com/LoRa-Mesh-Radio/">IoT applications</a>. Low bit rate means 0.3 to 50 kbits/s using spread spectrum modulation. [<a target="_blank" href="https://wifivitae.com/2022/12/14/lorawan-mapper-overview/">*</a>]

   * Alliot Technologies


<a target="_blank" href="https://www.youtube.com/watch?v=EdqF9ZxWjmE">VIDEO</a>:
WiFi on LoRanWAN is called "HaLow" based on the IEEE 802.11ah spec at 902-928 MHz for max data rate of 16mbps.
But only in the US since that band was sold in EU to cellular operators.
The EU version has max data rate of 5 mbps.

LoRA devices can communicate through the internet by connecting with Bluetooth on Android and iOS mobile phones which also have WiFi that connect to the internet. That and the <a target="_blank" href="https://beartooth.com/products/beartooth-mk-ii">$2,498 MK II</a>.

A lower-cost LoRa board comes with a battery and antenna.
Solder to it a small LED screen.
<a target="_blank" href="https://www.thingiverse.com/thing:3314134">Files to 3D print enclosures</a>

<a target="_blank" href="https://www.youtube.com/watch?v=x99R78fkSg0&list=PLshzThxhw4O4--klTjqDzR6KeJyqXNNXI">VIDEO</a>:
The open-sourced Team Awareness Kit (TAK) improves situational awareness by both DoD military and <a target="_blank" href="https://tak.gov/solutions/recreation">civilian use</a>.

"Sigfox"

Meshtastic operates only at the 433, 868, <strong>915 MHz</strong> ISM radio band. The longest range is 150m, but line-of-sight. Its low power, low bit rate, wireless platform used in <a target="_blank" href="https://www.instructables.com/LoRa-Mesh-Radio/">IoT applications</a>. Low bit rate means 0.3 to 50 kbits/s using spread spectrum modulation. [<a target="_blank" href="https://wifivitae.com/2022/12/14/lorawan-mapper-overview/">*</a>]

   * <a target="_blank" href="https://www.youtube.com/watch?v=7OYDr4HPGgo">VIDEO</a> by HB9BLA build devices that create mesh networks on 70cm and, through a gateway and the internet or Hamnet, can transfer messages to meshes far away. Or to APRS. Or to e-mail.
   * <a target="_blank" href="https://www.youtube.com/watch?v=jHWepP1ZWTk&list=PLwSRYmJg6HSXT94PSULX5e3c603yB_GpC&pp=iAQB">Visual Electric video playlist</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=X08qvPm_dAg">How to get started</a>
   <br /><br />


### Winlink

contact an automated Winlink ??? station to send a message.

### Wires-X

https://systemfusion.yaesu.com/what-is-system-fusion/
Yeasu's "Fusion" solution uses continuous envelope <strong>C4FM 4-level FSK</strong> digital modulation technology to transmit digital voice and data over Amateur radio bands.

The first version of the American digital intercom mechanism Project 25 (P25 for short) adopted C4FM,

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1715636248/ham-wiresx-620x243_sid8du.jpg"><img alt="ham-wiresx-620x243.jpeg" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1715636248/ham-wiresx-620x243_sid8du.jpg"></a>

http://c4fm.xyz/
The RF signal is amplified and transmitted to space through the antenna. The RF signal received by the receiver and passes through the frequency modulation demodulator, often referred to as a frequency discriminator circuit in analog mode. The demodulated result is a C4FM baseband signal whose amplitude varies between four voltage levels. After logical judgment and transformation of the level, a two-digit binary digit sequence is obtained. In order to improve the anti-interference performance, the process of extracting the digital signal from the four-level waveform usually uses a certain algorithm instead of using a simple voltage comparator. It is not substantially different from the well-known traditional analog FM, except that it is not an analog signal of voice that modulates the radio frequency input signal, but a digital signal with only four-level states.

As with D-STAR, C4FM uses FDMA (???) digital modulation mode with channel interval at 12.5 kHz.  C4FM FDMA provides a data transfer rate of 9.6 kbps.

## Baofeng

<a target="_blank" href="https://www.youtube.com/watch?v=fnnXa-nV-jc">VIDEO</a>:
<a target="_blank" href="https://www.amazon.com/gp/product/B007H4VT7A/">$18.35</a>
BAOFENG UV-5R Dual Band Two Way Radio (Black), 144-148MHz & 420-450MHz

For $17, add a 15-inch Nagoya NA-771 antenna for 2.15 dBi gain on UHF.
The mag-mount Tram 1185 antenna

Baofeng has a VFO (Variable Frequency Oscillator)
for National Simplex frequencies used for "simplex" (point-to-point) calling REMEMBER:
   * 2 meters: <strong>146.520 MHz</strong>
   * 1.25 meters: 223.500 MHz (program this on your tri-band Baofeng)
   * 70 centimeters: 446.000 MHz
   <br /><br />

Find your state's frequency coordination body, such as "Illinois repeater association".

Baofeng has memory slots for 128 frequencies

It does not work on the 220 MHz.
But the Yesu VF6 & VF6VR do.


To receive frequency coverage of 504kHz to 998.99MHz* available after a $35 MARS (Military Auxiliary Radio Service) mod to unlock transmit on 6m during emergencies.
<a target="_blank" href="https://www.youtube.com/watch?v=9yDJg57tPRw&t=8m26s">VIDEO</a>:
Apply at The U.S. Army Network Enterprise Technology Command (NETCOM)
https://netcom.army.mil/mars not reliant on internet & cellular.

<a target="_blank" href="https://www.youtube.com/watch?v=dOOJaoxQU88&list=PLZpc6PnzmzmGNxYpbWDdWqQ-uQY9O6B54&index=1">VIDEO</a>:
<a target="_blank" href="https://www.manualslib.com/manual/339785/Yaesu-Vx-6r.html">Manual</a>:
<a target="_blank" href="https://www.yaesu.com/">Yaesu</a> in Cypress, CA
<a target="_blank" href="https://www.youtube.com/watch?v=9yDJg57tPRw">VIDEO</a>:
Their <a target="_blank" href="https://www.amazon.com/Tri-Band-Yaesu-VX-6R-Submersible-Transceiver/dp/B004ESEW6C/">$326.90</a> <a target="_blank" href="https://www.yaesu.com/indexVS.cfm?cmd=DisplayProducts&ProdCatID=111&encProdID=4C6F204F6FEBB5BAFA58BCC1C131EAC0&DivisionID=65&isArchived=0">VF-6R handheld</a> has 900 memory slots. And JIS7 submersibility.
Switchable 1W to 5W.
1370 mAh Lithium-Ion Battery Pack that can be field-charged. Separate volume & squash controls.
BNC antenna connector for <a target="_blank" href="https://caatailantennas.com/products/wearable-tactical-antenna">$60 v2 Wearable Antenna (BNC-F to TNC-M Adapter)</a>.
<a target="_blank" href="https://www.hamradio.com/detail.cfm?pid=H0-009346">adapter</a>

<a target="_blank" href="https://www.youtube.com/watch?v=R6pL0ZyMuuQ&list=PLkoi40PWhXbtpeJ0Am_Uq49eJIqMgjPp4&index=4">YouTube series on VX-6</a>

To encrypt audio, <a target="_blank" href="https://www.youtube.com/watch?v=hL-TrpGzEkg&list=PLZpc6PnzmzmEVE4u_8K9svKc1-CHi4tUC">VIDEO</a>:
Interfaces with Android & PC with <a target="_blank" href="https://digirig.net/product/digirig-mobile/">$49.95 Digirig mobile</a> USB PnP Sound Device "to combine audio codec, serial CAT interface, and PTT control" after <a target="_blank" href="https://www.thetechprepper.com/digital-modes/digirig-baofeng-linux">installing Dire Wolf</a>.

<a target="_blank" href="https://www.amazon.com/Yaesu-VX-6R-Cable-Programming-Software/dp/B004H5Q8IM/">$60 ADMS-VX programming software</a>.

while you would be prohibited from using the national simplex frequency of 146.520 MHz, you still could give a shout out for other stations operating on 146.550 or 146.580 MHz, two other popular 2-meter simplex frequencies.


## License Classes

https://www.aarl.org American Radio Relay League is a noncommercial organization of radio amateurs.

As of 2023 over 375,000 hams in the US who hold an IARP (International Amateur Radio Permit) issued pursuant to the terms of the Inter-American Convention on an International Amateur Radio Permit by a country signatory to that Convention, other than the United States. Montrouis, Haiti. AG/doc.3216/95.

Correctly answer 74% of 35 questions from a question pool of 430 questions which are updated every 4 years (2029-2023, 2023-2027, etc.). There is no time limit.

CSCE. Certificate of successful completion of an examination.

Pass the Technician class (Element 2) exam to obtain a call sign.
https://hamcall.net/
Call sign database
   * Append "AG" until you have a certificate.

Half of Ham Radio license holders are at the General level.
General licensees can be one of 3 VEs (Volunteer Examiners) who administer exams at each local site.
VEs are accredited by VECs (VE Coordinators).

Those with a General license can broadcast to make worldwide contacts (with reciprosity privileges) on the HF 15 - 80 meter bands used by some DX stations. Their exclusive frequencies are marked "G" in the chart below.

1 in 5 hams get the Advanced Extra class to broadcast on the frequencies marked "A" in the chart:
80m, 40m, 20m, 15m
7.125 MHz to 7.175 MHz
It's regulated to a ERP (Effective Radiated Power) of 100 watts PEP on 60m.

They have five 2.8MHz channels.
???

The 80m band ITU split into 3 regions:
   1. 3.5 - 3.8 MHz Europe and Africa
   2. 3.5 - 4.0 MHz Americas (North, Central, and South America)
   3. 3.5 - 3.9 Mhz Russia and Asia
   <br /><br />

## Tutorials

<a target="_blank" href="HamRadioPrep.com">HamRadioPrep.com</a> (on <a target="_blank" href="https://www.youtube.com/@HamRadioPrep">YouTube</a>)
by Jim (N4BFR) at 1309 Coffeen Ave Ste 1956, Sheridan WY 82801
https://www.facebook.com/groups/HamRadioPrep/

https://hamstudy.com/freebasic/index-bf.html

<a target="_blank" href="https://www.youtube.com/watch?v=FktSv3tDwA8&list=PL1KAjn5rGhixvvb_jMZFWmbP97-t9Kyxk&index=2">YouTube: Ham Radio Crash Course</a>
explains through each sample question.

Gordon West Study Book: https://amzn.to/3KZUKL8

The Fast Track to Your Technician Class Ham Radio License: https://amzn.to/3kPWqfq

TESTING ONLINE: https://hrcc.wiki/en/home/VETesting

hamfest, a large electronics flea market where you can buy and sell used ham equipment and other electronics,


## Beacons

<a target="_blank" href="https://www.youtube.com/watch?v=FktSv3tDwA8&list=PL1KAjn5rGhixvvb_jMZFWmbP97-t9Kyxk&index=2">VIDEO</a>

FCC Part 97 defines in the US <a target="_blank" href="https://en.wikipedia.org/wiki/International_Beacon_Project">18 automatically controlled beacons</a> which send 100-watt CW (Morse code)one-way every 3 minutes to assess ionospheric signal propagation characteristics at 28.20 - 28.30 MHz, 24.930, 21.150, 18.110, 14.100.
   * The W6WX beacon in on Mt. Umunhum in the Santa Cruz mountains of California.
   <br /><br />
MAP TOOL: Instead of beacons actively transmitting signals, the Reverse Beacon Network (RBN) map at <a target="_blank" href="https://www.reversebeacon.net/main.php?rows=10&max_age=10,hours&hide=distance_km">reversebeacon.net</a> show the network of stations listening to the bands and reporting what stations they hear, when and how well. On CW and some digital modes.

TOOL: Obtain the <a target="_blank" href="https://www.ncdxf.org/beacon/AzMap/index.html">
heading and distance</a> to the

https://soundbytes.asia/proppy/radcom
Proppy HF Circuit Prediction: Radcom


## Field Days

POTA (Parks On The Air)

SOTA (Summits On The Air)

where many contests are held.

in June

RACES (Radio Amateur Civil Emergency Service) uses amateur stations for civil defense communications during periods of local, regional, or national civil emergencies.

Thr National Radio Quiet Zone is an area in Maryland, Virginia, and West Virginia Bounded by 39°15′ N on the north, 78°30′ W on the east, 37°30′ N on the south and 80°30′ W on the west.

There is a 1-mile restriction around the 14 10-watt monitoring stations FCC operates in the US (11 in the continental US). They use 210-220 MHz in the 1.25-meter band.

Within 20 miles between <a target="_blank" href="https://www.fcc.gov/engineering-technology/electromagnetic-compatibility-division/frequency-coordination-canada-below">Line A and Line B</a> formed in a 1962/5 treaty between US and Canada, amateur stations may not transmit in the
   * 420-430 MHz subband of the 70cm Amateur band
   * "650" and "700" channels, either simplex or duplex, of GMRS stations
   <br /><br />
For GMRS: "Applicant/Licensee certifies that he or she will comply with the requirement that use of frequencies 462.650, 467.650, 462.700 and 467.700 MHz is not permitted near the Canadian border North of Line A and East of Line C. These frequencies are used throughout Canada and harmful interference is anticipated."


## MUF/LUF

Usable frequencies that hop (refract) through the skip zone under the ionosphhere are between:

   * MUF (Maximum Usable Frequency)

   * LUF (Lowest Usable Frequency)

NVIS (Near Vertical Incident Skywave) bounces up (on a Critical Angle) for about (200-300 KM) 400 miles instead of out (around the world).

Long-peroidic TV antennas have wide-bandwidth frequencies from 6-meters at 54 Mhz to 800 MHz.


## Band Plans

Some of the most popular ham bands include:<br />
Band Name 	Frequency Range 	Band Type<br />
2 meters 	144-148 MHz 	VHF<br />
70 centimeters 	420-450 MHz 	UHF<br />
20 meters 	14-14.35 MHz 	HF<br />

The approximate bandwidth of a VHF repeater FM phone signal?

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1715476118/ham-aarl-band-chart-2222x1676_dapr67.png"><img align="right" alt="ham-aarl-band-chart-2222x1676.png" width="200" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1715476118/ham-aarl-band-chart-2222x1676_dapr67.png"></a>
Click to expand the Band Plan chart from AARL:

* red to show frequencies for RTTY (Radio TeleType) and data (max 2.8 kHz)
* Orange shows <strong>fixed digital message forwarding only on 219.0 to 220.0 MHz.</strong>
* CW (Continuous Wave) = Morse Code digital mode at max 150 hz (50.0 - 50.1 MHz & 144.0-144.1 MHz)
<br /><br />

Most common FSK shift is 170 Hz.

The lowest phone is operated at 7.178 Hz, which includes the ___ to avoid being out of band.
Below 7.175 Hz is reserved for Extra operators.

<a target="_blank" href="https://www.youtube.com/watch?v=wt5wZhC5crI&t=126s">VIDEO</a>:
The first contact on ham radio to the Space Shuttle Columbia STS-9 occured on 1983 on 144.55 MHz between astronaut <a target="_blank" href="https://www.amsat.org/first-ham-in-space-amsat-life-member-owen-garriott-w5lfl-sk/">Owen Garriott</a> and WA1JXN (Lance Collister) in Montana.



2400-Hz bandwidth for the best signal-to-noise ratio for SSB reception.

When using an amp like a VHF power amplifier, the SSB/CW-FM switch sets the amplifier for the selected mode. The transmitter mode needs to be set to match change it.

An amp (amplifier) boosts your signal from 4 watts to 70 on VHF.
General or Extra class HF operators can use linear or tube amps to boost transmit power from 100 watts to the legal limit of 1,500 watts.

Use a RF preamplifier between the antenna and the receiver to boost weak signal reception.

VHF/UHF transceiver’s “reverse” function is To listen on a repeater’s input frequency.

counterpoise???

## FM

A typical 50-watt output mobile FM transceiver, an appropriate power supply rating would be 13.8 volts at 12 amperes. For that a 10-ampere power supply is sufficient. (12 volts X 10 amperes = 120 watts, which is greater than the 50 watts of the radio).

## Hardware

<strong>Sensitivity</strong> is the ability of a receiver to detect the presence of a signal.
Parameters affecting receiver sensitivity:
   * Input amplifier gain
   * Demodulator stage bandwidth
   * Input amplifier noise
   <br /><br />

<strong>Selectivity</strong> is the ability of a receiver to discriminate between multiple signals

<strong>Modulation</strong> is combining speech with an RF carrier signal

Some modern amateur transmitters still offer high-stability crystal oscillators as an added accessory option.
<strong>oscillator</strong> circuits generate a signal at a specific frequency:
There are different types: Pierce and crystal.


Append "QRP" to call sign when transmitted on less than 5 W digital or 10 W on voice.


### Transceivers

A transceiver –ombines the functions of a transmitter and a receiver.

PTT (Push-to-Talk) use an "AND" gate.

An oscillator circuit generates a signal at a specific transmit frequency and helps process the received signal.

HF USB (Upper Sideband) operation.

Tigertronics SignalLink™ USB sound card

https://www.amazon.com/stores/Icom+America/page/AB872DB2-551C-489F-8422-A716AEF96A64
Icom IC-718 - An affordable and popular entry-level HF transceiver for FT8, costs around $560 new.

Wifi Broadband-Hamnet (TM), also referred to as an HSMM (high-speed multimedia) network.

### Transverter

A <strong>transverter</strong> converts RF input and output of a transceiver to another band.
It functions via a mixer used to convert radio signals from one frequency to another.
For example, from 10-meter to 2-meter or 70-centimeters & back.

The mixer circuit converts a radio signal from one frequency to another. Two RF signals mixed together gets two additional frequencies. One will be the sum of the two frequencies and the other will be the difference of the two signals. So if you mix together a 5-MHz frequency and a 3-MHz frequency, you will get an 8-MHz frequency and a 2-MHz frequency. 5 MHz + 3 MHz = 8 MHz (sum) and 5 MHz - 3 MHz = 2 MHz (difference).


## Electronics

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44705634-digital-circuits-video">VIDEO</a>

A <strong>transistor</strong> is an electronic gate.
It is composed of three layers of semiconductor material configured to dope with N and P dopants:
   * N-type transistor dopants donate electrons
   * P-type transistor dopants accept electrons.
   <br /><br />

A <strong>bipolar junction transistor</strong> allows a small current at one terminal to control larger current at its other terminals allowing for amplification or switching.
Energy passing from the collector to emitter is controlled by the base.

A transister is the only component in an RF power amplifier that produces gain.

A FET (Field-effect transistor) are commonly found in amateur radio receivers because of their efficiency in the RF ranges.
They use an electric field to control the flow of current.
It's a unipolar transistor.
Its gate is used to control the current passing between the source and the drain.

The "skin effect": In AC circuits, current flows on the outside of the conductor.

<strong>Inductance</strong> is the ability to store energy in a magnetic field.
The basic unit of inductance is the <strong>henry</strong>.

An <strong>inductor</strong> stores electrical energy in a <strong>magnetic</strong> field when current flows through it.
Generally, the more turns of a coil, the higher the inductance.
Inductors are made of a coil of wire such as from small copper tubing.
So inductors are also called chokes or coils.

A <strong>capacitor</strong> stores electrical energy in an <strong>electrical</strong> circuit.
Its symbol is a line and a frown.
The conductive surfaces of a capacitor may be foil, film or metal
separated by glass, ceramic, air or other elements that provide insulation.

An LC circuit -- a L (inductor) and a C (capacitor) connected in series or parallel to form a filter -- is a <strong>resonant</strong> or tuned circuit.

A <strong>relay</strong> is an electrically-controlled electromagnet to switch current flow.
Mechanical contacts control the flow of larger current.

SPDT (single pole, double throw) switches have a single input and two outputs.
They are used as a “low / high” switch in a circuit.

A <strong>bettery</strong> ???

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44702611-capacitance-inductance-reactance-video">VIDEO</a>

Electrodes of bipolar junction transister -
energy from the ollector to emitter is controlled by the base.



## Digital modes

There are two different approaches:

   * Send VOIP (Voice Over IP) through the internet to FM stations via EchoLink Windows & Android apps

   * Send voice generated on a Linux laptop using direwolf

Packet radios use the AX.25 protocol standard based on the X.25 protocol.
The "A" in AX.25 stands for amateur radio.

<a target="_blank" href="https://www.youtube.com/watch?v=HuvNxztn_j0&t=25s">VIDEO</a>
aprs.org created in the 1980s
<a target="_blank" href="https://www.youtube.com/watch?v=24hnEjIoZQA">VIDEO</a>:
Kenwood TM-D710G
APRS (Automatic Packet Reporting System) shows a map of locations allows real-time digital communication and tracking of objects using GPS coordinates.  It displays the locations of stations, objects, and moving assets on a map, providing a shared live view of the local area.
In the US, Canada, Mexico its' 144.390 Mhz.

<a target="_blank" href="https://www.youtube.com/watch?v=hzdi9fTI1kE">VIDEO</a>:
$65 Mobilinkd APRS Digipeater dongle for Android and $136 for iPhones, plus TNC cable
APRSDroid app.

IRLP (Internet Radio Linking Project) nodes by using DTMF (dual-tone multi-frequency) tones. A technique to connect amateur radio systems, such as repeaters, via the internet using Voice Over Internet Protocol (VoIP)

FT8, or "Franke-Taylor design, 8-FSK modulation," 15 secs needs
https://en.wikipedia.org/wiki/WSJT_%28amateur_radio_software%29
<a target="_blank" href="https://wsjt.sourceforge.io/wsjtx.html">
WSJT-X software</a> and hardware.

Use the Mac’s Audio MIDI Setup utility to configure your sound card for 48000 Hz, two-channel, 16-bit format.

PSK-31 digital modes are popular because of its keyboard-to-keyboard capabilities.

A digital mode hot spot allows hams using digital radios such as DMR or D-STAR to communicate on digital voice or data systems via the internet.

https://www.icomjapan.com/explore/d-star/

https://test.icomamerica.com/lineup/amateur/D-STAR/
DMR or
https://regist.dstargateway.org/instructions/
D-STAR (after regis)

D-STAR (Digital Smart Technologies for Amateur Radio) from Japan
https://en.wikipedia.org/wiki/D-STAR
http://dstarinfo.com/
users are operating their transceivers into a digital mode hot spot.

A DMR "code plug" contains the programming information
https://dstarusers.org/viewrepeater.php?system=K7EFA
Billings

https://www.repeaterbook.com/index.php/en-us/

Yaesu System Fusion combines both analog and digital

<a target="_blank" href="https://www.yaesu.com/jp/en/wires-x/index.php">WIRES-X</a>
WIRES (Wide-coverage Internet Repeater Enhancement System) is an Internet communication system which expands the range of amateur radio communication. For WIRES-X, an amateur node station connecting to the Internet is used as the access point and connects the wireless communication to the Internet. Users' stations can communicate with other amateur stations all over the world using a node within the radio wave range.

sends GPS, text, weather.

Uses ARQ (Automatic Repeat Query)

## Stations

WebSDR (Software Defined Radio) receiver connected to the internet allows many listeners to listen simultaneously. WebSDR servers can register themselves automatically on http://www.websdr.org/
listing 155 servers active throughout the world, with 1298 users and 749 MHz of radio spectrum.

https://rx-tx.info/map-sdr-points
provides a map


## Ohm’s Law

Ohm’s Law states that voltage (E) equals current (I) multiplied by resistance (R).

The flow rate of one coulomb per second is equal to one amp of current.

Capacitance is the ability to store energy in an electric field and is measured in farads. The component in a circuit for this is a capacitor.


## Electrical Power

The power of electrical audio signals is measured in db (decibels) on a logrithmic scale.
Logrithmically means increases are exponential.
* For each 1 db of loss, there is a 20.6% change in power.
* At 3 dB, there is a 2x change in power.
* At 10 db, there is a 10x change in power

Power is the rate at which electrical energy is consumed (converted to heat).
A 40-watt bulb uses more power than a 100-watt bulb.

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44706199-station-rf-evaluation-video">VIDEO</a>:
A microwave oven heats by RF radiation.
FCC OET Bulletin 65 regulates transmission MPE (Maximum Permissible Exposure) limits.
Supplement B define when evaluation is needed.

Reduce exposure by reducing transmission <strong>duty cycle</strong>.


## Electrical Power

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44705462-lc-circuits-measurements-video">VIDEO</a>

P (power watts) = E (volts) multiplied by I (current in amps).

A <strong>transformer</strong> steps down 120 volts AC house current to a lower AC voltage for other uses. There also are step-up transformers.
In a diagram:
The left-hand side of the transformer is the primary winding.
The right hand side is the secondary winding.

A <strong>regulator</strong> regulates the amount of voltage from a power supply.
So it's also called a voltage regulator.
Some power supply designs use a single chip while others use many separate and independent components.

A <strong>rectifier</strong> changes an alternating current into a varying direct current signal.
A rectifier is composed of diodes that direct the flow of current into specific directions in the electronic circuit. The diode allows current to flow in only one direction.

The diode is classified as a semiconductor.
In the forward direction, a minimum amount of voltage, called the voltage drop, is required to have the diode conduct current.

Within a diode, current flows into the anode and out of the cathode.

Because different materials are used in diodes, voltage drop is lower in some diode types.

The most difficult LED (Light Emmitting Diode) to make are purple in color.

In power supplies it sends the positive side of the alternating current's sine wave to one part of the circuit and the negative side to another part of the circuit.

## Batteries

Carbon-zinc batteries are not rechargeable. The chemical reactions that produce the electricity are not reversible.

When using lead-acid 12V batteries used in most autos and trucks, keep its voltage above 10.5 Volts to avoid shortening the battery's life.

LiFePo


## Multimeters

A directional wattmeter measures forward and reflected watts.

Multimeters are:
* An Ohmeter measures Ohms of resistance (when not powered)
* A voltmeter measures Volts of E (electric potential or electromotive force)
* An ammeter measures amps of electric current (measured in series in a circuit flowing through the ammeter)

Always start on a higher scan and slowly work down.

A dummy load uses a non-inductive <strong>resistor</strong> mounted on a heat sink. This simulates an antenna and helps avoid potential interference so you can test for as long as necessary, based on the dummy load’s rating.

A variable resistor of ohms is called a <strong>potentiometer</strong> (not a measurement device).
It has three electrical connections.

If only two connections are used, the device is called a rheostat.

## Connectors

Connectors
PL-259 used on HF
Over 400 MHz use type N connector
SMA

Antenner Tuner/Coupler

6 meters  ≈ 236 inches

### Solder

Good rosin solder joints are shiny rather than "gray" or dull.

Acid-core solder should NEVER be used for radio and electronic use.
Cold tin-lead solder (made for steel and other metals) result in a rough or lumpy surface.

## Antennas

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44706097-directional-specialized-antennas-video">VIDEO</a>:
<a target="_blank" href="https://www.youtube.com/watch?v=BLVAiGGk2j0&list=PL1KAjn5rGhixvvb_jMZFWmbP97-t9Kyxk&index=10">EXAM</a>:

"Isotropic" antennas measures gain in dBi directionally.

So lower power on Yagi antennas, which takes a signal from a driven element down the boom to the director element. Satellite antennas have 30 or more directors to narrow the beam.
* A 20-meter Yagi with 3 elements with beam width 65 degrees would have a 7 dBi gain.
* A 70-meter Yagi with 11 elements with beam width 35 degrees would have a 13 dBi gain.
<br /><br />

The azimuth is set by the number of elements on the boom.

Narrow the main lobe in elevation by stacking a Yagi a half-wavelength apart for gain 3dB higher than a single Yagi.

Gain in dBi is 25 dB higher than gain in dBd.

<strong>Dipole</strong> antennas measure gain in dBd.

To get the approximate length of a half-wavelength <strong>dipole</strong> (named for the Japanese who invented it), divide 468 by the frequency in megahertz:

For 6 meter with 50 Megahertz.  So 468 / 50 MHz = 9.36 Feet or 112.32 inches.
If we need to calculate a quarter-wavelength, we can use half of 468 which is 234.  
For 2 Meter, calculate 468 / 146 MHz is 3.20 feet or 38.4 inches for a half-wavelength dipole.  Take half of that to get a quarter-wavelength and you get 19.2 inches. Or 234 / 146 MHz = 1.60 Feet or 19.2 inches.

The tried-and-true formula for <strong>quarter-wavelength</strong> antennas is divide 234 by the frequency in MHz. 234 / frequency in MHz = Antenna length in feet. Therefore, 234 / 146 MHz = 1.602 feet. To convert feet to inches, multiply by 12. Therefore, 1.602 feet x 12 = 19.2 inches.

The approximate length, in inches, of a quarter-wavelength vertical antenna for 146 MHz will be 19 inches. Let's break down the math: they want the length on an antenna in inches based on a given frequency.

A 5/8-wavelength antenna has longer range and more gain when compared to the 1/4 wavelength antenna.

Around airports, antennas below 200 feet tall do not need FCC notification.

A <strong>band-pass filter</strong> filters out incoming signal.
Attenuation is the signal lost in the passband.

On a 80-meter dipole would have a height of 8 meters (26 feet) above ground.

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44705634-digital-circuits-video">VIDEO</a>


## Cables

<a target="_blank" href="https://study.hamradioprep.com/courses/take/general-license-course-2023-2027/lessons/44706062-cables-tuning-di-monopoles-video">VIDEO</a>:
A <strong>feed line</strong> carries signal between the antenna and your radio.

Using cable TV cables would cause an impedence mismatch.

The most-used coax have <strong>50 Ohms impedance</strong> to match modern amateur radios.

1:1 SWR (Standing Wave Ratio) is the ratio of Feed-point impedence (such as 200 Ohms) to Feed line impedence (such as 50 Ohms).

AC impedence loss to transceiver is measured in dB per 100 feet.

Keep SWR below 1.5:1, when less than 5% in transmitter loss (converted to heat) before getting out the antenna.<br />
At 2:1, loss is about 11%.<br />
4:1 means 40% of transmit power is lost.<br />
5:1 means more than half of power is lost.

An <strong>antenna tuner</strong> adjusts to present a 1:1 match to the transmitter.

To reduce attenuation (signal loss),
https://universal-radio.com

* RG-8
* RG-49
* RG-213
(CATV 75)

Free electrons in metal make them good conductors.

AWS (American Wireguage Standard) - the higher the number the smaller the wire:
* 12 AWG is minimum for a 20 ampre circuit breakerx
* 14 AWG limit circuit breaker to 15 ampres
<br /><br />


## Conversational Etiquette


### Start conversation

CQ means seeking all.

call sign

monitoring

Q-codes - QRF request to increase power


### Overdeviating

Overdiating can be caused by talking too close to the microphone.

### Contact Keep a Log

Listen before you transmit.

Repeat “CQ” a few times, followed by “this is,” then your call sign a few times, then pause to listen. Repeat as necessary.

“CQ DX” (means “distant”) is a call for any stations outside the lower 48 states.
Such operate on 50.1 MHz to 50.125 MHz.

To ensure that you aren't causing interference to others who are already having a conversation,
if you see a frequency that appears free,
* On CW send “QRL?”, followed by your call sign.
* if using phone, ask if the frequency is in use, followed by your call sign.
That's so they may be just not talking at that moment, but still using the frequency.
After making a contact with another ham, exchange a signal report of readability and strength, such as “This is AA1RC. You are 5-9 in South Texas”
for perfectly readable and very strong from these scales:

R5 = 95%+ Perfectly readable<br />
R4 = 80%+ Practically no difficulty; occassional missed characters<br />
R3 = 40%+ Considerable words distinguishable<br />
R2 = 20%+ Ocassional words distinguishable<br />
R1 = 00%+ Undecipherable<br />

Strength:
S9 = Very Strong<br />
S7 = Strong<br />
S5 = Moderate<br />
S3 = Weak<br />
S1 = Barely Perceptible<br />
]

<strong>azimuthal projection</strong> maps show true bearings and distances from a specific location.
It's used by hams to find the <strong>short-path</strong> between two stations. If an amateur turns their antenna 180 degrees, they would be using the <strong>long path</strong> to transmit.

### MEMORIZE: Use NATO phoetic alphabet.

<a target="_blank" href="https://www.youtube.com/watch?v=TesQ5GON_iw&t=54s">VIDEO</a>: pronounciation, with

<table border="1" cellpadding="4" cellspacing="0"><tr valign="bottom"><th><strong>Character</strong></th><th><strong>Code word</strong></th><th><strong>Pronunciation</strong></th><th><strong>Morse Code</strong></th></tr><tbody>
<tr valign="top"><td><strong>A</strong></td><td>Alfa/Alpha</td><td>AL FAH</td><td>● ▬</td></tr>
<tr valign="top"><td><strong>B</strong></td><td>Bravo</td><td>BRAH VOH</td><td>▬ ● ● ●</td></tr>
<tr valign="top"><td><strong>C</strong></td><td>Charlie</td><td>CHAR LEE</td><td>▬ ● ▬ ●</td></tr>
<tr valign="top"><td><strong>D</strong></td><td>Delta</td><td>DELL TAH</td><td>▬ ●●</td></tr>
<tr valign="top"><td><strong>E</strong></td><td>Echo</td><td>ECK OH</td><td>●</td></tr>
<tr valign="top"><td><strong>F</strong></td><td>Foxtrot</td><td>FOKS TROT</td><td>● ● ▬ ●</td></tr>
<tr valign="top"><td><strong>G</strong></td><td>Golf</td><td>GOLF</td><td>▬ ▬ ●</td></tr>
<tr valign="top"><td><strong>H</strong></td><td>Hotel</td><td>HOH TELL</td><td>● ● ● ●</td></tr>
<tr valign="top"><td><strong>I</strong></td><td>India</td><td>IN DEE AH</td></td><td>● ●</td></tr>
<tr valign="top"><td><strong>J</strong></td><td>Juliett</td><td>JEW LEE ETT</td><td>● ▬ ▬ ▬</td></tr>
<tr valign="top"><td><strong>K</strong></td><td>Kilo</td><td>KEY LOH</td><td>▬ ● ▬</td></tr>
<tr valign="top"><td><strong>L</strong></td><td>Lima</td><td>LEE MAH</td><td>● ▬ ● ●</td></tr>
<tr valign="top"><td><strong>M</strong></td><td>Mike</td><td>MIKE</td><td>▬ ▬</td></tr>
<tr valign="top"><td><strong>N</strong></td><td>November</td><td>NO VEM BER</td><td>▬ ●</td></tr>
<tr valign="top"><td><strong>O</strong></td><td>Oscar</td><td>OSS CAH</td><td>▬ ▬ ▬</td></tr>
<tr valign="top"><td><strong>P</strong></td><td>Papa</td><td>PAH PAH</td><td>● ▬ ▬ ●</td></tr>
<tr valign="top"><td><strong>Q</strong></td><td>Quebec</td><td>KEH BECK</td><td>▬ ▬ ● ▬</td></tr>
<tr valign="top"><td><strong>R</strong></td><td>Romeo</td><td>RO ME OH</td><td>● ▬ ●</td></tr>
<tr valign="top"><td><strong>S</strong></td><td>Sierra</td><td>SEE AIR RAH</td><td>● ● ●</td></tr>
<tr valign="top"><td><strong>T</strong></td><td>Tango</td><td>TANG OH</td><td>▬</td></tr>
<tr valign="top"><td><strong>U</strong></td><td>Uniform</td><td>YOU NEE FORM</td><td>● ● ▬</td></tr>
<tr valign="top"><td><strong>V</strong></td><td>Victor</td><td>VIK TAH</td><td>● ● ● ▬</td></tr>
<tr valign="top"><td><strong>W</strong></td><td>Whiskey</td><td>WISS KEY</td><td>● ▬ ▬</td></tr>
<tr valign="top"><td><strong>X</strong></td><td>X-ray</td><td>ECKS RAY</td><td>▬ ● ● ▬</td></tr>
<tr valign="top"><td><strong>Y</strong></td><td>Yankee</td><td>YANG KEY</td><td>▬ ▬ ● ●</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>Zulu</td><td>ZOO LOO</td><td>▬ ▬ ▬ ▬ ▬</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>0</td><td>ZERO</td><td>● ▬ ▬ ▬ ▬</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>1</td><td>ONE</td><td>● ▬ ▬ ▬ ▬</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>2</td><td>TWO</td><td>● ● ▬ ▬ ▬</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>3</td><td>THREE</td><td>● ● ● ▬ ▬</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>4</td><td>FOUR</td><td>● ● ● ● ▬</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>5</td><td>FIVE</td><td>● ● ● ● ●</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>6</td><td>SIX</td><td>▬ ● ● ● ●</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>7</td><td>SEVEN</td><td>▬ ▬ ● ● ●</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>8</td><td>EIGHT</td><td>▬ ▬ ▬ ● ●</td></tr>
<tr valign="top"><td><strong>Z</strong></td><td>9</td><td>NINE</td><td>▬ ▬ ▬ ▬ ●</td></tr>
</tbody></table>

The two t's in Juliett is to ensure that French speakers who usually do not pronounce the t at the end of a word.

Morse code dits and dahs. <a target="_blank" href="https://www.youtube.com/watch?v=rufnWLVQcKg">VIDEO</a>
https://cyber.org/find-curricula/morse-code

Type or paste words into website: <a target="_blank" href="https://www.radiospelling.com/">https://www.radiospelling.com</a> to pronounce then out your speakers.

Select "International Civil Aviation Organization" (ICAO) adopted in 1956 rather than historical ones described at https://en.wikipedia.org/wiki/NATO_phonetic_alphabet
(Some Police departments have a <a target="_blank" href="https://www.rfcafe.com/references/general/phonetic-alphabet.htm">different set</a>)

<ul><tt>W	S	C	Z	3	4	6<br />
Whiskey	Sierra	Charlie	Zulu	Three	Four	Six
</tt></ul>

That's also called "NATO" alphabet as there is <a target="_blank" href="https://cryptii.com/pipes/nato-phonetic-alphabet">a different set in Russia</a>.

Several codes words and sequences of code words have become well-known, such as Bravo Zulu (letter code BZ) for "well done".

### End conversations

Ending a conversation or transmission with "73" means "Best Regards" or goodbye.
This harks back to the early days of landline Morse code telegraphy in the 1800s, when Telegraphers used numerical codes to represent common phrases to speed up transmission. BTW: In Morse code, "73" forms a palindromic sequence that is the same forwards and backwards, adding to its appeal and memorability for ham operators.

## Contesting

AARL section

WRTC (World Radio Team Championship)

https://www.arrl.org/grid-locator
ARRL.org has grid locator maps

## Retailers

https://www.hamradio.com/detail.cfm



## References

https://www.cisa.gov/safecom/field-operations-guides

<sub>{{ page.lastchange }} {{ page.date }}</sub>
