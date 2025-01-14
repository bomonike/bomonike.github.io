---
layout: post
date: "2025-01-13"
lastchange: "v001 + from wilsonmar.github.io :ansible.md"
title: "Ansible (for Configuraton)"
excerpt: "This robot butler is simple, but not stupid"
tags: [Ansible, devops, ci, setup]
file: "ansible"
image:
# pic silver robot white skin handshake 1900x500
  feature: https://cloud.githubusercontent.com/assets/300046/14622149/306629f0-0585-11e6-961a-dc8f60dadbf6.jpg
  credit:
  creditlink:
comments: true
created: "2016-05-19"
---
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1735874981/ansible-flow-v02b-1024x576-59848_x7tqas.jpg"><img width="1024" alt="ansible-flow-v02b-1024x576-59848.jpg" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1735874981/ansible-flow-v02b-1024x576-59848_x7tqas.jpg"></a>
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
The object of this tutorial is provide deep but succinct commentary (without marketing generalizations) as we take a carefully crafted step-by-step hands-on tour. All on a single searcheable page.
{% include whatever.html %}
{% include _toc.html %}

Below is a map of my Ansible tour (TOBE: animated video), in which I cover one concept at a time:

The objective of Ansible is to configure software within <strong>host nodes</strong> securely, but also quickly and easily.

(Ansible is not a configuration management system like Jenkins.
Ansible is an infrastructure management system.)

The name <strong>"ansible"</strong> is popularized by the science-fiction book and <a target="_blank" href="https://en.wikipedia.org/wiki/Ender's_Game_%28film%29"> movie "Ender's Game"</a>
which uses what it calls an "ansible" to communicate, in real-time, with <strong>many</strong> ships at once, to many galaxies far away.

`ansible` is one of the <a href="#Executables">command-line executables</a> installed by <strong>Python</strong> when the <strong>Ansible (Core) Control Server</strong> is installed. The word "Core" is there because it is a dependency of the <strong>Ansible Tower</strong> which provides an API and GUI front-end to the open-source Control Server. It has a <strong>command line interface</strong> and web-based interface for managing Ansible projects using role-based access control, job scheduling, and real-time job status updates. For small to medium-sized environments.

