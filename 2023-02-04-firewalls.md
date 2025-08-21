---
layout: post
date: "2025-08-21"
lastchange: "v035 + nslookup :2023-02-04-firewalls.md"
url: "https://wilsonmar.github.io/firewalls"
file: "firewalls"
title: "Firewalls"
excerpt: "Filter out annoying ads and malware sites on your home network using PiHole."
tags: [security]
image:
  feature: https://res.cloudinary.com/dcajqrroq/image/upload/v1755319484/dnsfilters-1918x574_vun3ax.png
  credit: Wilson Mar
  creditlink: https://res.cloudinary.com/dcajqrroq/image/upload/v1755319484/dnsfilters-1918x574_vun3ax.png
comments: true
created: "2023-02-04"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

## DNS: Public and local (PiHole)

1. Because this is a technical deep dive, we begin on a Linux CLI (Command Line Interface) <strong>Terminal</strong> 
1. <href="#nslookup">nslookup</a> command used to lookup a
1. <strong>domain name</strong> (such as google.com) would return the
1. <strong>IP address</strong> of a 
1. <strong>public DNS service</strong> (such as quad9) and the IP addresses obtained from 
1. <strong>Authorative name servers</strong> throughout the world.
1. ??? Every domain zone is responsible for appointing its own authoritative name servers, with no universal limit to the total count.

1. go through a <strong>Recursive DNS</strong> workflow that begins with a query to
1. get the address of the service handling the <strong>TLD (Top-level Domain)</strong> at the end of the host name, such as ".com", etc.
1. That DNS server queries the TLD service which references its

1. The website for domain name owners to register domain names and associate IP addresses is maintained by <strong>Domain Name System registrars</strong> (such as GoDaddy).

1. When an <strong>internet browser</strong> such as Google Chrome or Firefox, 
1. you give an <strong>IP address</strong>,
1. the request goes through your local <strong>router</strong>.
1. Routers that use IPv4 send <a target="_blank" href="https://en.wikipedia.org/wiki/Address_Resolution_Protocol">ARP (Address Resolution Protocol)</a> requests and routers using IPv6 send <a target="_blank" href="https://en.wikipedia.org/wiki/Neighbor_Discovery_Protocol">NDP (Neighbor Discovery Protocol)</a> requests through 
1. <strong>hops</strong> through the <strong>public internet</strong> (Data Link layer) until
1. the website at the IP address is reached. If it's listening, you get sent its response.

1. In today's hostile world, we are concerned whether websites we visit have become <strong>malicious</strong>.
1. Public DNS servers are suspect because they are run by private interests. So they have been caught <strong>selling logs of your traffic</strong> history, even if you say they don't.
1. The <strong>Quad9</strong> DNS service is run by Scotland Yard and other law enforcement.
1. They maintain their own <strong>blocklists</strong> of domain names which they don't serve to their users. So by configuring Quad9 as your local DNS, you get some protection from known criminal websites.
1. But many don't think that is enough protection because <strong>public blocklists</strong> collected by others contain millions of websites deemed malicious or serve annoying ads.
1. It is recommended that you maintain your own <strong>private blocklist</strong> for parental control.

   Here is how you do that.

1. An add-in such as <a target="_blank" href="https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/">ublock</a> (by Raymond Hill) can be installed on Firefox browsers to block ads based on its own private blocklist. But each browser and app has its own add-in.
1. So we want protection on all apps looking up all <strong>host name</strong> lookups.
1. We need to get away from the typical <strong>default configuration</strong> of a <strong>local DNS server</strong> using sketchy public DNS service.
1. Instead of <strong>DHCP</strong>, we change the configuration to use
1. <strong>static</strong> IP address to the local server you setup, called <strong>PiHole</strong> to <strong>filter</strong> traffic according to 
1. <strong>updates</strong> of blocklists by the <strong>"gravity"</strong> utility.
1. A <strong>private allowlist</strong> is also maintained.

1. Traffic that have not been filtered out are passed to a <strong>local DNS service called "unbound"</strong> instead of either the default sketchy public DNS services to do the TLD and Authorative lookups.

