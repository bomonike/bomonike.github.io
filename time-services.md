---
layout: post
date: "2026-04-12"
lastchange: "26-04-12 v005 flowchart @time-services.md"
url: "https://bomonike.github.io/time-services"
file: "time-services"
title: "Time Services of local servers"
excerpt: "How to keep servers synchronized in case satellites and radio signals fail"
tags: [IoT, Meshtastic, Time, AI, Anthropic, Claude]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-03-19"
---
<a target="_blank" href="https://bomonike.github.io/time-services"><img align="right" width="100" height="100" alt="time-services.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/time-services.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}
This article was hand-crafted based on AI responses.

## Airgapped

The lesson I created creating a set of isolated servers (to do performance tests) at GoDaddy, at Lockheed Skunkworks, and on boats without Starlink is that stand-alone servers need time sync servers.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/q_auto/f_auto/v1775976450/260412-time-services_eaadyl.png"><img alt="260412-time-services.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/q_auto/f_auto/v1775976450/260412-time-services_eaadyl.png" /></a>

This article describes how we:

1. went from <a href="#TwoSignals">Ye Ole Town crier and church bells</a> to <a href="#Oscillator">oscillators</a>.

1. Create an installer of shell scripts and Python code using AI generation based on spec code.

1. Configure a computer that obtains time sync signals from three sources (<a href="#GPS">GPS satellites</a>, <a href="#NTP">NTP (Network Time Protocol) sync websites, and <a href="#TimeRadio">Time Radio Broadcasts</a>).

1. <a href="#chrony">Using the chrony package</a>, analyze <a href="#Drift">drift</a>.

1. <strong>Compensate</strong> for drift so that if time signals are delayed, servers can continue for a while longer.
<br /><br />

<hr />


<a name="TwoSignals"></a>

## Ye Ole Town crier and church bells

During olden days in Europe, bells rang once an hour to mark the passage of time for a local community. But one doesn't know what hour of the day (3 o'clock or 4 o'clock).
So a town crier would walk around shouting "It is now 3 o'clock!" — the message is accurate but it takes time to travel. You hear it a little after 3:00:00.000.

So the two signals are needed.

And the need for coordinated time has not changed.

The British empire was able to defeat the Spanish was due in no small part to reliable clocks which enabled them to keep track of where they are located.


<a href="#Drift"></a>

## Drift in watches

Within a server, drift from actual time can cause serious errors because
inaccurate time stamps make troubleshooting among a cluster more difficult.
That's why in WWII movies (such as "A Bridge Over the River Qui", a group of commandos synchronized each other's watches before dispursing to execute a coordinated maneuver.

"Mechanical" wristwatches are powered by a spring that needs to be wound periodically. "Automatic" watches use the wearer's wrist movements to wind the spring.
The most accurate mechanical wristwatches, Rolex 2026 models, lose <strong>±2 seconds per day</strong> in accuracy. That's 730 seconds (12 minutes) per year.

And it's a hassle to reset the watch on every month and daylight savings change.
External time signals make it unnecessary to manually set the timepiece.

Typical servers and computers use inexpensive quartz crystal oscillators on their motherboards. Without periodic correction, standard servers typically drift by 1 to 2 seconds per day (which adds up to several minutes per month). Changes in server room temperature and the age of the hardware can make this drift even worse.

The most accurate wristwatch which does not reference an external time signal - the Citizen Caliber 0100 — keeps time to within <strong>±1 second per year</strong>.


<a name="GNSS"></a>

## GNSS

The most accurate among all wristwatch in 2026 - the <a target="_blank" href="https://www.seikowatches.com/us-en/products/astron">"Seiko Astron GPS Solar 5X"</a> quartz chronograph - has a 3-year warranty but never needs a battery change because it powers itself by light source. The watch (listed at $2,500 USD) keeps accurate time by syncing with a GPS signal from space. So its date and daylight savings are adjusted automatically until the year 2100. However, the watch references the MICHIBIKI 4-satellite QZSS (Quasi-Zenith Satellite System) constellation in quasi-zenith orbits (QZO) above Japan.

