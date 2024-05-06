---
layout: post
date: "2024-05-04"
file: "waf"
title: "WAF"
excerpt: "Web Application Firewall."
tags: [flood, perftest, selenium, testing, playwright]
image:
# flood-the-internet-wall-1900x500-105703.jpg
  feature: https://user-images.githubusercontent.com/300046/59104048-b4980880-88ed-11e9-9a93-c19baaef18ab.jpg
  credit: AttendantDesign.com
  creditlink: https://attendantdesign.com/fake-tsunami-films-flood-internet/
comments: true
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

The idea for this article came to me while re-watching the TV series <a target="_blank" href="https://www.imdb.com/title/tt4158110/?ref_=fn_al_tt_1">Mr. Robot (from 2015)</a> now streaming on <a target="_blank" href="https://www.amazon.com/gp/video/detail/0RV4BHIBUTM2BBF34OPWMYULXE/ref=atv_dl_rdr?tag=justus1ktp-20">Amazon Prime</a>.

I think a big reason for the popularity of the show (rated 8.5/10) is due to its <a target="_blank" href="https://www.imdb.com/name/nm7409899/">technical advisor</a> -- cybersecurity superstar <a target="_blank" href="https://www.linkedin.com/in/michael-bazzell-a83572122/">Michael Bazzell</a>, whose <a target="_blank" href="https://inteltechniques.com/">https://inteltechniques.com</a> is my most useful and thorough resource on defending privacy.

At the end of this deep-dive article, the key takeaway from this article should be about how Developers, Security, Network Engineers, Performance Engineers, Operations, Customer Support, and others must go out of their way to help each other rather than being isolated cogs who don't feel a need to actively collaborate with others.

This article identifies where that collaboration can occur.

PROTIP: The root cause of vulnerabilities within enterprises is <strong>complacency</strong> -- a lack of the collaboration needed to be proactive toward preparing for war, manifested as DoS (Denial of Service) attacks.

The most malicious adversaries hit during the worst period of the year [black friday / cyber monday]).

## Are You Dead Yet?

Minutes into the psycho-technical series' first episode, one character mentions a <strong>"R.U.D.Y. attack"</strong>. 

So below is how I would "mansplain" what that means (to excruiciating detail), instead of watching the show. ;)