1. That service needs to be invoked automatically upon <strong>reboot</strong>, and be controlled by a
1. <strong>automation CLI script</strong> that installs Python and other services such as <strong>DoH</strong> (DNS over HTTPS) protocol for better privacy by encrypting communications.

1. To use your custom private blocklists <strong>while traveling</strong>, install a
1. <strong>self-hosted VPN</strong>.

<hr />

<a name="nslookup"></a>

## nslookup

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1755757690/dns-nslookup-442x606_xfrynq.png"><img alt="dns-nslookup-442x606.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1755757690/dns-nslookup-442x606_xfrynq.png" /></a>

Typically on port 53.

<a target="_blank" href="https://www.pdq.com/blog/what-is-the-powershell-equivalent-of-nslookup/">DOCS</a>: 
The PowerShell equivalent on Windows provides more output and options:

<pre>Resolve-DnsName google.com</pre>

## Athoritative Name Services



Each DNS recursive resolver operator has a "root hints file" of IP addresses to <a target="_blank" href="https://www.iana.org/domains/root/servers">DNS root servers</a> used to bootstrap the DNS resolution process.


## Blocks needed 

Those with a connection to the public internet need to:
   * Block annoying ads 
   * Block malicious websites
   * Block ports
 

See <a target="_blank" href="https://wilsonmar.github.io/dns/">my notes on DNS</a>

The Pi-Hole server provides a recursive DNS server called "UnBound".

<a target="_blank" href="https://www.youtube.com/watch?v=Eyc3LVrhmIo">VIDEO</a>: Unifi Ad Blocker.

blocking ads makes for quicker browsing.

ECS (Extended Client Subnet) defines a mechanism for recursive solvers to send partial client IP address information to authoritative DNS name servers. ECS may result in reduced privacy when it is used by CDNs (Content Delivery Networks) and latency-sensitive services to give geo-located responses when responding to name lookups coming through public DNS resolvers. However, SNI headers also send such information.

## Firewall Options

Large businesses install firewalls in their corporate networks such as from Palo Alto or Cisco.

Homes and small businesses use "consumer-grade" firewalls from brands such as Linksys, Netgear, or Draytek.

* <a target="_blank" href="https://www.youtube.com/watch?v=dTUvlFfThPw">VIDEO</a>: OPNSense

* <a target="_blank" href="https://www.youtube.com/watch?v=AgJGuyDyP_M">VIDEO</a>: UniFi Dream Machine Pro (UDM-Pro) by Crosstalk Solutions

* Firewalla is a consumer-grade firewall that is also a router. It comes assembled with software installed. Firewalla has a Purple and Gold editions. The Gold edition adds Intrusion Detection.

If you have the time and geeky inclinations, the least-cost and most customizable option is to buy a Raspberry Pi micro computer and install and configure utility software Pi-Hole.

* Technitium DNS Server

* AdGuard uniquely can be scheduled for a specific block of time each day with parental blocking. AdGuard can use DNSSEC (DNS over HTTPS). AdGuard can also be configured with wildcard specification. AdGuard can enable encryption using a certificate pulled from a CA every 3 months. <a target="_blank" href="https://www.youtube.com/watch?v=c3XMAz--_Us">VIDEO</a> But assumes less advanced configurations than PiHole.

Which is better? PiHole vs AdGuard Home?
   * https://www.youtube.com/watch?v=c3XMAz--_Us by Hardwood
   * https://www.youtube.com/watch?v=nV5dKpGMGx4 by Tobi Teaches
   * https://www.youtube.com/watch?v=O15RD_gPz-s by Barmine
   <br /><br />

### PiHole

## Static IP on router

To make this work, you first need to get into your internet router to set a 
static (fixed) IP address instead of using one dynamically assigned by DHCP.

I gave a fixed private IP on my network where I’m redirecting all my DNS queries.

<hr />

<a name="AdGuard"></a>

## AdGuard on Raspberry Pi

   * <a target="_blank" href="https://www.youtube.com/watch?v=hmjKCNtbulM">Install AdGuard Home - Cross Platform PiHole Alternative - on Raspberry Pi 4</a>