NEXT: That is not a watch to use on other parts of the world.

There are several GNSSs (Global Navigation Satellite Systems) circling the earth. 
   * GPS — the US system, the original and most universal
   * BDS — BeiDou, China's global system (the "B" stands for BeiDou in Chinese)
   * QZSS — Japan's Quasi-Zenith Satellite System, a small regional constellation that sits nearly overhead Japan/Asia-Pacific at high elevation angles, which helps in urban canyons where low-angle satellites get blocked by buildings
   * Russia
   <br /><br />

A "Multi-GNSS" receiver can listen to multiple independent satellite constellations simultaneously, getting fixes from more satellites for better accuracy and reliability:



## GPS NMEA & 1PPS

Each GPS satellite has a very accurate <strong>caesium atomic clock</strong>. 

As a reference source, GPS send two signals, neither is useful without the other:
   * A NMEA (National Marine Electronics Association) sentence is sent once per second, containing a UTC time stamp (epoch). But its slow 5–50 ms of inherent fuzziness.
   * 1PPS (Pulse Per Second) is like a church bell, sent as a 3.5V spike thru a GPIO pin at ~10–100 nanoseconds of accuracy. 
   <br /><br />

That pairing is what makes a ~$15 GPS module competitive with a rack-mount stratum-1 appliance costing thousands.

chrony uses both together: NMEA tells it what second it is, PPS tells it exactly when that second begins.



### GPS Time Servers

For a complete server with case, motherboard, 1575.42 MHz GPS patch antenna with 5-meter RG174 Cable, and rubber grips for device physical stability, the <a target="_blank" href="https://timemachinescorp.com/gps-time-servers-accessories/">$349.99 "GPS NTP Network Time Server (TM1000A)"</a> from timemachinescorp.com has a 12 volt power supply.


<a name="DGPS"></a>

### Differential GPS)

DGPS (Differential GPS) — a ground-based correction technique. A reference station at a known precise location measures GPS errors (atmospheric delay, clock drift, etc.) and broadcasts corrections to nearby receivers. With these errors removed, a receiver can achieve accuracies up to 10 centimeters. The limitation is range — it works best within a few hundred kilometers of the reference station.

Wide-area DGPS are delivered via geostationary satellites instead of ground radio. Although not relevant for time keeping, for sub-meter GNSS position accuracy, SBAS (Satellite-Based Augmentation System) correction signals refine the receiver's understanding of atmospheric delays. It improves accuracy and reliability by correcting signal measurement errors and providing integrity information, alerting users within a few seconds if positioning error becomes too large. They're operated by each country:
   * WAAS — US Space Force satellites 
   * EGNOS — Europe, operated by the EU
   * MSAS — Japan, operated by Japan's civil aviation bureau
   * GAGAAN — India (GPS Aided GEO Augmented Navigation)
   * GLONASS (Global Navigation Satellite System) by Russia  consists of 24 satellites in three orbital planes at about 19,100 km altitude and 64.8° inclination, providing strong signal availability in high northern latitudes. Development began in the 1970s, with the first satellite launched in 1982 and full operational status achieved in the mid-1990s; signals are transmitted on L1 and L2 frequencies for standard and high-precision use.
   <br /><br />


### Raspberry Pi/Pico GPS modules

The Raspberry and Pico boards do not come with an accurate clock.
 
<a target="_blank" href="https://www.youtube.com/watch?v=dxtVyDXvIBE">VIDEO</a>: The $260 U-blox Neo-6 GPS receiver chip (made by ocplap.com) has a tiny OXCO (Oven-controlled Crystal Oscillator) which heats an accurate clock chip to 100 degreesC.
timecardmini.com
<a target="_blank" href="https://www.u-blox.com/en/product/u-center">u-center software</a> 
a spin-off from the Swiss Federal Institute of Technology in Zurich (ETH), 

But you can get a GPS/clock chip on a HAT (Hardware Attached on Top) board for a micro computer such as Raspberry Pi or Pico. But you would have to also need to buy a case, motherboard, antenna, then solder them together.

