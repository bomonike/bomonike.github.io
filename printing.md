---
layout: post
date: "2024-10-22"
file: "printing"
title: "Printing"
excerpt: "How to get your stuff on paper from macOS and Linux"
tags: [apple, mac, setup]
image:
# printing-cmyk-1900x500.jpg/png
  feature: https://user-images.githubusercontent.com/300046/77226216-359e5480-6b3c-11ea-8d57-1ec4f64b3824.jpg
  credit: PrintPlace
  creditlink: https://www.printplace.com/blog/reasons-for-cmyk-printing/
comments: true
created: "2020-03-22"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

<a target="_blank" href="https://bomonike.github.io/printing"><img align="right" width="100" height="100" alt="printing.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/printing.png?raw=true" />
This tutorial describes how to print to paper.
This updates <a href="https://wilsonmar.github.io/printing">the previous page at https://wilsonmar.github.io/printing</a>


{% include whatever.html %}

## Better looking paper

As the world undergoes "Digital Transformation", less and less paper is the objective.

That means when paper is printed, it would be more and more dear.

Premium paper stock have a finer grain, which make the output richer looking.

PROTIP: Before spending the money, get the highet resolution version of an image.

To reduce file size, some applications (Microsoft Word, PowerPoint, etc.) reduce the "color profile" and/or pixel resolution of images when an image is pasted onto the app.
So archive the original file to have it at the highest resolution, in .png file type, in case you need it in the future.

## Emails to HPePrint.com

Many printers can receive print jobs by sending email to an address over the public internet.

Emailing means you don't have to install a driver specific to a printer via WiFi on the same network
or USB cabled connection.

This allows anyone to print to your printer by sending an email attached with a file to be printed (PDF, png, jpg, tiff, etc.).

An example for HP is 47aicco56ajanb@hpeprint.com.

So some configuration is necessary to connect to

<a target="_blank" href="https://www.youtube.com/watch?v=oHYOdYwasUA&t=3m4s">VIDEO</a>:
Epson printers also can have an email address.


## UPS & FedEx Stores

Have <a target="_blank" href="https://www.fedex.com/en-us/printing/posters/oversize-prints.html">canvases and posters printed on large format printers at a FedEx Kinkos retail center</a>. Click "START ORDER" for a form to drop a file onto.
Cost is $1.99 per square foot (as of this writing).


## Printer driver install

