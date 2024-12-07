---
layout: post
lastchange: "v003 + script :maximum-limits.md"
date: "2024-12-06"
file: "maximum-limits"
title: "Maximum limits (in macOS file descriptors)"
excerpt: "Set this higher to prevent errors during high load"
tags: [apple, mac, setup, USB]
image:
  feature: https://cloud.githubusercontent.com/assets/300046/14624434/dab075ca-0597-11e6-9090-f93e259a5554.jpg
  credit:
  creditlink:
comments: true
created: "2018-06-21"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}


<a target="_blank" href="https://bomonike.github.io/maximum-limits"><img align="right" width="100" height="100" alt="maximum-limits.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/maximum-limits.png?raw=true" />

Operating systems (Linux and macOS included) have settings which limit the number of files and processes that are allowed to be open. This limit protects the system from being overrun. But its default is usually set too low, when machines had way less power. Thus a "gotcha" that is only apparent when "too many files open" crashes appear only under load (as in during a stress test or production spike).

<a target="_blank" href="https://www.gnu.org/software/bash/manual/html_node/index.html">man bash, the Bash manual</a> says the ulimit command (common among Linux flavors) provides "control over the resources available to the shell and to processes started by it".

1. Obtain the current <strong>limit of file descriptors</strong>

   <pre><strong>ulimit -n</strong></pre>

   An example output: "256" or "10032".

   PROTIP: On MacOS, the maximum number that can be specified is 12288.

2. Obtain the current <strong>limit of processes</strong>

   <pre><strong>ulimit -u</strong></pre>

   An example output: "1418".

## On macOS

1. Obtain the current limit:

   <pre><strong>launchctl limit maxfiles</strong></pre>

   The response output should have numbers like this:

   <pre>maxfiles    65536          200000</pre>

   The first number is the "soft" limit and the second number is the "hard" limit.

   Configuration changes are necessary if lower numbers are displayed, such as:

   <pre>maxfiles    256            unlimited</pre>

2. If the soft limit is too low (such as 256), <strong>set the current session</strong> to:

   <pre><strong>sudo launchctl limit maxfiles 65536 200000</strong></pre>

   <a target="_blank" href="https://superuser.com/questions/302754/increase-the-maximum-number-of-open-file-descriptors-in-snow-leopard">Some</a> set it to 1048576 (over a million).

   Since sudo is needed, you are prompted for a password.

   PROTIP: Because this would go back to defaults on reboot, add this command in your <tt>~/.bash_profile</tt>

   Alternately, install <a target="_blank" href="https://facebook.github.io/watchman/docs/install.html#installing-on-os-x-via-homebrew">Facebook's Watchman utility</a> which watches and adjusts automatically.

   PROTIP: Take both a full/complete backup to ensure fall-back. Also run a benchmark performance measurement before and after changing the configuration to detect issues.

3. Over several versions, Apple has changed the way system-wide open file limits can be set upon restart.

   ### Yosemite and older

   <a target="_blank" href="https://docs.basho.com/riak/kv/2.2.3/using/performance/open-files-limit/#mac-os-x-older-versions">NOTE</a>: On older MacOSX Yosemite, to make the settings permanent, increase the limits, edit (or create) file <tt>/etc/launchd.conf</tt> to contain:

   <pre>limit maxfiles 65536 200000</pre>

   ### Sierra and newer versions

   Newer versions of macOS do not reference the file due to security considerations.

   On newer macOS Sierra and High Sierra, <a target="_blank" href="https://blog.dekstroza.io/ulimit-shenanigans-on-osx-el-capitan/">Dejan Kitic</a> and
   <a target="_blank" href="https://docs.basho.com/riak/kv/2.1.4/using/performance/open-files-limit/#mac-os-x">this</a>
   found that two plist files need to be added.

4. Copy in folder <tt>/Library/LaunchDaemons/</tt> plist files from a GitHub repository:

   https://github.com/wilsonmar/mac-setup/blob/master/configs/limit.maxfiles.plist at 524288

   ```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
      <string>limit.maxfiles</string>
    <key>ProgramArguments</key>
      <array>
        <string>launchctl</string>
        <string>limit</string>
        <string>maxfiles</string>
        <string>524288</string>
        <string>524288</string>
      </array>
    <key>RunAtLoad</key>
      <true/>
    <key>ServiceIPC</key>
      <false/>
  </dict>
</plist>
   ```

   https://github.com/wilsonmar/mac-setup/blob/master/configs/limit.maxproc.plist at 2048

   ```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
      <string>limit.maxproc</string>
    <key>ProgramArguments</key>
      <array>
        <string>launchctl</string>
        <string>limit</string>
        <string>maxproc</string>
        <string>2048</string>
        <string>2048</string>
      </array>
    <key>RunAtLoad</key>
      <true/>
    <key>ServiceIPC</key>
      <false/>
  </dict>
</plist>
   ```
   (Thank you to sebco for the correction)

