---
layout: post
date: "2026-06-13"
lastchange: "26-06-13 v003 new from wilsonmar @macos-php.md"
url: "https://bomonike.github.io/macos-php"
file: "php-on-apple-mac-osx"
title: "PHP On macOS"
excerpt: "What a Pretty Hypertext Preprocessor (PHP)!"
tags: [PHP, apple, mac, setup]
image:
# feature: pic PHP packages 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622126/0e6c5e1e-0585-11e6-9097-960e073a1e21.jpg
  credit: Orangewebmart.com
  creditlink: http://www.orangewebmart.com/wp-content/uploads/2013/06/PHP-Website-Development.jpg
comments: true
created: "2014-08-09"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}


## Community

1. The marketing landing page for the PHP language is:

   <a target="_blank" href="https://www.php.net">https://www.php.net</a>

   renowned voices in the PHP community, including Larry Garfield, Fabien Potencier, Nils Adermann, Elizabeth Barron,

1. Documentation

   <a target="_blank" href="https://www.php.net/manual/en/">https://www.php.net/manual/en/</a>



<a id="Version"></a>

## PHP Version and Location

If it's installed, the version of PHP is obtained from this Terminal command:

   <tt>php -v</tt>

If you get a response, see the <a href="#Install">Install section below</a>.y

A Pretty Hypertext Preprocessor (PHP) was included by Apple on OS X (before MacOS):

On Mojave, the response was:
<pre>
PHP 7.1.23 (cli) (built: Feb 22 2019 22:19:32) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.1.0, Copyright (c) 1998-2018 Zend Technologies
</pre>

   On Sierra, the response was:
<pre>
PHP 5.6.28 (cli) (built: Dec  6 2016 12:38:54) 
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
</pre>

   On Yosemite, the response was:
<pre>
PHP 5.5.14 (cli) (built: Sep  9 2014 19:09:25)
Copyright (c) 1997-2014 The PHP Group
Zend Engine v2.5.0, Copyright (c) 1998-2014 Zend Technologies
</pre>

For the <strong>location</strong> of the PHP being used by the command line:

   <tt><strong>which php</strong></tt>

On my Yosemite, the response is:

<pre>
/usr/bin/php
</pre>


<a id="Install"></a>

## Install PHP on macOS

1. Install using Homebrew:

   ```bash
   yes brew install php
   ```

1. Get version:
   ```bash
   php -v
   ```
   For example:
   <pre>
   PHP 8.5.7 (cli) (built: Jun  2 2026 20:59:56) (NTS)
   Copyright (c) The PHP Group
   Built by Homebrew
   Zend Engine v4.5.7, Copyright (c) Zend Technologies
      with Zend OPcache v8.5.7, Copyright (c), by Zend Technologies
   </pre>

1. The history of PHP releases are at:

   <a target="_blank" href="https://github.com/php/php-src/releases">https://github.com/php/php-src/releases</a>

1. Scroll down to the latest (largest) version for "OS X" and click "Download" of the macOS installer (.dmg), not a VM image from:

   https://www.apachefriends.org/download.html

   The most popular PHP development environment is XAMPP, an acronym of components:
   * Apache
   * MariaDB
   * PHP
   * Perl
   <br /><br />

   XAMPP is Windows-focused.

	WARNING: Don's use XAMPP to develop <a target="_blank" href="https://bonomike.github.io/nextcloud/">Nextcloud</a> which officially doesn't support Windows. You'll fight with PHP extensions (gd, mysqli, mbstring), mod_rewrite, and permissions.

   1. Click "Downloads" folder, then "Save" in the pop-up to store file such as "xampp-osx-8.2.4-0-installer.dmg".
   1. Click the downloads icon in your browser and click the file you just downloaded.
   1. Double-click the "installer.app" file
   1. Let the pop-up.
   1. Click the Apple icon at the upper-left corner to open System Settings app. 
   1. Click "Privacy & Security" in the menu.
   1. Scroll to the Security section. Next to the message that XAMPP was blocked, click "Open Anyway". Again.
   1. Click Open Anyway and enter your password.
   1. The Setup app should pop up. In the XAMPP Setup Wizard, click "Next" repeatedly.
   1. Quit the installer app.

   ### Start

1. Start <tt>manager-osx.app</tt> (Application Manager) in <tt>~/Applications/XAMPP</tt> From the CLI, 
   ```bash
   open -a manager-osx.app
   ```
1. Click "Open Application Folder" <tt>xampfiles</tt> in a new Finder window.
1. Click "Managed Servers", select "MySQL database" and click Start. Select "Apache Web Server" and click Start.
1. Click "Configure". Notice the port defaults to 3306.