RUDY is an acronymn for <strong>"aRe yoU Dead Yet"</strong> -- the name of a tool hackers use to create Denial of Service attacks. (An example is at <a target="_blank" href="https://github.com/darkweak/rudy">https://github.com/darkweak/rudy</a>, written in the Go language). 

A <a target="_blank" href="https://en.wikipedia.org/wiki/Slowloris_(computer_security)
">similar tool</a> is at <a target="_blank" href="https://github.com/gkbrk/slowloris">https://github.com/gkbrk/slowloris</a>, written in the Python language. The program is named after <a target="_blank" href="https://www.wikiwand.com/en/Slow_loris">slow lorises</a>, a group of primates known for their slow movement. It's exhausting watching them.


## Low and Slow

A single hacker machine can use the tools to take down even a large targeted Apache web server because the attack requires minimal bandwidth.

Unlike "volumetric" DoS (Denial of Service) attacks which aim to <strong>overwhelm</strong> (flood) target servers with traffic from many malicious clients, <strong>"low and slow"</strong> attack aims to exhaust server resources through long-running, incomplete requests.

Such an attack is difficult to detect using conventional DDoS detection mechanisms which expect a high volume and fast rate of traffic.

The exploit "sends long HTTP POST requests to the target server, but breaks the request body into small packets sent at a very slow rate (e.g. one byte every 10 seconds). This slow rate of sending the request body prevents the server from closing the connection, forcing it to keep the connection open and wait for the full request."

Apache web servers have a finite pool of processing threads available to handle connections with the clients it serves. When the maximum number of possible connections that a server can handle is reached, additional connections cannot be established. And thus a denial-of-service attack is successful.

That's why I have a feeling we'll see state-sponsored actors use such tools for cyber warfare - to shut down websites of value to society.

## Monitoring needed

On the road to collapse, low-level attacks run up a large server bill for those attacked.

PROTIP: Track monthly spend by service within each region to identify trends and anomalies using
<a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-cost-explorer/">AWS Cost Explorer</a>
against a <a target="_blank" href="https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-create.html">budget</a>.
Investigate the root cause of upward trends and sudden spikes: are they due to higher rates?
Are costs consistent with the amount of work processed?

PROTIP: Security Red Teams: you would be wise to see what impact the "low and slow" attack mechanisms might have and whether (and how fast) defensive mechanisms perform against them.

Pair up with Performance Engineers who know how to setup large-scale systems running with <a target="_blank" href="https://witestlab.poly.edu/blog/slowloris/">insightful metrics and visualizations</a>.

This would be the case even after the organization upgrades to newer technologies, to verify whether the changes really can block the attacks.

Within AWS, a <strong>CloudWatch metric name</strong> is specified when creating Web ACL (Access Control List) rules.


## Metrics

QUESTION: How do you know whether a low-level attack is not already at work on your system?

One sign of such an attack are connection log entries containing <strong>HTTP 408 error codes</strong> in the server log ("-" 408 156 "-" "-"). 

PROTIP: The circumstances when a server becomes exhausted can be predicted by watching the relationship between three  metrics captured about each system:

   L = the average number of <strong>connections</strong> being used by the system
   
   λ (lambda) = the average arrival <strong>rate</strong> of new requests arriving

   W - the average <strong>dwell time</strong> a customer spends in the system

Knowing two enables the third to be calculated using the formula L = λ * W (called <a target="_blank" href="https://en.wikipedia.org/wiki/Little%27s_law">"Little's Law"</a>).

The longer each customer spends in a system, the less connections are possible.

QUESTION: Are such metrics obtained for your servers?

PROTIP: Automatically sound an alarm when a spike occurs in connections, rates, dwell time, and spend.

SIEM tool <a target="_blank" href="http://support.newrelic.com/help/kb/features/tracking-front-end-time">New Relic</a> has a "application response time" metric that includes "Request Queue". To collect "request queuing time", each HTTP request must be marked with a timestamp when queuing starts by adding an HTTP header by configuring the Apache httpd.conf file:

   <ul><pre>RequestHeader set X-Request-Start "%t"</pre></ul>


## Apache Server Configuration

Several vendors and commenters offer ways to reduce the effectiveness of "low and slow" attacks:

1. Limit the maximum number of connections each IP address is allowed to make

2. Limit the maximum time a client is allowed to stay connected 

3. Restrict connections with slow transfer speeds

Notice that this assumes that <strong>each individual client connection</strong> is analyzed and managed. And there can be thousands of them at once.

Individual servers can be configured, but hackers have gotten wise to them:

1. Apache module "mod_antiloris" rejects a same IP that creates more than, by default, 10/20+ connections.

   "But the IP in the attack here are only creating 3-4 connections max."

2. From Apache version 2.2.15, Apache module "mod_reqtimeout" is enabled with default:

   <tt>RequestReadTimeout header=20-40,minrate=500 body=10,minrate=500</tt>

   Rather than being held open indefinitely, servers can be configured to timeout connections automatically based on a threshold.

3. QUESTION: What can be done to restrict connections with slow transfer speeds?

   This would require a program that can track and analyze the behavior of each IP address, which is a daunting task explained below.


## Increasing capacity may not help

Administrators can buy some time by adding additional servers and, on each Apache server, increase the number of MaxRequestWorkers in the mpm_prefork.conf configuration file. 

However the number of attackers can also increase. In a DDoS (Distributed Denial of Service) attack, hackers use thousands of devices that have been compromised to direct traffic toward a single site.


## Mitigation: Upgrade the Tech

Articles by reverse proxy vendors <a target="_blank" href="https://www.cloudflare.com/learning/ddos/ddos-attack-tools/slowloris/">Cloudflare</a> and <a target="_blank" href="https://www.wallarm.com/what/what-is-slowloris">Wallarm</a> do not mention tech upgrades to more advanced technologies to stop such attacks:

1. Upgrade from Apache <a target="_blank" href="https://www.nginx.com/blog/nginx-app-protect-denial-of-service-blocks-application-level-dos-attacks/">to NGINX</a> and lightpd web servers which are not designed to have  maximum connections. Instead, they use worker threads which has no limit on the number of connections they can handle. Monitors of Apache connections show that the majority of the active connections are 'Sending' or 'Receiving' data from the client. 

   Unlike with Apache, NGINX/Lighttpd ignore incomplete requests by letting them run in the background, which does not use up system resources.

2. Upgrade from use of HTTP protocol 1.1 to HTTP 2, which does not hold sessions open.

PROTIP: The above advances have been available for several years. So essentially, "low and slow" attacks on an organization take advantage of that organization's inability to modernize quickly enough. Implementing the above involves changes to application programming code. The job of a CISO is to recognize this and rally the organization from the top down.

The rest of this article examines what can be done technically with legacy Apache web server software.

## But we have an IPS

An Intrusion Protection System (IPS) does not detect and mitigate against "low and slow" attacks because IPS works on <strong>ISO network layer 3 and 4</strong> (switching, routing, and transport), which differentiate the "signatures" among different sessions and users.

## Reverse Proxies

A Reverse Proxy provides broader functionality beyond just security, such as load balancing, caching, SSL termination, and routing requests to different backend servers.

Proxying servers and caching accelerators such as Varnish, nginx, and Squid mitigate this particular kind of attack.

<a target="_blank" href="https://www.cloudflare.com/ddos/">Cloudflare</a> is a cloud-based service that functions as a "reverse proxy" protecting the origin server.
When all traffic goes first to their 248 Tbps network, working servers would receive traffic only from <a target="_blank" href="https://www.cloudflare.com/ips/">Cloudflare's IP-ranges</a>. The working network can then <a target="_blank" href="https://developers.cloudflare.com/fundamentals/setup/allow-cloudflare-ip-addresses/">disallow</a> all access EXCEPT those that belong to CloudFlare.

A similar service is <a target="_blank" href="https://www.corero.com/products/">Corero's SmartWall ONE™ appliance</a> which slots "behind" edge routers to sample and inspect traffic. If DDoS is detected, it orchestrates mitigation directly on the routers. 

Many organizations use both Reverse Proxies also use a WAF as part of a layered security approach for their web infrastructure.


## DDoS Resiliance Architecture

The <a target="_blank" href="https://docs.aws.amazon.com/whitepapers/latest/aws-best-practices-ddos-resiliency/mitigation-techniques.html">AWS Best Practices for DDoS Resiliency</a> uses this DDoS-resilient reference architecture diagram:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714929795/waf-aws-ddos-ref-arch-1164x667_dtloy9.png"><img alt="waf-aws-ddos-ref-arch-1164x667.png" width="1164" height="667" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714929795/waf-aws-ddos-ref-arch-1164x667_dtloy9.png"></a>

Prepatory services to WAF:

Using your default browser to establish Administrator:
1. Create a Root AWS account using your email.
2. Lock down the root account and configure IAM users to login with. The <a target="_blank" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/security-reference-architecture/welcome.html">AWS Security Reference Architecture (SRA)</a> prescribes 5 Organizational Units (OUs) and Accoutns:
   1. Organization Management account
   2. Security Tooling & Log Archive accounts
   3. Workloads account
   4. Infrastructure Network Account & Shared Services accounts
   <br /><br />
3. Setup AWS Route 53 for DNS of a custom host name.
4. Optionally, setup <a target="_blank" href="https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html">AWS Global Accelerator</a> service to route traffic among the AWS global network of 100 edge locations to the closest healthy endpoint. This improves performance by up to 60% compared to routing over the public internet. It can also protect applications from DDoS attacks by absorbing  traffic closer to the source. 

   ### Setup Web Application Firewall

5. A WAF typically operates behind a DNS (AWS Route 53) about in front of a load balancer which allocates traffic among several physical servers, analyzing all communications before they reach the app or the end-user.

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714910173/waf-aws-icon-1600x1600_k3eqhs.webp"><img align="right" width="160" height="160" alt="waf-aws-icon-1600x1600.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714910173/waf-aws-icon-1600x1600_k3eqhs.webp"></a>
   
   A WAF (Web Application Firewall) works at the "Application" level (at what ISO called Level 7) where the program can examine various protocols, including HTTP headers and body text.

   <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714730367/waf-flow-1124x626_lqjo1h.png"><img alt="waf-flow-1124x626.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714730367/waf-flow-1124x626_lqjo1h.png"></a>

   HANDS-ON: Let's create the above within the AWS cloud so we have a practical understanding.

6. <a target="_blank" href="https://www.youtube.com/watch?v=FHRXXrQ765M" title="Premiered Oct 26, 2023">This video</a> by <a target="_blank" href="https://www.linkedin.com/in/rahul-wagh/">Rahul Wagh</a> describes how to, step-by-step, manually to setup a VPC, Internet gateway, Subent, Route table. Launch an Ubuntu t2.micro EC2 Instances with an Apache web server invoking <a target="_blank" href="https://www.youtube.com/watch?v=FHRXXrQ765M&t=9m21s">these commands</a> on start:

   <pre>#!/bin/bash
yes | sudo apt update
yes | sudo apt install apache2
echo "&LT;h1>Server Details&LT;/h1>&LT;p>&LT;strong>Hostname:&LT;/strong> $ hostname\}
&LT;/p>&LT;p>&LT;strong>IP Address:&LT;/strong> $(hostname -l | cut -d' ' -f1)&LT;/p>" > /var/www/html/index.html
sudo systemctl restart apache2
   </pre>

   WARNING: This is the simplest verification of the simplest mitigation.
   See the section about enterprise-level <a href="#MitigationTesting">Mitigation Testing</a> below.

5. 10:50 - Implement EC2 Target Group (using HTTP 1.1) 
6. Create internet-facing IPv4 Application Load Balancer with a Security Group for unencrypted HTTP traffic through port 80 and SSH for TCP 22 remote Terminal access.

   WARNING: Production environments need to always use HTTPS with a TLS certificate.

7. Copy and paste the DNS Name as the URL to reach the test environment.
8. PROTIP: In the Amazon Console GUI, <a target="_blank" href="https://www.youtube.com/watch?v=FHRXXrQ765M&t=17m17s">VIDEO: instead of searching for WAF</a>, bring up the "WAF & Shield" AWS service with this URL:

   <pre><a target="_blank" href="https://console.aws.amazon.com/wafv2/homev2/web-acls">https://console.aws.amazon.com/wafv2/homev2/web-acls</a></pre>

   NOTE: AWS automatically adds the default AWS Region of your account to the URL.

   If the region appearing is not your default region, change it on the upper-right of the screen.
   <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/APIReference/Welcome.html">REMEMBER</a>: 
   When fronting Amazon CloudFront applications, you must use the <a target="_blank" href="https://docs.aws.amazon.com/general/latest/gr/waf.html">API endpoint</a> listed for <tt>us-east-1</tt> = US East (N. Virginia).

   ### AWS WAF, Shield, Firewall Manager

   Within the AWS (Amazon Web Services) cloud are <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">several security services</a>:

   * AWS WAF - see <a target="_blank" href="https://aws.amazon.com/waf/">https://aws.amazon.com/waf</a>

   * <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html">AWS Firewall Manager</a> applies a <strong>central configuration across several accounts</strong> and resources. For a <a target="_blank" href="https://aws.amazon.com/firewall-manager/pricing/">$100 per month per region per policy</a> ($110 in UAE, $120 in Jakarta and Zurich).

   * AWS Shield Advanced (at a subscription fee of $3,000/month per organization) is an AWS-managed service that comes with dedicated support from the AWS Shield Response Team (SRT). AWS handles the provisioning, configuration, and ongoing management of DDoS protection, reducing operational overhead. It enhance WAF with <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-summary-capabilities.html">advanced event visibility</a> for important websites using Amazon EC2 instances, Elastic Load Balancing load balancers, CloudFront distributions, Route 53 hosted zones, and AWS Global Accelerator standard accelerators.

   PROTIP: Do not select both AWS Firewall manager AND AWS Shield Advanced.

9.  <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714706149/waf-menu-240502-356x866_d8pwhm.png"><img align="right" alt="waf-menu-240502-356x866.png" width="150" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714706149/waf-menu-240502-356x866_d8pwhm.png"></a>AWS has a "classic" WAF. But we use "WAF" on the top of the menu, which is referenced in <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS documentation as WAFv2 (version 2)</a>.

10. Although Web ACLs are global, the region where resources the WAF acts on needs to be specified.

11. <a target="_blank" href="https://www.youtube.com/watch?v=FHRXXrQ765M&t=18m19s">Click "Create Web ACL"</a>.

    <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/getting-started.html">REMEMBER</a>: The Web ACL Name and Metric Name cannot be changed after creation.

    PROTIP: Include in the Name the date, such as "241231" for December 31, 2024.

12. Click "Add AWS resources" to attach the downline service. Notice there are two categories:

    * AWS CloudFront CDN distribution
    * "Regional resources" (does not work with AWS Outposts)
    <br /><br />

    In the sample video, select "Regional resources" for the Application Load Balancer defined earlier. Next.

    NOTE: The WAF can handle HTTP protocol Requests going into <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">several other AWS services</a> not applicable to this example:
    * Amazon API Gateway REST API (to mobile apps) <a target="_blank" href="https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-4">for FSBP</a>
    * AWS App Runner service
    * AWS AppSync GraphQL API
    * Amazon Cognito user pool
    * AWS Verified Access instances
    <br /><br />

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714768453/waf-resc-types-1596x366_tbk8mh.png"><img alt="waf-resc-types-1596x366.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714768453/waf-resc-types-1596x366_tbk8mh.png"></a>

    ### Rule Groups

13. <a target="_blank" href="https://www.youtube.com/watch?v=FHRXXrQ765M&t=19m29s">Click "Add rules and rule groups"</a>, then within Rules: Add Rules pull-down, select "Add managed rule groups": <a target="_blank" href="https://www.youtube.com/watch?v=aDW2NDUBAOw&t=3m22s">VIDEO</a>:

    <a target="_blank" href="https://dev.to/aws-builders/how-to-setup-aws-waf-v2-21f1">BLOG</a>:
    By default, AWS WAF doesn't provide rules.

    <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-groups.html">Rule groups</a> is the "beating heart" of any WAF. Rule Group s are reusable collections of rules that can be used within WAF ACLs.
   
    PROTIP: Selection of rule groups is not a trivial decision because it involves complex <strong>triangulation</strong> among several tradeoffs: affordability, vendor trust, what vulnerabilities to mitigate.

14. Click "AWS managed rule group". Don't click "Add to web ACL" yet. We'll come back to these:

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714841508/waf-aws-list-1140x1352_swoddc.png"><img alt="waf-aws-list-1140x1352.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714841508/waf-aws-list-1140x1352_swoddc.png"></a>

    QUESTION: How does "Account takeover prevention" work and why is is necessary when there are Role-based permissions? This mitigates adversaires who <a target="_blank" href="https://www.youtube.com/watch?v=xCLUeBJlDcc">VIDEO</a>: use the Burp Suite FoxyProxy browser extension to inject passwords from the list of popular passwords.

    QUESTION: What is the difference between "Common" and "Targeted"?

15. If you are experimenting, scroll down to "<strong>Free role groups</strong>". By "free" AWS means no additional vendor charges.

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714841716/waf-aws-free-1114x1508_ltbe7z.png"><img alt="waf-aws-free-1114x1508.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714841716/waf-aws-free-1114x1508_ltbe7z.png"></a>
    
16. Toggle the "Add to web ACL" associated with each Rule set applicable to your environment.

    * <strong>Amazon IP reputation list</strong> is compiled by the "Amazon Threat Intelligence" group protecting the amazon.com shopping site.<br /><br />PROTIP: Whether a particular IP addresses is malicious is a dynamic situation, changing all the time.

    * <strong>Core rule set</strong> for what <a target="_blank" href="https://wilsonmar.github.io/owasp-testing">OWASP has identified among Top 10 vulnerabilities in web applications</a>. Notice that the 700 units make it among the most compute intensive of choices.

    * <strong>Know bad inputs</strong> - QUESTION: how does that work?

    * Activate one for the operating system (POSIX, Windows).

    * Activate one for the language you use (PHP, WordPress, etc.).

    * PROTIP: Before blocking traffic from <strong>VPNs</strong>, survey everyone in your organization to see if they use one to protect themselves from someone in Starbucks listening in which they login to work or their bank. If so, specify a specific VPN they can use and put that VPN's addresses in the allowlist.

17. Consider capacity limits.

    Among <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">many Quotas related to WAF</a>, there is a limit of up to 100 Web ACLs, 100 Rule Groups, and IP Sets each for each region.

    WARNING: 100 Web ACLs is not very many.

    One million requests divided by 30 days in the month is 33,333 per day.
    
    Divided by the 100 rule limit, that's 333 requests per rule per day with a region.
    That's not many.
    
    QUESTION: Please correct me if I'm wrong with this.

    ### Alerts when limits are reached
    
    PROTIP: <strong>Raise an alert</strong> about incoming requests which AWS WAF is not able to fully analyze due to it being <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">limited </a> on how much it can process at one time:

    * Maximum 64 KB in the web request body that can be inspected for CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access protections
    * Maximum 4 KB in the custom response body content for a single custom response definition 	
    * Maximum 50K in the combined size of all response body content for a single rule group or a single web ACL
    * Maximum 10 custom headers for a single custom response definition 	
    <br /><br />

    <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">REMEMBER</a>:
    AWS has defined a Quota for the Maximum number of calls of 
    * <strong>5 request per second</strong> to any individual Get or List action, if no other quota is defined for it 
    * <strong>1 request per second</strong> specifically to GetWebACLForResource and ListResourcesForWebACL (which can return a lot of information)
    * <strong>1 request per second</strong> to any individual Create, Put, or Update action, if no other quota is defined for it 
    * <strong>2 request every 2 seconds</strong> specifically to AssociateWebACL and DisassociateWebACL
    <br /><br />

    <hr />

18. Consider costs. 

    PROTIP: Please refer to the spreadsheet I created, available on Gumroad. ???

    AWS charges for each ACL processed within each hour at the equivalent of <strong>$5 per month</strong> per region, or $0.0925925925926 (about 1 cent) per hour, assuming processing occuring 18 hours each of 30 days (540 hours). 
    At the maximum of 100 WAF ACLs, that's $50/month for each region.

    Additionally, 

    AWS charges each Rule processed at $1 per month.
    Assuming 100 rules firing for 540 hours during the month, that's $540 per month per region.
    
    On top of that, published charges by Rule vendors are, for example:

    * Charge per month in each available region (pro-rated by the hour) $25 / unit
    
    * <strong>Charge per million requests</strong> in each available region	$1 / unit

    The "unit" refers to WCUs (WAF Capacity Units) unique to AWS.

19. Calculate WCUs.

    ### WAF ACL Capacity Unit (WCU) Control

    This sentence caused my brow to wrinkle and my head to spin:

    "The WCUs used by the web ACL will be less than or equal to the sum of the capacities for all of the rules in the web ACL."

    What that means to me is that each rule is assigned a <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF Capacity Units (WCUs)</a> used to manage capacity. The more complex a rule, the higher the WCU for that rule. For example, a simple size constraint rule statement uses fewer WCUs than a statement that inspects requests using a regex pattern set</a> at:
    <a target="_blank" href="https://console.aws.amazon.com/wafv2/homev2/regex-pattern-sets/new">https://console.aws.amazon.com/wafv2/homev2/regex-pattern-sets/new</a>

    QUESTION: I'm baffled as to how many WCUs to assign each rule.
    
20. Consider overage charges.

    When more than 1,500 WCUs are incurred, instead of charging customers<br />
    <strong>$0.60 per million requests per month</strong>, customers are charged<br />
    <strong>$0.80</strong> per million requests per month.

    WARNING: The AWS Price Calculator does not consider such overage costs.

    On April 11, 2023 AWS upped the limit eligible for overage charges at 5,000 WCUs per web ACL. But customers can request a limit increase. 
    QUESTION: What is the error message when that happens?


    ### IP Sets

    <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-referenced-set-managing.html">>IP Sets</a> refer to a simple list of (up to 10,000) IP addresses to be allowed or blocked.

    ### Bogon IP addresses

    The WAF should ignore (<a target="_blank" href="https://en.wikipedia.org/wiki/Bogon_filtering">filter out</a>) <a target="_blank" href="https://youtube.com/shorts/pGKUzdSdOU4?si=PIpe320r77lD81vF">"Bogon"</a> or bogus IP addresses which should not be used over the public internet. But they are used in denial-of-service attacks.

    There are now no more unallocated IP addresses, so Bogon now refers to use of addresses which <a target="_blank" href="https://datatracker.ietf.org/doc/html/rfc5735">RFC 5735</a> reserved for special use and "Martian" packets received by the kernel on a specific interface, while routing tables indicate that the source IP is expected on another interface (according to <a target="_blank" href="https://datatracker.ietf.org/doc/html/rfc1812">RFC 1812</a> routing rules).

    <a target="_blank" href="https://youtube.com/shorts/pGKUzdSdOU4?si=n647E9ueuO7MJftL">VIDEO</a>: Netgate documentation.

    ### Other vendors

21. Click the toggle icon for <strong>each</strong> rule group you want to add to your Web ACL, then click the orange "Add rule" at the bottom.

    PROTIP: I've added to each vendor name a link to its <a target="_blank" href="https://www.gartner.com/reviews/market/cloud-web-application-and-api-protection">Gartner Peer Insights page for Cloud Web Application and API Protection</a> and <a target="_blank" href="https://www.trustradius.com/">TrustRadius</a>, <a target="_blank" href="https://upcity.com/cybersecurity">Upcity</a> summarizes reviews of cybersecurity companies (everyone gets 5 stars).etc.

    * <a target="_blank" href="https://www.g2.com/products/cloudbric/reviews">Cloudbric Corp.</a> (Korea)
    * <a target="_blank" href="https://www.g2.com/products/cyber-security-cloud-managed-rules-for-aws-waf-highsecurity-owasp-set/reviews">Cyber Security Cloud Inc</a>. (<a target="_blank" href="https://aws.amazon.com/marketplace/seller-profile?id=be0471e9-b358-4cad-9a4b-1f7f015ea077">AWS</a>: Penta Security & <a target="_blank" href="https://www.g2.com/products/wafcharm/reviews">WafCharm</a>)
    * F5 (which I've worked with since 1980)
    * <a target="_blank" href="https://www.gartner.com/reviews/market/cloud-web-application-and-api-protection/vendor/fortinet/product/fortiweb-web-application-firewal">Fortinet</a>
    * GeoGuard
    * <a target="_blank" href="https://www.gartner.com/reviews/market/cloud-web-application-and-api-protection/vendor/imperva/product/imperva-incapsula-waf">Imperva</a> <a target="_blank" href="https://www.g2.com/products/imperva-app-protect/reviews">G2</a> <a target="_blank" href="https://www.youtube.com/watch?v=g5MM8xw0PWA">VIDEO</a>
    * <a target="_blank" href="https://www.g2.com/sellers/threatstop-b695e0e5-6598-415f-b072-9f8a05e47fbb">ThreatSTOP</a>
    <br /><br />

    PROTIP: The above vendors are also listed among "AWS Marketplace managed rules" to buy rule groups maintained professionally by cybersecurity firms:

    <tt><a target="_blank" href="https://console.aws.amazon.com/wafv2/homev2/marketplace">https://console.aws.amazon.com/wafv2/homev2/marketplace</a></tt>

    PROTIP: Not on the list are famous vendors 
    * <a target="_blank" href="https://www.gartner.com/reviews/market/cloud-web-application-and-api-protection/vendor/akamai/product/app-and-api-protector">Akamai</a>
    * Cloudflare
    * Fastly
    * Rapid7 <a target="_blank" href="https://www.youtube.com/watch?v=L9-K1DPYFuE">VIDEO</a>: vs RASP (Runtime Application Self-Protection) that monitors built into the application itself  provide detailed visibility to detect and actively block attacks in real-time, such as terminating a user session, shutting down the application, or alerting security teams.
    * AppTrana WAAP by <a target="_blank" href="https://www.indusface.com/">Indusface</a>
    <br /><br />
    
    <a name="MitigationTesting"></a> 

    ### Mitigation Testing

    PROTIP: Verify each mitigation you add to ensure it actually works.
    For example, use the "known-bad" app DVWA (Damn Vulnerable Web Application) <a target="_blank" href="https://wilsonmar.github.io/owasp-testing/">described in my article on OWASP Testing</a>  to <a target="_blank" href="https://www.youtube.com/watch?v=WxwCGj5TXl8&t=1m13s&list=PLZmbPz-KgDtgJLfsdLmSHIXyv0TlQ-CJj&index=1">VIDEO: verify whether F5's WAF works</a>.

    <a target="_blank" href="https://docs.aws.amazon.com/whitepapers/latest/aws-security-incident-response-guide/run-regular-simulations.html">PROTIP</a>: 
    Many security standards, including <a target="_blank" href="https://docs.aws.amazon.com/securityhub/latest/userguide/fsbp-standard.html">AWS Well-Architected Foundational Security Best Practices (FSBP) standard</a> require that simulations to mimic threat actors’ tactics, techniques, and procedures (TTPs) be repeated on a regular schedule. This is to verify your organization's <a target="_blank" href="https://aws.amazon.com/architecture/security-identity-compliance/">incident investigation response</a> capabilities.


22. Scroll down to the "Default web ACL action for requests that don't match any rule". 

    PROTIP: The selection of default "Allow" or "Block" is fundamental to the <strong>maturity level</strong> of the organization running AWS. The red pill or the black pill.

    NOTE: The words "Allowlist" and "Blocklist" has replaced "Whitelist" and "Blacklist" for more cultural sensitivity.

    Selecting <strong>"Allow" by default</strong> means relying completely on Rules defined to safeguard traffic. 
    That's not terrific but also terrifying. Miss one and you open your whole operation to hackers.

    Selecting <strong>"Block" by default</strong> means that each user and app must be specifically specified, and unspecified quickly as each user leaves the team or organization. Those who use VPNs would change the IP address frequently. That also will likely result in some complaints from developers and users. That requires more automation and staffing of a 24/7 operation. But mistakes with this approach doesn't open your whole environment to hackers. 

    PROTIP: This is a good discussion prompt in an interview. 
    How did the candidate's previous employer collect IP addresses dynamically to open up the network to each downline service and user?

    PROTIP: Selecting <strong>Count</strong> is a good move to analyze the impact of rules defined before productive use. Use this for general monitoring and also to test your new web request handling rules. A toggle can be defined in <a href="#Terraform">Terraform</a> to easily select this.


    ## Distinguish Friend from Foe

    To avoid slamming the door on legitimate (but slow moving) actual users, blanket automatic timeouts need to be set based on observations of real traffic patterns by emulating the full mix of users under load. 

    That's the job of Performance Engineers. The cutoff threshold can vary depending on the efficiency of the hardware and the processing mix.

    PROTIP: Here is an opportunity for proactive collaboration: when a slow connection is identified to a real customer, have Customer Service reach out to that customer to investigate whether it's a bad network, slow computer, or not enough training.

    This would require storing the IPs of known-slow users can be tracked so that they are exempted when blocking IP addresses which respond slower than a cutoff threshold.

22. Set Rule Priority. Drag and drop the highest priority rule on top of the list.
23. Click the orange "Create Web ACL".


    ## More than HTTP/IP traffic
    
    WAF can examine all protocols to detect exploits of vulnerabilities in network protocol handling:
    
    * DNS per-request login (see https://www.f5.com/glossary/web-application-firewall-waf)

    * FTP (File Transfer Protocol)

    * SMTP time protocol UTP flood

    * TCP (layer 4) "Syn Flood" with a large number of TCP connection requests but doesn’t complete the connection handshake. Done to fill the server’s connection queue to prevent it from accepting legitimate connections.

    * UDP (layer 4) "UDP Flood" with a high volume of UDP packets to overwhelm network resources, causing the server to become unresponsive to legitimate traffic.

    * ICMP server status (layer 3) "Ping of Death" sendds oversized or malformed ICMP packets
    
24. Select the vulnerabilities to catch.

    ### WAF ACL Rules for OWASP

    Fortinet, Cloudbric Corp., Cyber Security Cloud Inc., F5
    provide WAF rules to identity some of the attacks identified among the <a target="_blank" href="https://wilsonmar.github.io/owasp-testing/">OWASP Top 10</a> listing the most seen web application vulnerabilities. As of 2022:

    * <strong>SQL Injection attacks</strong> target databases by inserting malicious code into website input fields. This can allow hackers to delete, change or take control of the database, leading to data loss and system compromise. 

    * <strong>XML External Entities (XXE)</strong>

    * <strong>Cross Site Scripting (XSS)</strong> <a target="_blank" href="https://www.youtube.com/watch?v=00SymueFERA">VIDEO</a> by <a target="_blank" href="https://www.youtube.com/watch?v=00SymueFERA">Styx</a>

    WARNING: Looking at Customer Reviews of the above reveal a common complaint:

    "Why did that particular IP address get blocked?
    I can't correlate the rule id that shows up in a log file with a rule name that's understandable by a human."

    "False positives" take time and expertise to resolve.

    ### Rule criteria
    
    Within each rule, the <strong>criteria</strong> in such rules include known malicious IP addresses, geographical origins, length of query strings, SQL code, etc.  

    ???

25. Run with "Check".
26. Configure CloudFront to "Enable Security protections". Select "Use monitor mode" and "Use existing WAF configuration". See <a target="_blank" href="https://www.youtube.com/watch?v=PCqx7MQsmwY&t=12m9s">VIDEO</a> by <a target="_blank" href="https://www.linkedin.com/in/justin-kurpius-6a04538/">Justin Kurpius</a>

    ### Analyze Logs

    Within "Web ACL" GUI there is a Query editor. For example: <a target="_blank" href="https://www.youtube.com/watch?v=8pGS9YXnlJw&t=8m15s">VIDEO</a>:

    <pre>fields action, @timestamp, @message
    | filter httpRequest.clientIp="220.255.215.130"
    | sort @timestamp desc
    | limit 20
    </pre>

26. Switch to a Terminal to check WCU requirements for a set of rules:

    <pre>aws wafv2 check-capacity</pre>

    Run the above AFTER running my mac-setup bash script to setup the aws command and support utilities.

<hr />

## Other vidoes about AWS WAF:

   * <a target="_blank" href="https://www.youtube.com/watch?v=Bj6fDT4oyCE">"Hands-on: Deploy AWS WAF on ALB and setup WAF Rules" by StormIT</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=_M872LhrcD4">" AWS WAF Tutorial | Understanding AWS WAF, Acl, Rule, WCU and implementation</a> for CloudFront by DumbTutorials
   * <a target="_blank" href="https://www.youtube.com/watch?v=udug43AWeJw">AWS Web Application Firewall (WAF) config</a> by Loi Liang Yang</a> (<a target="_blank" href="https://www.loiliangyang.com">loiliangyang.com</a>), 
   <a target="_blank" href="https://www.youtube.com/watch?v=8pGS9YXnlJw">demo</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=FHRXXrQ765M">Rahul Wagh</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=p8CQcF_9280">F5 DevCentral</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=aDW2NDUBAOw">Cybr</a>
   * https://www.linkedin.com/advice/1/what-top-web-application-firewalls-waf-protecting-dkjle?trk=contr
   <br /><br />


<hr />

## Manual GUI Console forbidden

More and more enterprises do not allow manual use of GUI on production resources.

This is despite tracking of changes made.

That's because changes using the web Console GUI are <strong>not repeatable</strong>.
It's difficult for one person to create the same exact configuration.
Accurace and precise documentation are difficult to follow. It's too easy to miss a step.


## IaC Automation

Instead, storage of Infrastructure as Code (IaC) specifications in GitHub enables collaboration and 
tracking of who made what change, and when. There are two approaches:
   
   * <a href="#Terraform">Terraform by HashiCorp</a>
   * <a href="#CF">Cloud Formation by AWS</a>
   <br /><br />

They both reference the (at last count) <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/APIReference/API_Operations_AWS_WAFV2.html">54 actions defined for AWS WAFV2 API from ovember, 2019</a>
and <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/APIReference/CommonErrors.html">128 datatypes</a>.
See the <a target="_blank" href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">AWS WAF Developer Guide</a>.


<a name="Terraform"></a>

## Terraform for AWS WAF

In his <a target="_blank" href="https://medium.com/appgambit/terraform-wafv2-web-acl-38b60fdde8ba">article on Medium</a>, <a target="_blank" href="https://www.linkedin.com/in/bhatasana-prashant/">Prashant Bhatasana</a> explains his<br />
<a target="_blank" href="https://github.com/LazziBear/terraform-aws-WAFv2">https://github.com/LazziBear/terraform-aws-WAFv2</a> which setups up a WAF service using Terraform.

So in this article we present links to documentation about use of each <strong>Terraform module</strong> associated with each GUI menu item shown above:

| AWS WAF Menu Item | Terraform module | Notes |
| ----------------- | ---------------- | ----- |
| Web ACLs (Access Control Lists) | <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl">aws_wafv2_web_acl</a> | - |
| Bot Control | <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_association">aws_wafv2_web_acl_association</a> &<br /> <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_logging_configuration">aws_wafv2_web_acl_logging_configuration</a> | <a target="_blank" href="https://www.youtube.com/watch?v=8pGS9YXnlJw">VIDEO</a> |
| IP sets | <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_ip_set">aws_wafv2_ip_set</a> | - |
| RegEx pattern sets | <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_regex_pattern_set">aws_wafv2_regex_pattern_set</a> | - |
| Rule groups | <a target="_blank" href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_rule_group">aws_wafv2_rule_group</a> | - |
<br /><br />

   * <a target="_blank" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-the-security-automations-for-aws-waf-solution-by-using-terraform.html">this article</a>

   with a set of AWS WAF rules that filters traffic for web-based attacks.
   blocks requests that don’t match the rules.

   This solution uses logs for the ALB resource. 
   The Scanner & Probe Protection rule in this solution inspect these logs.

   The specify protective features to include are defined in 
   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl
   Terraform HCL</a> or

We require AWS IAM API keys (access and secret keys) with full access to create AWS WAF/ AWS WAF rules.

In front of a Load Balancer which allocates traffic among various web services.

Need the 
<pre>
variable "region" {
  description = "AWS Deployment region.."
  default = "us-east-1"
}
variable "aws_lb_arn" {
  description = "ARN of your LoadBalance that you want to attach with WAF.."
}
</pre>

??? aws_wafv2_web_acl.WafWebAcl

The Terraform module contains (for <a target="_blank" href="https://docs.aws.amazon.com/securityhub/latest/userguide/waf-controls.html#waf-12">FSBP</a>)

<pre>
resource "aws_cloudwatch_log_group" "WafWebAclLoggroup" {
  name = "aws-waf-logs-wafv2-web-acl"
  retention_in_days = 30
}
resource "aws_wafv2_web_acl_logging_configuration" "WafWebAclLogging" {
  log_destination_configs = [aws_cloudwatch_log_group.WafWebAclLoggroup.arn]
  resource_arn = aws_wafv2_web_acl.WafWebAcl.arn
  depends_on = [
    aws_wafv2_web_acl.WafWebAcl,
    aws_cloudwatch_log_group.WafWebAclLoggroup
  ]
}
resource "aws_wafv2_web_acl_association" "WafWebAclAssociation" {
  resource_arn = var.aws_lb_arn
  web_acl_arn  = aws_wafv2_web_acl.WafWebAcl.arn
  depends_on = [
    aws_wafv2_web_acl.WafWebAcl,
    aws_cloudwatch_log_group.WafWebAclLoggroup
  ]
}
</pre>

<hr />

<a name="Lambda"></a>

## Dynamic Lambda

<a target="_blank" href="https://www.citrusconsulting.com/aws-web-application-firewall-waf/">
This</a> diagram summarizes how a website's traffic can be monitored to dynamically create WAF rules necessary using AWS Lambda "serverless" functions.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714911310/waf-aws-flow-simp-777x517_umvppu.png"><img alt="waf-aws-flow-simp-777x517.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714911310/waf-aws-flow-simp-777x517_umvppu.png"></a>


<hr />w

<a name="CF"></a>

## Security Automations for AWS WAF

AWS offers a managed service: <a target="_blank" href="https://aws.amazon.com/solutions/implementations/security-automations-for-aws-waf/">"Security Automations for AWS WAF"</a> 
to deploy AWS WAF rules and IP Sets (preconfigured by AWS people) to filter common web-based attacks.

The <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations">diagram below</a> shows the solution using Python-driven <strong>Lambda functions</strong>:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1714771405/waf-aws-cf-arch-1019x1029_qtdesv.png"><img alt="waf-aws-cf-arch-1019x1029.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1714771405/waf-aws-cf-arch-1019x1029_qtdesv.png"></a>

* At the bottom of the diagram: (B) & (C) - <strong>Allow and Denied list</strong> of IP addresses defined by AWS influence routing of <strong>AWS Lambda</strong> processing by Amazon EventBridge.

* At the top of the diagram: Without having to write your own rule, AWS-Managed (A) <strong>AWS Managed Rules</strong> provide Rules IP reputation rule groups, baseline rule groups, and use-case specific rule groups to protect against exploitation of common application vulnerabilities or other unwanted traffic, including those described in OWASP publications - (D) SQL Injection and (E) XSS.

* <strong>WAF logs</strong> are streamed to an <a target="_blank" href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html">Amazon Kinesis Data Firehose</a>, which
partitions Traffic information into various S3 buckets.

* The <strong>WAF Log Parser</strong> Lambda function generates Scanner and Probe WAF Rules and IP Sets and mitigate HTTP Flood.

* <strong>App Access logs</strong> from the Application Load Balancer are partitioned into S3 for it as well.

* A <strong>IP Lists Parser</strong> Lambda function generates IP Reputation Lists based on events captured within Amazon CloudWatch.

* An <strong>Access Handler</strong> Lambda function configures a Bad Bot honeypot based on Amazon API Gateway.
It's a security mechanism intended to lure and deflect an attempted attack.

### To get the solution working:

1. Make "OS-level configuration" by installing Python.

2. <tt>git clone</tt> the solution's GitHub repo (containing AWS CloudFormation templates) to:

   <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/tree/main/deployment">https://github.com/aws-solutions/aws-waf-security-automations/tree/main/deployment</a> 

   * <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/blob/main/deployment/aws-waf-security-automations.template">aws-waf-security-automations.template</a> is the "main" template used as the entry point to launch the solution in your account. The default configuration deploys an AWS WAF web ACL with preconfigured rules that are customized for each organization.

   * <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/blob/main/deployment/aws-waf-security-automations-webacl.template">aws-waf-security-automations-webacl.template</a> provisions AWS WAF resources including a web ACL, IP, sets and other associated resources. 

   * <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/blob/main/deployment/aws-waf-security-automations-firehose-athena.template">aws-waf-security-automations-firehose-athena.template</a> provisions resources related to AWS Glue, Athena, and Firehose. It’s created when you choose either the Scanner & Probe Athena log parser or the HTTP Flood Lambda or Athena log parser. 

3. Setup Python and run unit test of Python modules in the <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/tree/main/source">source folder</a>:

   <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/blob/main/deployment/run-unit-tests.sh">./run-unit-tests.sh</a>

4. Identify the <strong>version-code</strong> of the package at: 

   https://github.com/aws-solutions/aws-waf-security-automations/releases
 
5. Define variables for <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/blob/main/deployment/build-s3-dist.sh">build-s3-dist.sh</a>:

   <pre><strong>
# The S3 bucket location where the templates are stored:
template-bucket=""
# Name for location where the Lambda source code is deployed, with '-[region_name]' appended to the bucket name:
source-bucket-base-name=""
# Name of the solution (for consistency):
trademarked-solution-name="Security Automations"
# Version of the package
version-code="4.0.3"
   </strong></pre>

6. Run <a target="_blank" href="https://github.com/aws-solutions/aws-waf-security-automations/blob/main/deployment/build-s3-dist.sh">build-s3-dist.sh</a>

   <pre><strong>cd deployment 
   chmod +x build-s3-dist.sh
   ./build-s3-dist.sh "$source-bucket-base-name" "$trademarked-solution-name" "$version-code"
   </strong></pre>

References:
   * https://docs.aws.amazon.com/solutions/latest/security-automations-for-aws-waf/cost.html
   * <a target="_blank" href="https://docs.aws.amazon.com/solutions/latest/security-automations-for-aws-waf/solution-overview.html">Implementation Guide</a>
   * https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-the-security-automations-for-aws-waf-solution-by-using-terraform.html
   <br /><br />

<hr />

## Other Cloud Vendors

https://www.gartner.com/reviews/market/cloud-web-application-and-api-protection/vendor/microsoft/product/azure-front-door

https://www.gartner.com/reviews/market/cloud-web-application-and-api-protection/vendor/google/product/google-cloud-armor

<hr />

## References:

* <a target="_blank" href="https://trailhead.salesforce.com/content/learn/modules/aws-cloud-security/learn-about-aws-security-services">On Salesforce Trailhead: About AWS Security Services</a>
* <a target="_blank" href="https://trailhead.salesforce.com/content/learn/modules/aws-cloud-security/protect-against-dos-and-ddos-attacks-with-aws-shield">Protect Against DOS and DDoS Attacks with AWS Shield</a>
* <a target="_blank" href="https://docs.aws.amazon.com/whitepapers/latest/aws-best-practices-ddos-resiliency/aws-best-practices-ddos-resiliency.html">"AWS Best Practices for DDoS Resiliency"</a>

* Advanced WAF https://www.youtube.com/watch?v=HBbDKBV4QW0
https://www.youtube.com/watch?v=WxwCGj5TXl8&list=PLZmbPz-KgDtgJLfsdLmSHIXyv0TlQ-CJj&pp=iAQB

"Proactive Bot Defense"

"IP Intelligence"

* <a target="_blank" href="https://www.youtube.com/watch?v=Bj6fDT4oyCE"> Hands-on: Deploy AWS WAF on ALB and setup WAF Rules by StormIT


