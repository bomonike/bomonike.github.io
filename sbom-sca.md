---
layout: post
date: "2024-06-09"
last_change: "25-09-01 v001 + omar santos oreilly :sbom-sca.md"
file: "sbom-sca"
title: "SBOM of components"
excerpt: "Identify vulnerable components within Docker container images referenced in SBOMs of components your code references."
tags: [devsecops, devops, security]
comments: true
created: "2024-06-09"
---
<i>{{ page.excerpt }}</i>

This article is a technical deep-dive into how to generate SBOMs (Software Bill of Materials) for SCA to
identify use of <strong>licenses</strong> that have negative legal implications and use of software known to have security vulnerabilities identified by the US Common Vulnerability and Exposure (CVE) database at:

https://cve.mitre.org/

The severity of each CVE item is rated by the CVSS criteria.

In 2025, with Trump's DOGE, the European Union (EU) began to create their own.

An SBOM is a nested inventory or a list of <strong>ingredients</strong> that make up software components. The National Telecommunications and Information Administration (NTIA) defines an SBOM as "a formal, machine-readable inventory of software components and dependencies, information about those components, and their hierarchical relationships. These inventories should be comprehensive – or should explicitly state where they could not be. SBOMs may include open source or proprietary software and can be widely available or access-restricted".

{% include whatever.html %}

Some of the most popular open-source SCA tools used to scan containers and find security vulnerabilities:

* <a href="Grype">Anchore's Grype</a>
* <a target="_blank" href="https://github.com/quay/clair">Clair</a>


## SBOM Scanners and formats

Different vendors create machine-readable SBOM <strong>file formats</strong> vendors create from scanning code in different formats. Click "load Example":

* <a target="_blank" href="https://www.synopsys.com/software-integrity/security-testing/software-composition-analysis.html">Synopsys BlackDuck</a>
* <a target="_blank" href="https://www.whitesourcesoftware.com/">White Source</a>
* <a target="_blank" href="https://www.refirmlabs.com/binwalk-enterprise/">Refirm Labs Binwalk Enterprise</a>
* Open-Source SCA Tools</a>
<br /><br />

DOTHIS: View each sample SBOM file listed above. Links are to the <a target="_blank" href="https://github.com/The-Art-of-Hacking/h4cker">"Art of Hacking" GitHub repo</a> which provides thousands of resources for ethical hacking, bug bounties, digital forensics and incident response (DFIR), artificial intelligence security, vulnerability research, exploit development, reverse engineering, and more.
It's by <a target="_blank" href="https://www.linkedin.com/in/santosomar/">Omar Santos (at Cisco Raleigh NC)</a> who maintains his <a target="_blank" href="https://omarsantos.io/page2.html">https://omarsantos.io/page2.html</a> website and hands-on labs at OReilly.com: <a target="_blank" href="https://learning.oreilly.com/interactive-lab/ethical-hacking-scenarios/9780137673469X005/">"Ethical Hacking: Scanning Docker Containers with Grype"</a> dated August 2021. 


## SBOM File Formats:

Sample SBOM files listed above can be opened using CERT's <a target="_blank" href="https://democert.org/sbom/">SBOM Demo Tool at https://democert.org/sbom</a>. The tool can also create SBOMs in different formats.

* SPDX (Software Package Data Exchange) <a target="_blank" href="https://github.com/The-Art-of-Hacking/h4cker/blob/master/sbom/spdx_example.json">spdx_example.json</a>
* SWID (Software ID) Tags <a target="_blank" href="https://github.com/The-Art-of-Hacking/h4cker/blob/master/sbom/swid_example.xml"swid_example.xml</a>
* CycloneDX <a target="_blank" href="https://github.com/The-Art-of-Hacking/h4cker/blob/master/sbom/cyclone-dx_example.json">cyclone-dx_example.json</a> (also XML)
* <a href="#CASF">CASF (Common Security Advisory Framework)</a> <a target="_blank" href="https://github.com/The-Art-of-Hacking/h4cker/blob/master/sbom/csaf_vex_example.json">csaf_vex_example.json</a>


<a name="CASF"></a>

## Common Security Advisory Framework (CSAF)

cat csaf_vex_example.json

The CSAF standard is used to create security advisories disclosing one or more security vulnerabilities in a machine-readable format (JSON). CSAF supports Vulnerability Exploitability eXchange (VEX) profiles used to assess whether or not a particular product is affected by a specific vulnerability.

Software developers are often tasked with creating complex applications faster than ever. In order to scale, they rely on open source code to quickly add functionality to their applications or products. Subsequently, they may be inheriting numerous security vulnerabilities when using third-party software (TPS) including open-source packages. SCA tools have been designed to help manage TPS security risks by identifying the software packages using in a system, product, or application. These SCA tools also can discover what potential vulnerabilities affect those TPS components.


<a name="Grype"></a>

## Anchore's Grype.

<a target="_blank" href="https://github.com/anchore/grype">Anchore's Grype</a>

On macOS:
```
<strong>brew info grype</strong>

==> grype: stable 0.99.1 (bottled), HEAD
Vulnerability scanner for container images and filesystems
https://github.com/anchore/grype
Not installed
From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/g/grype.rb
License: Apache-2.0
==> Dependencies
Build: go ✔
==> Options
--HEAD
	Install HEAD version
==> Downloading https://formulae.brew.sh/api/formula/grype.json
==> Analytics
install: 2,883 (30 days), 7,202 (90 days), 19,838 (365 days)
install-on-request: 2,871 (30 days), 7,178 (90 days), 19,780 (365 days)
build-error: 0 (30 days)
```

