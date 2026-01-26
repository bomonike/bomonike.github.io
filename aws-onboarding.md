---
layout: post
date: "2026-01-26"
lastchange: "26-01-26 v102 flowchart :aws-onboarding.md"
url: https://bomonike.github.io/aws-onboarding
file: "aws-onboarding"
title: "AWS Onboarding"
excerpt: "Get started safely & quickly using AWS GUI, CLI, and Terraform"
tags: [AWS, EC2, cloud, on-boarding]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2016-03-29"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

<a target="_blank" href="https://wilsonmar.github.io/aws-onboarding/">
This</a> is a <strong>hands-on</strong> tutorial for <strong>absolute beginners</strong> to begin using AWS cloud like a pro -- without tedious "talking head" lectures. Here you do some action and explanations. "PROTIP" tags highlight my hard-won advice available no where else.

Covered here are instructions on how to install and use AWS CLI automation, smart phone apps, and 3rd party tools used by pros.


<a name="KPI"></a>

## Better KPI values for onboarding

"PROTIP" Recommendations in this article are intended to improve these Key Performance Indicators (KPIs) of an organization:

What is the max/average hours that:

A. each <strong>Administrators</strong> to get accounts and a laptop ready for receipt by a new team member?

A1. each Administrator needs to spend between receiving instructions to get an AWS account ready for use by an end-user?

B. each <strong>end-user</strong> needs to spend from receiving a laptop to being completely productive (create and file a Git PR)?

B1. each end-user needs to spend between receiving instructions to being completely productive on AWS?

PROTIP: CAUTION: Using speed as the primary basis for judging performance can lead to cutting corners and thus security holes. So security must be a primary consideration. But security is difficult to measure.



## AWS Marketing Page

1. Use an internet browser to get on the <strong>AWS marketing page</strong> at 

   <a target="_blank" href="https://aws.amazon.com/">https://aws.amazon.com</a> 