1. Verify it works: Open a browser and go to: <a target="_blank" href="http://localhost:3306">http://localhost:3306</a>

   You should see the XAMPP dashboard.

1. Start using CLI command (requires password entry):
   ```bash
   sudo /Applications/XAMPP/xamppfiles/xampp start && sleep 2 && echo "================ STATUS ================" && sudo /Applications/XAMPP/xamppfiles/xampp status
   ```
   or individually:
   ```bash
   sudo /Applications/XAMPP/xamppfiles/xampp startapache
   sudo /Applications/XAMPP/xamppfiles/xampp startmysql
   ```
1. CLI to check whether services are running:
   ```bash
   curl -sSI http://localhost/ | head -n 1     # Apache: expect "HTTP/1.1 200 OK" (or 3xx)
   nc -z -v localhost 3306                      # MySQL/MariaDB: "succeeded" = port open
   nc -z -v localhost 21                        # ProFTPD: FTP port
   ```

1. Install Visual Studio Code

1. Click "Configure", then "Open Config file". OK.
1. Can copy file to <tt>/etc/my.cnf</tt> to set global options.
1. ~/.my.cnf to set user-specific options.
1. from /Applications/XAMPP/xamppfiles/var/mysql) mysql-data-dir/my.cnf to set server-specific options

1. Sample program: Convert Celsius to Fareinheit temperature.
   ```
   $c = ($f - 32) * (5 / 9);
   echo $c from $f
   ```

## PHP language basics:

   * HTML files <h1>...</h1>
   * <a target="_blank" href="https://www.php.net/manual/en/language.basic-syntax.phptags.php">commands between <?php ?></a> It's also executed to HTML inside a // comment.
   * comment code out as a block using /* */ tags
   * semicolons after each statement

   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/6tuDS/basic-error-handling">Basic Error Handling</a>

   * <a target="_blank" href="https://www.php.net/manual/en/language.types.php">Types</a>
   * Constants
   * $Variables
   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/dZl76/numbers-strings-and-operators">Numbers, Strings and Operators</a>: single quotes between double quotes.

   * Predefined Variables
   * <a target="_blank" href="https://www.php.net/language.attributes.overview.php">Attributes</a> <tt>#[Attribute]</tt>

   * Expressions
   * Operators
   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/8Gter/conditionals">Conditionals</a>
   * Control Structures

   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/pM0GA/functions">Functions</a>
   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/o5C55/classes-and-objects">Classes and Objects</a>

   * Enumerations
   * Errors
   * Exceptions
   * Predefined Exceptions
   
   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/pM0GA/functions">Functions</a>
   * <a target="_blank" href="https://www.php.net/manual/en/language.fibers.php">Fibers</a> (Fibers pause the entire execution stack, so the direct caller of the function does not need to change how it invokes the function. Fibers are full-stack, interruptible functions. May be suspended from anywhere in the call-stack, pausing execution within the fiber until the fiber is resumed at a later time.)
   * <a target="_blank" href="https://www.php.net/manual/en/language.generators.overview.php">Generators</a>

   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/coach/VWfCT/understanding-loops-in-php">Loops</a>

   * Namespaces
   * References Explained
   * Predefined Interfaces and Classes
   * Predefined Attributes
   * Context options and parameters

   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/ctiiL/arrays">Arrays</a>
   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/yabAM/loops">Loops</a>
   
   * <a target="_blank" href="https://www.coursera.org/learn/packt-intro-to-php-v4qa1/lecture/ZBjGh/dependency-management-with-composer">Dependency Management with Composer</a>
   <br /><br />

1. Video courses on PHP by Coursera: https://www.coursera.org/search?query=php

   * Intro to PHP" LAMP stack using MariaDB

<a id="PHPActivatez"></a>

## Activate PHP for Apache

To activate PHP using the Pico text editor that comes with Macs:

   <tt>sudo pico /etc/apache2/httpd.conf</tt>

Within pico, press Ctrl+W and type php to search for the php5_module statement.

Press cursor key left to the right of the # comment character,
press the backspace key to delete it.
PHP is activated after you press Ctrl+X and Ctrl+Y to confirm Yes.

Alternately, to activate PHP using the 
<strong>vi text editor</strong> that also comes with Macs:

   <tt>sudo vi /etc/apache2/httpd.conf</tt>

To find php...

Press 'x' over the '#' character to delete it. 

Type ':w!' to save.
Type 'ZZ' (upper case) to quit.

Only for Yosemite, also uncomment line 166:

LoadModule userdir_module libexec/apache2/mod_userdir.so
 
And also line 493:

#Include /private/etc/apache2/extra/httpd-userdir.conf



<a id="PHPIniz"></a>

## Activate php.ini

To activate PHP using the pico text editor that comes with Macs:

<tt>cd /private/etc</tt>