* The <a target="_blank" href="https://docs.ansible.com/#project">Ansible Project</a> (Ansible Core) was identified as, among the hundreds of thousands of repositories in GitHub, <a target="_blank" href="https://octoverse.github.com/projects">#7 most contributors and most discussed projects</a> (in front of even Kubernetes, npm). PROTIP: This means there will be changes ahead.

   Mentions in Reddit Hacker News (HN) forum show higher uptake in Ansible vs. other configuration management solutions:

   ![ansible-hn-mentions_2015-222376](https://user-images.githubusercontent.com/300046/58876022-2e2fbc80-868a-11e9-9a7d-7f3cd4bcf08f.png)

The <strong>ansible-galaxay</strong> command retrieves from the <a target="_blank" href="https://galaxy.ansible.com/">https://galaxy.ansible.com/ Ansible Galaxy</a> website, which is a community-submitted repository of <a href="#Roles">Roles</a> that define the installation of many categories of software (database, etc).

The website shows a "quality rating" based on runs of the <strong>ansible-lint</strong> program which validate changes. The program used on by the website can be run on your server after being installed by pip to validate changes after downloading and editing.

Files in the Galaxy are versioned in  a <strong>GitHub repository</strong> files can also be pulled by the <strong>ansible-pull</strong> program which (like Git) can pull other files such as the <strong>inventory</strong> of host nodes to be populated. Inventory files are managed by the <strong>ansible-inventory</strong> executable. Among downloads can be (dyn) programs that act like a static inventory file, but dynamically retrieve inventory data.

When the ansible program is invoked, it delegates work to <a href="#Modules">various Modules</a>. Additional custom modules can be defined,
such as for building assets within AWS using CloudFormation as well as other clouds (Digital Ocean, Linode, Rackspace, etc.).

## SSH

The use of <strong>SSH</strong> (Secure Shell) is Ansible's differentiatior. This is the approach that makes Ansible easy and secure because the SSH utility comes standard in all Linux distributions for users to communicate with servers. SSH uses a commonly open port 22, one does not need to beg for special ports to be opened through the enterprise firewall (which one needs to do with custom agent programs used by Chef, Puppet, and others.

Use of SSH does require the Linux <strong>ssh-keygen</strong> program to create pairs of "cryptographic" key files. The <strong>public key</strong> is copied to each host node created. This does not compromise secrets because the private key stays on the machine where the pair is created. The SSH program encrypts communications with its private key for the receiver to decrypt using the public part of the key pair.

By default, <strong>JSON messages</strong>
are communicated back to the Control Server's API listening on standard port 80.
Internally, Ansible uses the Django-REST framework, <strong>PyYAML</strong>.

Various <strong>modules</strong> run on remote hosts
provide the plumbing for other networking protocols, such as HTTP, runing on remote machines.

<strong>Ansible plug-ins</strong> can also be downloaded and installed so Ansible can communicate via ZeroMQ "fireball mode" or other means.

### WinRM

To connect with Windows machines, <a target="_blank" href="https://msdn.microsoft.com/en-us/library/aa384426(v=vs.85).aspx">Windows Remote Management (WinRM)</a> is used (from Vista SP1 or Windows 2008 R1 and up).

Other <a target="_blank" href="http://docs.ansible.com/ansible/list_of_windows_modules.html">
Windows modules</a> include `win_feature` (to install and uninstall Windows Features) and
`win_regedit` (Add, Edit, or Remove Registry Keys and Values). WinRM python module


### Tasks, Plays, Playbook

Modules are invoked by a series of <a href="#Tasks">Tasks</a> defined as plays in <strong>playbooks.yml</strong> files.

Instead of using a database server,
Ansible stores declarations in text files of
<a target="_blank" href="http://www.yaml.org/spec/1.2/spec.html">
<strong>yml</strong> format</a> (pronounced as "yamil")
that are both human and machine readable.
So Playbooks can be edited by any <strong>text editor</strong>.

A task can trigger <a href="#handlers">handlers</a> (shell scripts) which run on some condition, usually once at the end of plays.

Plays map a group of hosts to roles. Each role is like a (subroutines) which make code in <strong>playbooks</strong> reusable by putting the functionality into generalized "libraries" that can be then used in any playbook as needed.

The <strong>ansible-playbook</strong> program manages playbooks.

<strong>ansible-vault</strong> encrypts and derypts entire playbooks.

<strong>ansible-console</strong> can execute individual tasks (during debugging).

Within each host node, a <strong>facts.d</strong> in created within the `/etc/ansible` folder.

Finally, the <strong>ansible-doc</strong> executable presents additional information.

<a name="Recap"></a>

Recap:

<a target="_blank" href="https://user-images.githubusercontent.com/300046/58940137-f8e0a880-8735-11e9-95e2-ae49326cb1d6.jpg"><img width="1024" alt="ansible-flow-v02b-1024x576-59848.jpg" src="https://user-images.githubusercontent.com/300046/58940137-f8e0a880-8735-11e9-95e2-ae49326cb1d6.jpg"></a>

<hr />

## Background

The <a target="_blank" href="https://www.twitter.com/ansible">@ansible Twitter account</a> is titled "Red Hat Ansible" because it's initiating author,
<a target="_blank" href="http://michaeldehaan.net/">
Michael DeHaan</a> from North Carolina (@laserllama),
<a target="_blank" href="https://www.ansible.com/blog/2013/12/08/the-origins-of-ansible">began writing</a> Ansible in his spare time in 2006 while working at RedHat (after a stint at Puppet). His AnsibleWorks got <a target="_blank" href="https://www.redhat.com/en/blog/why-red-hat-acquired-ansible">acquired by RedHat in 2015</a>.
See the <a target="_blank" href="https://speakerdeck.com/pycon2014 and https://github.com/PyCon/2014-slides">
slides</a> to his <a target="_blank" href="https://www.youtube.com/watch?time_continue=80&v=Qi0AhK7PMCI">video Python-Powered Radically Simple IT Automation" at PyCon 2014</a>.

His advice at <a target="_blank" href="https://www.youtube.com/watch?v=2OiiaUgXrlE">
All Things Open lightning talk Dec 3, 2014</a>:

   * "Your IT infrastructure should be boring"
   * "How do we get sysadmins and developers together to cheat off each other, even at competing companies"
   * "Automation should not be your day job"
   * "Build early and often. Build a culture of testing."
   * "Have Dev/QA/Stage environments that mirror production to see what can go wrong early."


<a target="_blank" href="https://docs.ansible.com/">docs.ansible.com</a> lists the major aspects of Ansible:

   * <a target="_blank" href="https://docs.ansible.com/#network">Ansible Network</a> (ecosystem) lists overview books and videos.

   * <a href="#AnsibleTower">Ansible Tower</a> builds on top of Ansible Core provides user provisioning and audit trails running playbooks, all done within a web UI. It is licensed (beyond 10 hosts).

   * <a target="_blank" href="https://docs.ansible.com/#project">Ansible Galaxy</a> is a website, like GitHub, an API-powered community-submitted repository of <strong>Roles</strong> (subroutines) which make code in playbooks reusable by putting the functionality into generalized "libraries" that can be then used in any playbook as needed.

   * <a target="_blank" href="https://docs.ansible.com/#lint">Ansible Lint</a> validates playbook contents.

   * <a target="_blank" href="https://docs.ansible.com/#project">Ansible Galaxy</a>


<a name="AnsibleTower"></a>

## Ansible Tower #

<a target="_blank" href="https://linuxacademy.com/cp/courses/lesson/course/2034/lesson/1/module/198">VIDEO</a>: <a target="_blank" href="https://www.ansible.com/tower">Red Hat (IBM) Ansible Tower</a> adds a <a target="_blank" href="https://linuxacademy.com/cp/courses/lesson/course/2034/lesson/3/module/198">web server UI</a> for "push button deployment" to manage <strong>projects</strong> (set of playbooks).

![ansible-tower-inv-669x217](https://user-images.githubusercontent.com/300046/58848780-feaa9100-8644-11e9-9979-ae3448adb936.png)

For example, checking "ENABLE PRIVILEGE ESCALATION" is the same as adding `-b` in ansible ad-hoc commands.

Tower installs within Linux base configurations at `/etc/tower/settings.py`.
Look at this after install.

PROJECTS_ROOT

Ansible Tower makes use of a PostgreSQL database, either locally, remotely, or in a HA inventory group cluster. Tower provides Role Based Access Control (RBAC) to acccess its database via REST API.

### Ansible Automation Platform

Red Hat's <strong>Ansible Automation Platform</strong> includes Ansible Tower as one of its components
to provide a comprehensive suite for enterprise-level automation of large-scale operations and complex environments (thousands of nodes). It provides an Automation mesh for distributed deployments with high availability through clustering and performance monitoring across clusters.

<hr />

## Alternatives to Ansible #

<a target="_blank" href="https://www.youtube.com/watch?v=JousLu8lZn0&time=9m35s">
<img alt="ansible-vs-others-607x381-20230 by Jeff Geerling" width="607" src="https://user-images.githubusercontent.com/300046/59349492-04ecdd00-8cd7-11e9-9466-6bc249104473.jpg"></a>

* <a target="_blank" href="https://en.wikipedia.org/wiki/Comparison_of_open-source_configuration_management_software">"Comparison of open source configuration management software" on Wikipedia</a>

* <a target="_blank" href="http://www.virtualtothecore.com/en/configuring-windows-machines-for-ansible/">
This</a> mentions the free <a target="_blank" href="http://www.solarwinds.com/products/freetools/remote-execution-enabler-for-powershell.aspx"> Remote Execution Enabler for PowerShell</a> tool from Solarwinds.

* <a target="_blank" href="https://www.youtube.com/watch?v=BaLR6Wk_ETs">
   Ansible & Docker Make Chef & Puppet Unnecessary</a>
   by John Minnihan (@jbminn, jbminn@modernrepo.com)
   <a target="_blank" href="http://www.slideshare.net/jbminn/docker-ansiblemakechefpuppetunnecessaryminnihan-34984161">
   Slidedeck</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=miO00M4vPok">
   Comparisons Chef vs Puppet vs Ansible</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=2H95tx7Fuv4">
   Chef vs. Puppet vs. Ansible vs. Salt - What's Best for Deploying and Managing OpenStack?</a>

## Ansible functionality

   * Provisioning - install software, patch security, copy files in, customize configurations, start web service.
   * Change management of configurations with configuration remediation. Ansible evaluates to mark changed states.
   * Automation - make decisions. A single change can impact several machines.
   * Complex Orchestration of dependencies.

<hr />

## Exam prep

Linux Academy has the most complete set of video classes on Ansible:

Stosh Oldham's <a target="_blank" href="https://linuxacademy.com/cp/modules/view/id/198">video prep class</a> [21:24:31] with <a target="_blank" href="https://www.lucidchart.com/documents/view/4b454bc1-80ea-4753-9457-7496a5bf661e">diagrams</a> and <a target="_blank" href="https://app.linuxacademy.com/hands-on-labs/ac354632-be98-40cf-8dce-f3949df059b1?redirect_uri=https:%2F%2Fapp.linuxacademy.com%2Fsearch">sample practical exams</a> for the <a target="_blank" href="https://www.redhat.com/en/services/training/ex407-red-hat-certified-specialist-in-ansible-automation-exam"><strong>4-hour $400</strong></a> <a target="_blank" href="https://www.redhat.com/en/services/certification/rhcs-ansible-automation">Red Hat Certified Specialist in Ansible Automation (EX407)</a> tasks based on Red Hat® Enterprise Linux® 7.5 and Ansible 2.7:

   * <a href="#CreateInventoryFile">Create</a> Ansible <a href="#InventoryFile">inventory filies</a> to define groups of hosts
   * <a href="#CreatePlaybooks">Create Ansible playbooks</a> to <a href="#ConfigHosts">configure systems (hosts)</a> to a specified state
   * Create and use Ansible <a href="#Templates">(Jinga2) templates</a> to create customized configuration files for hosts
   * <a href="#Roles">Create</a> Ansible roles stored in Ansible Galaxy
   * Use <a href="#AnsibleVault">Ansible Vault</a> in playbooks to encrypt and decrypt sensitive data
   <br /><br />

Mercifully, Tower is not a significant requirement in the exam.

<hr />


<a name="InstallAnsible"></a>

## Install Ansible

1. Know what version may be installed already:

   <pre><strong>ansible --version</strong></pre>

   The response for the version at time of writing (substitute "$USER" with your own account name):

   <pre>
  config file = None
  configured module search path = ['/Users/$USER/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/Cellar/ansible/2.8.0/libexec/lib/python3.7/site-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 3.7.3 (default, Mar 27 2019, 09:23:15) [Clang 10.0.1 (clang-1001.0.46.3)]
   </pre>

   NOTE: Ansible makes use of Python, so install that.

   If you don't see the above and instead see "command not found", continue:

2. If you're on a Mac, <a target="_blank" href="https://wilsonmar.github.io/xcode">install XCode</a>.

3. <a target="_blank" href="https://wilsonmar.github.io/python-install">Install Python</a>.

* On MacOS, on any folder location, after <a target="_blank" href="https://wilsonmar.github.io/macos-homebrew/">Homebrew installed</a>:

   <pre>brew install ansible</pre>

   To update Ansible:

   <pre>sudo pip install ansible --upgrade</pre>

* On Red Hat operating systems:

   <pre>sudo yum -y install ansible</pre>

* On Ubuntu, see https://crunchify.com/systemd-upstart-respawn-process-linux-os/
   about using `systemd`, the service management utility in all latest version of Linux distribution such as Ubuntu OS, Redhat OS, CentOS.

   VIDEO: <a target="_blank" href="https://codereviewvideos.com/course/ansible-tutorial/video/installing-ansible-on-ubuntu-server">Installing Ansible on Ubuntu</a> from <a target="_blank" href="https://github.com/codereviewvideos/ansible">GitHub</a>:

   <pre>
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
   </pre>

4. Skip to <a href="#Config">Configuration</a> instructions.


### Setup Vagrant and Virtualbox #

0. Download and install:

   * A virtual image manager from <a target="_blank" href="https://www.vagrantUp.com/">VagrantUp.com</a> (87.9 MB for vagrant_1.8.1.dmg).
   * A vm provider (hypervisor) to run virtual machines from Oracle's <a target="_blank" href="https://www.virtualbox.org/wiki/Downloads">
    VirtualBox</a>

0. Verify availability from a command-line Terminal:

   <tt><strong>
   vagrant<br />
   vboxmanager
   </strong></tt>

0. Create a folder (of any name) for Ansible configuration files.
   This is typically for a project.
   This can be in a git folder if you'd like version management.

   <tt><strong>
   cd ~<br />
   mkdir ansible<br />
   cd ansible
   </strong></tt>

   The ~ (tilde character above) refers to your home folder.

0. Switch to an internet browser to open a repository of Vagrant server base images:

   <a target="_blank" href="https://www.vagrantcloud.com/">
   http://vagrantcloud.com</a>
   (which redirects to a site owned by hashicorp, who owns Vagrant, thus the advert for the Atlas licensed product)

   NOTE: Many enterprises instead use an internal repository.

0. In the box under "Discover Vagrant Boxes", search for <strong>ubuntu</strong> or CentOS, etc.

0. Choose one and copy its text in blue, such as "nrel/CentOS-6.5-x86_64" from contributor nrel or "ubuntu/trusty64".

0. Close down any process making use of port 8080, as that's Vagrant's default port.
   (Jenkins also uses port 8080 by default)

0. Initialize a Vagrantfile for use by Vagrant:

   <tt><strong>vagrant init</strong></tt>

   Sample response:

   <pre>
   A `Vagrantfile` has been placed in this directory. You are now
   ready to `vagrant up` your first virtual environment! Please read
   the comments in the Vagrantfile as well as documentation on
   `vagrantup.com` for more information on using Vagrant.
   </pre>

0. If you have a file named <strong>Vagrantfile</strong> from another source,
   copy it into the folder to replace the file generated.

   Alternately, open a text editor to create a file name <strong>Vagrantfile</strong>
    in end up with this sample content to specific the acs (Ansible Control Server),
   web, and db servers:

   {% highlight text %}
   Vagrant.configure(2) do |config|

     config.vm.define "acs" do |acs|
       acs.vm.box = "nrel/CentOS-6.5-x86_64"
       acs.vm.hostname = "acs"
       acs.vm.network "private_network", ip: "192.168.33.10"
     end

     config.vm.define "web" do |web|
       web.vm.box="nrel/CentOS-6.5-x86_64"
       web.vm.hostname = "web"
       web.vm.network "private_network", ip: "192.168.33.20"
       web.vm.network "forwarded_port", guest: 80, host: 8080
     end

     config.vm.define "db" do |db|
       db.vm.box = "nrel/CentOS-6.5-x86_64"
       db.vm.hostname = "db"
       db.vm.network "private_network", ip: "192.168.33.30"
     end
   end
  {% endhighlight %}

  The (2) in Vagrant.configure(2) configures the configuration version.

  Names between \| (pipe) characters provide handles to identify each server.

  Two spaces are used to indent.

  Internal IP addresses (192.168.33.xxx) are used in this example.

  Change 8080 to another port if it is already used by another process on your computer.


<a name="VagrantUp"></a>

#### Vagrant up #

0. Navigate to a folder containing a Vagrantfile specification file.
0. Bring up a machine based on the Vagrantfile in the folder:

   <tt><strong>vagrant up
   </strong></tt>

   This can take several minutes
   if this is the first time, since images for servers specified need to be downloaded.


0. Switch to a Finder to see that a <strong>.vagrant</strong> (hidden) folder has been added.
   Under the <strong>machines</strong> folder is a folder for each type specified between pipe characters (acs, web, db, etc).

0. Open another terminal shell to check what is running:

   <tt><strong>
   vboxmanage list runningvms
   </strong></tt>

   The response are hashes:

   {% highlight text %}
   "ansible_acs_1463860205025_4852" {128ce450-8384-4adb-a4fd-7f4ac5c1f0b8}
   "ansible_web_1463862332570_44406" {dd044db3-ecf1-4b9b-9c42-96952172bd4d}
   "ansible_db_1463882256962_22323" {411c8704-f220-4188-8b94-d1bfb093e1b4}
   {% endhighlight %}


<a name="AnsibleServer"></a>

#### Provision Ansible Control Server #

0. SSH into the acs server via vagrant:

   <tt><strong>vagrant ssh acs</strong></tt>

   This takes several seconds to connect.

   This adds the ey to the known_hosts file within the .ssh folder for future reference.

0. When you're done:

   <tt><strong>
   exit
   </strong></tt>

0. Use a package manager to download bits. On a CentOS or RHEL server:

   <tt><strong>sudo yum -y install ansible</strong></tt>

   Alternately, on a Debian Ubuntu server:

   <tt><strong>sudo apt-get -y install ansible</strong></tt>

   Notice the log says Python is installed as well.

0. Verify:

   <tt><strong>ansible \-\-version</strong></tt>


   ### Provision web server #

0. SSH into the web server via vagrant:

   <tt><strong>vagrant ssh web</strong></tt>

0. Use a package manager to download bits:

   <tt><strong>sudo yum -y install epel-release</strong></tt>


### Install by Compiling Source Code #

0. Install the C-language compiler used with Python:

   <tt><strong>sudo yum install gcc</strong></tt>

   <tt><strong>sudo yum install python-setuptools</strong></tt>

   <tt><strong>sudo easy_install pip</strong></tt>

   <tt><strong>sudo yum install python-devel</strong></tt>

   <tt><strong>sudo pip install ansible</strong></tt>

<hr />

<a name="Config"></a>

## Configure Ansible Server

   Linux machines instead install to:

   <pre>/etc/ansible</pre>

   But on Macs, as with all program installed on a Mac by Homebrew:

   * A link to the `ansible` program is installed in folder `/usr/local/bin/`
   * Links to the latest version of Ansible is in `/usr/local/opt/ansible`
   * Links are also in `/usr/local/var/homebrew/linked/ansible`
   * `/usr/local/lib/python2.7/site-packages/ansible`
   * Various versions of actual Ansible files are installed to `/usr/local/Cellar/ansible`

   <a name="Executables"></a>

### Ansible executables

1. Install the tree command if you haven't already:

   <pre>brew install tree</pre>

1. Construct the command to list files down to the 2nd level of the folder tree:

   <pre><strong>tree /usr/local/Cellar/ansible/2.8.0 -sh -L 3 | less</strong></pre>

   Press Enter to display more lines, q to quit.

   The programs that can be executed on the CAS CLI console are:

   * ansible -
   * ansible-config -
   * ansible-connection -
   * ansible-console -
   * ansible-doc -

   * ansible-galaxy -
   * ansible-inventory -
   * ansible-playbook -
   * ansible-pull -
   * ansible-vault -

<hr />

<a name="ConfigHosts"></a>

## Configure host nodes

Ansible works under the concept of <strong>"idempotance"</strong>, where repeated executions of the same script
results in the same state at the end of each run. If something doesn't exist, it is created.
If something does exist already, it is left alone and another isn't created.

A function is "idempotent" if repeated applications has the same affect as a single (initial) invocation.

Ansible reads declarations of <strong>desired state</strong> (what is wanted after processing)
rather than imperative programming commands (to do this and that in a specified sequence). This is like when you get in a taxi and you provide a destination address rather than providing turn-by-turn directions to that location.

This makes definitions more reusable.


<a name="AnsibleGalaxy"></a>

## Ansible-Galaxy Roles

1. Install the Ansible-Galaxy CLI Python library:

   <pre>pip install ansible-tower-cli</pre>

1. To download a particular role file from <a target="_blank" href="https://galaxy.ansible.com/">https://galaxy.ansible.com</a> in the format:

   <pre>ansible-galaxy install <em>username</em>.<em>role_name</em></pre>

   Example:

   <pre><strong>ansible-galaxy install elastic.elasticsearch</strong></pre>

CAUTION: When deleting roles, its dependencies are not deleted automatically, leaving orphans not used by roles that remain.

## Modules

Core Modules listed alphabetically:

   * <a href="#ad-hoc">ad-hoc</a> - one-line commands executed by the ansible binary (instead of running a Playbook)
   * archive & unarchive
   * copy - copy files from src to dest. also change mode
   * file - create, rename, delete files
   * get_url
   * git - interact with git repositories
   * group
   * lineinfile - changes an existing line using a back-referenced regular expression
   * mount - drive (in Tower)
   * ping - validate server is up and reacheable using ICMP protocol
   * playbooks
   * replace
   * service - control daemons, provided name and state
   * setup - gathers ansible facts
   * shell & command
   * user - manipulate system users
   * apt, apt_key, apt_rpm, yum - use package manager
   <br /><br />

1. Get documentation on a specific module:

   <pre>ansible-doc lineinfile</pre>

   Press q to quit out of list.

   <a target="_blank" href="https://linuxacademy.com/cp/courses/lesson/course/2035/lesson/1/module/198">VIDEO</a> see http://docs.ansible.com/ansible/latest/modules/modules_by_category.html


<a name="ad-hoc"></a>

### ad-hoc commands

1. Run ansible without parameters to get list of options:

   <pre><strong>ansible</strong></pre>

1. Install software on host:

   <pre><strong>ansible node1 -i ansible/inv.ini \
   -b \
   -m yum \
   -a "name=httpd state-latest" \
   -f 100</strong></pre>

   `node1` is the host name

   `-b` specifies "become user" to avoid permission errors by using elevated root permissions

   `-i` specifies the <a href="#InventoryFile">iinventory file</a> and its path

   `-b` specifies user

   `-m yum` specifies the module yum command

   `-a "name=httpd state-latest"` specifies the arguments to the ansible program saying install the latest version of httpd (http daemon web server)

   `state=absent` is specified instead to remove the program, since Ansible is declarative.

   `-f` specifies the number of forks running copies of Ansible simultaneously

   "SUCCESS" is the expected response.

1. Check system properties (disk space, RAM)
1. Check system performance

1. Check log commands
1. Check daemon up/down
1. Process management


## Steps Modules do #

   0. Gather facts on hosts into variables such as ansible_os_family.
   0. Fetch md5 checksum from remote to verify downloaded file
   0. Create and manage local users and groups
   0. Enable and disable OS features and preferences

   0. Fetch files from remote sites
   0. Install software (web server, app server, database, virus scanner, etc.)
   0. Update software security patches
   0. Copy app configurations

   0. Copy files into server
   0. Call databases to retrieve data

   0. Enable service to start on reboot
   0. Start web service
   0. Deploy load balancer configurations (put in or take out server on rotation)

<a name="CreatePlaybooks"></a>

### Playbooks

Let's look at a playbook with full annotations:

   * <a target="_blank" href="https://gist.github.com/wilsonmar/f75a8f192504a7acee5c21c574612a61">
   Insanely complete Ansible playbook, showing off all the options in a single file</a>

   * <a target="_blank" href="https://github.com/ansible/ansible-examples">https://github.com/ansible/ansible-examples</a>



### Ansible with Cloud Formation #

Book <a target="_blank" href="https://leanpub.com/ansible-for-aws">Ansible for AWS</a> ($19.99+) by Yan Kurniawan provides Ansible playbook examples:

   * vpc_create.yml
   * sg_empty.yml to create empty security groups.
   * sg_modify.yml to modify security groups for each type of server
   * sg_delete.yml
   * ec2_vpc_web_create.yml to launch an instance in a particular subnet
   * ec2_vpc_db_create.yml  without assigning a public IP address
   * nat_launch.yml to launch a "staging_nat" paravirtual t1.micro instance (with AMI name that includes "amzn-ami-vpc-nat")
   * vpc_delete.yml
   * vpc_create_multi_az.yml
   * sg_jumpbox.yml
   * ec2_vpc_jumpbox.yml to launch  jump box instance in public subnet A
   * ansible -i ec2.py tag_class_jumpbox -m ping
   * sg_openvpn.yml still requires manual retrieval of the AMI ID on
    <a target="_blank" href="https://openvpn.net/index.php/access-server/docs.html">https://openvpn.net/index.php/access-server/docs.html</a>

Tweets about the book, <a target="_blank" href="https://twitter.com/search?q=%23ansible4awshttps://twitter.com/search?q=%23ansible4aws">#ansible4aws</a>, is inactive since 2016 when the book was done.

The book provides an Ansible module in folder: `library/vpc_lookup`

   * an update of https://github.com/edx/configuration/blob/master/playbooks/library/vpc_lookup
   (from John Jarvis)
   to lookup a VPC or subnets ID stored in local (safe) folder
   based on a particular filter specified in a script.

PROTIP: Each Ansible module is associated with a command, and return JSON.

PROTIP: Disable host key checking in ssh configuration so ssh will automatically add new host keys to the user known hosts files without asking (the default is “ask”).

   * Disable host key checking with StrictHostKeyChecking set to "no" in /etc/ssh/ssh_config file.


### View sample configurations #

1. Use an internet browser to open
<a target="_blank" href="https://galaxy.ansible.com/search?deprecated=false&order_by=-relevance&keywords=">
https://galaxy.ansible.com/search?deprecated=false&order_by=-relevance&keywords=</a>

2. Search.

3. Open a sample playbook.

   Playbooks are defined in .yml files, which begin with three dashes in the first line.

   Playbooks define <strong>plays</strong>. consisting of one or a set of <a href="#Tasks">tasks</a>.

   <strong>tasks</strong> invoke modules.

   Tasks trigger <a href="#handlers">handlers</a> which run on some condition, usually once at the end of plays.

   Spaces after dashes and colons are required.

An Ansible Config define Ansible control server configuration.

### Jeff Geerling

Notice the repos downloaded more than anyone is by @geerlingguy, Jeff Geerling (all around nice guy and Drupal expert <a target="_blank" href="http://www.jeffgeerling.com/">jeffgeerling.com</a> who
has been contributing to Ansible community since early 2013.

In addition to series on Raspberry Pi and Drupal, he wrote <a target="_blank" href="http://www.ansiblefordevops.com/">ansiblefordevops.com</a> completed 2020-05-13 on LeanPub).

Code for the book is at <a target="_blank" href="https://github.com/geerlingguy/ansible-for-devops/tree/master/docker">https://github.com/geerlingguy/ansible-for-devops</a>, which has an issue for each of 15 episodes of his Ansible 101 series on YouTube. He has chapter markers into each video at <a target="_blank" href="https://www.jeffgeerling.com/blog/2020/ansible-questions-and-answers-final-ansible-101-livestream">his blog</a> plus Q&A (<a target="_blank" href="https://www.jeffgeerling.com/blog/2020/markdown-excellent-choice-documentation">written in Markdown</a>).

1. <a target="_blank" href="chrome-extension://klbibkeccnjlkjkiokjodocebajanakg/suspended.html#ttl=DevOps%20Enterprise%20Summit%20London%20-%20Virtual%202020&pos=876&uri=https://events.itrevolution.com/virtual/" title="Mar 25, 2020 [1:03:42]">
   Introduction to Ansible</a> 2.9.6 and Python 3.7.6 on CentOS via dhcp.

   "DevOps is a philosophy". Use `pip3 install ansible`

2. <a target="_blank" href="https://www.youtube.com/watch?v=7kVfqmGtDL8&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=2" title="[1:20:45]">Ad hoc tasks and Inventory</a>

3. <a target="_blank" href="https://www.youtube.com/watch?v=WNmKjtWtqIc&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=3" title="[1:02:07]">Introduction to Playbooks</a>

4. <a target="_blank" href="https://www.youtube.com/watch?v=SLW4LX7lbvE&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=4" title="[51:28]">Your first real world playbook</a>

5. <a target="_blank" href="https://www.youtube.com/watch?v=HU-dkXBCPdU&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=5" title="[59:28]">Playbook handlers, environment vars, etc</a>

6. <a target="_blank" href="https://www.youtube.com/watch?v=JFweg2dUvqM&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=6" title="[1:02:31]">Ansible Vault and Roles</a>

   BOOK chapter 5.

   Inside the Ansible main.yml:
   <pre>API_KEY: "{{ myapp_api_key }}"
   </pre>

   To encrypt a file [15:16] replaced it with:
   <pre>ansible-vault encrypt vars/api_key.yml
   </pre>

   [17:40] Reference a password file:
   <pre>ansible-playbook main.yml --vault-password-file ~/.ansible/api-key-pass.txt
   </pre>

   [18:05] Re-Encrypt with a new key without decrypting:
   <pre>ansible-vault rekey vars/api_key.yml
   </pre>

   <pre>ansible-playbook main.yml --ask-vault-pass
   </pre>

   Include another file with `import_tasks: tasks/apache.yml`

7. <a target="_blank" href="https://www.youtube.com/watch?v=FaXVZ60o8L8&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=7" title="[1:04:27]">Molecule Testing and Linting and Ansible Galaxy</a>

8. <a target="_blank" href="https://www.youtube.com/watch?v=CYghlf-6Opc&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=8" title="[1:03:50]">Playbook testing with Molecule and GitHub Actions CI</a>

9. <a target="_blank" href="https://www.youtube.com/watch?v=gV_16dU7XjM&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=9" title="[1:06:10]">First 5 min. server security with Ansible</a>

10. <a target="_blank" href="https://www.youtube.com/watch?v=iKmY4jEiy_A&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=10" title="[59:39]">Ansible Tower and AWX</a>

11. <a target="_blank" href="https://www.youtube.com/watch?v=_rDzMYp-fBs&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=11" title="[1:03:43]">Dynamic Inventory and Smart Inventories</a>

12. <a target="_blank" href="https://www.youtube.com/watch?v=_QZr4xKhir4&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=12" title="[59:31]">Real-world Ansible Playbooks</a>

13. <a target="_blank" href="https://www.youtube.com/watch?v=nyXDR4RG4A8&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=13" title="[1:02:20]">Ansible Collections and a Test Plugin</a>

14. <a target="_blank" href="https://www.youtube.com/watch?v=N7tgLVCXup4&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=14" title="[57:39]">Ansible and Windows</a>

15. <a target="_blank" href="https://www.jeffgeerling.com/blog/2020/ansible-questions-and-answers-final-ansible-101-livestream">[Blog]</a> <a target="_blank" href="https://www.youtube.com/watch?v=sb5XYD3BLMA&list=PL2_OBreMn7FqZkvMYt6ATmgC0KAGGJNAN&index=15" title="Jul 1, 2020 [1:20:03]">Ansible Final LIVE Q&A</a>


* <a target="_blank" href="https://www.youtube.com/watch?v=ZNB1at8mJWY">
   Ansible on a Cluster of Raspberry Pi 2s</a>

Jeff's <a target="_blank" href="https://github.com/geerlingguy/mac-dev-playbook">https://github.com/geerlingguy/mac-dev-playbook</a> provides tools to install executables on MacOS using Ansible.

https://github.com/geerlingguy/ansible-role-dotfiles


<a name="AnsibleVault"></a>

### Ansible Vault Encryption

1. To encrypt a file so it can be stored in a repository such as GitHub:

   <pre><strong>ansible-vault <em>file</em> \
   --ask-vault-password no_log</strong></pre>

   `no_log` censors log output.

   Adding `rekey` resets the password.

Encrypted data within playbooks stored in GitHub can be unencrypted in memory using
<a target="_blank" href="http://docs.ansible.com/ansible/playbooks_vault.html">
Ansible Vault</a>.



<a name="Templates"></a>

## Templates #

In the templates folder are Ansible template files which specify values which resolve variables defined in other files, such as: `{{ variable }}`.

   <pre>
---
hosts: webservers
tasks:
  - name: ensure apache is at the latest version
  - yum: name=httpd state=latest
  - name: write the apache config file
    template: src=/srv/httpd.j2 dest=/etc/httpd.conf
   </pre>

Template files have the .j2 file extension because they are processed by the <a target="_blank" href="http://jinja.pocoo.org/docs/2.10/">Jinga2 templating program</a> that comes with the Ansible installer. Written in Python, Jinga2 is also by Django, Flask, and other Python frameworks.


<a name="Roles"></a>

## Role files #

<a target="_blank" href="http://docs.ansible.com/ansible/playbooks-roles.html">
Role files</a> encapsulate instructions on how Ansible performs a discrete unit of work, such as building a webserver.

A role folder contains sub-folders with these names:

<pre>
acme_sample/
  webserver/
    README.md<strong>
    defaults/ - entered vis main.yml
    files/
    handlers/ - tasks flagged to run using the notify keyword
    meta/main.yml - role dependencies and configurations such as allow_duplicates
    <a href="#Tasks">tasks</a>/
    templates/
    tests/
    vars/</strong>
</pre>

The main.yml in meta defines dependencies:

{% highlight text %}
---
galaxy_info:
  author: John Doe
  description: Quick and easy acme web installer.
  company: Acme
  license: MIT
  min_ansible_version: 1.9
  platforms:
  - name: EL
    versions:
    - all
  galaxy_tags:
    - acme
    - installer
    - web
dependencies:
  - { role: username.common, some_parameter: 3 }
  - { role: username.iptables, open_port: 80 }
{% endhighlight %}

The `role_use.yml` file?

<hr />

<a name="Tasks"></a>

## Tasks #

Ansible <strong>tasks</strong> are commands executed from command line terminals.

Tasks are shereable and repeatable.


<a name="InventoryFile"></a>

### Inventory file #

Ansible inventory files lists hosts can be defined within:

   <tt><strong>/etc/ansible/hosts</strong></tt>

The folder contains .ini format or yml format:

   <pre>
   [webservers]
   192.168.33.20
   192.168.33.30  ansible_connection=ssh ansible_user=mpdehaan

   [webservers:vars]
   webserver_port=2222

   [db]
   db-a.example.com

   [lbservers]
   lbserver  http_port=80 maxRequestsPerChild=808

   [monitoring]
   nagios
   </pre>

   <strong>Group</strong> names are defined within square brackets.
   Groups are referenced in playbooks.

   Variables applicable to all items within a group can be defined.
   What's wrong with the example?

   To get the status of servers under [webservers] in the inventory file above:

   <tt><strong>
   ansible webservers -m ping
   </strong></tt>

PROTIP: Inventory files should not contain variables.

In addition to this ad-hoc run, Ansible can be run based on the contents of Playbooks with a command such as:

   <tt><strong>
   ansible-playbook <em>file.yml</em>
   </strong></tt>

   Add `-v` for more detailed response.

Such inventory files are typically kept in a Git repository.

Inventory files can be dynamic, issued by a program that returns to STDOUT.
Examples is Cobbler, LDAP, cloud such as AWSEC2, retrieving from CMDB, etc.

   <pre>ansible all -l dynamic.py -m ping</pre>

Notice two parameters: `-l` (`--list`) and `--host`.

There are two arguments a dynamic inventory must respond to: --list and --host [hostname]

The --list argument must return a JSON-encoded hash or dictionary containing all groups that are part of the inventory.  The groups must include all host and child group information.

<pre>{
   "httpd": {
       "hosts": ["httpd1","httpd2"],
       "vars": {
           "httpd_port": 80
       },
       "children": ["cdn"]
   },
   "cdn": {
       "hosts": ["cdn1","cdn2"],
       "vars": {
           "content_dir": "/var/www/content"
       },
       "children":[]
   }

}</pre>

The --host [hostname] argument must return either an empty JSON hash or dictionary or a hash or dictionary of variables to make available to templates and playbooks.

<pre>{
    "VAR001": "VALUE",
    "VAR002": "VALUE",
}</pre>



<a name="CreateInventoryFile"></a>

### Create inventory

To ccreate a simple Ansible inventory on the control node in `/home/ansible/inventory` containing `node1` and `node2`

1. keyboard_arrow_up
1. On the control host:

   <pre>sudo su - ansible (if not already ansible user)
   touch /home/ansible/inventory
   echo "node1" >> /home/ansible/inventory
   echo "node2" >> /home/ansible/inventory
   </pre>

<a name="Modules"></a>

### Modules in various languages #

Unlike Puppet, Ansible does not require <strong>agent software</strong> to be installed and
thus potentially leave residual bits on servers.

Modules are the "brains" of Ansible.

Various <strong>modules</strong> running on remote hosts
provide the plumbing for other networking protocols, such as HTTP, runing on remote machines.

<a target="_blank" href="https://docs.ansible.com/ansible/modules_by_category.html">
List of available modules</a>, or locally:

   <tt><strong>ansible-doc -l</strong></tt>

   Press q to quit list, cursor up/down individual line, or space bar to page down.

Responses returned to the Ansible Control Server are in JSON messages.

### Write Custome Module

Modules (hopefully written by following <a target="_blank" href="http://docs.ansible.com/ansible/developing_modules.html#testing-modules">
Module Development Guide</a>)
can be selected from various sources:

* <a target="_blank" href="https://github.com/ansible/ansible-modules-core">
   ansible-modules-core</a> are writtin Python.

* <a target="_blank" href="https://github.com/ansible/ansible-modules-extras">
   ansible-modules-extras</a>
   developed by others have slightly lower use or priority.
<br /><br />

Ansible Module development can be in any dynamic language, not just Python on the server.

   * Simplejson library on *NIX.

<hr />

## Windows support #

Ansible’s native Windows support uses Windows PowerShell remoting to
manage Windows like Windows in the same Ansible agentless way that Ansible manages Linux like Linux.

* Windows Remote PowerShell 2.0 enabled.

* <a target="_blank" href="http://docs.ansible.com/ansible/list_of_windows_modules.html">
   Windows modules</a>

   * Push and execute any PowerShell scripts you write


<a name="SSH2Host"></a>

## SSH into Hosts

To configure sudo access for Ansible on `node1` and `node2` such that Ansible may use sudo for any command with no password prompt.

1. keyboard_arrow_up
1. Log in to node1 and edit the sudoers file to contain appropriate access for the ansible user:

   <pre>ssh cloud_user@node1</pre>

   <pre>sudo visudo</pre>

1. Add the following line to the file and save:

   <pre>ansible    ALL=(ALL)       NOPASSWD: ALL</pre>

1. Repeate above steps for node2.

   Next, verify that each managed node is able to be accessed by Ansible from the control node using the `ping` module. Redirect the output of a successful command to `/home/ansible/output`.

1. To verify each node, run the following as the ansible user from the control host:

   ansible -i /home/ansible/inventory node1 -m ping

   ansible -i /home/ansible/inventory node2 -m ping

1. To redirect output of a successful command to /home/ansible/output:

   ansible -i /home/ansible/inventory node1 -m ping > /home/ansible/output

<a name="AWX"></a>

## Python Ansible Control Server on Linux, not Windows #

New major releases of Ansible come out approximately every two months, with release cycles of about four months.

PROTIP: Ansible was written in <strong>Python 2.6+</strong> and open-sourced within
<a target="_blank" href="https://github.com/ansible/">
GitHub's ansible organization</a>.
Thus, it can run natively on NIX (Linux/Unix/Mac), but Windows not currently supported nor recommended. However, run virtual instances on a Windows, Mac, or other native OS if you want to use them to run Ansible.

To <strong>build</strong> Ansible from source on GitHub:

<pre>git clone https://github.com/ansible/ansible.git --recursive
cd ./ansible
make rpm
sudo rpm -Uvh ./rpm-build/ansible-*.noarch.rpm
</pre>

   `--recursive` is needed because the repo contains sub-repos.

The "ansible_python_interpreter" variable in inventory points to the Python executable folder.


### Python to WinRM

To enable Python to talk with Windows WinRM:

   <pre>sudo pip install pywinrm </pre>

0. Test whether a connection can be made:

   <tt><strong>Test-WsMan 192.168.5.3
   </strong></tt>

   https://github.com/PowerShell/PowerShell/issues/1883

https://github.com/PowerShell/PowerShell/blob/master/docs/KNOWNISSUES.md#remoting-support
(WinRM does not run within MacOS 10) PowerShell
https://quizlet.com/178078947/ansible-devops-automation-mamun-flash-cards/

https://github.com/PowerShell/psl-omi-provider

<a target="_blank" href="https://app.pluralsight.com/library/courses/ansible-windows-getting-started/table-of-contents">VIDEO:
   Getting Started with Ansible on Windows</a> 1h 23m Released 21 Jun 2016
   by JP Toto (<a target="_blank" href="https://twitter.com/jptoto">@jptoto</a>, <a target="_blank" href="http://jptoto.jp">jptoto.jp</a>) shows use of a Mac running Vagrant VirtualBox to emulate Windows.


### Windows

<a target="_blank" href="https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1">This yaml file</a> launches the hello.ps1 PowerShell script:

   <pre>
- name: Run Powershell Scripts
  hosts: test
  tasks:
    - name: run a powershell script
      script: scripts/hello.ps1
      register: out
    - debug: var=out
   </pre>

The script:

   https://github.com/dstamen/Ansible/tree/master/ansible_powershell

See http://davidstamen.com/ansible/using-ansible-to-run-powershell-scripts/

To execute the script, run:

   <tt><strong>ansible-playbook powershell.yml -i hosts
   </strong></tt>

Videos:

*  <a target="_blank" href="https://www.youtube.com/watch?v=cebsmzwtAhM">
   Using Ansible for your Windows Configuration Management</a>
   by David O'Brien (by @david_OBrien, david-obrien.net)
   at NICconf 24 Feb 2016.

*  <a target="_blank" href="https://www.youtube.com/watch?v=9g0IGoRJtzM">
   How to Install on Windows 10 - Control Machine</a>

*  <a target="_blank" href="https://www.youtube.com/watch?v=U0SQ-3-QDzw">
Manage Windows Like Linux with Ansible</a>

* https://www.youtube.com/watch?v=jD2SHtfQHqs


## Playbooks #

Play behavior can be controlled several ways:

   <pre>
   with_items,
   failed_when,
   changed_when,
   until,
   ignore_errors
   </pre>


### Register Output to Variable #

To capture the result or output of a task so that follow-on tasks can act accordingly:

{% highlight text %}
  tasks:
    - shell: /usr/bin/whoami
      register: username
    - debug: msg="Host={{ inventory_hostname }}, User={{ username }}"
    - file: path=/home/myfile.txt
            owner={{ username }}
{% endhighlight %}


<a name="handlers"></a>

### Conditional Handlers #

An example:

{% highlight text %}
  tasks:
    - name: Deploy configuration file
      template: src=templates/httpd.j2 dest=/etc/httpd/conf/httpd.conf
      notify:
        - Restart Apache
  handlers:
    - name: Restart Apache
      service: name=httpd state=restarted
{% endhighlight %}

NOTE: .j2 files are processed by Jinja2, the template engine for Python, which replace variables with data values in static files.

Another <a target="_blank" href="https://stackoverflow.com/questions/39881178/ansible-handlers-and-shell-module">example</a>:

{% highlight text %}
---
- name: Testing forced handler
  hosts: testsys_only
  gather_facts: True

  tasks:
    - name: 'Run legacy script and power off'
      debug: msg="Preparing for reboot"
      changed_when: true
      notify: Legacy sysprep

  handlers:
    - name: Enable Service1
      service: name=service1 enabled=yes state=restarted

    - name: Legacy sysprep
      shell: /var/scripts/prep-reboot.sh
{% endhighlight %}

To set a register to put result in a variable, then
if the debug sees that a previous task failed, it would send a message.

{% highlight text %}
  tasks:
    - command: ls /bad/path
      register: result
      ignore_errors: yes

    - debug: msg="Failure!"
      when: result|failed{% endhighlight %}

NOTE: Handlers don't run until all playbook tasks have executed.

{% highlight text %}
  tasks:
    - copy: src=files/httpd.conf
            dest=/etc/httpd/conf/
      notify:
        - Apache Restart
  handlers:
    - name: Apache Restart
      service: name=httpd state=restarted{% endhighlight %}

NOTE: A particular handler only executes once if needed.

NOTE: Handlers don't run until all playbook tasks have executed.

<a target="_blank" href="https://codereviewvideos.com/course/ansible-tutorial/video/ansible-handlers">VIDEO</a>


<a name="ConfigSettings"></a>

## Config. settings #

Variables can be defined in different locations. Ansible looks for configuration variables in this sequence, and stops searching once it finds one.

   1. **$ANSIBLE_CONFIG** system environment variable
   2. **./ansible_cfg** in current directory
   3. **~/ansible.cfg** ($HOME directory of currently logged in account)
   4. **/etc/ansible/ansible.cfg** global config. file installed by default


### ansible.cfg

Edit the file to make common changes, such as:

* inventory location from `/etc/ansible/inventory`
* SSH timeout from default 10 seconds
* `-f` number of hosts acted upon (by forks) at the same time by Ansible. The default is 5. This can be overridden within a playbook by the serial keyword.

### $ANSIBLE_CONFIG

An example $ANSIBLE_CONFIG environment variable
<a target="_blank" href="https://docs.ansible.com/ansible/intro_configuration.html">
from the full list</a> is:

   <pre>
   $ANSIBLE_FORKS=5
   </pre>

   This sets the maximum number of parallel operations allowed on an Ansible server,
   determined through performance and capacity testing.


## Include files #

{% highlight text %}
  tasks:
    - include: wordpress.yml
      vars:
        sitename: My Site
    - include_vars: variables.yml
{% endhighlight %}


## Roles #

* https://bitbucket.org/fquffio/ansible-elasticsearch/src
* https://bitbucket.org/fquffio/ansible-kibana/src
* https://bitbucket.org/fquffio/ansible-iptables


## Daemon Sets

Scalyr.com has a DaemonSet for Kubernetes monitoring.


## Rolling updates #

Ansible achieves zero-downtime deployments with
multi-tear rolling updates to each specific node in a cluster.

This specifies taking 5 machines at a time out of a cluster:

   <pre>
   - hosts: webservers
     serial: 5

   pre_tasks:

   - name: take out of load balancer pool
     local_action: command /usr/bin/take_out_of_pool {{ inventory_hostname }}

  roles:
   - common
   - webserver
   - monitored

  post_tasks:
   - name: add back to load balancer pool
     local_action: command /usr/bin/add_back_to_pool {{ inventory_hostname }}
   </pre>


## Social Community #

* Twitter: @ansible by Red Hat, @robynbergeron
* https://groups.google.com/forum/#!forum/ansible-announce
* On a IRC client, select Destination: Freenode, and add channel #ansible.
* <a target="_blank" href="https://galaxy.ansible.com/explore#/">
Ansible-Galaxy.com/explore/</a> is the community hub to find and share reusable Ansible content.

1. Link to GitHub https://galaxy.ansible.com/accounts/github/login/
1. Confirm email.

* <a target="_blank" href="https://www.ansible.com/ansiblefest">AnsibleFest</a> Atlanta September 24-26, 2019

## Tutorials

<a target="_blank" href="https://www.redhat.com/en/services/training/do007-ansible-essentials-simplicity-automation-technical-overview">Ansible Basics: Automation Technical Overview (DO007)</a>

<a target="_blank" href="https://www.redhat.com/en/services/training/do710-ansible-automation-platform-bootcamp">$10,000 10-day Ansible Automation Platform Boot Camp (DO710)</a>
for Linux administrators and developers to learn how to automate Linux system administration tasks with Ansible Automation Platform, manage complex automation workflows at scale, and evaluate automation performance. With enrollment is 1 year of Red Hat Learning Subscription Standard with unlimited access to all online courses and up to 5 certification exams.

DO007: ANSIBLE BASICS: AUTOMATION TECHNICAL OVERVIEW
Create, scale, and manage automation with Red Hat Ansible Automation Platform with Ansible Basics: Automation Technical Overview (DO007).

EX374: RED HAT CERTIFIED SPECIALIST IN DEVELOPING AUTOMATION WITH ANSIBLE AUTOMATION PLATFORM EXAM
This exam tests your ability to automate system administration tasks using Ansible Automation Platform.

RH294: Red Hat Linux Automation with Ansible (RH294) teaches how to automate provisioning, configuration, app deployment, and orchestration.

## Certifications

Red Hat Certified Specialist in Managing Automation.

<a target="_blank" href="https://www.redhat.com/en/services/training/ex467-red-hat-certified-specialist-managing-automation-ansible-automation-platform-exam">EX467</a>: Red Hat Certified Specialist in Managing Automation with Ansible Automation Platform exam
tests your ability to automate system administration tasks at scale using Ansible Automation Platform automation hub and automation controller.

EX417: Red Hat Certified Specialist in Microsoft Windows Automation with Ansible Exam
A performance based exam to assess candidates’ skills and knowledge of managing Microsoft Windows® systems using Red Hat Ansible Automation Platform.

EX457: Red Hat Certified Specialist in Ansible Network Automation exam
A performance-based test used to assess the skills and knowledge to manage network infrastructure using Red Hat® Ansible®.

<a target="_blank" href="https://www.redhat.com/en/services/training/ex447-red-hat-certified-specialist-advanced-automation-ansible-best-practices-exam">EX447</a>: Retired - Red Hat Certified Specialist in Advanced Automation: Ansible Best Practices exam
A Red Hat Certified Specialist in Advanced Automation: Ansible Best Practices has validated mastery of Red Hat Ansible and knowledge of Ansible Tower.

## Videos #

<a target="_blank" href="https://www.ansible.com/resources/videos/ansiblefest">Videos of AnsibleFest going back to 2016</a> in London and 2017 San Francisco.

MEH: <a target="_blank" href="https://www.youtube.com/user/RedHatVideos/videos">Red Hat's video channel</a> and <a target="_blank" href="https://www.youtube.com/user/redhatsummit">Red Hat Summit</a> doesn't have a playlist specifically for Ansible.

* <a target="_blank" href="https://www.ansible.com/quick-start-video">
  ansible.com/quick-start-video</a> provide your email because it is a high-level, high-flautin' marketing pitch which
  introduces Ansible Tower proprietary software.

Tim Gerla of Ansibleworks:

   * <a target="_blank" href="https://www.youtube.com/watch?v=PDRdCqFp2sY">
   Continuous Deployment with Ansible USENIX</a> 38:38 on 11 Jul 2013

* <a target="_blank" href="https://app.pluralsight.com/library/courses/hands-on-ansible/table-of-contents">
   Hands-on Ansible Pluralsight 3h 53m video course</a> 29 Dec 2015
   by Aaron Paxson | @Neelixx | myteneo.net

* <a target="_blank" href="https://app.pluralsight.com/library/courses/docker-ansible-continuous-delivery/table-of-contents">
   Continuous Delivery Using Docker and Ansible Pluralsight video course</a> 10 May 2016
   by Justin Menga (@jmenga | pseudo.co.de) in 7h 13m
   creates Ansible files for a Python "TO DO" app using the Django REST framework.
   The files create Docker image.

* <a target="_blank" href="https://www.youtube.com/watch?v=oZ45v8AeE7k">
   Ansible and Docker</a> by Patrick Galbraith from HP's Advanced Technologies group.

Gwyn Price:

   * <a target="_blank" href="http://gwynprice.com/2015/11/06/ansible-playbok-to-create-an-rds-instance-and-get-the-endpoint/">
   Ansible Playbook to create an RDS instance and get the endpoint 26 Nov 2015</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=w8fOEEMqpOw">
    Ansible Hands-On Training</a>

* <a target="_blank" href="https://www.youtube.com/watch?v=w8fOEEMqpOw">
   Ansible Hands-On Training</a>
   by Glen Jarvis

* <a target="_blank" href="https://www.youtube.com/watch?v=Lxd6JMMxuwo">
   Getting Started With Jenkins</a>
   edureka!

* <a target="_blank" href="http://devopsguys.com/">http://devopsguys.com</a> in the UK

* <a target="_blank" href="https://www.youtube.com/watch?v=OSkGaxR1yds">
  OpenStack Ansible Deployment (OSAD)</a>

## Ansible on laptops

<a target="_blank" href="https://github.com/monfresh/laptop">https://github.com/monfresh/laptop</a> my personal playbooks and scripts to install a laptop from scratch including some dotfiles. Based on Fedora 27. Not idempotent.

<a target="_blank" href="https://github.com/vaskas/laptop-ansible">https://github.com/vaskas/laptop-ansible</a>
for Fedora 26


## Misc

* From 2013 until October 11, 2017, Ansible Weekly newsletter at <a target="_blank" href="https://hvops.com/news/ansible/">https://hvops.com/news/ansible</a>

The diagram is based on <a target="_blank" href="https://www.ansible.com/how-ansible-works/">https://www.ansible.com/how-ansible-works</a>:

<a target="_blank" href="https://github.com/sthulb-attic/laptop-osx">https://github.com/sthulb-attic/laptop-osx</a> by <a target="_blank" href="https://twitter.com/sthulb">@sthulb, an Amazon Solution Architect</a>

<a target="_blank" href="https://hvops.com/articles/ansible-post-install/">https://hvops.com/articles/ansible-post-install/</a>


   ![ansible-node-454x408-13043](https://user-images.githubusercontent.com/300046/58840945-e6c31500-8624-11e9-8571-43826447e3b8.png)


* https://www.udemy.com/course/valaxy-devops/?referralCode=8147A5CF4C8C7D9E253F
"100% Hands-on labs on how to create DevOps CI/CD pipelines using Git, Jenkins, Ansible, Docker and Kubernetes on AWS"</a> also on <a target="_blank" href="https://www.youtube.com/channel/UC_evcfxhjjui5hChhLE08tQ">YOUTUBE</a>

## More on DevOps #

This is one of a series on DevOps:

{% include devops_links.html %}