The <a target="_blank" href="https://www.amazon.com/Garmin-18x-LVC-Navigator-Unit/dp/B0016O3T7A">$63.99 Garmin 18x LVC GPS receiver</a> connects withe autos and trucks. It is offered in three different cable configurations: A style USB, DB 9 pin serial with 12 volt cigarette lighter adapter /PC, or bare wire /LVC.  It has 12 parallel channel, WAAS enabled GPS receiver is available in either CMOS level serial or USB 2.0 full speed versions, and comes with an integrated magnetic base. The PC and LVC versions both default to output data in the industry standard NMEA 0183 data format, but may also be user programmed to output data in the GARMIN proprietary format. The USB version produces data only in the GARMIN proprietary format. All three versions of the GPS 18 come complete with non volatile memory for storage of configuration information, a real time clock, and raw measurement output data for sophisticated customer applications. The LVC version additionally provides a pulse per second logic level output whose rising edge is aligned to the UTC second within 1 microsecond. The USB 2.0 full speed version of the GPS18 is also compatible with USB 1.1 full speed hosts. QUESTION: Connection to the Raspberry Pi?

For a Raspberry Pi the standard stack is gpsd → chrony with both a SHM refclock (NMEA) and a PPS /dev/pps0 refclock locked to it. For ESP32 there's no OS clock to discipline, so you use TinyGPS++ to decode NMEA and a GPIO interrupt on the PPS pin to precisely timestamp the second boundary in IRAM_ATTR.

The u-blox NEO-M8N is a low-cost (~$15–30) GNSS module that generates both an NMEA sentence stream over UART (absolute time) and a 1 PPS hardware pulse  nanosecond-accurate epoch marker). 

* <a target="_blank" href="https://www.youtube.com/watch?v=lP_WaOgIwXg">VIDEO</a>: "Connect and Fire Up the Adafruit GPS with the Pi Pico W"

* <a https://www.youtube.com/watch?v=CLsXnSOIYMg&pp=ugUEEgJlbg%3D%3D">How to add GPS to Your Raspberry Pi Pico - A Simple GPS Project</a> by Core Electronics


## PTP (Precision Time Protocol)

For millisecond accuracy, the newer PTP (Precision Time Protocol) should be used instead of NTP.

Dedicated servers in PTP mode run within about 200 nanoseconds of the reference clock (a fraction of NTP).

PTP provides resiliecy to jitter when using proper hardware. The jitter for PTP sources is kept to a tight +/- 500 nanoseconds.

When a server ultimately loses its external reference and begins to drift, PTP has a massive advantage simply because its starting baseline is astronomically tighter.

<a target="_blank" href="https://www.wikiwand.com/en/Precision_Time_Protocol">
IEEE 1588-2019</a> was published in November 2019 and includes backward-compatible improvements to the IEEE 1588:2008 PTP Protocol publication.

Related standards are 802.1AS (gPTP), Telecom Profiles, G.8265.1, G.8275.1, G.8275.2, Automotive Profiles. Customers report testing against various media profiles such as SMPTE 2059-2. 

TM2000B - gps time server - ptp and ntptm2000 - ntp ptp time server using gps.

NEO-6T variant,


### PTP Time Server

The <a target="_blank" href="https://timemachinescorp.com/product/gps-ntpptp-network-time-server-tm2000/">$549.99 "GPS NTP+PTP Network Time Server (TM2000B)"</a> from timemachinescorp.com
has a 12 volt power supply and rubber grips for time server physical stability.
It comes with 1575.42 MHz GPS patch antenna with 5-meter RG174 Cable.


<a name="NTPSync"></a>

## NTP sync service

Common operating sytems (macOS, Windows, Linux, etc.) were built assuming a constant internet connection (to do email, etc.) and make periodic connection to an NTP (Network Time Protocol) NTPv4 (RFC 5905) server to sync with.

The US government provides NTP time service at "time.nist.gov"
which resolves to a server in <a target="_blank" href="https://tf.nist.gov/tf-cgi/servers.cgi">several locations</a> across the US.