1. Write down the name and model of the printer you want to print to. Example: "HP OfficeJet 4650 series".
1. Click the Apple icon in the menu at the top-right corner, System Preferences, "Printers & Scanners".

   ![printing-apple-666x434](https://user-images.githubusercontent.com/300046/77226019-6b423e00-6b3a-11ea-8cc7-15d6b606a0f8.jpg)

1. Press the "+" at the lower-left corner of the dialog and select the printer, if it's listed.
1. Click the name of the printer you want to print to. Example: "HP OfficeJet 4650 series", then "Add".

   Alternately, if you don't see the printer, add it.
   PROTIP: Rather than allowing drivers to be intalled, HP and other printer manufacturers now have users to install entire applications on your laptop to serve up advertisements. Install on your <strong>iPhone or Android</strong> mobile app from:

   <a target="_blank" href="https://123.hp.com/us/en/">https://123.hp.com/us/en</a>

1. Plug a USB cable of 3 meters or less (9 ft 10 in) in length.<a target="_blank" href="https://support.hp.com/us-en/document/c03966737">*</a>

1. Within most GUI applications, hold command and press P (command-P) to "Print". A <a target="_blank" href="https://support.apple.com/guide/mac-help/print-mh35838/mac">pop-up dialog</a> should appear.

1. Click "Show Details" for <a target="_blank" href="https://support.apple.com/guide/mac-help/choose-advanced-print-settings-on-mac-mh26678/mac">
Advanced print settings</a>

1. PROTIP: To create a PDF file, click the arrow next to "PDF" at the lower-left corner, then select "Print to PDF".

When you click OK, a file containing Postscript code is sent to the Print Queue, which can take a few seconds.
The Print Queue is represented by a printer icon in the Apple Dock.
Double-click on the Printer Icon to manage the print queue.

## Linux CUPS Ghostscript

Most printer hardware today output to the <strong>Postscript</strong> standard rather than the older <strong>Postfix</strong> standard.

<strong>Ghostscript</strong> uses smart filters to recognize whether it is receiving Postscript or text, then translates inputs to the language of each specific printer.
printer driver integrated part of Ghostscript.

   app output -> Ghostscript -> queue -> printer

On Linux (CentOS) the CUPS (Common UNIX Printing System) scheduler daemon listens on IPP or print streams to be processed into GhostScript.

1. On macOS: <tt>brew install cups</tt><br />On Linux:<br /><tt>yum install cups</tt> installs like 48 dependencies.

1. Configure web interface from remote systems:

   <pre>vim /etc/cups/cupsd.conf</pre>

   <pre>MaxLogSize 0
DefaultEncryption Never
LogLevel warn
Listen localhost:631
Listen 192.168.56.106:631
Listen /var/run/cups/cups.sock
# Show shared printers on the local network:
Browsing On
BrowseLocalProtocols dnssd
DefaultAuthType Basic
WebInterface Yes
&LT;Location />
   Order allow,deny
   allow localhost
   allow 192.168.56.106/24
&LT;Location>
&LT;Location /admin>
   Order allow,deny
   allow localhost
   allow 192.168.56.106/24
&LT;Location>
   </pre>

   Alternately, configure printer access settings using CLI:

   <pre><strong>lpadmin -p <em>printer</em> -E -v <em>device</em> -m <em>name-of-ppd</em> </strong></pre>

   `-E` specifies an Encrypted connection to the printer (like HTTPS).

   This updates file <tt>/etc/cups/cupsd.conf</tt> which defines policies in XML format.

1. CUPS is started by default. But ...

   <pre>systemctl start cups</pre>

   http://localhost:631/admin

   "Web Interface is Disabled"

   In CLI: <tt>cupsctl WebInterface=yes</tt>

1. See if available

   <pre>netstat -tln</pre>

1. How's the CUPS (Common UNIX Printing System) scheduler daemon?

   On MacOS:

   <pre><strong>systemctl status cups</strong></pre>

   On Linux:

   <pre><strong>systemctl status cups
   service cups status</strong></pre>

1. Open the printer management GUI webapp Welcome page on <strong>port 631</strong>:

   <pre><strong>firefox http://localhost:631/admin</strong></pre>

   <a target="_blank" href="https://user-images.githubusercontent.com/300046/85604563-a1e29580-b60e-11ea-99ba-67a0129b1294.png"><img width="807" alt="Screen Shot 2020-06-24 at 11 02 03 AM" src="https://user-images.githubusercontent.com/300046/85604563-a1e29580-b60e-11ea-99ba-67a0129b1294.png">

   NOTE: The program was designed by Apple for OSX.

1. To list available printer models:

   <pre><strong>lpinfo -m</strong></pre>

1. To list available connection types:

   <pre><strong>lpinfo -v</strong></pre>

   Response:

   <pre>serial serial:/dev/ttys0?baud=115200
network lpd
network ipp
network smb
network https
network ipps
network http
network socket
direct epsonfax
direct parllel:/dev/lp0
   </pre>

1. Printer definition (PPD files) which define each printer can exist in several folders:

   <pre>find / -name "*ppd" 2>/dev/null</pre>

   Example output:

   <pre>/usr/bin/cupstestppd
/usr/sbin/pppd
/usr/local/Cellar/ghostscript/9.50/share/ghostscript/9.50/lib/cbjc600.ppd
/usr/local/Cellar/ghostscript/9.50/share/ghostscript/9.50/lib/ghostpdf.ppd
/usr/local/Cellar/ghostscript/9.50/share/ghostscript/9.50/lib/cbjc800.ppd
/System/Library/Printers/Libraries/ipp2ppd
/private/etc/cups/ppd
/private/etc/cups/ppd/NYC-SecurePrint-BW.ppd
/private/etc/cups/ppd/undefined.ppd
/private/etc/cups/ppd/NYC-SecurePrint-Color.ppd
/Users/wilson_mar/Library/Application Support/WebEx Folder/T33_64UMC_39.11.6.33/Meeting Center.app/Contents/PlugIns/pd.bundle/Contents/Resources/Webex_PDF_Printer.ppd
/Applications/Microsoft Word.app/Contents/Frameworks/MetEx.framework/Versions/A/Resources/encoding/adpdf6cs.ppd
   </pre>

1. List PPD printer definitions defined in a file which requires sudo to view:

   <tt>/etc/cups/printers.conf</tt>


   ## lpadmin

1. Define the default printer:

   <pre>lpadmin -d textprinter</pre>

1. To inactivate a queue:

   <pre><strong>cupsdisable</strong></pre>

1. To activate a queue:

   <pre><strong>cupsenable</strong></pre>


   ## lpr

1. See if a printer is ready:

   <pre>lpr -Ptextprinter </pre>

1. Send the hosts file as a print job to the default printer:

   <pre>lpr -Ptextprinter /etc/hosts</pre>

   <pre>lpr -P p1 /etc/cups</pre>

1. List print jobs:

   <pre>lpq -Pprintername</pre>

1. Remove last print job:

   <pre>lprm</pre>

1. Remove all my print jobs (stalled in the print queue):

   <pre>lprm --</pre>

1. See who accessed the printer:

   <tt>tail /var/log/cups/access_log</tt>

1. List errors:

   <tt>tail /var/log/cups/error_log</tt>


https://www.youtube.com/watch?v=oHYOdYwasUA&t=3m4s

## Resources

https://learning.oreilly.com/videos/comptia-linux/9780134426365/9780134426365-LPC2_01_02_00


## More on OSX

This is one of a series on Mac OSX:

{% include mac_links.html %}