with OpenWRT

Firebog List Generator

Portainers


<a name="PiHole"></a>

## PiHole on Raspberry Pi

https://www.wikiwand.com/en/Pi-hole

https://en.wikipedia.org/wiki/DNS_Sinkhole
protects devices on a subnet from unwanted content, without installing any client-side software.

The Pi-hole® impliments a DNS sinkhole 
https://pi-hole.net/

PiHot optionally functions as a DHCP server, ensuring all your devices are protected automatically

over both IPv4 and IPv6

* https://crosstalksolutions.com/raspberry-pi-4-boot-with-usb
* https://www.youtube.com/watch?v=xtMFcVx3cHU by TechHut
* https://www.youtube.com/watch?v=roYduABVjo8 by CoreElectronics
  
### Get Raspberry Pi hardware

If you are having difficulty getting a Raspberry Pi:
   * Clones of Raspberry Pi
   * RPilocator.com notifies you when one comes into stock.
   * <a target="_blank" href="https://www.youtube.com/watch?v=cE21YjuaB6o">VIDEO</a>: https://www.crosstalksolutions.com/the-worlds-greatest-pi-hole-and-unbound-tutorial-2023/ has a 

Alternately, you can run Pi-hole within a <strong>Docker container</strong>.

YouTube Videos:

by Crosstalk Solutions:
   * <a target="_blank" href="https://www.youtube.com/watch?v=BpJCAafw2qE">VIDEO</a>: "Raspberry Pi 4 Getting Started</a> by Crosstalk Solutions
   * <a target="_blank" href="https://www.youtube.com/watch?v=cE21YjuaB6o">VIDEO</a>: "World's Greatest Pi-hole Tutorial - Easy Raspberry Pi Project!" 

* <a target="_blank" href="https://www.youtube.com/watch?v=oX4NqFisC5Y">VIDEO</a>: "How to Block Ads Using a Pi-Hole With A Raspberry Pi" by Micro Center
* <a target="_blank" href="https://www.youtube.com/watch?v=rPpTi3oZ6_4">VIDEO</a>: "The Ultimate Pi-Hole Installation Guide for 2025!" by Mackey Tech IT Solutions
* <a target="_blank" href="https://www.youtube.com/watch?v=I1fPdGJAWT0">VIDEO</a>: "Pi-hole Setup on Raspberry Pi Zero W | Step-by-Step Guide" by CyberMaxLab 
* <a target="_blank" href="https://www.youtube.com/watch?v=VfOz8RWgnz4">VIDEO</a>: "How to install Pi-hole and PiVPN on a Raspberry Pi | Must Have for Home Lab" by Barmine Tech
* <a target="_blank" href="https://www.youtube.com/watch?v=5jPNWzNCLDw">VIDEO</a>: "How to Install Pi-Hole on Raspberry Pi" by Vincent Humble
* <a target="_blank" href="https://www.youtube.com/shorts/iXg2p5ody5c">VIDEO</a>: 
* <a target="_blank" href="https://www.youtube.com/watch?v=e_EfmKdP2ng">VIDEO</a>: "Pi-hole Made EASY - A Complete Tutorial" by Tech Craft

### Install PiHole on macOS

https://docs.pi-hole.net/main/basic-install/

<pre><strong>curl -sSL https://install.pi-hole.net | bash</strong></pre>

<a name="GetPi"></a>

1.  See my articles:
    * <a target="_blank" href="https://wilsonmar.github.io/iot-raspberry-hardware/">my "iot-raspberry-hardware" article</a>.
    * <a target="_blank" href="https://wilsonmar.github.io/iot-raspberry-install/">my "iot-raspberry-install" article</a>.

    <a target="_blank" href="https://www.youtube.com/watch?v=cE21YjuaB6o&t=4m26s">imager</a>

1.  Navigate to a folder where you want the new repo downloaded.

2.  Deploy the software directly to a supported operating system via our automated installer:

    <pre>git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
    cd "Pi-hole/automated install/"
    sudo bash basic-install.sh
    </pre>