Under ideal conditions on a local network, NTP maintains an averaged accuracy of just under 80 microseconds (which is 80,000 nanoseconds). At its absolute best, NTP can align a server's time to within <strong>+/- 200 microseconds</strong> of the reference.

Over a local network, raw NTP data fluctuates within <strong>+/- 1 millisecond</strong>. If NTP is routed over the open internet, the accuracy degrades further (up to a 2-millisecond offset) due to the unpredictable routing of the data packets (measured as jitter).

PROTIP: Specify the NTP Pool ("<strong>pool.ntp.org</strong>") to use GeoDNS routes to a nearby service endpoint automatically. The pool is a virtual cluster of thousands of timeservers used by hundreds of millions of systems worldwide on IPv4 and IPv6. It is the default time server for most major Linux distributions.

Google uses "leap smearing" to spread the leap second over 24 hours to avoid disruptive events.

1. To <a target="_blank" href="https://support.apple.com/zh-sg/guide/mac-help/mchlp2996/mac">manually sync the time on macOS</a>:
   1. Go to the System Settings app  on your Mac.
   1. Click General  in the sidebar, then click Date & Time on the right.
   1. Turn on “Set time and date automatically” (on the right)
   1. Click Set for Source.
   1. For network Time Server, instead of "time.apple.com", type "pool.ntp.org" or the IP address of your <a href="#LocalNTP">local NTP service</a>.
   1. Click Done to the dialog.
   1. Turn on “Set time zone automatically using your current location.”
   1. Close the Settings app.
   <br /><br />

QUESTION: What about if external NTP service is not available?


<a name="chrony"></a>

## chrony package install

PROTIP: Instead of ntpd, chrony is now the default on all major distros becuase of its faster initial sync, better handling of intermittent connectivity, works well on VMs and laptops.

1. Install chrony using Homebrew:
   ```bash
    $ brew info chrony
    ==> chrony ✘: stable 4.8 (bottled)
    Versatile implementation of the Network Time Protocol (NTP)
    https://chrony-project.org
    Not installed
    From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/c/chrony.rb
    License: GPL-2.0-only
    ==> Dependencies
    Required (2): gnutls ✘, nettle ✔
    Recursive Runtime (13): 13 ✔, 0 ✘
    ==> Downloading https://formulae.brew.sh/api/formula/chrony.json
    ==> Analytics
    install: 57 (30 days), 188 (90 days), 1,079 (365 days)
    install-on-request: 57 (30 days), 188 (90 days), 1,079 (365 days)
    build-error: 0 (30 days)

    $ brew install chrony
    ==> Pouring chrony--4.8.arm64_sequoia.bottle.tar.gz
    🍺  /opt/homebrew/Cellar/chrony/4.8: 11 files, 866.9KB
   ```
1. See https://chrony-project.org
   
1. Set chrony as an NTPv4 (RFC 5905) server and peer to provide a local time service to other computers in the network. 
   ```bash
   sudo nano /etc/chrony/chrony.conf
   ```
1. See https://chrony-project.org/doc/latest/chrony.conf.html
   which has a lot of configuration.

1. Add one or more time servers, e.g.:
   ```text
    server pool.ntp.org iburst
    server time.nist.gov iburst
    server time-a-g.nist.gov iburst
   ```
   PROTIP: Prefer multiple servers for redundancy (e.g., 2–4 of time.nist.gov, regional NIST, and maybe one USNO if policy‑approved).
   server tick.usno.navy.mil iburst

1. Restart
   ```bash
   sudo systemctl restart chronyd
   sudo systemctl enable --now chronyd
   sudo chronyc sources -v
   ```

1. Verify it is running
   ```bash
   systemctl status chronyd
   ```
1. After any config change always run 
   ```bash
   chronyc sources -v
   ```
   and watch for the * marker on your best source. If you only see - or ? markers, either the upstream is unreachable (firewall, DNS) or chrony is rejecting all candidates as inconsistent (add more sources so it has a majority to vote on).

   The <tt>lock GPS</tt> directive in the <a href="#chrony">chrony config</a> is the glue: it tells chrony "take each PPS rising edge and assign it the second number that the NMEA stream just reported." 