1. Explore its menu items:

   <a target="_blank" href="https://aws.amazon.com/"><img alt="aws-landing-menu.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769154950/aws-landing-menu_e8io6g.png"></a>
   <!-- aws-marketing-1205x224_uaojtf.png -->

   PROTIP: Right-click on each link to "open in a new tab". Then quickly switch back and forth between this tutorial and other browser tabs by pressing <strong>Command+`</strong> (backtick at the left of the 1 key). However, tabs set to full-screen are not accessible this way but by pressing shift+command+/ to see the menu to select the tab you want to switch to.

   "My account" consists of:
   * <a href="#Console">AWS Management Console</a>
   * <a href="#account-settings">Account Settings</a>
   * <a href="#billing">Billing & Cost Management</a>
   * <a href="#security">Security Credentials</a>
   * <a href="https://health.console.aws.amazon.com/health/home?nc2=h_uta_hd#/account/dashboard/open-issues">AWS Personal Health Dashboard</a> (EventBridge rules)
   <br /><br />
   "Support" consists of:
   * <a href="#SupportCenter">Support Center</a>
   * Expert Help
   * Documentation
   * Knowledge Center
   * AWS Support Overview
   * AWS re:Post

1. Set a <strong>bookmark</strong> this page in your browser for quicker frequent access. 

<a name="ComparePlans"></a>

## Compare Support Plans

   https://support.microsoft.com/en-us/home/contact?SourceApp=smcivr2

1. Click <a target="_blank" href="https://console.aws.amazon.com/support/plans/home?#/">Amazon's Support Plan page here</a>.

   Admins call (800) 865-9408 or (800) 642 7676 (toll-free, US only). Outside the United States, see <a target="_blank" href="https://support.microsoft.com/en-us/topic/global-customer-service-phone-numbers-c0389ade-5640-e588-8b0e-28de8afeb3f2">global support phone numbers</a>.

   The Basic account does not enable you to communicate with Amazon people who can answer technical questions.

   The $29/month Developer Plan enables you to open an unlimited number of support cases
   only via email, with a 12-hour response time if "system impaired". Otherwise, the SLA
   is 24 hours.

   The $100/month Business Plan enables you to have 24/7 chat, phone, as well as email access with AWS Support people on an unlimited number of support cases, with a 1-hour response time for "production down" issues, or 4-hour response for "production impaired" issues.

   Amazon's <strong>Enterprise Plan</strong> for $15,000/month gets you 15 minute response on "business critical system down" issues. This plan also comes with an assigned TAM (Technical Account Manager).

   These dollar amounts are minimums, not fixed prices.

   <a target="_blank" href="https://aws.amazon.com/premiumsupport/programs/iem/">https://aws.amazon.com/premiumsupport/programs/iem/</a> mentions "AWS Infrastructure Event Management (IEM) offers architecture and scaling guidance and operational support during the preparation and execution of planned events, such as shopping holidays, product launches, and migrations."

1. Scroll down to mouse over the "$29" on the Pricing line at the bottom of the table.

   ![aws-onboarding-pricing-179x101-7688](https://user-images.githubusercontent.com/300046/40592743-edf804f8-61df-11e8-82e4-d48308fe1c92.jpg)

   PROTIP: Pricing for Developer support is the Greater of $29 or 3% of monthly AWS usage,
   so you will pay more than $29 if you spend more than $966.67.

1. Scroll back up to click the "Pricing example" link on the right.
1. Notice that if your spend is $2,000, Amazon bills you $60 for support, not $29.

   <img alt="aws-onboarding-price-example-533x307-27004.jpg" width="533" src="https://user-images.githubusercontent.com/300046/40593326-2004f3f2-61e5-11e8-956f-c74bc35a161b.jpg">

1. Click the "Business" and "Enterprise" buttons in the pop-up to see sample volume pricing tiers.


<a name="Flowchart"></a>

## Flowchart

1. Click on the flowchart for a movie about the steps to establish an essential corporate IT ecosystem:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769454010/it-ecosystem-1466x732_hllm2j.png"><img alt="it-ecosystem-1466x732.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769454010/it-ecosystem-1466x732_hllm2j.png" /></a>

1. The IT department creates laptops for the rest of the organization that are installed with secure DNS for Quad9, Password Manager, and other utilities.
1. People in the Payables department are fudiciaries of the AWS Root Account, with the corporate credit card used to pay for billings.
1. System Administrators maintain a database of regions and what each service costs.
1. The Human Resources department maintain a list of people, their roles, and what parts of the system each is allowed use.
1. Groups and network areas.
1. That information is used by a user setup program to 
1. create IAM accounts used by
1. End Users to reference and update
1. production databases.

1. Due to the impact thieves have had, there is an Archivist who catalogs, backs up, restor. In many companies, to reduce the "blast radius" of hacks, Archivists are the only ones who can <strong>delete</strong> data.
1. System Administrators and some End-users manage the creation and use of logs, metrics, dashboards, reports, and alerts based on data.

RECAP static flowchart:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769454010/it-ecosystem-1466x732_hllm2j.png"><img alt="it-ecosystem-1466x732.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769454010/it-ecosystem-1466x732_hllm2j.png" /></a>


<a name="Preparations"></a>

## Preparations for highly secure use of AWS

PROTIP: The distinctive aspect of this tutorial is that you are trained to <strong>form habits</strong> like elite Olympic athletes so can brag like this: 

> "Instead of convenience, I consistently endure disciplines that enable me to be trusted by enterprises to keep assets safe from robbers."

<a name="Laptop"></a>

### Laptop/Chromebook computer

1. Can a <strong>Chromebook</strong> with a relatively small amount of RAM and data storage be used to access AWS? YES!

   AWS (Amazon Web Services) runs in Amazon's data centers to provide on-demand access to computing resources, including servers, storage, databases, and analytics tools.

   However, Amazon provides its "Outpost" service for its enterprise customers to use a modified form of AWS commands and services on <strong>servers</strong> those enterprises maintain on their own premises. There is also <a target="_blank" href="https://www.localstack.cloud/">LocalStack</a> which replicates fully functional cloud applications on local infrastructure.
   https://github.com/localstack/localstack

   Either way, a Chromebook can be used to control AWS resources. However, a powerful laptop is useful to hold larger files and process them locally, perhaps off-line.

   <a target="_blank" href="https://aws.amazon.com/blogs/aws/appstream-chrome-chromebook-support/">The AWS Appstream app</a> is used to display streaming content (like Amazon Prime).


   A Raspberry Pi 5 is powerful enough.

   ### Secure DNS Configuration

1. Configure your computer to use DNS resolver addresses 9.9.9.9 and 149.112.112.112 so that <a target="_blank" href="https://quad9dns.github.io/documentation/">Quad9.net</a> automatically block malicious websites. Those who <a target="_blank" href="https://en.wikipedia.org/wiki/Quad9#Service">secure DNS w/ECS</a> would use 9.9.9.11 and 149.112.112.11. When testing false positives, unsecure IPs 9.9.9.10 and 149.112.112.10 are used temporarily. 

   <a target="_blank" href="https://www.youtube.com/watch?v=Z4Wi9XWmlNk">VIDEO: Install on Windows 10</a>

   On macOS: https://quad9.net/news/blog/doh-with-quad9-dns-servers/
   1. Download the mobileconfig file from https://docs.quad9.net/Setup_Guides/iOS/iOS_14_and_later_%28Encrypted%29/
   1. Open the Apple Settings app. Click the "+". Click to Open the profile. Continue.
   1. Click Install (or Continue then Install).
   1. Enter your Mac password when prompted.
   1. Click Install again to confirm.
   <br /><br />
   Alternately on macOS Terminal, type <tt>sudo scutil</tt>
   ```
   > open
   > d.init
   > d.add ServerAddresses * 9.9.9.9 149.112.112.112
   > set State:/Network/Service/PRIMARY_SERVICE_ID/DNS
   > quit
   ```

   ### Password/Secrets Vault/Manager

1. On a trusted computer, establish a personal <strong>password manager</strong> (digital vault) for storing passwords and other sensitive information.

1. Store your password manager vault file on a password-protected <a target="_blank" href="https://www.geckoandfly.com/21463/usb-password-protect-lock-encrypt-flash-drive/">removeable USB drive that has brute-force protection</a>. If the Admin PIN is entered incorrectly 10 times in a row, brute force attack protection triggers a crypto-erase of the drive. 

   Linux users scared of PC Keyboard Loggers can get the <a target="_blank" href="https://www.kingston.com/en/usb-flash-drives/ironkey-kp200-encrypted-usb-flash-drive">Kingston Ironkey 200 32GB with a built-in battery-operated PIN pad</a> for <a target="_blank" href="https://www.amazon.com/dp/B0CF9KBHNR/">$136 from Amazon</a>.

1. When you're on a trusted computer, <strong>backup</strong> a copy of your secrets to keep in a safe place (fireproof & EMP-proof safe, etc.). 

   Windows and MacOS users can use, for <a target="_blank" href="https://www.amazon.com/dp/B0B5B2WL5R/?th=1">$37.99 on Amazon</a>, the Kingston Ironkey Locker+ 50 32GB provides automatic cloud backup (if you trust Kingston). It needs a <a target="_blank" href="https://www.amazon.com/Adapter-Anker-High-Speed-Transfer-Notebook/dp/B08HZ6PS61/">USB-A to USB-C adapter</a>.

   <a name="MFA"></a>

   ### Mobile phone

1. On your mobile phone, install app <a target="_blank" href="https://www.authy.com/">Authy (from Twilio)</a> for MFA (Multi-Facator Authentication) which can be restored on new phones if you lose your phone.

1. Secure each 3rd-party account (AWS, etc.) with <strong>multi-factor authentication</strong> (MFA). Save recovery codes among Notes in your Password Manager. 

   ### AWS SkillBuilder account

1. Use your <strong>personal professional email address</strong> (such as "johndoe@proton.me") when creating a personal AWS "Skill Builder" account at <a target="_blank" href="https://skillbuilder.aws">https://skillbuilder.aws</a> which links to your AWS certifications for life. NOTE: Additional accounts & passwords are used for Amazon marketplaces, AWS Events, and AWS cloud work.

   ### A different Chrome Profile per Email

1. Install and use the <strong>Google Chrome browser</strong> because it support <strong>https://support.google.com/chrome/answer/2364824">People Profiles</a> can encapsulates each email's own preferences, browse history, and cookies. Click your user icon at the upper-right to switch among profiles.

1. So you can ignore phishing attempts to common email domains and powned email addresses, <strong>create different emails</strong> for social media, professional, and governmental/banking activities. Use protonmail.com (now that gmail.com is no longer cool).

1. Create a different email

   ### GitHub account

1. For each email used within AWS, create a GitHub account with SSH certificates.

   ### GitHub

1. PROTIP: Open a GitHub account for each email address.

1. Setup GitHub SSH.

1. Setup GitHub identity.


   <a name="UniqueBrowserProfile"></a>

   ### Unique Browser Profile for Each Email

1. Install Google Chrome because it has detection of malicious conditions.
1. You will have several gmail addresses, one for each AWS account you create.
1. To avoid confusion between Google accounts, install the <a target="_blank" href="https://chrome.google.com/webstore/detail/multi-login-helper/nccllfnllopfpcbjdgjdlfmomnfgnnbk">Multi Login Helper</a> extension to create a new browser profile for each AWS account you create. 

   ### Multi-Account Chrome Extention

   PROTIP: The Multi Login Helper extension is also useful for creating a new browser profile for each Google account you have.
   
   Only the Google Chrome browser supports <a target="_blank" href="[#ChromeExtension](https://towardsdev.com/managing-multi-session-aws-managed-console-with-the-aws-extend-switch-roles-chrome-extension-e2b8255e2163)">installation</a> of the simultaneous sign-in multiple AWS accounts in the AWS Management Console GUI. This "Multi-Session" feature can be used to switch between for up to 5 AWS accounts, each in a different browser tab, each tab managed independently with unique credentials and other context. The feature was added <a target="_blank" href="https://aws.amazon.com/about-aws/whats-new/2025/01/aws-management-console-simultaneous-sign-in-multiple-accounts/">Jan 16, 2025</a> in all Commercial Regions. 

1. Install the extension by visiting the <a target="_blank" href="https://chromewebstore.google.com/detail/aws-extend-switch-roles/jpmkfafbacpgapdghgdpembnojdlgkdl">AWS Extend Switch Roles Chrome Extension</a> page.
1. Click to "Enable it".
1. In CLI, define the configuration using command <tt>aws config format</tt> 

   <tt>~/.aws/config</tt> or  the %UserProfile% directory On Windows.

1. Open a new browser tab for each account. See https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/multisession.html
1. Use the command+' key combination to switch among tabs.
1. When a tab group is removed, the corresponding session will be automatically signed out.


## Ways to interact with AWS:

Console GUI, CLI, API, IoC, Mobile:

* <strong>Visually</strong> clicking and typing on the internet browser "<strong>AWS Management Console</strong>"</a> at <tt>https://console.aws.amazon.com/</tt>. It's used during initial setup to <a href="#RootCredentials">create and configure</a>, then <a href="#RootLockDown">lock down</a> a <a href="#RootCredentials">Root Account</a>. Authentication is by user name and password plus MFA.

* <strong>Textually</strong> typing in the <strong>CLI</strong> (Command Line Interface)</a> provided by the MacOS/Linux Terminal or Windows PC Command (cmd) utility. The AWS CLI program is installed for <a target="_blank" href="https://wilsonmar.github.io/aws-cli/"><tt>aws</tt> commands</a> to be executed interactively or within interpretive Bash scripts scheduled in batch jobs. Authentication is by <tt>aws configure</tt> command which stores credentials <tt>aws_access_key_id</tt> and <tt>aws_secret_access_key=</tt> in an unencrypted file at <tt>~/.aws/credentials</tt>.

* <strong>Programmatically</strong> running custom program code (such as Pyyhon, JavaScript, etc.) which call AWS APIs (Application Programming Interface) called by custom programs calling <a href="#APIKeys">AWS's API (Application Programming Interface)</a>. Amazon's Boto3 SDK and Pulumi.com use this approach. This is the mechanism behind the scenes by <a href="#MobileApps">mobile apps</a>. Authentication is by including APIKeys generated by AWS.

* <strong>Declaratively</strong> running Infrastructure as Code (IoC) DSL (Domain Specific Language) definitions to define the <strong>desired state</strong> of the AWS environment. This makes it easier to track changes and repeat the same environment in different regions and accounts. This also makes it possible to evaluate the vulnerabilities and costs of an environment even before it is created. Authentication is by including APIKeys generated by AWS. <a target="_blank" href="https://spacelift.io/blog/terraform-alternatives">Alternatives for IoC</a> on AWS include AWS CloudFormation, AWS CDK, Hashicorp CDKTF, <a target="_blank" href="https://wilsonmar.github.io/terraform/">Hashicorp Terraform</a> directed acyclic graphs, OpenTofu, <a target="_blank" href="https://spacelift.io/customers/affinity">Spacelift</a>, <a target="_blank" href="https://www.firefly.ai/academy/terraform-alternatives">Firefly</a>, <a target="_blank" href="https://scalr.com/learning-center/terraform-alternatives-checklist-before-switching/">Scalr cloud</a>, <a target="_blank" href="https://wilsonmar.github.io/ansible/">Red Hat Ansible</a>, Crossplane (inside K8s clusters), <a target="_blank" href="https://github.com/skypilot-org/skypilot">SkyPilot</a> (GPUs), etc. Some of these are able to use <a target="_blank" href="https://wilsonmar.github.io/opa/">Open Policy Agents (OPA)</a> to define and enforce policies for security, accurate billing, etc. https://www.youtube.com/watch?v=RTEgE2lcyk4&t=1332s

* <strong>Visibly</strong> reading from <a href="#MobileApps">AWS Console Mobile app</a> month-to-date costs, CloudWatch alarms triggered, and AWS Health issues identified.

SECURITY PROTIP: Many enterprises do not permit use of interactive CLI and Console GUI in production and instead allow only automated API calls by IaC (such as CloudFormation and Terraform). This is to ensure version control and repeatability during testing.


<hr />

<a name="AWS_profile"></a>

## AWS Profile

Follow these steps to create a profile account:

1. Create a new email address for your AWS account.
1. In your Password Manager app (such as KeepassXC), create a new entry to store the email, Account Name, password, Account ID, Secret info.
1. If you don't have Google Chrome installed, install it.
1. Open a Google Chrome app.
1. Click the person icon at the upper-right corner and sign in using your personal AWS "Skill Builder" profile email address.

   Edit <a target="_blank" href="https://aws.amazon.com/profile">Your AWS Profile</a> shown on <br /><a target="_blank" href="https://aws.amazon.com/profile/community-public">Community at https://aws.amazon.com/profile/community-public</a>
   * <a target="_blank" href="https://aws.amazon.com/repost/">AWS re:Post</a> curated knowledge and a vibrant community
   * <a target="_blank" href="https://builder.amazon.com/">AWS Builder Center at https://builder.amazon.com</a>
   * <a target="_blank" href="https://aws.amazon.com/blogs/">AWS Blogs at https://aws.amazon.com/blogs</a>
   * <a target="_blank" href="https://aws.amazon.com/startups/">AWS Startups at https://aws.amazon.com/startups</a>
   * <a target="_blank" href="http://community.amazonquicksight.com/">Amazon Quick Suite Community at http://community.amazonquicksight.com</a> to "Find answers to your questions, learning resources, and events in" major cities and <a target="_blank" href="https://community.amazonquicksight.com/tags/c/events/28/online">online</a>, <a target="_blank" href="https://www.youtube.com/channel/UCqtI0cKSreCwUUuKOlA1tow">on YouTube</a>
   * <a target="_blank" href="https://www.awsmerchstore.com">AWS Merch Store</a>
   * forms and surveys on AWS Pulse
   * online webinar registrations and content downloads
   <br /><br />

   NOTE: <a target="_blank" href="https://iq.aws.amazon.com/?utm=dp">AWS IQ</a> (Experts on Demand) will be discontinued on May 28, 2026.

### Job Roles

* Cloud Application Developer: Turn Ideas into Digital Reality
* DevOps Engineer: Ensure Smooth Cloud Operations
* Cloud Engineer: Build the Backbone of the Cloud
* Cloud Administrator: Safeguard and Optimize the Cloud
* Cloud Support Engineer: Solve Complex Challenges


### Social Accounts

* <a target="_blank" href="https://www.reddit.com/r/aws/">Reddit r/AWS</a>

* <a target="_blank" href="https://www.twitch.tv/aws/videos/all">https://www.twitch.tv/aws/videos/all</a> videos include:

   * <a target="_blank" href="https://www.twitch.tv/videos/206753304">IoT at re:Invent 2017 video</a> with Sarah Cooper (General Manager IoT), Kip Larson (Principal Product Manager for IoT Analytics)

* Sign-up to receive the <a target="_blank" href="https://www.amazon.com/AWS-Architecture-Monthly-FREE-Subscription/dp/B077F2P7DH/ref=pd_sim_405_1?_encoding=UTF8&psc=1&refRID=8JWKBP6Z7PVJZG34T3AW">AWS Architecture Monthly (FREE Subscription)</a> on your Kindle account.


<a name="ForumAccount"></a>

### Create Forum Account

1. PROTIP: To ensure anonymity interacting on public forums, the Administrator should create in a public email system (such as gmail.com, hotmail.com, etc.) an email address for use on forums. Don't use a real name in the email address, but a positive adjective with a number to ensure it's unique, such as "concerned123".

   AWS says "Your email will be kept private" but I don't trust that they can't be hacked.

2. Go to the AWS forums at URL:

   <a target="_blank" href="https://forums.aws.amazon.com/forum.jspa?forumID=150">https://forums.aws.amazon.com/forum.jspa?forumID=150</a>

3. Register the new email address along with an AWS Nickname without a proper name, such as, again, "concerned123".

3. Use that email in StackOverflow.com and other public forums.


<hr />

<a name="TypesOfAccounts"></a>
   
## Types of accounts to sign-up for

1. PROTIP: There are several different sign-up pages: one for each country and type of user: 

   * If you want to create a <strong>stand-alone account</strong> unaffiliateed with any company, click the "Sign up" button:<br /><a target="_blank" href="https://signin.aws.amazon.com/signup?request_type=register">https://signin.aws.amazon.com/signup?request_type=register</a> (<a href="#StandAloneAccount">see below</a>)
   * If you're a <strong>student or educator</strong> with an ".edu" email:<br /><a target="_blank" href="https://aws.amazon.com/education/awseducate/">https://aws.amazon.com/education/awseducate/</a>
   * If you're using your <strong>corporate email</strong>, check with your IT department, which may use federated Single-Sign-On. <a target="_blank" href="https://us-east-1.console.aws.amazon.com/singlesignon/home?region=us-east-1#/">IAM Identity Center</a> managed with the free AWS Organizations centralized service to enable enterprise scaling. It involves definition of Organizational Units (OUs) to specify additional security controls that enable consolidated billing, policy-based controls (SCPs), resource sharing, and organized account structures.

   * If you're working with an AWS salesperson assigned to a business:<br /><a target="_blank" href="https://aws.amazon.com/resources/create-account/">https://aws.amazon.com/resources/create-account/</a>
   * If you're using a gov (US government) cloud:<br /><a target="_blank" href="https://aws.amazon.com/government-education/government/">https://aws.amazon.com/government-education/government/</a>
   * If you're using the AWS-affiliated cloud in China, that's a whole different ecosystem. See<br /><a target="_blank" href="https://www.amazonaws.cn/en/about-aws/china/">https://www.amazonaws.cn/en/about-aws/china</a> as China law dictates that foreign companies cannot own cloud computing infrastructures within the country.
   <br /><br />


<a name="StandAloneAccount"></a>

## Stand-alone root account setup

These are steps to create a stand-alone root account.

1. At <a target="_blank" href="https://aws.amazon.com/">https://aws.amazon.com/</a>, click "Create Account" at the top-right corner.
1. Type your email address which you will set aside as the <strong>root</strong> email address which you will next use in social media. 
1. For "AWS account name", examples are "master-billing" but the email works too.
1. Switch to your email tab to click the link to verify your email address.
1. PROTIP: When providing answers to Security Challenge Questions, do not specify the real answer,
   which someone stole or figured out through social engineering. Instead, <strong>answer with nonsense</strong>
1. Write that secret information down in your password manager.
1. Compe up with a strong password.

   PROTIP: Use 1Password so that you can easily generate up to <strong>64 character</strong> password, but remember only one password to access the 1Password database of secrets. 1Password encrypts its database so that you can make backups (to a USB drive or secure cloud). I favor 1Password because it provides a way to sync changes with your smartphone without going through the internet.

   Because you only have to remember one master password, you can are free to change various passwords as often as you want with no fear of forgetting them.

1. So you don't create a typo, from the password manager, copy the password and paste it into the password field.
1. Paste the password (so you write a typo) into a text file, print it out to paper, and put that in your fire-proof vault.

   ### Credit card

1. Switch to your credit card webpage (such as CapitalOne.com) and login. PROTIP: Generate a special <strong>virtual</strong>number only for the AWS account.

   <a target="_blank" href="https://www.linkedin.com/pulse/how-use-aws-free-tips-teaching-college-wong-chun-yin-cyrus-%E9%BB%83%E4%BF%8A%E5%BD%A5-/">PROTIP</a>: You need a credit card to open an account. But to limit exposure, some people provide to AWS numbers from a <a target="_blank" href="https://usa.visa.com/pay-with-visa/cards/prepaid-cards.html">pre-paid reloadable Visa</a> gift <a target="_blank" href="https://aws.amazon.com/premiumsupport/knowledge-center/accepted-payment-methods/">(debit) card</a> <a target="_blank" href="https://usa.visa.com/pay-with-visa/find-card/get-prepaid-card">pre-paid online</a> (which has an expiration date and some have a monthly service fee). 
   
   * The Blue Card from Walmart and American Express ends June 2026
   * Discover bank card
   * The <a target="_blank" href="https://www.drawpayvisa.com/">Drawpay card</a> provides a 1% refund on purchases and a mobile app to view balances. Others provide fee-Free cash withdrawal at over 25,000 MoneyPass ATMs.
   <br /><br />

1. In your password manager, write down the virtual number and switch back to AWS to paste that.

   PROTIP: CAUTION: Once you give Amazon a credit card number, you cannot remove it. Amazon can continue to charge for it until the card expires in several years.

1. In your password manager, type the expiration, and CVV card.
1. PROTIP: Setup automatic billing to your checking account and note that in your monthly budget app.

1. Provide your phone number. PROTIP:If you provide a Google Voice virtual number, it would be less of a hassle in case you change the actual number of your phone assigned by your carrier. So in case you change phone vendors (from ATT to T-Mobile), you only need to change it in Google Voice. Not everyone accepts a Google Voice virtual number for SMS verification.
1. PROTIP: In your password manager, write down in that tag field the last 4 digits of the virtual number so you can easily find which accounts make use of that number.

1. In your password manager, write down the <strong>Account Id</strong> that appears in the upper-right corner of the AWS Console page, such as:

   1234-5678-9876

   AWS will ask for the Account Id when you ask for support.

   ## Console navigation & configuration

1. In the blue pop-up, click "Continue" and "Try Now" to follow the tour. Click on a clear area of the screen to close the pop-up.

1. Click the gear icon at upper-right to select user settings: language and Visual mode (such as "Dark").

1. Click the "AWS" icon in the upper-left corner to return to your Console home page.
1. PROTIP: Since you'll be using this Console screen often, drag the Console tab all the way to the left.
1. PROTIP: Right-click the Console tab to Bookmark it so you can easily open it after logging out.

   <a name="Health"></a>

   ### AWS Health

1. PROTIP: An important widget is the <strong>"AWS Health"</strong> widget. Drag its icon with the six dots to the top left of the page and let go. This widget also appears in the <a href="#MobileApps">AWS mobile apps</a>.

   <a name="SupportCenter"></a>

   ### Support Center

1. To view support cases filed and their status, see:   

   <a target="_blank" href="https://console.aws.amazon.com/support/home">
   https://console.aws.amazon.com/support/home</a>

   Policies for this are:

   * AWSSupportAccess (Allows users to access the AWS Support Center)
   * SupportUser (This policy grants permissions to troubleshoot and resolve issues in an AWS account. This policy also enables the user to contact AWS support to create and manage cases)
   <br /><br />


   ## AWS Free Tier Benefits

1. Notice within the <strong>"Cost and Usage"</strong> widget the days and date for credits remaining. 
1. PROTIP: Create in your calendar an event to take action before your credits run out.

   Since July 15, 2025, new AWS accounts are given just 6 months (182 days rather than a year) of free access to some AWS services.

   Each new AWS account receives up to $200 in AWS Free Tier credits, for application towards eligible AWS services, such as AWS Amplify websites. All Free Tier credits must be used within 12 months of your account creation date.
   See <a target="_blank" href="https://aws.amazon.com/free/">https://aws.amazon.com/free/</a>
   <a target="_blank" href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/free-tier.html">https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/free-tier.html</a>

   QUESTION: How to "earn up to USD $100 by completing various activities"?

1. Click your account number at the upper-right. Notice it also shows the credits remaining.

1. Click "Account" in the pop-up that appears for a page from "Billing and Cost Management".
1. Click the blue icon with the three lines at the upper-left to toogle view of the left menu.
1. Click the icon with the "i" at the upper-right to toggle an explanation of the page.
1. Click the blue icon at the right to toggle "Amazon Q" AI chatbot.

1. PROTIP: Add <strong>Alternative contacts</strong> for Billing, Operations, Security for notifications specific to those roles.

1. There is a link for viewing your "Recently visited" widgets.
1. Click the icon with the three dots to the right of the "Recently visited" widget and select "Remove widget" to make room.

   <a name="DefaultRegion"></a>
   
   ## Specify Your Default Region settings
   
   On the <a target="_blank" href="https://aws.amazon.com/">AWS Management Console</a> signed in as the Root user:
1. Click "Global" at the top-right of the screen to reveal the region selector pop-up.
1. Click "Manage Regions" at the bottom-left of the pop-up.
1. Scroll down to "AWS Regions".
1. Click all the Disabled regions that you are likely to use, then click "Enable" near the top.
1. <a target="_blank" href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/select-region.html">Select your default region</a>. PROTIP: The speed of various regions may be imperceptable, but some regions can cost more than others.
1. PROTIP: <a target="_blank" href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html">Some regions you need to opt-in to use</a>.

   <a name="RootLockdown"></a>

   ## Root account lockdown

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769293001/aws-signin-660x946_gicpxk.png"><img align="right" width="200"  alt="aws-signin-660x946.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769293001/aws-signin-660x946_gicpxk.png" /></a>
1. On a browser in the <a target="_blank" href="https://aws.amazon.com/">AWS Management Console</a> signed in as Root user for your default region:
1. Select "Sign in using root user email". Paste the root email and password from your password manager.
1. Switch to your email "Verify your identity" to copy the number.
1. Switch back to paste the number and "Verify and continue".

   ### MFA setup

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1769285487/aws-mfa-choices-1150x768_dd6ahv.png"><img align="right" width="300" src="aws-mfa-choices-1150x768.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769285487/aws-mfa-choices-1150x768_dd6ahv.png" /></a>
1. Select an authenticator app unlocked by a manually entered PIN.

   PROTIP: The US Supreme Court ruled that biometrics are not protected under the US 5th Amendment gurantees of self-incrimination. So police can use your biometrics without your permission.

1. Click "Show QR code" to reveal it.
1. In the Authy app, scroll down to click "+ Add Account".
1. Scan the QR code. 
1. Click "Save".
1. Enter two consecutive codes from your authenticator app.


   ### Service Search to IAM

   <img alt="aws-search-1318x170.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769336376/aws-search-1318x170_bp4lwm.png" />
1. In the AWS Console, press <strong>Option+S</strong> or click inside the Search box. Type "IAM" and press Enter for the "Identity and Access Management (IAM)" page for your region.

   <a target="_blank" href="https://console.aws.amazon.com/iam/home">https://console.aws.amazon.com/iam/home</a>


   ### Inactivate Unused STS Regions

1. Click "Account settings".
1. Scroll down to the Security Token Service (STS) Info "Endpoints" section.
1. Select each region you won't use regularly. Confirm "Deactivate" each.   

   Don't deactivate your <a href="#DefaultRegion">default region</a>.

1. ???

   A new account will have this:

   ![aws-iam-status-334x256-24837](https://user-images.githubusercontent.com/300046/38159769-9adbb7b0-346c-11e8-8cb9-044eba2a18f0.jpg)

   The FAQ to this is at<br /><a target="_blank" href="https://aws.amazon.com/iam/faqs/">https://aws.amazon.com/iam/faqs</a>

1. Click "Roles" in the left menu.
1. ???
1. Click "Delete your root access key".

1. Check "Don't show me this message again" and Continue to Security Credentials.


    ### Apply an IAM password policy 

12. Click "Manage Password Policy" so AWS will ensure that "strong" passwords are used (and not easy to guess ones).

    AWS defaults are terrible:

    ![aws-iam-weak-386x336-39852](https://user-images.githubusercontent.com/300046/38160240-8cbdb006-3477-11e8-914c-faea51864405.jpg)

    Over time, as hackers have access to more powerful computers that can guess passwords quicker,
    so larger passwords are necessary to make it more difficult to crack.

13. PROTIP: The <strong>largest Minimum password length AWS allows is 128 characters</strong>. But 1Password can generate up to only 64 characters. Practically, 22 characters is a reasonable minimum. Require at least one number (digits) and one non-alphanumeric symbol character.

    ![aws-iam-1password-291x259-19343](https://user-images.githubusercontent.com/300046/38160291-93acae16-3478-11e8-80ac-7d5ae3bbd5c4.jpg)

    ### STS Regions

14. Scroll down to "Security Token Service Regions" and deactivate regions your organization will never use.

    PROTIP: The region is where most of your users are located.
    New services are usually restricted to one region, such as N. Virginia or N. California where AWS does development work.


    ### MFA (Multi-Factor Authentication)

    This has AWS text or call your smartphone (a virtual device) to make sure that it's really you logging in.
 
1. Click <strong>Activate MFA</strong>
1. Click "A virtual MFA device".
1. Click Next Steps.

   <a name="MFAmobile"></a>

   ### Install MFA app

1. On your iPhone or Android mobile app, open the Store app.
1. Search for <strong>Google Authenticator</strong> app (if you don't already have it installed).
1. Click "Get" to install it.

1. Click "Open".

1. In the the Google Authenticator app, click the "+" icon at the top of the screen.
1. Click "Scan barcode".
1. Align the QR code (with the square of dots) within the green box.
1. Wait for the Google Authenticator app to display two codes. Under the codes we want now 
    begins with "root-account-mfa-device@" followed by the 12-digit <a href="#AccountId">Account Id</a>.
1. Type the first code for the account into the AWS Console website "Authentication code 1".

    PROTIP: Do not type the space between numbers so that you enter only 6 digits.

1. Press Tab and type the second code in "Authentication code 2".

    PROTIP: A new code is created every minute.

1. Scroll down to click "Activate virtual MFA" at the bottom of the screen.


   ### MFA in profile

   To specify use of MFA in an assumed role provider profile, see this example of credentials file:

   <pre>
    [profile prod-access]
    role_arn=arn:aws:iam::123456789012:role/ReinventProdAccess
    source_profile=development
   &nbsp;
    [profile prod-full-s3-access]
    role_arn=arn:aws:iam::123456789012:role/FullS3Access
    source_profile=development
    mfa_serial=arn:aws:iam::18490616333:mfa/james
   </pre>

1. Test on Console: <a target="_blank" href="https://www.youtube.com/watch?v=xVyx23bvamI">VIDEO</a>:
   ```
   aws s3 ls --profile prod-full-s3-access
   ```

   the response is a prompt waiting for manual input:

   <pre>Enter MFA code: _</pre>


   <a name="CreateIAMAccts"></a>

## Create Admin sub-account

IAM Acounts can be created using the Console, but as the number of users grows, that job gets tedius and error prone.

So most enterprises make use of user setup shell scripts to automate the process.

Using a program to automate ensures traceability of changes in coding and data.

Consider the <strong>aws-iam-setup.sh</strong> from my repo at:

<a target="_blank" href="https://github.com/wilsonmar/mac-setup/blob/main/aws-iam-setup.sh">https://github.com/wilsonmar/mac-setup/blob/main/aws-iam-setup.sh</a>

A description of sections in the script (at the top of the script file):

   1. SET UP SPECIFIC PERMISSIONS
   2. CREATE MULTIPLE USERS
   3. SECURITY BEST PRACTICES
   4. PROGRAMMATIC ACCESS SETUP
   5. ORGANIZATIONAL SETUP
   UTILITY FUNCTIONS
   <br /><br />


### Manual setup steps

1. In the <a target="_blank" href="https://console.aws.amazon.com/iam/home#/home">IAM page</a>
   click "Create individual IAM users". What it says is important:

   "Create IAM users and give them only the permissions they need. Do not use your AWS root account for day-to-day interaction with AWS, because the root account provides unrestricted access to your AWS resources."

2. Click "Manage users".
3. Click "Add User".
4. PROTIP: For the user name field, define a pattern of up to <strong>64 characters</strong>
   with <strong>dashes</strong> (instead of spaces and underlines) to separate words.

   For the Administrator to do work (of assigning): 

   <tt><strong>root-admin-work</strong></tt>

5. Click "Programmatic access".
6. If you would like to use AWS Management Console access, leave the default for
   Autogenerated password because you'll create a new password at next sign-in.
7. Click "Next: Permissions".

   We'll <a href="#Groups">add groups later, below</a>.

8. Click "Attach existing policies directly" because the Admin account it is limited.

9. Rather than granting "<strong>AdministratorAccess</strong>" which gives all access, 
   give policy to what :

   * SystemAdministrator
   * IAMFullAccess covers the others:

      * IAMReadOnlyAccess
      * IAMSelfManageServiceSpecificCriteria
      * IAMUserChangePassword
      * IAMUserSSHKeys
   
10. Click "Next: Review".
11. Click "Create user".


    ### Inform user of credentials

12. To see what is sent if you click "Send email", right-click on the link and "Copy Link", then paste in a text editor to see:

    <pre>subject=Welcome to Amazon Web Services
    body=Hello,  You have been given access to the AWS Management Console for the Amazon Web Services account ID ending in 8630. You can get started by using the sign-in information provided below.%0A%0ASign-in URL: https://103265058630.signin.aws.amazon.com/console%0AUser name: root-admin-work   
    Your initial sign-in password will be provided separately from this email. When you sign in for the first time, you must change your password. 
    Sincerely, Your AWS Account Administrator</pre>

13. PROTIP: Along with the Access Key Id and Secret access key, the default Region and format are also required to perform "aws configure", so add that information in the email.

    PROTIP: Add what AWS Groups and associated Policies the user has been given.

    PROTIP: Also include in the email, for those who
    use AWS CLI, how to install it and 3rd-party tools.
    
    For those who use the AWS Console GUI, explain the mobile apps to install.
    Provide them the URL with the region included, such as:

    <a target="_blank" href="https://us-west-2.console.aws.amazon.com/lambda/home?region=us-west-2">https://us-west-2.console.aws.amazon.com/lambda/home?region=us-west-2</a>

    NOTE: Baking different zones into Console URLs makes for more direct connections and removes issues from using a single URL/DNS.

14. Click "Download .csv" to download a "credentials.csv" file to your Downloads folder.
    It contains columns are a couple columns different than the "Add User" GUI:

    <tt>User name, Password, Access key ID, Secret access key, Console login link</tt>

    The "Console login link" is the "Sign-in URL" in the email.


    ### Apply an IAM password policy 

12. Click "Manage Password Policy" so AWS will ensure that "strong" passwords are used (and not easy to guess ones).

   AWS defaults are terrible:
   <img alt="aws-iam-weak-386x336-39852" width="386" src="https://user-images.githubusercontent.com/300046/38160240-8cbdb006-3477-11e8-914c-faea51864405.jpg"></a>

   PROTIP: Over time, as hackers have access to more powerful computers that can guess passwords quicker, larger passwords are necessary to make them more difficult to crack.

13. PROTIP: The largest Minimum password length AWS allows is 128 characters. 1Password can generate up to only 64 characters. Practically, 22 characters is a reasonable minimum. Require at least one number and one non-alphanumeric character.

    ![aws-iam-1password-291x259-19343](https://user-images.githubusercontent.com/300046/38160291-93acae16-3478-11e8-80ac-7d5ae3bbd5c4.jpg)

    PROTIP: Each site may have different rules about what special characters are allowed.
    So generate a smaller string, then manually add special characters. Copy the final string before pasting into the form.

14. Click "Apply password policy".

    ### Test login using IAM user

    <img alt="aws-iam-test-login-783x696-19343" width="783" src="https://user-images.githubusercontent.com/300046/78318041-0e268f00-7521-11ea-8139-3188bb81f13e.png"></a>

   <a name="RootCredentials"></a>

   ## Unique restricted email for God-Mode Global Admin Root account
   
   <a target="_blank" href="https://www.aws.amazon.com/blogs/aws/new-aws-sign-in-experience/"><img align="right" width="210" alt="aws-signup-root-315x150.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769154720/aws-signup-root-315x150_elpgcs.png" /></a>
   The email provided for "Sign up" is called the "Root" account "for account recovery".

   WARNING: By default, permissions for a <strong>"Global Adminstrators" group</strong> is granted to the email used to create the root account. The Global Adminstrators group has <strong>unlimited access</strong> to do anything to all AWS resources under the account and thus unlimited ability to rack up charges (legitimate or otherwise). By resources I mean: users, groups, roles, IAM Access Policies, API keys, etc. globally for all regions.

   ## Separation of Duties and Concerns

1. PROTIP: To follow Separation of Duties (SoD) principles, the account should be owned only by a company's Accounts Payable department under the corporation's Controller and not by operational or IT staff. this should be announced by a corporate office as company policy.

1. In an enterprise when several people or departments are involved, create a sub-account for use with each level of processing, to provide individual traceability and accountability.

1. A Global Adminstrators creates a set of <strong>sub-accounts</strong> and do not use the root account again except for emergency purposes.
   
   It's common for a separate account to be created for each <strong>department</strong> and <strong>project</strong> as well as each <strong>user</strong>. This is to limit the "blast radius" when an account's credentials become compromised, a situation we need to prepare for.

   CAUTION: Do not use email address used for AWS to also be used in social media.
   Emails used for managing AWS production accounts <strong>should be used only for managing AWS</strong> and not for regular email use, social media, and shopping.

1. AWS customers create and use a different AWS account for each environment (development, testing, training, production, migration, etc.). IaC (Infrastructure as Code) allows resource configurations and statuses to be compared across multiple accounts for troubleshooting application issues. 

1. PROTIP: Passage of access responsibility should be recorded with time stamps and signatures of the parties involved, with a witness present.


<a name="EmailSystem"></a>

## Auto-Generate Emails with Responders

Global Administrators can reduce time and hassle that both they themselves and their end-users (internal customers) by doing ALL AWS account setup tasks rather than giving a long list of instructions for end-users to follow (as shown below), then providing support to those who won't or don't follow instructions. This is especially true for those who are "not technical". This means automation of email creation and also having automation impersonate each user's email for verification of AWS account, GitHub, etc.

PROTIP: <strong>Use a separate email address for each AWS account</strong> you create.
Global Administrators working with AWS need to have admin control of an email system to create email accounts and (automatically) read/answer sample user emails.

   * Individual learners need to generate several email accounts to take advantage of "Free Tier" that only lasts a year each. AWS learners need to create their own account to not disturb corporate work.

   * Corporate Global Administrators need to generate emails for each new employees who join. 

   * PROTIP: To prevent destructive hacking, a separate account should be created with permissions to delete important data in production. Other standar accounts should not be able to delete production files. The person using this account should have the feduciary responsibility to ensure a full backup is confirmed before performing deletes. 

Within an organization, it's common for a separate account to be created for each department and project as well as each user. This is to limit the blast radius when a user's credentials become compromised, a situation we need to prepare for.



<a name="MobileApps"></a>

## Mobile apps for smart phones

1. Get the <strong>AWS Console</strong> app on your mobile phone:

   <a target="_blank" href="http://www.amazon.com/AWS-Mobile-LLC-Console/dp/B00ATSN730">On Google Android mobile phones</a>

   On your iPhone, open the Store app and search to get <a target="_blank" href="https://itunes.apple.com/us/app/aws-console/id580990573?mt=8">AWS Console</a>. Make sure the publisher is <strong>AMZN Mobile LLC</strong>  which creates <a target="_blank" href="https://itunes.apple.com/us/developer/amzn-mobile-llc/id297606954?mt=8">all Amazon's apps</a>.

   PROTIP: These apps got low review scores because the app only lets people read-only,
   but not change anything. And the 2FA is clunky.

2. <strong>Add an identity</strong>: select Root/IAM account or Federation.
3. Enable Face ID on iPhones.
4. Provide email, CAPTCHA security, password, email verification code. Success is seeing this:

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1694653422/aws-mobile-iOS-1170x2532_ns4mgt.png"><img alt="aws-mobile-iOS-1170x2532.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1694653422/aws-mobile-iOS-1170x2532_ns4mgt.png"></a>


   ### Deactivate regions not used

   On the same "Account settings" page:

1. Scroll down to "Security Token Service Regions" and deactivate regions your organization are not using.

   PROTIP: Select a Region where most of your target users are located.
   New services are usually restricted to one region, such as N. Virginia or N. California where AWS does development work.

   This task can be <a target="_blank" href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html">automated with CLI script</a> using a custom list of regions.


   ### Quick Access icons

   Save time by quickly get to the most frequently used services by having their icons at the top (black) menu bar.

1. Click the push-pin icon.
1. One by one, drag the icon on the list and drop it on the top black menu to the left of the orange push pin. If you don't see the black menu, pause just under the browser URL for the browser to automatically scroll.

   PROTIP: The services most often used are IAM, VPC, EC2, S3.

1. If you have good memory of what icons mean, change the Settings to "Icons only".

   <img alt="aws-onboarding-icons-only-277x112-9365.jpg" src="https://user-images.githubusercontent.com/300046/40741420-c21d19b0-6408-11e8-9c8d-84c5afd9a8bd.jpg">



## Icons and Diagrams #

<a target="_blank" href="https://www.processon.com/">
ProcessOn.com</a>
provides a free on-line tool to draw diagrams such as
<a target="_blank" href="https://www.processon.com/view/56e785b1e4b05387d0391d33">
this</a>

At <a target="_blank" href="https://aws.amazon.com/architecture/icons/">
architecture/icons</a> Amazon provides a sample .PPTX (PowerPoint 2010+) file
(AWS_Simple_Icons_PPT_v16.2.22.zip). Lines used to illustrate the hierarchy:
<amp-img width="238" height="183" alt="aws simple icons-238x183-63"
layout="responsive" src="https://cloud.githubusercontent.com/assets/300046/16263922/ed4eb538-3833-11e6-8a22-b72cb8f12c32.jpg"></amp-img>
PROTIP: Use different colors for lines and text to reduce visual confusion.

You can also download a zip containing .png and .svg files of icons
(AWS_Simple_Icons_EPS-SVG_v16.2.22.zip).



    ### Create IAM Users

36. Click Users on the left menu.
36. Click Add User.
36. Specify User Name. For example: user1@myco.com

    PROTIP: Use underscores to separate words in IAM User Names rather than spaces.

36. Check "Programmatic Access".
36. Uncheck "User must create a new password at next sign-in".
36. Click "Next: Permissions".
36. Click "Attach existing policies directly" for the first user.

    PROTIP: The policy attached depends on what the user will be allowed to do.

37. Send to each user the AccountId, UserName using a different mode of communication than the  password.
37. User signs in using the credentials Account Id, the UserName, and password
37. Click "Send email"

    PROTIP: Send credentials to your <strong>alternate email</strong> rather than to a cloud drive (Amazon, Google, Box, etc.); an email account that you setup with a fake birthdate and other personal information; one you never give out to anyone.


<hr />

## Roles for federated access

An analogy is a private ball where royal guests arrive wearing formal attire present an invitation card to enter.
The fancy outfits with sashes and medals are kinda like group permissions that confer permissions to someone.
The invitation card is kinda like IAM roles which are only for specific times.

The host of the party is kinda like AWS's STS (Security Token Service) identify broker
which grants access tokens to enable services to "assume" a role to perform on AWS services.

IAM roles are used by computer programs reaching through Enterprise identity federation into Microsoft Active Directory
using SAML (Security Assertion Markup Language) or through Web identity federation into Google, Facebook, Amazon, etc.

IAM roles issue keys are valid for short durations, making them a more secure way to grant access.

An IAM user needs to be granted two distinct permissions to launch EC2 instances with roles:

   * Permission to launch EC2 instances.
   * Permission to associate an IAM role with EC2 instances.
   <br /><br />


   <a name="SignInAdmin"></a>

   ### Admin Sign In

1. Sign out and sign in again to the AWS Console using the newly created admin sub-account.


<a name="aws-info"></a>

## aws-info.sh

1. View the description of my aws-info.sh shell script at:

   https://github.com/wilsonmar/mac-setup/blob/main/aws-info.sh

   ```
   chmod +x aws-info.sh
   ./aws-info.sh -v
   ```

1. Display all information about the logged-in account by running the shell script:
   ```
   chmod +x aws-info.sh
   ./aws-info.sh -all
   ```


<hr />

<a name="Svcs"></a>

## AWS services

1. Click the icon with the 9 square dots at upper-left for an alphabetical list of service categories.
1. Click "All services" for an alphabetical list of all AWS services.
1. Click "View all services" in the content for a list of service names by category (in random order).

   Notice the URL of the page is for a specific region:

   <a target="_blank" href="https://us-east-1.console.aws.amazon.com/console/services?region=us-east-1">https://us-east-1.console.aws.amazon.com/console/services?region=us-east-1</a>

   <img alt="aws-svcs-1of2-1840x3168.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769243224/aws-svcs-1of2-1840x3168_obgjyb.png" /><br />
   <img alt="aws-svcs-2of2.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1769243329/aws-svcs-2of2_gegmxf.png" />

1. PROTIP: Add the URL to Bookmarks tab named:

   <tt>Svcs us-east-1</tt>

1. PROTIP: DOTHIS: The <a target="_blank" href="https://chrome.google.com/webstore/detail/aws-services/jdkmpaoglhnpimfciphnednpkfbnphkp">Chrome browser extension "AWS Services"</a> provides a list of services by name and category so you can click it to get to Console and documentation for each service.

1. PROTIP: DOTHIS: Read the User Guide for each service at:

   <a target="_blank" href="https://aws.amazon.com/documentation/">
   https://aws.amazon.com/documentation</a>


<a name="FreeSvcs"></a>

### Free AWS services

<a target="_blank" href="https://aws.amazon.com/free/?ams%23interactive-card-vertical%23pattern-data-339318104.filters=((id:GLOBAL%23local-tags-free-tier-products-plan-type.and,value:(always-free)))">List of free AWS services</a>:

<u>myApplications</u>:
* AppRegistry
* AppManager
* Amazon CloudWatch
* Amazon EC2
* AWS Lambda
* AWS Resource Explorer
* AWS Security Hub CSPM
* Systems Manager
* AWS Service Catalog
* Tagging

<u>Governance:</u>
* AWS Budgets: Improve planning and cost control with flexible budgeting and forecasting
* Amazon Cognito: Simple and Secure User Sign-Up, Sign-In, and Access Control.
* AWS Service Catalog: Create and manage catalogs of IT services that are approved for use on AWS.

<u>Social media:</u>
* AWS re:Post: A community-driven, questions-and-answers service to help AWS customers remove technical roadblocks.
* Amazon Q Business: Unleash the power of generative AI in the workplace with Amazon Q Business
* Amazon Pinpoint: Send and receive messages to and from your customers.

<u>Operational Utilities:</u>
* AWS CloudFormation: Model and provision all your cloud infrastructure resources with code to enable configuration compliance and faster troubleshooting.
* AWS Resource Access Manager: Securely share your resources across AWS accounts or within your organization.
* AWS CloudTrail: Log, continuously monitor, and retain account activity related to actions across your AWS infrastructure.
* Amazon CloudWatch: Monitoring for AWS cloud resources and applications.
* Amazon Managed Service for Prometheus: a Prometheus-compatible service that monitors and provides alerts on containerized applications.

<u>Operational Utilities:</u>
* AWS Resource Explorer: search for and discover your resources across AWS Regions.
* AWS License Manager: Set rules to manage, discover, and report third-party license usage proactively
* AWS Systems Manager: Centralize operational data from multiple AWS services and automate tasks across your AWS resources.

* Amazon OpenSearch Service: Managed service that makes it easy to perform interactive log analytics, real-time application monitoring, website search, and more.

* AWS HealthLake: Securely store, transform, transact, and analyze health data in minutes

<u>Security:</u>
* Amazon Route 53: Amazon Route 53 is a highly available and scalable cloud Domain Name System (DNS) web service.
* AWS Control Tower: The easiest way to set up and govern a new, secure multi-account AWS environment.
* AWS Certificate Manager: Provision and manage SSL/TLS certificates for use with AWS, hybrid, and multicloud workloads
* AWS Key Management Service: AWS Key Management Service is a managed service that provides easy encryption with administrative controls.
* AWS WAF Bot Control: Protect your web applications from common and pervasive web bots
* Amazon SWF: Task coordination and state management service for Cloud applications.

<u>Development:</u>
* Amazon Q Developer: The most capable generative AI–powered assistant for software development
* AWS Application Discovery Service: Collects server specification information, performance data, and details of running processes and network connections.
* AWS Step Functions: Coordinate components of distributed applications.
* AWS Amplify: Serverless, NoSQL, fully managed database with single-digit millisecond performance at any scale.
* Amazon EventBridge: Build event-driven applications at scale across AWS, existing systems, or SaaS applications
* Amazon CodeCatalyst: Quickly build and deliver apps at scale on AWS

* AWS CodeBuild: Fully managed build service that builds and tests code in the cloud.
* AWS CodeArtifact: Secure, scalable, and cost-effective package management for software development
* AWS CodePipeline: Continuous delivery service for fast and reliable application updates.
* AWS Glue: Simple, flexible, and cost-effective extract, transform, and load (ETL) service.
* AWS X-Ray: Analyze and debug your applications.

<u>Compute:</u>
* Amazon DynamoDB: Serverless, NoSQL, fully managed database with single-digit millisecond performance at any scale.
* Amazon Aurora DSQL: Fastest serverless distributed SQL database for always available applications
* Amazon SQS: Scalable queue for storing messages as they travel between computers.

<u>Data:</u>
* Amazon DataZone: Unlock data across organizational boundaries with built-in governance capabilities
* Amazon S3: Serverless, NoSQL, fully managed database with single-digit millisecond performance at any scale.
* AWS Lambda: Run code without thinking about servers or clusters
* Amazon SimpleDB: Amazon SimpleDB is a highly available NoSQL data store that offloads the work of database administration.

<u>Networking:</u>
* AWS Shield: Protects networks and applications by analyzing network security configurations and providing managed DDoS protection
* AWS API Gateway: Serverless, NoSQL, fully managed database with single-digit millisecond performance at any scale.
* Amazon SNS: Fast, flexible, fully managed push messaging service.
* Amazon CloudFront: Web service to distribute content to end users with low latency and high transfer speeds.

<u>Migration:</u>
* AWS Migration Hub: Migration Hub is a single location to track the progress of application migrations
* Migration Evaluator: Migration Evaluator helps customers rapidly see projected costs of running their on-premises estate in AWS.
* AWS Application Migration Service: Simplify and expedite migrations while reducing cost.


<hr />

## HashiCorp Terraform

HashiCorp's Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. 
Terraform can manage existing and popular service providers as well as custom in-house solutions.

<a target="_blank" href="https://www.youtube.com/watch?v=nvNqfgojocs&t=8m25s">VIDEO</a>: To use <a target="_blank" href="https://wilsonmar.github.io/terraform">Terrafrom</a> IaC (Infrastructure as Code) to create a AWS EC2 instances (<a target="_blank" href="https://blog.gruntwork.io/why-we-use-terraform-and-not-chef-puppet-ansible-saltstack-or-cloudformation-7989dad2865c">instead of Chef, Puppet, Ansible, etc.):

   CAUTION: The AWS way of keeping credentials in the <tt>$HOME/.aws/credentials</tt> file is not secure because if your laptop is compromised or stolen, those secrets could be used without authentication. So many organizations request that secret credential files be temporary (valid for just one day). So some make available a corporate "Vending Machine" app which generates credentials instead of the manual process below.

1. Click on your email at the upper-right corner to select "Security credentials" for the IAM page.
1. Scroll to click "Create Access keys", "Command Line Interface".
1. Check "I understand", "Next".
1. Construct a Description tag value that satisfies your organization's naming conventions.
1. Click "Create access key".

1. Switch to a Terminal to issue <tt>aws configure</tt> to specify the Access Key ID and Secret Access Key.

   PROTIP: The <tt>aws configure</tt> command creates a file at <tt>$HOME/.aws/credentials</tt> with the Access Key ID and Secret Access Key.

1. Switch back to the web page.
1. Click the copy icon for the Access Key. Switch to your secret file and paste the value into a text file.
1. Click the copy icon for the Secret Access key. Switch to your secret file and paste it into the same text file.
1. Specify Default region such as <tt>us-east-1</tt> - the default.
1. Specify Default output format <tt>json</tt>.

1. Switch to the web page to click "Done".
1. Identify a GitHub repo you want.

1. Switch to the Terminal.
1. Create or navigate to a folder for your GitHub account to receive repositories cloned.
1. Get that sample Terraform repo, and cd into it.

   <pre><strong>git clone https://github.com/wilsonmar/aws-ec2-micro.git --depth 1
   cd aws-ec2-micro
   </strong></pre>
   
   PROTIP: Typically, for secure production usage, many resources would be created, including roles to limit access. So using Terraform would be faster, easier, more accurate, and more secure than manual creation clicking and typing on the AWS Console GUI.

1. Edit the files which specify the AWS provider described at <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs">https://registry.terraform.io/providers/hashicorp/aws/latest/docs</a>, such as this <tt>main.tf</tt> 

   <pre>
   provider "aws" {
     region = "us-east-1"
   }
   resource "aws_instance" "example" {
     ami           = "ami-0c55b159cbfafe1f0"
     instance_type = "t2.micro"
   }
   </pre>

   REMEMBER: The ami id is tied to the region and instance_type <a targete="_blank" href="https://www.appsloveworld.com/amazon-ec2/4/get-latest-ami-id-for-aws-instance">for which it was created</a>. For that reason, many run a Bash script to <a target="_blank" href="https://letslearndevops.com/2018/08/23/terraform-get-latest-centos-ami/">get the latest ami</a> or <a target="_blank" href="https://wilsonmar.github.io/packer">use the Packer utility</a> to <a target="_blank" href="https://github.com/hashicorp/packer/issues/2756">create a custom ami</a>. That is safer than referencing <a target="_blank" href="https://www.trendmicro.com/cloudoneconformity/knowledge-base/aws/EC2/approved-golden-amis.html">"golden" ami images</a> created by another organization to meet compliance standards: APRA, MAS, and NIST4.

   PROTIP: We recommend that you run a Bash shell file to select the latest ami and for whatever region was selected for the server instance_type. The script can confirm whether the instance_type specified is available in the region specified. The script would also have coding to set environment variables in a secure way, consistently over time among teammates. This also enables AWS Tags to be specified effortlessly, such as "CreatedBy" with your email address pulled in automatically. See my documentation.

   <a target="_blank" href="https://serverfault.com/questions/369872/run-a-bash-script-after-ec2-instance-boots">PROTIP</a>: Many specify in the <tt>user_data</tt> section within the <tt>main.tf</tt> file Bash scripts containing Ansible commands to run immediately after EC2 instance boot up.

1. A <tt>terraform.tfvars</tt> file is commonly specified to specify custom values to replace default values in the <tt>main.tf</tt> file.

   PROTIP: The <tt>terraform.tfvars</tt> file may contain secrets, so its file name is specified in <tt>.gitignore</tt> to prevent it from being checked into GitHub.

1. The script would <a target="_blank" href="https://spacelift.io/blog/terraform-provisioners">collect locally Terraform provider files</a> specified in the <tt>main.tf</tt> file:

   <pre><strong>terraform init
   </strong></pre>

1. Create resources:

   <pre><strong>terraform plan --auto-approve --var-file=../vars/ec2.tfvars
   </strong></pre>

   If that works:

   <pre><strong>terraform apply --auto-approve --var-file=../vars/ec2.tfvars
   </strong></pre>

   The <tt>--auto-approve</tt> option is used to avoid the need to type "yes" to confirm.

   PROTIP: A Bash script issuing the above commands would add additional steps such as checking for errors, to ensure that resources with vulnerabilities are not even created.

1. Switch back to the web page to view the resources.

1. Use the resources.

1. Delete the resources previously created by Terraform files in the folder:

   <pre><strong>terraform destroy --var-file=../vars/ec2.tfvars
   </strong></pre>

1. REMEMBER: Delete the credentials file after use.


<a target="_blank" href="https://webinars.securityboulevard.com/controlling-cloud-costs-with-hashicorp-terraform">VIDEO</a>: HashiCorp has a "Sentinal" product component which enforces various fine-grained rules (policy sets) to what can be done by each role. It also estimates monthly cost from cloud usage.

Rules in HashiCorp's <a target="_blank" href="https://www.hashicorp.com/resources/secure-your-cloud-with-terraform-foundational-policy-library/">
Foundational Policy library</a> is at <a target="_blank" href="https://github.com/hashicorp/terraform-foundational-policies-library">https://github.com/hashicorp/terraform-foundational-policies-library</a>. Such "Policies as Code" are crafted based on <a target="_blank" href="https://www.cisecurity.org/cis-benchmarks/">Center for Internet Security (CIS) Benchmarks</a> [<a target="_blank" href="https://www.cisecurity.org/wp-content/uploads/2018/03/CIS-Controls-Measures-and-Metrics-V7.pdf">pdf</a>] (including Compute, Databases, Kubernetes, Storage, Networks) covering Azure and GCP as well as AWS.


<hr />

<a name="S3BucketNames"></a>

## Claim S3 Bucket names

The AWS Account Administrator has a fudiciary responsibility to secure 
Intellectual Property (IP) assets.

S3 Bucket names are universally unique among all AWS customers.
So just as there are domain name squatters who register and sit on .com host names
for sale at high prices to those who actually use the names,
the administrator of root accounts for an organization should
register your organization's brand names before others get them first.

To create a bucket for each host name registered on GoDaddy, Google Domains, etc.

4. Click S3 from among services.
5. Click the blue "Create bucket" button.
6. Type in the host name (such as "wilsonmar.com") in the Bucket name field.
7. Select your home Region.

   PROTIP: Claiming a Bucket name in one region locks it up for all Regions.

8. Click "Next".
9. Click "Next".
10. Click "Next" to manage users.
11. Click "Create Bucket".


<hr />

<a name="AutoKeyRotation"></a>

## Automatic key rotation

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html
describes automatic rotatation of AKID credentials (with a quick MFA challenge answered on a mobile phone)

<a target="_blank" href="https://user-images.githubusercontent.com/300046/131071038-7becbc2a-3f87-4c07-8247-21b42fb21d85.png"><img alt="aws-AccessKeyAutoRotate-799x830" width="799" height="830" src="https://user-images.githubusercontent.com/300046/131071038-7becbc2a-3f87-4c07-8247-21b42fb21d85.png"></a>

The auto-rotation of AWS IAM User Access Keys diagrammed above is from <a target="_blank" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/automatically-rotate-iam-user-access-keys.html">these guideline from Feb. 2019</a> uses MIT-licensed CloudFormation templates and Python scripts defined in https://github.com/aws-samples/aws-iam-access-key-auto-rotation and described <a target="_blank" href="https://github.com/aws-samples/aws-iam-access-key-auto-rotation/blob/main/AWS%20Security%20Audit%20Findings%20Remediation%20Runbook.docx">step-by-step in this Word-format Document</a>.

Setup S3 buckets in the US East (N. Virginia) Region (us-east-1). It runs every 90 days. At 100 days it disables and at 110 days it deletes the old Access Keys. It sets up a secret inside AWS Secrets Manager to store the new Access Keys, with a resource policy that permits only the AWS IAM User access to them. 

Another automation sets up an Amazon DynamoDB table to house the email addresses of accounts rotated.
These emails are used by a SNS Topic to send alerts when rotation occurs.

Alternately, you can refactor to send a Slack message instead of email (not shown in the diagram).



<a target="_blank" href="https://aws.amazon.com/blogs/security/guidelines-for-protecting-your-aws-account-while-using-programmatic-access/">DOCS</a>

<pre>aws sts assume-role --role-arn arn:aws:iam::123456789012:role/role-name \
   --role-session-name "RoleSession1" \
   --profile IAM-user-name > assume-role-output.txt
</pre>

https://aws.amazon.com/blogs/security/how-to-rotate-access-keys-for-iam-users/

$ aws iam list-access-keys
{
    "AccessKeyMetadata": [
        {
            "AccessKeyId": "AKIAI2YGLLOSZDQ3L5Z1",
            "Status": "Active",
            "CreateDate": "2020-06-12T04:04:22+00:00"
        }
    ]
}

   AWS IAM commands use unique access key identifiers (AKIDs) to refer to individual access keys.

$ aws iam create-access-key --user-name Alice



Identity and Access Management (IAM) roles for Amazon EC2.


https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html
https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys

https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html

1. Grant temporary access keys - aws sts assume-role.


https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-one-user-multiple-passwords.html



Additionally, add conditions to the policy that further restrict access, such as the source IP address range of clients. The example policy below grants the needed permissions (PutObject) on to a specific resource (an S3 bucket named “examplebucket”) while adding further conditions (the client must come from IP range 203.0.113.0/24):

<pre>{
    "Version": "2012-10-17",
    "Id": "S3PolicyRestrictPut",
    "Statement": [
            {
            "Sid": "IPAllow",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::examplebucket/*",
            "Condition": {
                "IpAddress": {"aws:SourceIp": "203.0.113.0/24"}
            } 
        } 
    ]
}
</pre>



<hr />

<a name="IAM-CLI"></a>

## IAM CLI #

   AWS Identity and Access Management (IAM) controls access to
   users, groups, roles, and policies.

1. List users:
   ```
   aws iam list-users --query Users[*].UserName
   ```

1. List groups which the user belongs to :
   ```
   aws iam list-groups-for-user \-\-username ???
   ```

1. Create a new user named "MyUser":
   ```
   aws iam create-user --user-name MyUser
   ```
   The response:
   <pre>
   {
    "User": {
        "UserName": "MyUser",
        "Path": "/",
        "CreateDate": "2012-12-20T03:13:02.581Z",
        "UserId": "AKIAIOSFODNN7EXAMPLE",
        "Arn": "arn:aws:iam::123456789012:user/MyUser"
    }
   }</pre>

1. Add the user to the group:
   ```
   aws iam add-user-to-group --user-name MyUser --group-name MyIamGroup
   ```

1. To verify that the MyIamGroup group contains the MyUser, use the get-group command:
   ```
   aws iam get-group --group-name MyIamGroup
   ```
   The response:

   <pre>
    {
        "Group": {
            "GroupName": "MyIamGroup",
            "CreateDate": "2012-12-20T03:03:52Z",
            "GroupId": "AKIAI44QH8DHBEXAMPLE",
            "Arn": "arn:aws:iam::123456789012:group/MyIamGroup",
            "Path": "/"
        },
        "Users": [
            {
                "UserName": "MyUser",
                "Path": "/",
                "CreateDate": "2012-12-20T03:13:02Z",
                "UserId": "AKIAIOSFODNN7EXAMPLE",
                "Arn": "arn:aws:iam::123456789012:user/MyUser"
            }
        ],
        "IsTruncated": "false"
    }</pre>


## Linux AMIs #

Types of operating system AMI:

   * Amazon Linux 2014.09.2 (CentOS)
   * Red Hat Enterprise Linux 6.6 (RHEL)
   * SUSE Linux Enterprise Server 12
   * Ubuntu Server 14.04

<hr />

## Advanced User Data #

https://gist.github.com/mikepfeiffer/

   <pre>
   </pre>

* <a target="_blank" href="https://aws.amazon.com/powershell">AWS Powershell for Windows</a>

   <pre>aws Get-AWSCredentials -ListProfiles
   </pre>




<hr />

<a name="References"></a>

## References #

This is adapted from what is in <a target="_blank" href="https://aws.amazon.com/getting-started/">Amazon's Getting Started tutorials</a>.

After signing up for <a target="_blank" href="https://www.aws.training/">https://www.aws.training</a>, <a target="_blank" href="https://www.aws.training/learningobject/video?id=16484">
Authentication and Authorization with AWS Identity and Access Management</a>
15 minutes


### Tutorial Rock Stars and their presentations #

Jeff Barr (<a target="_blank" href="https://www.twitter.com/@jeffbarr/">@jeffbarr</a>),
AWS Chief Evangelist
makes announcements of all new stuff at the company's
   <a target="_blank" href="https://aws.amazon.com/blogs/aws/">
  AWS Blog</a> and
  <a target="_blank" href="https://twitter.com/search?q=%23aws&src=typd">
  #AWS Twitter hash-tag</a>

Yan Kurniawan

   * <a target="_blank" href="https://leanpub.com/ansible-for-aws">
   Ansible for AWS book</a> 280 pages for minimum $30 published on 2016-01-15 by Yan Kurniawan living in Sydney, Australia
  #ansible4aws.

   * <a target="_blank" href="https://github.com/yankurniawan/ansible-for-aws">
    https://github.com/yankurniawan/ansible-for-aws</a>

J O'connner:

   * http://joconner.com/

Ryan Scott Brown @ryan_sb

   * https://serverlesscode.com/post/new-ssl-tls-cert-manager-acm/

Matt Wood, @mza, Product Strategy @ Amazon Web Services

<a target="_blank" href="https://www.linkedin.com/in/schematical/">Matt Lea</a> of <a target="_blank" href="https://schematical.itch.io/techdebt">schematical.com</a>, <a target="_blank" href="http://cloudwargames.com/">cloudwargames.com</a>
   * <a target="_blank" href="https://learning.oreilly.com/course/zero-to-hero/0642572107789/">video course "Zero to Hero on AWS Security: An Animated Guide to Security in the Cloud" Apr 2025</a> referencing https://github.com/wilsonmar/sc-terraform/tree/main/_course


### BaSA (Be a Solutions Architect)

There are many ways to learn AWS. The key to learning fully AND quickly -- to get a job -- is to have an experienced mentors in both technical and behavioral skills, plus real-world projects.

Look at the schedule for the FREE AWS
<a target="_blank" href="https://become-a-solutions-architect.github.io/">BaSA (Be a Solutions Architect) program</a> 
where AWS employees (Amazonians) around the world hold 2-hour live sessions over 12-weeks 
(8 technical and 4 behavioural)
on 𝗦𝗮𝘁𝘂𝗿𝗱𝗮𝘆 𝟴 𝗔𝗠 𝗚𝗠𝗧 / 𝟵 𝗔𝗠 𝗨𝗞 / 𝟭.𝟯𝟬 𝗣𝗠 𝗜𝗦𝗧 / 𝟰.𝟬𝟬 𝗔𝗠 𝗘𝗧). 
Videos of each batch are 
<a target="_blank" href="https://www.youtube.com/@be-SA/playlists">stored on YouTube</a>
coordinated using email 𝗯𝗲𝘀𝗮𝗽𝗿𝗼𝗴𝗿𝗮𝗺𝟮𝟬𝟮𝟮@𝗴𝗺𝗮𝗶𝗹.𝗰𝗼𝗺  and 
<a target="_blank" href="https://www.linkedin.com/groups/9179284/">LinkedIn group</a>,
which at time of writing has 7,621 members.
<a target="_blank" href="https://become-a-solutions-architect.github.io/resources.html">Hands-on activities</a>:
Networking:<br />
1. <a target="_blank" href="https://youtu.be/x5r4UGyR5zo">Introduction to Cloud	The binary choice - OSI Model & IP Addressing</a>
2. Amazon S3 <a target="_blank" href="https://youtu.be/jYUm5itbDNA">It’s all connected - Amazon VPC</a>
3. Amazon EC2	<a target="_blank" href="https://youtu.be/bc1srPi8AXY">Hold the door - NACL & Security Group</a>
4. AWS IAM	<a target="_blank" href="https://youtu.be/OoX_AJK1JA4">Cloud and beyond - VPN and Direct Connect</a>
5. Amazon RDS	<a target="_blank" href="https://youtu.be/IAsyh2ANouM">Peer to Peer - VPC Peering & Transit Gateway</a>
6. Amazon DynamoDB	<a target="_blank" href="https://youtu.be/MoGe0v1DAgU">What’s in a name? - Route 53 & DNS Resolver</a>
7. Amazon Cloudwatch	<a target="_blank" href="https://youtu.be/p5OLRW910zA">The tool box - Flow Logs & Reachability Analyer</a>


SWF (Simple Workflow Functions) sequences manual work.

AppStream streams desktop apps (like Citrix).

Elastic Transcoder of videos into various sizes and formats (ogg, mp4, etc.)

<a target="_blank" href="https://www.lucidchart.com/documents/view/bd4fb4e7-336e-4c8b-972d-048616da9f96/3">
Orion Papers</a> on Lucidchart

https://scriptcrunch.com/aws-certification-iam-essentials-cheat-sheet/

## AWS CLI

<a target="_blank" href="https://www.youtube.com/watch?v=e2A8K47Fj6s&index=4&list=PLZbbT5o_s2xoWPNdBbqi9eWnMJ5cDrr1M">VIDEO: How to Configure the AWS CLI | Amazon Web Services | AWS</a> Nov 26, 2017 by deeplizard

https://docs.aws.amazon.com/cli/latest/index.html
AWS CLI Command Reference

2. To verify the identity being used in AWS CLI:

   <pre><strong>aws sts get-caller-identity</strong></pre>

   A sample response:

   <pre>
    "Account": "103265058630", 
    "UserId": "AIDAJHXCZNAH2MEXAMPLE",
    "Arn": "arn:aws:iam::103265058630:user/root-admin-work"
   </pre>

   Alternately, use an <a href="#Aliases">alias defined</a>:

   <pre>aws whoami</pre>


   <a name="Groups"></a>

   ### Define groups to assign permissions 

   PROTIP: For a user to do something usually require several AWS resources.
   So several permissions need to be granted to a user.
   To simplify assignments, we define Groups of permissions which we then can assign to each user.

   In other words, An IAM group is a management convenience to manage the same set of permissions for a set of IAM users.

   The AWS CLI command to create a group named "MyIamGroup" is:

   <pre>aws iam create-group --group-name MyIamGroup
   </pre>

   A sample response:

   <pre>{
    "Group": {
        "GroupName": "MyIamGroup",
        "CreateDate": "2012-12-20T03:03:52.834Z",
        "GroupId": "AKIAI44QH8DHBEXAMPLE",
        "Arn": "arn:aws:iam::123456789012:group/MyIamGroup",
        "Path": "/"
    }
}
   </pre>

   The AWS CLI command to create a S3 security group:

   <pre><strong>aws ec2 create-security-group --group-name my-sg --description "My security group"
   </strong></pre>

   A sample response:

   <pre>{
   "GroupId": "sg-903004f8"
   }</pre>

27. Click Manage Groups then Create New Group.
  
    PROTIP: Groups are usually associated with a particular job: admin, sales, HR, front-end developer, back-end developer, etc. 
    
    A user can belong to multiple groups.
    More complex organizations manage differences in permissions for company, division, project, location, job level, etc. So 128 characters may not be enough if large words are used. Thus, abbreviate and use acronyms.

    PROTIP: Put abbreviations and acronyms in a wiki publicly available to avoid duplicate usage.

28. "aws_iot_buttons" is the group name I use as an example.

   PROTIP: Use dashes. Space characters are not allowed.
   On March 1, 2018 AWS removed the ability to use underscores in S3 bucket names.

   The list shown are "AWS Managed".

29. Click on Policy Type to select Job function.

30. PROTIP: Instead of scrolling down the massive list in <strong>Attache Policy</strong> (Alexa, Amazon, AWS, etc.),
    type in the Filter field the first few letters (such as "IoT") and the list gets smaller. Notice the filter you type is applicable to not just characters beginning with what you typed, but also characters inside names as well.

31. Click to select.
32. Click "Create Group".

    Note different policies have different levels of access, with admin having more capabilities than "read only" ones.

33. Names shown on the screen is called a "Policy Summary".
34. Click "JSON" to see the file that AWS reads to assign policies. Here you seen what <strong>Actions</strong> the policy allows.

35. Click "Access Advisor" to see users who have been assigned to use the policy.

    https://docs.aws.amazon.com/iot/latest/developerguide/create-iot-policy.html


<hr />

## Manually Rotate Access keys

    See that "AWS recommends that you rotate your access keys every 90 days"?
    Some find it easier to remember by doing it on the first day of each month.
    Why? There are thousands of big computers around the world literally staying up at night trying different combinations.
   
24. PROTIP: Make an appointment on your Calendar with a recurring schedule.

    PROTIP: Rotation applies to access key of IAM child accounts, not the root account.

    You don't want programmatic access to your root account, so you don't need no stinkin' keys.

25. Click Delete to the key. Write down the date Created.

    Don't create a new Access Key.


    ### Use groups to assign permissions 

    PROTIP: For a user to do something usually require several AWS resources.
    So several permissions need to be granted to a user.
    To simplify assignments, we define Groups of permissions which we then can assign to each user.

    In other words, An IAM group is a management convenience to manage the same set of permissions for a set of IAM users.

27. Click Manage Groups then Create New Group.
  
    PROTIP: Groups are usually associated with a particular job: admin, sales, HR, front-end developer, back-end developer, etc. 
    
    A user can belong to multiple groups.
    More complex organizations manage differences in permissions for company, division, project, location, job level, etc. So 128 characters may not be enough if large words are used. Thus, abbreviate and use acronyms.

    PROTIP: Put abbreviations and acronyms in a wiki publicly available to avoid duplicate usage.

28. "aws_iot_buttons" is the group name I use as an example.

   PROTIP: Use underlines or dashes. Space characters are not allowed.

   The list shown are "AWS Managed".

29. Click on Policy Type to select Job function.

30. PROTIP: Instead of scrolling down the massive list in <strong>Attache Policy</strong> (Alexa, Amazon, AWS, etc.),
    type in the Filter field the first few letters (such as "IoT") and the list gets smaller. Notice the filter you type is applicable to not just characters beginning with what you typed, but also characters inside names as well.

31. Click to select.
32. Click "Create Group".

    Note different policies have different levels of access, with admin having more capabilities than "read only" ones.

33. Names shown on the screen is called a "Policy Summary".
34. Click "JSON" to see the file that AWS reads to assign policies. Here you seen what <strong>Actions</strong> the policy allows.

35. Click "Access Advisor" to see users who have been assigned to use the policy.

    https://docs.aws.amazon.com/iot/latest/developerguide/create-iot-policy.html


STS returns:

   * A Security Token
   * An Access Key ID
   * A Secret Access Key

### More security

* egress rules on your Security Groups (after all there's no reason ever that your database should be connecting to IP addresses in Russia), 
* vulnerability scanning, 
* Host-Based Intrusion Detection (HIDS) systems


<hr />

<a name="SecureCredential"></a>

## Encrypt AWS Credentials

Use my shell script to log into AWS by decrypting credentials stored securely (instead of in plain text). 

One reason to encrypt credentials is because it's wise to have a backup copy of the secret file, in an encrypted format, somewhere else. This enables you to retrieve secrets in case you lose your laptop.

This article covers use of AWS (Amazon Web Services) on MacOS. In the future I'll be updating this article to cover use of Windows and other secret-handling utilities (Microsoft Azure, Google Cloud Platform, HashiCorp Vault, Akeyless, etc.).

After obtaining an AWS Access Key ID, AWS Secret Access Key for your account (described above),
use the credentials on your local machine (laptop), install the AWS CLI locally. Although there is a "awscli" Homebrew formula, but it has been deprecated. So follow this doc to manually install a pkg file for awscli2:


## Installing, updating AWS CLI version 2

AWS CLI versions 1 and 2 use the same aws command name. 

If you have both versions installed, your computer uses the…docs.aws.amazon.com

The installer automatically creates a symlink in a folder in your PATH which links to the main program in the installation folder you chose:

1. Identify the version and location of the installed version:
   ```
   ls -al $(which aws)
   ```
   Response:
   <pre>lrwxr-xr-x  1 johndoe  admin  31 Jan 24 02:07 /opt/homebrew/bin/aws -> ../Cellar/awscli/2.33.6/bin/aws</pre>

1. Upgrade to latest version:
   ```
   brew upgrade awscli
   ```

1. Verify install:
   ```
   aws --version
   ```
   Sample response (at time of writing):
   <pre>aws-cli/2.33.6 Python/3.13.11 Darwin/24.6.0 source/arm64</pre>
   Previously:
   <pre>aws-cli/1.20.3 Python/3.7.3 Darwin/18.7.0 botocore/1.21.3</pre>


   <a name="Configure"></a>

   ## AWS configure 

1. To prompt acceptance or override of default AWS ACCESS KEY ID, AWS SECRET ACCESS KEY, and region saved as a plain-text file at~/.aws/credentials</tt>

   <tt>aws configure</tt>

    Prompt:
   
   <pre>AWS Access Key ID [None]: </pre>

  Sample contents:

   <pre>[default]
aws_access_key_id = ABCDEFGHIJKLMNOPQRST
aws_secret_access_key = 123456786iJsvzQbkIlDiFtBh6DrPzIw8r7hVb35
[py-ec2–1]
aws_access_key_id = ABCDEFGHIJKLMNOPQRST
aws_secret_access_key = 123456782Nwk156aPF0SxZ8KGY+RrhEbq3AIHUSS
   </pre>

   BTW Progress toward AWS providing a more secure approach is at https://github.com/aws/aws-sdk/issues/41

   Meanwhile, to avoid having credentials in clear text, store them in encrypted form.



Instead of doing what other clouds do (an <tt>aws login</tt> command which prompt for a user name and password), aws commands reference a specifically-named file at <tt>$HOME/.aws/credentials</tt> created by command <tt>aws configure</tt>.

The <tt>aws configure</tt> command creates that file after prompting for access key identifiers (AKIDs) to an AWS account. Press Enter to accept the value previously defined:

   * AWS Access Key ID [****************L5ZQ]:
   * AWS Secret Access Key [****************+1MD]:
   <br /><br />

Stored with credentials are also:

   * Default region name [us-east-1]: 
   * Default output format [json]:
   <br /><br />

To create AKID credentials, AWS asks that account owners to manually use the <a target="_blank" href="https://aws.amazon.com/iam/">IAM GUI</a> to disable programmatic access to their <strong>root</strong> (email) account and protect it with <a target="_blank" href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa.html">MFA (Multi-factor Authentication)</a>

The AWS Management Console provides a way for account owners (administrators) to manually create <strong>IAM user accounts</strong> for programmatic access.

For programmatic access to resources running inside AWS, the best practice is to use IAM roles which are not associated with a specific user or group. Any trusted entity can <strong>assume the role</strong> to perform a specific business task. A resource can be granted access without hardcoding an access key ID and secret access key into the configuration file. For example, you can grant an Amazon Elastic Compute Cloud (EC2) instance access to an Amazon Simple Storage Service (Amazon S3) bucket by attaching a role with a policy that defines this access to the EC2 instance. IAM dynamically manages the credentials for you with temporary credentials it rotates automatically.

Outside AWS (on a Terminal/Console on your laptop), a dedicated service account should be created for each use case with only the permissions needed to limit the "blast radius" if credentials are compromised. For example, if a monitoring tool and a release management tool both require access to your AWS environment, create two separate service accounts with two separate policies that define the minimum set of permissions for each tool.



CAUTION: The problem with IAM user account secrets is that they are <strong>long-running secrets</strong> stored in the credentials file in <strong>clear-text</strong>. Someone who clicks on a roque link on a phishing email would expose that file for theft. Many who lose control of their AWS credentials see bills from Amazon of thousands of dollars in unauthorized use (mining Bitcoins).

CloudAcademy.com and many enterprises create a centrally-administered
https://aws.amazon.com/code/token-vending-machine-for-identity-registration-sample-java-web-application/
"Vending Machine" application to generate and dispense <strong>temporary</strong> IAM user accounts with access keys. Such credentials are valid for only 12 hours or less. 

But that requires tedious repeated manual effort.
Securing temporary accounts with MFA adds to that toil.



<hr />

<a name="SetupGitSigning"></a>

## Setup Git-signing

1. Install GPG locally using my instructions at:

   <a target="_blank" href="https://wilsonmar.github.io/git-signing">https://wilsonmar.github.io/git-signing</a>

1. Generate encrypted file "credentials.gpg" from file "credentials". See:

   https://wilsonmar.github.io/git-signing/#bonus-encrypting-whole-files-using-gpg

1. To be able to retrieve secrets in case you lose your laptop, for backup make a copy of the secret file in encrypted format, somewhere else.

1. Make a backup of GPG keys somewhere else (in a key vault) so you can decrypt. One way is to store your private key in a Yubikey USB chip you plug into your laptop.

1. Using the GPG private key, encrypt the aws/credentials file to a new credentials.gpg file also in the same ~/.aws folder.

1. Delete the file at ~/.aws/credentials

1. Download my shell script:

   <pre>curl "https://raw.githubusercontent.com/wilsonmar/DevSecOps/main/bash/awslogin.sh" -o "awslogin.sh"</pre>

   NOTE: It works similar to https://github.com/99designs/aws-vault, but with no external dependencies (other than GPG). However, aws-vault supports several vaulting backends.

1. Run the script to login based on the encrypted credential.gpg file:
   ```
   source ~/awslogin.sh
   ```

   Alternately, run the script to use the "susan" profile defined:
   ```
   source ~/awslogin.sh -p susan
   ```

   The script unencrypts the gpg file, invokes aws login, then removes the unencrypted file.
   
   BONUS: To parse variables from within an AWS credentials file, consider:
   GitHub - whereisaaron/get-aws-profile-bash: Fetch AWS keys and secrets from ~/.aws/credentials…

   This is a pure bash script that can parse and extract AWS credentials (key id and secret) from a ~/.aws/credentials…github.com

1. PROTIP: If you use it, remember to clear out variables after usage, so they don't linger in memory.


TODO: Put each AWS CLI command in a script at
https://medium.com/circuitpeople/aws-cli-with-jq-and-bash-9d54e2eabaf1
by Lee Harding

https://aws.amazon.com/cli/


## More on Amazon #

This is one of a series on Amazon:

{% include aws_links.html %}


## More on DevOps #

This is one of a series on DevOps:

{% include devops_links.html %}

## More on Security #

https://www.youtube.com/watch?v=t5pCWBp-EjI
Mastering the AWS CLI for Cloud Security Engineers

This is one of a series on Security in DevSecOps:

{% include security_links.html %}

https://www.mssqltips.com/sqlservertip/5997/create-sql-server-notebooks-in-azure-data-studio/

## Automation 

1. Obtain a DNS domain name for experimentation, using AWS Route53.
1. Automate generation of new email accounts (with hostname as a variable) using AWS SES (Simple Email Service).
1. Emulate user action for AWS account verification within AWS SES.

## GenAI

To help you prepare solid for AWS Certified Generative AI Developer Professional Certification

https://builder.aws.com/content/37WkIA5gZe7W23kR29TbLGyn6SF/kiro-cli-as-teacher-for-aws-certified-generative-ai-developer-pro-certification

https://github.com/anandxmj/anix-the-genai-certification-teacher 
helps you with writing local agents and local knowledge bases. It can be integrated with MCP to extend its capabilities.

https://awslabs.github.io/mcp/

## MCP

https://awslabs.github.io/mcp/

https://www.awscloudinstitute.com/ for needs-based grants for the $210/month per course over 27 courses
https://aws.amazon.com/training/aws-cloud-institute/resource-hub/

## AWSAmplify

glue

https://www.youtube.com/watch?v=g4qKydnd0vU&list=PLmexTtcbIn_hvPcUm3oAufCtH7dwNAC-g

https://www.youtube.com/watch?v=7-7ugqAxgxI



<sub>{{ page.lastchange }} created {{ page.created }}</sub>

## Install granted to assume role

https://docs.commonfate.io/granted/getting-started

1. Install Granted CLI:
   ```
   brew tap common-fate/granted
   brew install common-fate/granted/granted
   ``` 
   <pre>
   ✔︎ JSON API cask.jws.json                                            Downloaded   15.3MB/ 15.3MB
   ✔︎ JSON API formula.jws.json                                         Downloaded   32.0MB/ 32.0MB
   ==> Tapping common-fate/granted
   Cloning into '/opt/homebrew/Library/Taps/common-fate/homebrew-granted'...
   remote: Enumerating objects: 772, done.
   remote: Counting objects: 100% (160/160), done.
   remote: Compressing objects: 100% (120/120), done.
   remote: Total 772 (delta 39), reused 0 (delta 0), pack-reused 612 (from 1)
   Receiving objects: 100% (772/772), 108.62 KiB | 427.00 KiB/s, done.
   Resolving deltas: 100% (192/192), done.
   Tapped 2 formulae (14 files, 143.9KB).
   Warning: Calling `depends_on macos: :high_sierra` is deprecated! There is no replacement.
   Please report this issue to the powershell/homebrew-tap tap (not Homebrew/* repositories):
   /opt/homebrew/Library/Taps/powershell/homebrew-tap/Formula/powershell.rb:33
   &nbsp;
   ==> Fetching downloads for: granted
   ✔︎ Bottle Manifest granted (0.38.0)                                  Downloaded    7.6KB/  7.6KB
   ✔︎ Bottle granted (0.38.0)                                           Downloaded   10.9MB/ 10.9MB
   ==> Pouring granted--0.38.0.arm64_sequoia.bottle.2.tar.gz
   🍺  /opt/homebrew/Cellar/granted/0.38.0: 9 files, 36.9MB
   ==> Running `brew cleanup granted`...
   Disable this behaviour by setting `HOMEBREW_NO_INSTALL_CLEANUP=1`.
   Hide these hints with `HOMEBREW_NO_ENV_HINTS=1` (see `man brew`).
   </pre>

1. Verify install of granted's assume command:
   ```
   granted -v
   ```
   <pre>
   Granted version: 0.38.0
   </pre>

1. Use Granted to switch:
   ```
   assume role-a 
   ```
   <pre>
   [role-a] session credentials will expire 2026-02-21 16:47:33 +0000 GMT
   </pre>

   https://granted.dev/browsers


## Referebces

   https://www.oreilly.com/videos/zero-to-hero/0642572107789/
   OReilly Course: "Zero to Hero  on AWS Security: An Animated Guide to Security in the Cloud"
   Apr 2025
   by Matt Lea of https://schematical.com



<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