3.  Type your laptop's OS password requested by the sudo command. The Pi logo should appear.

    <pre>  [✓] Root user check

        .;;,.
        .ccccc:,.
         :cccclll:.      ..,,
          :ccccclll.   ;ooodc
           'ccll:;ll .oooodc
             .;cll.;;looo:.
                 .. ','.
                .',,,,,,'.
              .',,,,,,,,,,.
            .',,,,,,,,,,,,....
          ....''',,,,,,,'.......
        .........  ....  .........
        ..........      ..........
        ..........      ..........
        .........  ....  .........
          ........,,,,,,,'......
            ....',,,,,,,,,,,,.
               .',,,,,,,,,'.
                .',,,,,,'.
                  ..'''.
    </pre>

    If you see this, verify you have a <a href="#GetPi">working connection to the Pi</a>.

    <pre>[i] SELinux not detected
    [✗] No supported package manager found
    </pre>

1.  Block ads everywhere, even on the go. By pairing your Pi-hole with a VPN, you can have ad blocking on your cellular devices, helping with limited bandwidth data plans.

    https://docs.pi-hole.net/guides/vpn/overview


    ### Set Pi-hole Admin Password

    ### Log into the Pi-hole

    ### Pi-hole Dashboard and Menus

    ### Add Pi-hole Block Lists

1.  Configure your router’s DHCP options to force clients to use Pi-hole as their DNS server, or manually configure each device​ to use the Pi-hole as their DNS server.

    https://docs.pi-hole.net/main/post-install

    ### More Pi-hole Menu Settings

    ### Pi-hole Settings

1.  Set a static IP address within your subnet for the PiHole. 8:58
  
    <pre>sudo nano -w /etc/dhcpcd.conf
    </pre>

    Un-comment under <tt># Example static IP configuration</tt> and specify your subnet:

    <pre>interface eth0
    static ip_address=192.168.200.52/24
    static routers=192.168.200.1
    static domain_name_servers=192.168.200.1 1.1.1.1
    </pre>

    <pre>sudo reboot</pre>

1.  On the new IP address:

    ### Configure DNS server

    Some internet service providers (ISPs) return ads instead of 404.
    
    TODO: Don't have to use Unbound.

    The list of supported DNS servers and their primary and secondary IP addresses (V4 and V6) are  defined in the .sh script:
    ```
        DNS_SERVERS=$(
        cat <<EOM
    Google (ECS, DNSSEC);8.8.8.8;8.8.4.4;2001:4860:4860:0:0:0:0:8888;2001:4860:4860:0:0:0:0:8844
    OpenDNS (ECS, DNSSEC);208.67.222.222;208.67.220.220;2620:119:35::35;2620:119:53::53
    Level3;4.2.2.1;4.2.2.2;;
    Comodo;8.26.56.26;8.20.247.20;;
    Quad9 (filtered, DNSSEC);9.9.9.9;149.112.112.112;2620:fe::fe;2620:fe::9
    Quad9 (unfiltered, no DNSSEC);9.9.9.10;149.112.112.10;2620:fe::10;2620:fe::fe:10
    Quad9 (filtered, ECS, DNSSEC);9.9.9.11;149.112.112.11;2620:fe::11;2620:fe::fe:11
    Cloudflare (DNSSEC);1.1.1.1;1.0.0.1;2606:4700:4700::1111;2606:4700:4700::1001
    EOM
    )
   ```
    
    1.1.1.3 & 1.0.0.3 blocks phising/malware/adult content filtering.

    8.8.8.8 from Google was rated as the quickest, probably because it doesn't block as comprehensively.

    ### Add blocklist from Firebog

1.  Into Pi-Hole's Adlist Group Management, add URLs of sites that Firebog knows to be suspicious, advertising, tracking & telemetry, malicious, etc.

1.  Click "Update Gravity".

    ### Temporarily Disable Pi-hole 23:45

1.  Create a shell file to call to obtain password cache:

    <pre>cat /etc/pihole/setupVars.conf | grep WEBPASSWORD
    </pre>