1. Allow outbound UDP port 123 to the chosen government NTP host(s).





   ### Monitoring

   ```bash
   # On any server — check sources and their reach
   chronyc sources -v

   # Check tracking status and estimated error
   chronyc tracking
   ```




<a name="LocalNTP"></a>

## chrony as Local NTP service

A typical configuration file for the server (called ntp.local) might be (assuming the clients and the server are in the 192.168.165.x subnet):
```
initstepslew 1 client1 client3 client6
driftfile /var/lib/chrony/drift
local stratum 8
manual
allow 192.168.165.0/24
smoothtime 400 0.01
rtcsync
```

For the clients that have to resynchronise the server when it restarts, the configuration file might be:
```
server ntp.local iburst
driftfile /var/lib/chrony/drift
allow 192.168.165.0/24
makestep 1.0 3
rtcsync
```

Add allow 192.168.1.0/24 and it becomes an NTP server for your LAN.

A basic LAN time server (stratum 2) — install chrony, point it at pool.ntp.org plus one or two national lab servers, add allow for your subnet, open UDP 123 inbound, done. Your entire network then syncs to one machine instead of everyone hammering external servers independently.

A GPS stratum-1 server — same as above, but replace the upstream pool with two refclock lines: one for NMEA (gives the epoch) and one for 1 PPS (gives the precision). Your server then sits at the same accuracy tier as NIST and PTB. 

The noselect flag on the NMEA refclock is easy to get wrong — it must be there, or chrony will use the coarse NMEA time directly and ignore PPS.

After any config change always run chronyc sources -v and watch for the * marker on your best source. If you only see - or ? markers, either the upstream is unreachable (firewall, DNS) or chrony is rejecting all candidates as inconsistent (add more sources so it has a majority to vote on).


<a name="DriftAnalysis"></a>

## Drift analysis: chrony gpsd client

> Precisely how much does a particular server drift off actual time?

Knowing the drift rate specific to a server can be used to correct for drift patterns continuously.

The chrony software package is used to identify the extent a server drifts:
   * chronyd is a daemon that can be started at boot time
   * chronyc is a command-line interface program which can be used to monitor chronyd’s performance and to change various operating parameters while it runs.
   <br /><br />

Its accuracy is down to about 30 ns (nanoseconds).

The testing takes 7-30 days. More days = more precise correction.
   * A 1-second error over 7 days looks like 1.65 ppm. 
   * Over 30 days the same error resolves to 0.39 ppm. 
   <br /><br />

uses SHM + PPS refclock

1. To learn your oscillator's specific drift rate:

1. To compensate for your drift:
    ```bash
    # /etc/chrony.conf additions
    refclock SHM 0 refid GPS precision 1e-1 offset 0.5 delay 0.2
    refclock PPS /dev/pps0 refid PPS lock GPS precision 1e-9
    ```


<a name="TimeRadio"></a>

## Time Radio Receivers

Some wall clocks can automatically set themselves by using 
time sync signals received over the airwaves (not the internet)
broadcast by governments operating long-wave radio towers:

   * DCF77 in Mainflingen, Germany (Europe) using 77.5 kHz CME6005
   * <a target="_blank" href="http://www.nist.gov/pml/div688/grp40/wwvb.cfm">WWVB</a> in Fort Collins, Colorado (North America) using 60 kHz MAS6181
   * MSF
   * JJY60 Japan
   <br /><br />

Reception can be flaky in electrically noisy environments.

Their accuracy is ~1-10 ms, which is fine for most server use. 

Those time sync signals can also be picked up by a receiver chip communicating with a small computer with a receiver HAT:
   * Raspberry Pi via UART0 (GPIO 14/15) GPIO 4 (PPS in)
   * ESP32 UART2 + any GPIO
   <br /><br />

### Radio Boards