Copy the default file to a .ini file:

<tt>sudo cp php.ini.default php.ini</tt>

 


<a id="ApacheIniz"></a>

## Enable Apache

For Yosemite only, open the file with:

<tt>sudo vi /etc/apache2/extra/httpd-userdir.conf</tt>

Uncomment line 16:

<tt>#Include /private/etc/apache2/users/*.conf</tt>

Save and exit.
 


<a id="ApacheUserz"></a>

## Specify Mac User Name in Apache

Ensure that your user name is listed within:

<tt>ls -la /etc/apache2/users</tt>

In addition to the Guest.conf listed, there should be a 
.conf file with your Mac user name (mine is wilsonmar).

Such file may not be created while upgrading to Mountain Lion.
Contents of this file is different on Yosemite:
<pre>
&LT;Directory "/Users/wilsonmar/Sites/">
AddLanguage en .en
LanguagePriority en fr de
ForceLanguagePriority Fallback
Options Indexes MultiViews
AllowOverride None
Order allow,deny
Allow from localhost
Require all granted
&LT;/Directory></pre>




<a id="PHPFilez"></a>

## Establish Sites folder PHP website default file

By popular convention, the <strong>Sites</strong> folder 
(with a capital S) is used to store
website files. Create one under the default /Applications folder
from the command line:

<tt>mkdir ~/Sites</tt>

Create a HTML file to display by default when no file is specified:

<tt>echo "&LT;html>&LT;body>&LT;h1>My site works&LT;/h1>&LT;/body>&LT;/html>" > ~/Sites/index.html.en</tt>

/Library/WebServer/Documents/index.html.en . This contains the text "It works!" 




<a id="ApacheLaunchz"></a>

## Launch Apache

Older versions of Apache had a UI in
System Preferences > Sharing and enable Web Sharing. 
But on Yosemite:

Within a Terminal:

<tt>sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist</tt>

Check the version of Apache installed:

<tt>httpd -v</tt>

The response on my Yosemite is:

<tt>Server version: Apache/2.4.9 (Unix)

Server built:   Sep  9 2014 14:48:20</tt>

See http://coolestguidesontheplanet.com/get-apache-mysql-php-phpmyadmin-working-osx-10-10-yosemite/
 


<a id="Libmcryptz"></a>

## Libmcrypt PHP

http://coolestguidesontheplanet.com/install-mcrypt-php-mac-osx-10-10-yosemite-development-server/

To add modules to PHP, add libmcrypt-2.5.8 and PHP source code
from http://us.php.net/get/php-5.5.14.tar.gz/from/a/mirror
using these instructions:
http://michaelgracie.com/2011/07/21/plugging-mcrypt-into-php-on-mac-os-x-lion-10-7/


## Courses at Coursera.com

<a target="_blank" href="https://www.coursera.org/learn/web-applications-php">Building Web Applications in PHP</a>
from University of Michigan
Best for: intermediate learners, students with months to commit, and those aiming to build full web applications
with User Interfaces formatted using CSS.

<a target="_blank" href="">Full-Stack Web Development: PHP, HTML, CSS & JavaScript</a>
from Board Infinity
Best for: beginners interested in full-stack development, learners with a few months available, and those wanting a specialization credential

<a target="_blank" href="https://www.coursera.org/learn/database-applications-php">Building Database Applications in PHP</a>
from University of Michigan
Best for: intermediate developers, learners focused on database skills, and those ready to enhance PHP with MySQL integration


<a target="_blank" href="https://www.coursera.org/learn/codio-introduction-to-vuejs-framework">Introduction to VueJS Framework</a>
from Codio
Best for: beginners with 1-4 weeks availability, learners new to Vue.js, and those seeking foundational web development skills

<a target="_blank" href="https://www.coursera.org/learn/packt-the-complete-vue-js-course-for-beginners-i44iy">The Complete Vue.js Course for Beginners</a>
from Packt
Best for: beginners with 1-3 months to learn, those interested in JavaScript frameworks, and learners preferring comprehensive beginner courses

<a target="_blank" href="https://www.coursera.org/learn/packt-vue-js-3-for-beginners-build-modern-web-applications">Vue.js 3 for Beginners: Build Modern Web Applications</a>
from Packt
Best for: intermediate learners with 3-6 months commitment, developers focusing on modern web apps, and those wanting to master Vue.js 3 features

<a target="_blank" href="https://www.coursera.org/learn/fundamentals-of-vuejs">Fundamentals of VueJS</a>
from Board Infinity
Best for: intermediate learners with short-term availability, web developers interested in JavaScript frameworks, and those aiming to strengthen Vue.js fundamentals



## More on OSX

This is one of a series on Mac OSX:

{% include mac_links.html %}


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>