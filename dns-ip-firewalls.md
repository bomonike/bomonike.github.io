---
layout: post
date: "2025-08-23"
lastchange: "v038 + bytebytego flowchart :dns-ip-firewalls.md"
url: "https://bomonike.github.io/dns-ip-firewalls"
file: "dns-ip-firewalls"
title: "DNS IP Firewalls"
excerpt: "Understand how DNS works, then filter out malware and annoying ads on your network by installing and configuring a PiHole Raspberry Pi server."
tags: [security, networking]
image:
# dns-ip-firewalls-2160x650.png
  feature: https://res.cloudinary.com/dcajqrroq/image/upload/v1755882552/dns-ip-firewalls-1080x329_d0bmb8.png
  credit: Wilson Mar
  creditlink: https://res.cloudinary.com/dcajqrroq/image/upload/v1755882552/dns-ip-firewalls-1080x329_d0bmb8.png
comments: true
created: "2023-02-04"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

This article presents a summary about how DNS and IP works, describes their vulnerabilities, and gives step-by-step instructions on how you can mitigate them.

<a name="flowchart"></a>

## Summary flowchart

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1755882552/dns-ip-firewalls-1080x329_d0bmb8.png"><img alt="dns-ip-firewalls-1080x329.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1755882552/dns-ip-firewalls-1080x329_d0bmb8.png" /></a>

(1) When on an <strong>internet browser</strong> app, we type a 
<strong>domain name</strong> such as <strong>mit.edu</strong> or google.com.

Behind the scenes, apps look up a kind of "phone number" the internet uses to find the web server's <strong>IP addresses</strong> for the domain name.

To take a deeper look, let's use a Linux CLI (Command Line Interface) <strong>Terminal</strong> to use the <a href="#nslookup">nslookup</a> or <a href="#dig">dig</a> command to a
<a href="#PublicDNS">public DNS service</a> to look up where the domain's
<strong>web servers</strong> were created with
assigned <strong>IP addresses</strong>.
Such associations are registered by the domain owners within the <strong>Domain Name System registrars</strong> (such as GoDaddy).

There are two forms of IP addresses registered:

* DNS was created in 1987 with "<strong>type A</strong>" records defining IPv4 addresses of 32-bits common to electronics at the time.
* In 1995, processsing of AAAA type <a href="#IPv6">IPv6</a> was added to handle binary addresses up to 128-bit (16 byte).

DNS records from DNS Registrars are <strong>propagated</strong> into
<strong>Authoritative Nameservers</strong> around the world to answer DNS queries.

Because almost every request through the interet involves DNS, DNS servers are arranged in a hierarchy to accomodate the load. 

New queries go through a <strong>Recursive DNS</strong> workflow through the hierarchy.
That begins by reaching one of 13 <strong>root DNS server farms</strong> to get the address of who handles the <strong>TLD (Top-level Domain)</strong> at the end of each domain name, such as ".com", ".edu", etc.
Each TLD DNS server has an index to Authoritative names for its TLD.

Requests for retrieving website content through your local <strong>router</strong> and
the <strong>public internet</strong> (Data Link layer) using
<strong>IPv4 address</strong> are routed using the <a target="_blank" href="https://en.wikipedia.org/wiki/Address_Resolution_Protocol">ARP (Address Resolution Protocol)</a>.
<strong>IPv6</strong> requests are routed using the <a target="_blank" href="https://en.wikipedia.org/wiki/Neighbor_Discovery_Protocol">NDP (Neighbor Discovery Protocol)</a>.

&nbsp; &nbsp; &nbsp; Because most enterprises use just a couple of DNS servers, they can be vulerable to <strong>volumetric attacks</strong> where large amounts of malicious traffic can prevent users from finding the website. 

Most consumers are asked to configure their machine's <strong>default local DNS reslover</strong> to 
use the public DNS server provided or controlled by their Internet Service Provider (ISP) (such as ATT, TMobile, Verizon, etc.).
That enables them to make money from <strong>selling logs</strong> of your traffic details for profit.

So I configure my System Settings to use the DNS server at <strong>9.9.9.9</strong>. 
That's <a href="#Quad9">Quad9</a>, created and run by the UK's Scotland Yard, who
put <strong>malicious</strong> websites they know about on their own 
<strong>blocklists</strong> of sites they don't serve to their users. So by configuring Quad9 as your local DNS, you get some protection from a few criminal websites.
But many want to block the millions of malicious or serve annoying ads listed in <strong>public blocklists</strong> collected by others.
You can also maintain your own <strong>private blocklist</strong> for parental control.

&nbsp; &nbsp; &nbsp; Here is how you do that.

An add-in such as <a target="_blank" href="https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/">ublock</a> (by Raymond Hill) can be installed on Firefox browsers to block ads based on its own private blocklist. But each browser and app has its own add-in.
But we need protection on all apps. looking up all <strong>host name</strong> lookups.

We need to get away from the typical <strong>default configuration</strong> of a <strong>local DNS server</strong> using sketchy public DNS services.

To enable your machine to filter based on blocklists, your router and System Settings needs to be changed from depending on the local <strong>DHCP</strong> service to specify  
the <a href="#StaticIP"><strong>static</strong> IP address</a> to the local redundant
<strong>PiHole hardware</strong> you build and install on your network to <strong>filter</strong> traffic. We created an <a href="#AutoInstall">install automation script</a> to make that as easy as possible.