<a target="_blank" href="https://tinkersphere.com/sensors/1517-wwvb-nist-radio-time-receiver-kit.html">$24.99 WWVB NIST Radio Time Receiver Kit (1.1V to 3.3V)</a> The ferrite rod antenna is directional. For the best signal, the long side of the rod should be perpendicular to the direction of the transmitter tower. It operates at 1.1V to 3.3V, so on a 5V Arduino Uno, you'll need a logic level shifter or a simple voltage divider to avoid damaging the module. Most modules have a "Power On" (PON) pin. This is often active-low, meaning you must tie it to Ground for the receiver to actually turn on.

If you're into soldering, Universal Solder. They sell highly-tuned kits that include both the receiver PCB and a high-Q ferrite antenna.
   * <a target="_blank" href="https://hackaday.io/project/202643-775khz-atomic-clock-receiver-v4-dcf77">The DCF77 kit</a> includes a high-quality, fine-tuned 77.5kHz antenna
   * <a target="_blank" href="https://hackaday.io/project/202642-60khz-atomic-clock-receiver-v4-wwvb-msf-jjy60">The 60 kHz kit</a> for the US.
   <br /><br />
   Both have a high-quality MAS6180 chip from Micro Analog Systems (Finland) and antenna with a Q-factor of over 100.

SP6007


<a href="#Oscillator">

### DS3231 Oscillator

DS3231 is a temperature-compensated crystal oscillator (TCXO) RTC (Real Time Clock) that holds time through power cuts via a CR2032 coin cell which keeps time through power loss.

At ±2 ppm it drifts <strong>~0.17 seconds per day</strong>, making it as a holdover device between GPS sync events, or as the sole source on an ESP32 with no sky view.

1. Setup:
    ```bash
    # Raspberry Pi — enable RTC (Real Time Clock):
    dtoverlay=i2c-rtc,ds3231

    # Sync system clock from RTC on boot
    hwclock -s

    # ESP32 (Arduino)
    #include <RTClib.h>
    RTC_DS3231 rtc;
    DateTime now = rtc.now();
    ```

TCXO RTC + EEPROM
VCC 3.3V
GND
SDA -> I2C SDA
SCL -> I2C SCL
SQW -> GPIO (1Hz)

The DS3231's TCXO is factory-trimmed to ±2 ppm, but your specific chip will sit somewhere in that range, and it will drift slowly over years as the crystal ages. The strategy is: measure the actual drift, calculate a correction, and write it to the aging offset register.

To add precision time and location to most Raspberry Pi boards (anything with the 40-pin GPIO “HAT” header; early Pi models with a 26-pin header are not compatible, nor are bare Compute Module boards):
   * <a target="_blank" href="https://www.adafruit.com/product/2324">$29.95 Adafruit</a> <a target="_blank" href="https://learn.adafruit.com/adafruit-ultimate-gps-hat-for-raspberry-pi">Ultimate GPS HAT for Raspberry Pi A+/B+/Pi 2/3/4/Pi 5 - Mini Kit</a> (also sold out <a target="_blank" href="https://www.digikey.com/en/products/detail/adafruit-industries-llc/2324/5356876">at Digikey</a>)

    -165 dBm sensitivity, 10 Hz updates, 99 search channels
    GPS + GLONASS support
    Built-in Real Time Clock (RTC) - slot in a CR1220 backup battery for 7 years or more of timekeeping even if the Raspberry Pi is off!
    PPS output on fix, by default connected to pin #4
    Internal patch antenna which works quite well when used outdoors + u.FL connector for external active antenna for when used indoors or in locations without a clear sky view
    Fix status LED blinks to let you know when the GPS has determined the current coordinates


## No-wire USB option (~$10-15): 

The VK-162 USB dongle is plug-and-play on Linux. No wiring required.

WARNING: It has no PPS pin, so its accuracy tops out around 1–10 ms rather than sub-microsecond. So for sub-microsecond accuracy you need a GPIO-connected GPS module with a PPS output.

For something reliable long-term, most people end up with a Pi 4 with Uputronics HAT ($100-120 USD).


## Time

$549.99

The gold standard is a GPS receiver (even a cheap u-blox module) combined with chrony using a 1 PPS signal. This gives you ~microsecond accuracy with no network dependency at all. For multi-server environments, one GPS-disciplined stratum-1 box distributes time to the rest over your LAN via NTP or PTP.