5. Run this shell script:

   ```
# OS (Outside of System Settings): Limit of File Descriptors:
# This needs to be done only once:
# Explained in https://bomonike.github.io/maximum-limits
# Mentions of this issue about the limit of open files on macOS & Linux:
   # https://neo4j.com/developer/kb/setting-max-open-file-limits-on-osx/
   # https://gist.github.com/tombigel/d503800a282fcadbee14b537735d202c?permalink_comment_id=3361594
   # https://superuser.com/questions/1634286/how-do-i-increase-the-max-open-files-in-macos-big-sur
   # https://www.baeldung.com/linux/limit-file-descriptors
# This is in .zshrc to set only for current session (since Yosemite):
   # sudo launchctl limit maxfiles 65536 200000
   # This requires manual password entry.
ULIMIT_SOFT_LIMIT=$( ulimit -Sn )   # 2560 on my mac
ULIMIT_HARD_LIMIT=$( ulimit -Hn )   # unlimited
echo "*** File Descriptors: ulimit -Sn: ${ULIMIT_SOFT_LIMIT}  ulimit -Hn: ${ULIMIT_HARD_LIMIT}"
# To permanently increase the maximum number of open files:

# We get it this file locally so values are under your control:
sudo mv limit.maxfiles.plist /Library/LaunchDaemons
# TODO: Copy from https://raw.githubusercontent.com/wilsonmar/mac-setup/refs/heads/main/configs/limit.maxfiles.plist
   # to /Library/LaunchDaemons
# chown for "-rw-r--r--", set by sudo chmod 644:
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
sudo launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
   # In the file, 524288 is the soft limit (instead of 12288)
   # The hard limit is up to 1048576 for high-performance scenarios.
   # Per https://apple.stackexchange.com/a/366319, value of unlimited can be up to the max value of SIGNED INT of 2147483647.

# The default maxproc is 2666 soft and 4000 hard.
sudo mv limit.maxproc.plist /Library/LaunchDaemons
# TODO:Copy from https://raw.githubusercontent.com/wilsonmar/mac-setup/refs/heads/main/configs/limit.maxproc.plist
   # to /Library/LaunchDaemons
   # In the file, 2048 is the soft and hard limit (instead of 256)
sudo chown root:wheel /Library/LaunchDaemons/limit.maxproc.plist
sudo launchctl load -w /Library/LaunchDaemons/limit.maxproc.plist

# Additionally, Java applications need to use the -XX:-MaxFDLimit JVM option to bypass the internal 10,240 file descriptor limit.
   ```

5. Invoke the files:

   <pre><strong>sudo launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
   sudo launchctl load -w /Library/LaunchDaemons/limit.maxproc.plist</strong></pre>

   The files' ownership needs to be changed to "root:wheel".

   Their permissions need to be "-rw-r--r--", set by sudo chmod 644.

5. So how do you turn csrutil off? Google says "sudo csrutil disable...". But not so easy. That can only be done in Recovery Mode. So, reboot, hold command + R to enter Recovery Mode, once there open terminal and do csrutil disable... Finally a breakthrough...disabled.


4. Now you can adjust the process limit on Mac OS X Yosemite and El Capitan versions:

   <pre><strong>sudo ulimit -n 65536 200000</strong></pre>

   Since sudo is needed, you are prompted for a password.

5. To increase the <strong>inotify watchers max limit</strong>, edit (or create) file <tt>/etc/sysctl.conf</tt> (<a target="_blank" href="https://docs.freebsd.org/doc/5.5-RELEASE/usr/share/doc/handbook/configtuning-sysctl.html">inherited from BSD</a>) to contain:

   <pre>kern.maxfiles=49152
   kern.maxfilesperproc=24576</pre>

   or

   <pre>kern.maxfiles=200000
   kern.maxfilesperproc=200000</pre>

   Alternately, run interactive commands:

   <pre><strong>sudo sysctl -w kern.maxfiles=5242880</strong></pre>

   The response:
   <pre>kern.maxfiles: 49152 -> 5242880</pre>

   <pre><strong>sudo sysctl -w kern.maxfilesperproc=524288</strong></pre>

   The response:
   <pre>kern.maxfilesperproc: 24576 -> 524288</pre>

6. <strong>Restart</strong> the system for the new limits to take effect.

7. After restarting, verify the new limits by running:


## On RedHat and CentOS

2. To enable PAM-based user limits so that non-root users, such as the riak user, may specify a higher value for maximum open files, edit (or create) file <tt>/etc/security/limits.conf</tt> to contain:

   <pre>* soft nofile 65536
   * hard nofile 200000</pre>

   If the file already exists, append the above to the bottom of the file.

3. To activate limits, edit (or create) file <tt>/etc/pam.d/login</tt> to contain:

   <pre>session    required   pam_limits.so</pre>

4. Restart the machine.
5. Verify by "ulimit -a" again.




   <pre><strong>ulimit -n
   ulimit -Hn # Hard limit
   ulimit -Sn # Soft limit</strong></pre>

   If the response is "10032"