Blacklists need <strong>update</strong> over time. 
That can be automatically done using the <strong>"gravity"</strong> utility.
You can also override specific domains by editing your <strong>custom allowlist</strong>.

Instead of using sketchy public DNS services to do the TLD and Authorative lookups,
unfiltered traffic is passed to a <strong>local Recursive DNS service called "unbound"</strong>.

This customization enables you to use <strong>DNSSEC</strong> protocols to encrypt traffic to make them more difficult to hack. By default, DNS traffic is unencryped. So anyone near you can intercept your DNS traffic and <a href="#DNSPoisoning">poison it</a> to send you to a malicious website instead.

The unbound service needs to be invoked automatically upon <strong>reboot</strong>, and be controlled by a
<strong>automation CLI script</strong> that installs Python and other services such as <strong>DoH</strong> (DNS over HTTPS) protocol for better privacy by encrypting communications.

To use your custom private blocklists <strong>while traveling</strong>, install a
<strong>self-hosted VPN</strong>.

Click links in the text above for more geeky details below.

<hr />

<a name="DNSPoisoning"></a>

## DNS Poisoning

DNS service tables can be <strong>poisoned</strong> to route users to malicious IP addresses. [<a target="_blank" href="https://www.youtube.com/watch?v=7MT1F0O3_Yw">VIDEO</a>]



## DNS Resolution

To reiterate how the DNS resolution is done: From <a target="_blank" href="https://www.youtube.com/watch?v=27r4Bzuj5NQ">VIDEO by ByteByteGo</a>:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1754115271/dns-bytebytego-1576x601_maiilw.png"><img alt="dns-bytebytego-1576x601.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1754115271/dns-bytebytego-1576x601_maiilw.png" /></a>

(2) The local DNS server has a cache of previous queries which it can use to respond right away. 

DNS servers matched requests and replies using a 16-bit transaction ID (only 65,536 options) and often a predictable source port. That made it possible to guess how the server would match replies.

<hr />

## Configure DNS 

### Configure on Linux

One no longer directly edit <tt>/etc/resolv.conf</tt>

On Ubuntu, within <tt>/etc/network/interfaces</tt>

   <pre>dns-namservers 192.168.1.1. 8.8.8.8
dns-search example.com
   </pre>

Reload network using <tt>/etc/init.d/networking reload</tt>

1. On Red Hat, write to interface:

   <tt>/etc/sysconfig/network-scripts/ifcfg-eth0</tt>

   DNS1=8.8.8.8<br />
   DNS2=192.168.1.1

1 To activate:

   <pre><strong>service network restart</strong></pre>

   <pre><strong>system ctl restart NetworkManager</strong></pre>

   Response "NXDOMAIN" means that the domain name was not found.


### Configure DNS using macOS GUI

<a target="_blank" href="https://www.youtube.com/embed/NM4AdfEnAmY">VIDEO</a>:

1. Press and hold option + shift + command for System Settings.
1. Overtype "Search" at the top left and type DNS. Click "DNS servers".
1. Click the "+" under "DNS Servers".
1. Type 9.9.9.9
1. Add another: 149.112.112.112
1. OK. Apply.
1. command+Q to dismiss the dialog by clicking the red icon at the upper-left corner.
<br /><br />


<a name="Quad9"></a>

## Quad9

PROTIP: "9.9.9.9" and "149.112.112.112" are at <a target="_blank" href="https://isc.sans.edu/suspicious_domains.html">isc.sans.edu/suspicious_domains.html</a> operated by <a target="_blank" href="https://www.quad9.net/support/set-up-guides/mac-os/">Quad9</a> (a non-profit based in Switzerland). Quad9 aims to not resolve to known malicious domains found by UK Scotland Yard and other affiliated law enforcement agencies. Quad9 maintains and enforces a <strong>blocklist</strong> (blacklist) of known malicious websites.