1.  Bookmark this URL on your browser or Stream Deck to temporarily disable Pi-Hole by authenticating with the hashed value of WEBPASSWORD.

    http://192.168.200.52/admin/api.php?disable=300&auth=PWHASH

    for 300 seconds

    ### Configure other devices to use Pi-hole as DNS

1.  In Settings, Interface settings, uncheck default "Allow only local requests".
2.  Check "Respond only on interface eth0".

3.  Instead of changing each device (laptop), set the DNS to the Pi-Hole DNS, set the DHCP: 
    DNS 1 and DNS 2.

    ### Audit log

4.  Click the "Audit Log" menu item.

    ### Backup

5.  In Tools, click "Backup".
6.  Copy the backed up file to a USB drive and/or cloud.
7.  If you're running 2 Pi-Holes, install the backup onto the 2nd Pi-Hole. Sync using:

    https://github.com/vmstan/gravity-sync

    ### Install Unbound DNS route proxy

8.  Install Unbound service to make DNS queries anonymously:

    <pre>sudo apt install unbound -y</pre>

8.  Download the text

    <pre>??? pi-hole.conf</pre>

8.  Edit wall of text:

    <pre>sudo nano -w /etc/unbound/unbound.conf.d/pi-hole.conf</pre>

9.  Start Unbound service:

    <pre>sudo service unbound start</pre>

9.  View Unbound service status (active?):

    <pre>sudo service unbound status</pre>

9.  Test DNS lookup:

    <pre>dig crosstalksolutions.com @127.0.0.1 -p 5335</pre>

9.  30:36 Setup firewall rules to ignore DNS queries to the DNS set on individual devices.

    ### Test Pi-hole Ad Blocking

9.  Test Ad-Blocking

<hr />

## Docker

<pre>curl -sSL https://get.docker.com | sh
</pre>

1.  Add user pi to docker group:
  
    <pre>sudo usermod -aG docker pi
    </pre>

1.  Setup portainer.io to manage Docker containers on default port 9000:

    <pre>sudo docker run --restart always -d -p 9000:9000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data portainer/portainer-ce:linux-arm
    </pre>

<hr />

## NAS drive on Raspberry Pi

https://www.youtube.com/watch?v=gyMpI8csWis

## Chron jobs

### Update the Pi-hole

Run a chron (crontab) job to Once a week or month to apply updates (if one becomes available):

1.  Edit in <tt>/etc/cron.d/pihole</tt>

    <pre>30 2 * * 1   root    /usr/bin/curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | /usr/bin/python3  >> /var/log/piholeupdate 2>&1
    &nbsp;
    30 2 * * 1   root    cd /usr/local/src/whitelist/scripts && git pull&& ./whitelist.sh >> /var/log/piholeupdate 2>&1
    </pre>

    ### Do regular speedtests

10. Every hour run:

     <a target="_blank" href="https://www.youtube.com/watch?v=J-rfC84xdOE">VIDEO</a>: <a target="_blank" href="https://openspeedtest.com/">openspeedtest.com</a> server run within a Docker image downloaded.

     <pre>sudo docker run --restart=unless-stopped \
     --name=openspeedtest -d -p 80:8080 openspeedtest/latest
     </pre>

     Change the port to something other than 8080 if your prefer.

11. Display

      https://github.com/Brandawg93/Pi-Hole-Monitoring

11. Run on browser at URL http://192.168.200.122
  
     Record to a file.

     Instead of a chip, get an SSD drive.

12. View analysis: Are evenings more overloaded?

<hr />

## More 

<a target="_blank" href="https://www.youtube.com/watch?v=0wpn3rXTe0g">VIDEO</a>: "Is adding 3 MILLION domains to your Pi-Hole Block List a good thing?" by Techno Tim

## References

https://docs.pi-hole.net/

https://www.reddit.com/r/pihole/

https://www.youtube.com/watch?v=jlHWnKVpygw


<hr />

## More on DevOps #

This is one of a series on DevOps:

{% include devops_links.html %}

## More on Security #

This is one of a series on Security:

{% include security_links.html %}