Installing Grype to /usr/local/bin

Execute the following command to install the latest version of Grype 

curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin

Alternatively, you can install a specific version of Grype into a specific directory, as demonstrated below:

1. Launch Grype for menu:

   grype -h

   ```
   A vulnerability scanner for container images, filesystems, and SBOMs.

Supports the following image sources:
    grype yourrepo/yourimage:tag             defaults to using images from a Docker daemon
    grype path/to/yourproject                a Docker tar, OCI tar, OCI directory, SIF container, or generic filesystem directory

You can also explicitly specify the scheme to use:
    grype podman:yourrepo/yourimage:tag          explicitly use the Podman daemon
    grype docker:yourrepo/yourimage:tag          explicitly use the Docker daemon
    grype docker-archive:path/to/yourimage.tar   use a tarball from disk for archives created from "docker save"
    grype oci-archive:path/to/yourimage.tar      use a tarball from disk for OCI archives (from Podman or otherwise)
    grype oci-dir:path/to/yourimage              read directly from a path on disk for OCI layout directories (from Skopeo or otherwise)
    grype singularity:path/to/yourimage.sif      read directly from a Singularity Image Format (SIF) container on disk
    grype dir:path/to/yourproject                read directly from a path on disk (any directory)
    grype file:path/to/yourfile                  read directly from a file on disk
    grype sbom:path/to/syft.json                 read Syft JSON from path on disk
    grype registry:yourrepo/yourimage:tag        pull image directly from a registry (no container runtime required)
    grype purl:path/to/purl/file                 read a newline separated file of package URLs from a path on disk
    grype PURL                                   read a single package PURL directly (e.g. pkg:apk/openssl@3.2.1?distro=alpine-3.20.3)
    grype CPE                                    read a single CPE directly (e.g. cpe:2.3:a:openssl:openssl:3.0.14:*:*:*:*:*)

You can also pipe in Syft JSON directly:
        syft yourimage:tag -o json | grype

Usage:
  grype [IMAGE] [flags]
  grype [command]

Available Commands:
  completion  Generate a shell completion for Grype (listing local docker images)
  config      show the grype configuration
  db          vulnerability database operations
  explain     Ask grype to explain a set of findings
  help        Help about any command
  version     show version information

Flags:
      --add-cpes-if-none       generate CPEs for packages with no CPE data
      --by-cve                 orient results by CVE instead of the original vulnerability ID when possible
  -c, --config stringArray     grype configuration file(s) to use
      --distro string          distro to match against in the format: <distro>:<version>
      --exclude stringArray    exclude paths from being scanned using a glob expression
  -f, --fail-on string         set the return code to 1 if a vulnerability is found with a severity >= the given severity, options=[negligible low medium high critical]
      --file string            file to write the default report output to (default is STDOUT)
  -h, --help                   help for grype
      --ignore-states string   ignore matches for vulnerabilities with specified comma separated fix states, options=[fixed not-fixed unknown wont-fix]
      --name string            set the name of the target being analyzed
      --only-fixed             ignore matches for vulnerabilities that are not fixed
      --only-notfixed          ignore matches for vulnerabilities that are fixed
  -o, --output stringArray     report output formatter, formats=[json table cyclonedx cyclonedx-json sarif template], deprecated formats=[embedded-cyclonedx-vex-json embedded-cyclonedx-vex-xml]
      --platform string        an optional platform specifier for container image sources (e.g. 'linux/arm64', 'linux/arm64/v8', 'arm64', 'linux')
      --profile stringArray    configuration profiles to use
  -q, --quiet                  suppress all logging output
  -s, --scope string           selection of layers to analyze, options=[squashed all-layers deep-squashed] (default "squashed")
      --show-suppressed        show suppressed/ignored vulnerabilities in the output (only supported with table output format)
      --sort-by string         sort the match results with the given strategy, options=[package severity epss risk kev vulnerability] (default "risk")
  -t, --template string        specify the path to a Go template file (requires 'template' output to be selected)
  -v, --verbose count          increase verbosity (-v = info, -vv = debug)
      --version                version for grype
      --vex stringArray        a list of VEX documents to consider when producing scanning results

Use "grype [command] --help" for more information about a command.
   ```

1. Use Grype to find security vulnerabilities in Docker container images. Download (pull) an intentionally vulnerable Docker image Santos named "mayhem":

   docker pull santosomar/mayhem

1. Verify that the image has been successfully downloaded/pulled by using the following command:

   docker images

1. Scan the Docker image to create a report in JSON format:

   grype -o json santosomar/mayhem > scan_results.json
   grype -o cyclonedx santosomar/mayhem > scan_results_cyclonedx.xml

   Grype supports several output formats:

   table is the default output format.
   cyclonedx = a CycloneDX 1.2 XML report conforming to CycloneDX 1.2 specification.
   json = detailed report in JSON format
   template = Go template.

1. Open the scan_results.json file in the Katacoda Editor or in the terminal 

   cat scan_results.json

   Notice the Common Vulnerability and Exposure (CVE) identifiers.



<a name="JFrog"></a>

## JFrog

JFrog XRay generates a <a href="#SBOM">SBOM (Software Bill of Materials)</a> for Software Composition Analysis (SCA).

https://aws.amazon.com/solutions/partners/jfrog-artifactory-amazon-ec2/

Artifactory XRay generates a SBOM referenced by imports (and requirements.txt) in Python program code to identify vulnerabilities identified. JFrog references the public CVE database maintained by the US government as well as its own research.