Quad9 also does not <strong>track and sell</strong> your (their users') DNS resolution history.

<a name="DNSTracking"></a>

## DNS Tracking for profit

Tracking is why DNS addresses recommended by ISPs (Internet Service Providers) such as AT&T, Verizon, T-Mobile, etc. are <strong>slower</strong>. <a target="_blank" href="https://www.youtube.com/watch?v=WyVbEsmAV84">VIDEO</a>: Lawrence Systems uses Steve Gibson's DNS Benchmark to show that Google and Quad9 DNS has similar speed.

<a target="_blank" href="https://youtu.be/imlFubYv8YY&t=4m55s">A script to test several DNS</a> showed:
   * 9.9.9.9 # from Quad9 filtered 96% of known malicious IP addresses
   * 1.1.1.2 # Cloudflare Malware filtered 57%
   * 103.247.36.36 # DNSFilter.com (paid service) filtered 16%
   * 208.67.222.222 # OpenDNS (paid service bought by Cisco Umbrella) filtered 9%

   * 8.8.8.8 # from Google does not filter
   * 1.1.1.1 # from Cloudflare does not filter
   <br /><br />

## ICMP ping

REMEMBER: The ping command makes use of the ICMP protocol which reaches the website via ARP/NDP.

1. To identify the IP address of a domain name such as google.com:

   <pre><strong>ping google.com</strong></pre>

   WARNING: Many organizations disable ping responses through ICMP protocol because a flood of ping commands can be a vector for denial of service attacks. Ping doesn't have authentication, so can be used for network reconissance by malicious actors.

   A sample response returned:

   <pre>PING google.com (216.58.193.206): 56 data bytes
64 bytes from 142.250.217.110: icmp_seq=15 ttl=119 time=45.650 ms
^C
--- google.com ping statistics ---
16 packets transmitted, 16 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 45.650/68.117/85.318/12.225 ms
   </pre>



<a name="localDNS"></a>

## Local DNS Resolver

1.  Use Terminal to show IP addresses used for DNS on your macOS machine:

    <pre><strong>networksetup -getdnsservers Wi-Fi</strong></pre>
    <pre><strong>networksetup -getdnsservers Ethernet</strong></pre>
    ```
    9.9.9.9
    149.112.112.112
    ```
    PROTIP: Usually, DNS is configured with two or more addresses for redundancy.

    Alternately, for more geeky details:
    <pre><strong>scutil --dns</strong></pre>
    Example response:
    ```
    ...
    DNS configuration (for scoped queries)

    resolver #1
    nameserver[0] : 9.9.9.9
    nameserver[1] : 149.112.112.112
    if_index : 14 (en0)
    flags    : Scoped, Request A records
    reach    : 0x00000002 (Reachable)
    ```
    Alternately, on Linux machines, look at the configuration file:
    <pre><strong>cat /etc/resolv.conf</strong></pre>
    On Linux systems with systemd (newer distributions of Ubuntu, Fedora, or CentOS):
    <pre><strong>resolvectl status</strong></pre>


<a name="nslookup"></a>

## dig & nslookup

Reference: https://www.nslookup.io/dns-course/#pricing

1.  To lookup IPv4 addresses on Linux and macOS:
   
    <pre><strong>nslookup netflix.com</strong></pre>

    The first lines of the response lists the DNS service used.
    ```
    Server:		9.9.9.9
    Address:	9.9.9.9#53
 
    Non-authoritative answer:
    Name:	netflix.com
    Address: 44.242.60.85
    Name:	netflix.com
    Address: 44.234.232.238
    Name:	netflix.com
    Address: 44.237.234.25
    ```
    Multiple DNS records is typical for redundancy.

    ### Insecure by design

    <tt>#53</tt> refers to the default use of port 53 designated for DNS use.
    That was back in 1987 when the internet was not as a hostile place.
    Now, nations purposely <strong>flood DNS servers</strong> to bring down a whole country.

    NOTE: When the original specifications for DNS was defined in 1987 (as <a target="_blank" href="https://datatracker.ietf.org/doc/html/rfc1034">RFC 1034</a> and <a target="_blank" href="https://datatracker.ietf.org/doc/html/rfc1035">1035</a>), <strong>32-bit addresses</strong> were popular for electronics available at the time.

    Being <strong>unencrypted</strong> means that anyone close by can read all websites you visit. This is not just a privacy problem because that enables DNS to be hijacked to send you to a malicioius website instead.

    https://www.nslookup.io/learning/dns-record-types/aaaa/
    shows a trace which leaks privacy.

    <a name="DoT"></a>

    ### DoT (DNS over TLS)

    Port <tt>#853</tt> would appear when "DNS over TLS" (DoT) is used. The technique was defined in <a target="_blank" href="https://tools.ietf.org/html/rfc7858">2016 as RFC 7858</a> but not widely adopted because most corporate firewalls block ports they don't normally use. And it takes work to add it to allowlists.
    
    If the secure option (DoT) is less likely to be available than its insecure option, then users and applications might be tempted to try to fall back to unencrypted DNS. This subsequently could allow attackers to force users to an insecure version.

    With DNS over TLS (DoT), the original DNS message is directly embedded into the secure TLS channel. From the outside, one can neither learn the name that was being queried nor modify it. The intended client application will be able to decrypt TLS, it looks like this:

    ### DoH (DNS over HTTPS)

    In 2018, <a target="_blank" href="https://tools.ietf.org/html/rfc8484">RFC 8484</a> defined the DoH (DNS queries over HTTPS) protocol going through<br />
    TCP port <tt>443</tt> like other HTTPS and API traffic, which encrypt traffic using cryptographic certificates so that no other party can impersonate the server (the resolver). 
    
    Since web browsers have already deprecated non-secure HTTP in favor of HTTPS, DoH is a great choice for securely transporting DNS messages.

References:
   * https://blog.cloudflare.com/dns-encryption-explained/
   * <a target="_blank" href="https://www.youtube.com/watch?v=0wpn3rXTe0g">VIDEO</a>: "Is adding 3 MILLION domains to your Pi-Hole Block List a good thing?" by Techno Tim


<a name="IPv6"></a>

1. To lookup IPv6 addresses: 
   
   <pre><strong>nslookup -type=AAAA mit.edu</strong></pre>

   "AAAA" type refers to the DNS Zone record type introduced in 1995 by <a target="_blank" href="https://datatracker.ietf.org/doc/html/rfc1886">RFC 1886</a> when IPv6 was created for 128-bit (16 byte) binary addresses (as <a target="_blank" href="https://datatracker.ietf.org/doc/html/rfc1886">RFC 3596</a>). RFC 3596 is the current specification for AAAA records containing a colon separating up to eight groups of four hexadecimal digits:
   ```
   mit.edu	has AAAA address 2600:1409:9800:1a83::255e
   mit.edu	has AAAA address 2600:1409:9800:1a8b::255e
   ```
   Any number of consecutive groups of zeros are replaced with two colons.
   
1. On Windows OS, The PowerShell equivalent on Windows provides more output and options: <a target="_blank" href="https://www.pdq.com/blog/what-is-the-powershell-equivalent-of-nslookup/">DOCS</a>

   <pre><strong>Resolve-DnsName mit.edu</strong></pre>

   <a name="dig"></a>

1. The dig command can be installed on many operating systems.

   <pre><strong>dig mit.edu</strong></pre>

   It provides the most detailed information:
   ```
    ; <<>> DiG 9.10.6 <<>> mit.edu
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 6892
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 512
    ;; QUESTION SECTION:
    ;mit.edu.			IN	A

    ;; ANSWER SECTION:
    mit.edu.		20	IN	A	92.122.13.240

    ;; Query time: 75 msec
    ;; SERVER: 9.9.9.9#53(9.9.9.9)
    ;; WHEN: Thu Aug 21 14:47:12 MDT 2025
    ;; MSG SIZE  rcvd: 52
    ```

   Note that IPv6 addresses are not in the DNSSBL spam exclusion list.

### ECS (Extended Client Subnet) 

ECS defines a mechanism for recursive solvers to send partial client IP address information to authoritative DNS name servers. ECS may result in reduced privacy when it is used by CDNs (Content Delivery Networks) and latency-sensitive services to give geo-located responses when responding to name lookups coming through public DNS resolvers. However, SNI headers also send such information.

### HTTP/3 over QUIC

Google designed QUIC with IETF in 2012 too speed YouTube, particularly on cellular networks.
Google calls <a target="_blank" href="https://blog.cloudflare.com/the-road-to-quic/">QUIC</a> (Quick UDP Internet Connections) but IETF just uses the letters.

It's already enabled on Chrome, Firefox. Open UDP port 443 in your firewall and create TLS SSL certs. Nginx servers need to add ALT-SVC header for HTTP/3 advertisement.

UDIC combines the speed of UDP with the reliability and security features typically associated with TCP, along with the encryption capabilities of TLS (Transport Layer Security).

China blocks it because QUIC traffic cannot be inspected.

<a target="_blank" href="https://blog.cloudflare.com/http3-the-past-present-and-future/">HTTP/3</a> is built on top of QUIC, 
 is faster by enabling multiple DNS queries to be sent simultaneously over a secure channel without blocking each other when one packet is lost.

For more details: https://www.zscaler.com/blogs/product-insights/quic-secure-communication-protocol-shaping-future-of-internet

DNS over QUIC (DNS/QUIC) is similar to DoT, but without the "head-of-line blocking" problem due to the use of QUIC. Both HTTP/3 and DNS/QUIC, however, require a UDP port to be accessible. In theory, both could fall back to DoH over HTTP/2 and DoT respectively.


## DNSBL email

   Resources:
   * https://brandergroup.net/spamhaus-dbl-domain-blocklist/?
   * https://www.dnsbl.info/dnsbl-list.php
   * https://www.dnsbl.info

   * https://brandergroup.net/what-is-spamhaus-blocklist-sbl-blacklisted-ipv4/
   
https://check.spamhaus.org
The Spamhaus Project is a non-profit organization dedicated to making the internet a better place for everyone. https://check.spamhaus.org/faqs/general-definitions/#what-is-a-blocklist

Poliicy Blocklist (PBL) is maintained by Spamhaus free of charge to the email community.
https://brandergroup.net/whats-spamhaus-policy-blocklist-pbl/

Spamhaus offers premium services like Domain Blocklist Plus (DBL+) of detailed threat intelligence and zero-hour data feeds to keep organizations ahead of emerging threats.
 free for low-volume, non-commercial users
  Data Query Service.

Access these IP blocklists through ZEN combines the above datasets for easier and faster querying. See https://brandergroup.net/what-is-spamhaus-zen/

DNS SBL list are for IPv4 only.

BIW "NXDOMAIN" is the response if there is no entry for the sender's IP in the blocklist. 
This means that the sender's IP is not flagged as a source of spam. Mail should be sent normally.

If your domain is on the Domain Blocklist, please visit our IP and Domain Reputation Checker at https://check.spamhaus.org. This is the platform for DBL removal requests.

<a name="PublicDNS"></a>

## Public DNS service
Each DNS recursive resolver operator has a "root hints file" of IP addresses to <a target="_blank" href="https://www.iana.org/domains/root/servers">DNS root servers</a> used to bootstrap the DNS resolution process.


DNS servers refer to 3 types of records to answer 3 types of queries:

* <strong>A</strong> (host Address) records are used to answer <strong>forward lookup</strong> 
	of an FQDN (host name) to a specific IP address.
	
	On Windows, the host name to IP address mappings for a zone are stored in the <strong>Domain.dns</strong> file
	in the <a href="1envvars.htm">&#37;systemroot&#37;</a>\System32\Dns folder.
 
<a name="DNSPTR"></a>
* <strong>PTR</strong> (<span style="text-decoration:underline">P</span>oin<span style="text-decoration:underline">t</span>e<span style="text-decoration:underline">r</span> resource) records are used to 
	answer a <strong>reverse lookup</strong> of an IP address to a host name
	(another DNS domain name location).
	IP address to host name mappings are in the <tt><strong>z.y.w.x.in-addr.arpa</strong></tt> file.
	Create file <strong>1.0.0.127.in-addr.arpa</strong> zone file for reverse lookup.
 
* <strong>SRV</strong> (<span style="text-decoration:underline">S</span>e<span style="text-decoration:underline">rv</span>er location) records are used to <strong>locate domain controllers</strong>.
	SRV specifies the server to which a DNS name server <strong>forwards</strong> 
	when it cannot resolve a query.

	Windows servers <strong>require DNS</strong> to locate domain controllers.
	On Windows, DNS is installed as a Windows component on a 
	domain controller with a static (not dynamic) IP address.
 
Other types of resource records:

* <strong>NS</strong> records notate which DNS servers are designated 
		as authoritative for the zone.
 
* <strong>SOA</strong> (Start Of Authority) records indicate the <strong>name of origin</strong> and other basic properties for each zone,
		including the name of the primary server for the source for information about the zone,
 
* <strong>CNAME</strong> (Cononical name) records define <strong>aliases</strong>.
 
* <strong>MX</strong> (<span style="text-decoration:underline">M</span>ail e<span style="text-decoration:underline">x</span>changer) records define the <strong>preference number</strong>.


### Windows DNS

Use the <strong>Windows Network Monitor</strong> to monitor and capture 
packets sent to and from DNS servers.
 
DNS server administration can be done by a script using this utility from the Windows Server product CD:

<tt>DNSCMD.EXE</tt>
 
Servers send an A (resource) record to DNS when it first boots up.
To force a member server to register itself to DNS:

   <tt><strong>ipconfig /registerdns </strong></tt>
 
### DNS Event Log

In the <strong>Event Log</strong>, the DNS log file shows DNS request activities.
But it doesn't show specific zone property changes
or information about existing zone transfers.
 
Caching-only DNS servers work from data cached while resolving queries 
using server in <strong>Root Hints</strong> stored in the <strong>Cache.dns</strong> file rather than from DNS zone transfers.


<hr />

## Options for Firewall Blocking

Large businesses install firewalls in their corporate networks such as from Palo Alto or Cisco.

Homes and small businesses use "consumer-grade" firewalls from brands such as Linksys, Netgear, or Draytek.

Blocking ads makes for quicker browsing.

* <a target="_blank" href="https://www.youtube.com/watch?v=Eyc3LVrhmIo">VIDEO</a>: Unifi Ad Blocker.

* <a target="_blank" href="https://www.youtube.com/watch?v=dTUvlFfThPw">VIDEO</a>: OPNSense

* <a target="_blank" href="https://www.youtube.com/watch?v=AgJGuyDyP_M">VIDEO</a>: UniFi Dream Machine Pro (UDM-Pro) by Crosstalk Solutions

* Firewalla is a consumer-grade firewall that is also a router. It comes assembled with software installed. Firewalla has a Purple and Gold editions. The Gold edition adds Intrusion Detection.

* Technitium DNS Server

* AdGuard uniquely can be scheduled for a specific block of time each day with parental blocking. AdGuard can use DNSSEC (DNS over HTTPS). AdGuard can also be configured with wildcard specification. AdGuard can enable encryption using a certificate pulled from a CA every 3 months. <a target="_blank" href="https://www.youtube.com/watch?v=c3XMAz--_Us">VIDEO</a> But assumes less advanced configurations than PiHole.

   Which is better? PiHole vs AdGuard Home?
   * https://www.youtube.com/watch?v=c3XMAz--_Us by Hardwood
   * https://www.youtube.com/watch?v=nV5dKpGMGx4 by Tobi Teaches
   * https://www.youtube.com/watch?v=O15RD_gPz-s by Barmine
   <br /><br />

* Set up UFW (Uncomplicated Firewall) to control incoming and outgoing network traffic:

   ```
   sudo apt install ufw
   sudo ufw default deny incoming
   sudo ufw default allow outgoing
   sudo ufw allow ssh
   sudo ufw enable
   ```

* If you have the time and geeky inclinations, the least-cost and most customizable option is to buy a Raspberry Pi SBC and install and configure utility software Pi-Hole.


<a name="AutoInstall"></a>

## PiHole AutoInstall




<a name="StaticIP"></a>

## Static IP on router

To make this work, you first need to get into your internet router to set a 
static (fixed) IP address instead of using one dynamically assigned by DHCP.

I gave a fixed private IP on my network to redirect all DNS queries.

<hr />

<a name="AdGuard"></a>

## AdGuard on Raspberry Pi

   * <a target="_blank" href="https://www.youtube.com/watch?v=hmjKCNtbulM">Install AdGuard Home - Cross Platform PiHole Alternative - on Raspberry Pi 4</a>


with OpenWRT

Firebog List Generator

Portainers

<hr />

<a name="PiHole"></a>

## PiHole on Raspberry Pi

The Pi-hole® impliments a "DNS sinkhole" to protectsdevices on a subnet from unwanted content, without installing any client-side software.
over both IPv4 and IPv6

   * https://pi-hole.net/
   * https://www.reddit.com/r/pihole/

   * https://www.wikiwand.com/en/Pi-hole
   * https://en.wikipedia.org/wiki/DNS_Sinkhole
   * https://docs.pi-hole.net/ 

References about Pi-Hole:

by Crosstalk Solutions:
   * <a target="_blank" href="https://www.youtube.com/watch?v=BpJCAafw2qE">VIDEO</a>: "Raspberry Pi 4 Getting Started</a> by Crosstalk Solutions
   * <a target="_blank" href="https://www.youtube.com/watch?v=cE21YjuaB6o">VIDEO</a>: "World's Greatest Pi-hole Tutorial - Easy Raspberry Pi Project!" 
   * https://crosstalksolutions.com/raspberry-pi-4-boot-with-usb

Other References:
   * https://www.youtube.com/watch?v=xtMFcVx3cHU by TechHut
   * https://www.youtube.com/watch?v=roYduABVjo8 by CoreElectronics
   * <a target="_blank" href="https://www.youtube.com/watch?v=oX4NqFisC5Y">VIDEO</a>: "How to Block Ads Using a Pi-Hole With A Raspberry Pi" by Micro Center
   * <a target="_blank" href="https://www.youtube.com/watch?v=rPpTi3oZ6_4">VIDEO</a>: "The Ultimate Pi-Hole Installation Guide for 2025!" (Ubuntu) by Mackey Tech IT Solutions
   * <a target="_blank" href="https://www.youtube.com/watch?v=I1fPdGJAWT0">VIDEO</a>: "Pi-hole Setup on Raspberry Pi Zero W | Step-by-Step Guide" by CyberMaxLab 
   * <a target="_blank" href="https://www.youtube.com/watch?v=VfOz8RWgnz4">VIDEO</a>: "How to install Pi-hole and PiVPN on a Raspberry Pi | Must Have for Home Lab" by Barmine Tech
   * <a target="_blank" href="https://www.youtube.com/watch?v=5jPNWzNCLDw">VIDEO</a>: "How to Install Pi-Hole on Raspberry Pi" by Vincent Humble
   * <a target="_blank" href="https://www.youtube.com/shorts/iXg2p5ody5c">VIDEO</a>: 
   * <a target="_blank" href="https://www.youtube.com/watch?v=e_EfmKdP2ng">VIDEO</a>: "Pi-hole Made EASY - A Complete Tutorial" by Tech Craft
   * https://www.youtube.com/watch?v=jlHWnKVpygw
   * https://www.youtube.com/watch?v=FnFtWsZ8IP0 "You're running PiHole wrong"
   * https://www.youtube.com/watch?v=rPpTi3oZ6_4


### Get Raspberry Pi hardware

If you are having difficulty getting a Raspberry Pi:
   * Clones of Raspberry Pi
   * RPilocator.com notifies you when one comes into stock.
   * <a target="_blank" href="https://www.youtube.com/watch?v=cE21YjuaB6o">VIDEO</a>: https://www.crosstalksolutions.com/the-worlds-greatest-pi-hole-and-unbound-tutorial-2023/ has a 

1. <a target="_blank" href="https://www.youtube.com/shorts/e1CtdqeT3o0">VIDEO</a>: Install Raspberry Pi Acrive Cooler. 


Alternately, you can run Pi-hole within a <strong>Docker container</strong>.


### Install PiHole on macOS

https://docs.pi-hole.net/main/basic-install/

<a name="GetPi"></a>

1.  See my articles:
    * <a target="_blank" href="https://wilsonmar.github.io/iot-raspberry-hardware/">my "iot-raspberry-hardware" article</a>.
    * <a target="_blank" href="https://wilsonmar.github.io/iot-raspberry-install/">my "iot-raspberry-install" article</a>.

    <a target="_blank" href="https://www.youtube.com/watch?v=cE21YjuaB6o&t=4m26s">imager</a>

1.  Navigate to a folder where you want the new repo downloaded.

2.  Deploy the software directly to a supported operating system via our automated installer:

    <pre><strong>curl -sSL https://install.pi-hole.net | bash</strong></pre>

    Alternately:

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

    ### Set Pi-hole Admin Password

    References:
    * https://raspberrytips.com/security-tips-raspberry-pi/
    * https://www.youtube.com/watch?v=46Yd0zoFPQc&t=3s Secure Your Raspberry Pi 5: Disable the Default User and Create a New Admin User
    * https://www.youtube.com/watch?v=kc-nY_VVBII&t=12s
    <br /><br />

1. List all users:

   <tt>cut -d: -f1 /etc/passwd</tt>

1. Hackers know about the default password for the default “pi” user which has

   Change the pi default user's password with one that's long and unique. 

1. Create a new username

   <tt>sudo adduser myuser</tt>

1. Grant your admin permissions via group memberships:

   <tt>sudo usermod -aG adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,render,netdev,spi,i2c,gpio,lpadmin myuser</tt>

1. Log into the Pi-hole using your new admin account.
1. Disable the default “pi” account.

   ### Use WPA2 (Wi-Fi Protected Access 2)

   This is not for WPA2-Enterprise.

   * https://kerneldriver.wordpress.com/2012/10/21/configuring-wpa2-using-wpa_supplicant-on-the-raspberry-pi/

   WPA2 uses the Advanced Encryption Standard (AES) and RADIUS EAP-TLS authentication rather than the less-secure WPA and WEP which no longer meets security requirements of various regulations (e.g., PCI DSS, HIPAA, etc.).

1. Confirm your Pi’s region. Have "Localisation Options" match your real geographical location, and reboot.

1. Edit the Wi-Fi Configuration File of your Pi’s Wi-Fi settings. In Terminal, type:

   <tt>sudo nano /etc/wpa_supplicant/wpa_supplicant.conf</tt>

1. This tells your Pi where to find its Wi-Fi control settings:
   ```
   ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
   ```
1. To let you change Wi-Fi settings using tools like raspi-config.
   ```
   update_config=1
   ```
1. Paste in this template and fill in your network info:

   ```
   country=US
   ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
   update_config=1

   network={
      ssid="YOUR_WIFI_NAME"
      psk="YOUR_WIFI_PASSWORD"
      proto=RSN
      key_mgmt=WPA-PSK
      pairwise=CCMP
      group=CCMP
      auth_alg=OPEN
   }
   ```
1. Replace YOUR_WIFI_NAME and YOUR_WIFI_PASSWORD with your actual network’s details.

   If you’re copy-pasting from a website, make sure you’re not using curly quotes. 

1. Clarify you want WPA2 specifically:
   ```
   proto=RSN
   pairwise/group=CCMP
   ```
1. Press Ctrl+X to save, then Y and Enter to confirm.
1. Reboot your Pi:

   <tt>sudo reboot</tt>

1. Verify Connection

   <tt>ifconfig</tt>

1. If your Pi 4/Pi 400 is acting up, know that Pi models need firmware-brcm80211 for reliable Wi-Fi chip firmware:

   <tt>sudo apt install firmware-brcm80211</tt>


   ### Secure SSH Access with 2FA

1. Turn off password login for SSH; use key-based authentication instead.
1. Only allow public-key authentication.

   <tt><strong>sudo apt-get install libpam-google-authenticator
   google-authenticator</strong></tt>

1. On your phone, open your (Authy) authenticator app. Click the "+". Scan the QR code.
1. Save the backup code in your Password manager on another computer.

1. Answer the questions to set rate limiting, etc.

1. Back on the Raspberry Pi: edit the PAM configuration for SSH:
   ```
   sudo nano /etc/pam.d/sshd
   ```
1. Add this line at the top:
   ```
   auth required pam_google_authenticator.so
   ```

1. Edit the SSH config:
   
   <tt>sudo nano /etc/ssh/sshd_config</tt>

1. Ensure these lines are set:
   ```
   ChallengeResponseAuthentication yes
   UsePAM yes
   ```
1. Restart SSH to Reload the service:

   <tt>sudo systemctl restart ssh</tt>

1. Test Your Setup. Try logging in via SSH. After your password, get the verification code from your authenticator app and type it in.

   ### Limit Services and Ports

1. Disable services you don’t need (like VNC, Samba, Bluetooth, Wi-Fi).

   <tt>sudo systemctl disable <em>servicename</em></tt>

1. Scan for open ports

   <tt>nmap</tt>

1. Close unused ports.

1. Auto-ban IP addresses of those who fail login attempts too many times in a row:

   <tt>sudo apt install fail2ban</tt>

   ### LUKS/Veracrypt

   LUKS (Linux Univerified Key Setup)

   ### Intruder detection



<hr />

## Pi-hole Dashboard and Menus

### Pi-hole Menu Settings

### Add Pi-hole Block Lists

1.  Configure your router’s DHCP options to force clients to use Pi-hole as their DNS server, or manually configure each device​ to use the Pi-hole as their DNS server.

    https://docs.pi-hole.net/main/post-install

    ### Static DNS

1.  Set a static IP address within your subnet for the PiHole.
  
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
    
    The list of supported DNS servers and their primary and secondary IP addresses (V4 and V6) are defined in the .sh script:
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


<a name="cron"></a>

## Cron jobs

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


<a name="VPN"></a>

## VPN

Block ads everywhere, even on the go. By pairing your Pi-hole with a VPN, you can have ad blocking on your cellular devices, helping with limited bandwidth data plans.

    https://docs.pi-hole.net/guides/vpn/overview


## Power

A UPS from Costco can ???

Measure your Pi's power consumption using a "Kill-A-Watt".
If it pulls 3.4 Watts runnning.

To go off-grid hook up your Pi with a 
   * solar panel
   * battery https://www.digikey.com/en/htmldatasheets/production/7140997/0/0/1/pis-1129
   * $99.99 PiJuice HAT to automatically shut-down and restart https://www.pishop.us/product/pijuice-hat-a-portable-power-platform-for-every-raspberry-pi/?srsltid=AfmBOopFytoFOKE3QUjmetiAaVxlZkMxbWxWCEmPJvkEcYaUpf7a3650

A 1820mAh battery comes attached to the PiJuice HAT,

https://www.youtube.com/watch?v=SRDBQTyQ8Ag
Build a Solar Powered Raspberry Pi 4 With PiJuice

https://core-electronics.com.au/guides/solar-powered-pi/

1. Install PiJuice utilities:

   <tt>sudo apt-get install pijuice-gui pijuice-base</tt>

https://blog.rfox.eu/en/Hardware/SolarPi_experiment_1_The_PiJuice_Fiasco.html

https://github.com/PiSupply/PiJuice/iss

https://blog.rfox.eu/en/Hardware/SolarPi_experiment_2_Finally_something_that_works.html



<hr />

## Firewalls on AWS

Use least-privilege principles: 

1. Define read and list permissions (required for console and management):
   * ec2:DescribeSubnets
   * ec2:DescribeVpcs

   * network-firewall:DescribeFirewall
   * network-firewall:ListFirewalls
   * network-firewall:ListRuleGroups
   * network-firewall:GetFirewallPolicy
   * network-firewall:GetRuleGroup

1. Define IAM Permissions for AWS Network Firewall Creation: Firewall and related resource creation permissions:
   * ec2:CreateVpcEndpoint (if you're creating firewall endpoints in your VPC)

   * network-firewall:CreateFirewall
   * network-firewall:CreateFirewallPolicy
   * network-firewall:CreateRuleGroup
   * network-firewall:CreateLoggingConfiguration
   * network-firewall:AssociateFirewallPolicy
   * network-firewall:UpdateFirewall
   * network-firewall:UpdateFirewallPolicy

1. Define separate accounts ability to delete firewalls:
   * network-firewall:DeleteFirewall
   * network-firewall:DeleteFirewallPolicy
   * network-firewall:DeleteRuleGroup

1. Create <strong>Rule Groups</strong> of traffic filtering rules to block or allow certain protocols or ports. Stateless rule groups have specific patterns. Stateful rule groups are for tracking traffic state.

2. Create a Firewall Policy to configure the firewall's traffic behavior. Bundle rule groups together by specifying which rule groups included, and set default actions (e.g., forward traffic to stateful engine or drop).

3. Create the Firewall by associating VPCs with firewall policies. Choose the availability zones and subnets for firewall endpoints. At least two subnets are needed in the VPC: one for firewall endpoints and one for resources.

   An AWS firewall can handle up to 100 Gbps per endpoint and scale by adding firewalls in multiple subnets.

4. Update VPC Route Tables to ensure traffic inspection. Update route tables to route traffic through the firewall endpoints. This routes inbound and outbound traffic through the firewall for filtering.


## Firewalls on Azure

See https://www.perplexity.ai/search/how-to-define-firewalls-on-azu-kXInYB5ZRy6.zxelglXdCg

1. Set IAM

1. Configure Firewall Policy and Rules to manage firewall rules centrally by defining application rules, network rules, and NAT rules in your firewall policy or directly on the firewall. Rules typically specify source/destination IPs or ranges, protocols, ports, and allow/deny actions.

   See https://learn.microsoft.com/en-us/azure/firewall/tutorial-firewall-deploy-portal

1. Set Up Routing Through Firewall by a route table and disable BGP route propagation.
   Add a route:
   * Destination: 0.0.0.0/0 (to route all outbound traffic).
   * Next hop type: Virtual appliance.
   * Next hop address: Private IP of the Azure Firewall.
   * Associate the route table to the target subnet(s) of your virtual network, such as a workload subnet, to enforce that traffic flows through the firewall.

1. Monitor traffic logs and alerts via Azure Monitor or logging configured for Azure Firewall. 

   Adjust firewall and routing rules as needed according to security requirements.


## Firewalls on GCP

Use the Terraform resource "google_compute_firewall" at 
https://github.com/r-teller/terraform-google-firewall-rules
to allow IAP ranges access to all VMs within 192.168.0.0/16 on all ports.",

<hr />

## References

YouTube videos about DNS:
   * <a target="_blank" href="https://www.youtube.com/watch?v=UVR9lhUGAyU">VIDEO from Fireship</a>:
   * <a target="_blank" href="https://www.youtube.com/watch?v=g6R9gRWIIK8">VIDEO by The Cloud Girl</a>: "What is * <a target="_blank" href="https://www.youtube.com/watch?v=nyH0nYhMW9M">VIDEO</a>: "DNS? How a DNS Server (Domain Name System) works DNS Explained"
   * <a target="_blank" href="https://www.youtube.com/watch?v=uOfonONtIuk">VIDEO from Computerphile</a>:
   * <a target="_blank" href="https://www.youtube.com/watch?v=FsGUi5pXpLk">VIDEO</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Azn7KF9dB8s&pp=0gcJCccJAYcqIYzv">VIDEO</a> "
   DNS Explained | Domain Name System | Cisco CCNA 200-301" by CertBros


<hr />

## More on DevOps #

This is one of a series on DevOps:

{% include devops_links.html %}

## More on Security #

This is one of a series on Security:

{% include security_links.html %}

