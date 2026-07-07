---
layout: post
date: "2026-07-07"
lastchange: "v033 feat: nato-audio @rustops.md"
url: https://bomonike.github.io/rustops
file: "rustops"
title: "rustops (Rust Operations)"
excerpt: "Efficient, secure, performant concurrent systems programming that compiles to machine code on multiple platforms"
tags: [Rust, Python, Machine Learning]
image:
# rustops-1900x500.png
  feature: https://user-images.githubusercontent.com/300046/136715984-3033af38-810d-4b29-a555-aac392b374ac.png
  credit: rustops.org
  creditlink: https://www.rust-lang.org/
comments: true
created: "2021-10-03"
---
<i>{{ page.excerpt }}</i>

This page is NOT about the Rust game and <a target="_blank" href="https://rustops.org/">Rustops.org</a>

This is about installing and using the infrastructure around the Rust programming language -- 
the quickest way to <a href="#UseAI">use AI</a> to building <a href="#Worthy">production-quality</a> <a href="#Practical">practical applications</a> while learning the Rust language.

This references my <a href="https://github.com/bomonike/rustlang-samples/">github.com/bomonike/rustlang-samples repo</a> and<br />
<a href="https://bomonike.github.io/rustlang">bomonike.github.io/rustlang</a> website.

{% include whatever.html %}

<a id="Diagram"></a>

## Summary of Rust: My RustOps Diagram 

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1783001395/rustlang-rustops_meabyv.png">Click on this link to pop-up a full-screen image</a> of this diagram, or<br />
<a target="_blank" href="https://youtu.be/WZhlumcI4KY">click here for a gradual-reveal video<br />
<img alt="rustlang-rustops.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1783105420/rustlang-rustops_znnbgv.png" /></a><br />
with narrative that logically explains how the various websites, folders, and files relate to each other within the sequence of work to create and run custom Rust programs. The narration below will soon be added to the video:

<a id="Explanation"></a>

1. Developers and users typically use the <strong>CLI</strong> (Command Line Interface) that come with operating systems such as macOS to run commands and scripts to <a href="#Install">install utilities</a> such as
1. Apple macOS <a target="_blank" href="https://wilsonmar.github.io/xcode/">Xcode</a> low-level utilities and 
1. package manager <a target="_blank" href="https://wilsonmar.github.io/homebrew/">Homebrew</a> to <a href="#Install">install utilities</a> such as 
1. <strong>git commands</strong>.
1. <strong>IDE: VSCode</strong> is commonly installed to edit files, assisted by extensions to display code with colored prompts.

1. Working with Rust begins with installing <a href="#rustup">rustup</a> which installs the cargo commands that work with the Rust language.
1. rustup creates a hidden folder <tt>$HOME/.cargo</tt> in the user's home directory.
1. When the <tt>bin</tt> folder path is made part of the <strong>$PATH</strong> variable by start-up scripts, executables in it become visible system-wide, cargo executable files become available on any folder in the CLI.

1. The <tt>cargo init package</tt> command initializes a new <strong>package</strong> (container) folder.
1. perhaps one for each <strong>team</strong>, containing a
1. <strong>README.md</strong> file for developers to add documentation.
1. The package name is also the same as its repository name in <strong>GitHub.com</strong>.
1. A <strong>.git folder</strong> is created to hold the history of changes so developers can "time travel" back to all files at each point in time.
1. A <tt>.gitignore</tt> file is commonly defined to specify temporary files created during every session so should not be uploaded to public GitHub repositories. 
1. <tt>.gitconfig</tt> ???

1. REMEMBER: Within the package folder are <strong>two</strong> levels of <tt>src</tt> (source) folders.
1. Each <strong>module</strong> has its own src folder and
1. <strong>target</strong> folder, which holds the results after 
1. <strong>cargo build</strong> compiles the Rust code.
1. Thus, cargo commands are typically issued from the module folder

1. But developers would reach temporarily reach into the lower src folder to edit Rust code based on
1. the <strong>README.md</strong> file for the module, which explain the source code files.
1. Each module/src folder is created with a file named <tt>main.rs</tt> as the entry point for the module. 
1. The ".rs" file type suffix says that it's processed by the Rust compiler, cargo build.

1. If <tt>--lib</tt> is specified, a <tt>lib.rs</tt> file is also created to hold <strong>functions()</strong> defined to be referenced by custom code, to control
1. <strong>databases</strong> and
1. services publishing <strong>external APIs</strong>.
1. Additional custom .rs files can be added.

1. Within each module folder, a <tt>Cargo.toml</tt> configuration file contains the official name and <strong>version</strong> of each library referenced within custom Rust program code.
1. The specific <strong>version</strong> of each library are kept updated by the
1. <tt>cargo audit</tt> command ensures that the latest version is referenced from the
1. <strong>crates.io</strong> registry on the <strong>public</strong> internet.
1. Some crates act on code, such as creating <tt>error.rs</tt> file that structures common error handling.
1. Each day, changes in the crates.io website are reflected in the <strong>lib.rs</strong> website which provides advanced filtering and categories. There are also additional libraries not in crates.io.

1. <tt>cargo fmt</tt> reformats your Rust code, based on settings in the 
1. <tt>rustfmt.toml</tt> file.
1. <tt>cargo clippy</tt> scans your Rust code to identify warnings and errors, based on settings in the 
1. <tt>rustfmt.toml</tt> file.

1. Specifying the <tt>--release</tt> parameter creates an <strong>optimized</strong> executable.
1. Optimized executables can be added to the <strong>public</strong> crates.io registry of libraries.
obtainable from shared registry are downloaded.

1. A <tt>git clone</tt> command can create a <strong>package folder</strong> and its

## Not Discussed

* Translation to different languages

* CONTRIBUTING.md

* CHANGELOG at the root. A CHANGELOG is not a dump of your Git commit history, but chronologically summarizee, in plain English, notable impacts. https://keepachangelog.com/en/1.1.0/ provides an example of the categories: Added, Changed, Deprecated, Removed, Fixed, Security.


## Table of Contents

{% include _toc.html %}

##

* cargo-capsec crate performs a static capability audit, reporting which functions in your code can perform actions like filesystem access or network connections.

* rust-sanitize scrubs sensitive data from logs and configs before sharing them, rather than scanning a codebase.


### Scan for sensitive data:
Type	Count	Severity	Description
Sensitive file extensions	2,053	Medium	.pem, .key, .p12 files
Connection strings	1,146	High	Credentials in URLs
Backup files	412	Low	Editor or config backups
Private key headers	233	Critical	Actual private keys
Database URLs	184	Critical	Exposed DB credentials
AWS access keys	20	Critical	AWS API keys
GitHub tokens	7	Critical	Access tokens
Stripe keys	4	Critical	Payment API keys


<a id="UseAI"></a>

## AI FTW

   * <a target="_blank" href="https://www.youtube.com/watch?v=sKNq4CqWkT4">How I Use Claude Code with Gemma 4 (Local LLMs, No API Costs)</a>
   * https://github.com/ollama
   <br /><br />

AI today (in 2026) is not only able to respond to questions based on its vast accumulated knowledge but now also can analyze error messages and automatically fix many issues, even across layers of architecture.
Example response:
<pre>
Build succeeds now. Fixed a type mismatch at main.rs:110 — 
check_url_virustotal expects &str but api_key was a String; 
passed it by reference.
</pre>

This makes use of recent advances in "Chain-of-thought" which directs the LLM to reason sequentially through problems. Prompt chaining breaks complex analysis into discrete, verifiable pipeline stages. 

To leverage creativity, developers are defining objectives and let the AI vary prompt text to iterative try then evaluate responses (adopting a TDD approach). Some call this "Iterative refinement".

To work around being blocked when token credits ran out, Ollama (and its nomic-embed-text) is used with open-source models (from NVIDIA, Google, and China). OpenAI's API supports the widest number of model providers. An example of messages about that:
<pre>
The model is loaded and running (93% GPU), so it's not stuck loading — 
it's actively working but very slow (26GB model, 
mostly CPU-bound at only 7%/93% split suggests limited GPU offload). 
Since it's genuinely in-progress and not hung, let's just wait longer.
</pre>


<a id="Worthy"></a>

## What is production-worthy?

By "robust enterprise-worthy <a target="_blank" href="https://wilsonmar.github.io/production/">production</a> code", "easy to extend", "performant", and other nice objectives are achieved not by empty promises but the extent that these features are implemented.

* GUI Interactive
   GUI in the Autonomous Age of AI is for "Human In the Loop" to approve rather than initiate actions.

   - <a target="_blank" href="https://crates.io/crates/axum">axum crate</a> is a popular modern, ergonomic web framework built by the Tokio team. More popular than actix-web.
   - <a target="_blank" href="https://wilsonmar.github.io/azure-functions/">Azure Serverless functions</a>

* Multi-platform
   - <a target="_blank" href="https://wilsonmar.github.io/printing/">printing to printers</a>  Use multi-os std::process::Command (No external crates needed for CUPS like Linux [DONE]
   - rodio crate: play an audio file (mp3, wav) [DONE]
   - Camera scan bar code or QR code
   - <a target="_blank" href="https://wilsonmar.github.io/alexa/">Alexa</a> voice response

* Authentication
   - #localvault - retrieve secrets from a secure local vault on USB drive (rather than clear-text env files)
   - <a target="_blank" href="https://wilsonmar.github.io/passkeys/">Passkeys</a>
   - Write-only archival handling accounts
   - JSON API auth
   - OAuth2 endpoint auth
   - custom header-based API auth
   - <a target="_blank" href="https://wilsonmar.github.io/okta/">Okta</a>
   - <a target="_blank" href="https://wilsonmar.github.io/zero-trust/">Zero Trust</a>

* Configuration Management
   - Use a --verbose/-v argument to select run-time verbosity of run stats
   - <a target="_blank" href="https://www.generalistprogrammer.com/tutorials/whoami-rust-crate-guide">whoami crate</a> to get the current user and environment.
   - <a target="_blank" href="https://crates.io/crates/dirs">dirs crate</a> to get user directories cross-platform, C:\Users\... or assuming /usr/local/bin) [DONE]
   - <a target="_blank" href="https://wilsonmar.github.io/dns/">DNS</a> host name hops nslookup [DONE]

* Secrets
   - Load from environment variables, for retrieving variables that don't need to be kept secret. [DONE]
   - AWS Secrets Manager
   - <a target="_blank" href="https://wilsonmar.github.io/azure-key-vault/">Azure Key Vault</a>
   - secretscout crate scans for secrets in your own Rust applications.
   - leakguard crate: to redact secrets & PII from text and logs. It can find and remove emails, credit cards, IP addresses, JWTs, AWS keys, and more.
   - caviarder Rust CLI (that can also be used as a library) to read text and replace detected secrets using Gitleaks' 220+ detection patterns.

* Client framework support
   - multi-modal OpenAI prompt handling (speech recognition, GenAI of text, images, video)
   - <a target="_blank" href="https://github.com/AnBowell/s3-filesystem">OpenOptions struct</a>: read (get) file at the end of a AWS S3 or MinIO compatible endpoint cloud URI. To treat S3 files as if they were local files.
   - write (put) a file to AWS S3 cloud (mimio) 
   - AWS, Azure, <a target="_blank" href="https://wilsonmar.github.io/gcp/">GCP</a> interoperability

* Logging and Observability
   - In dev, consistently and pleasantly formatted print messages (like the rich library in Python) by replacing default print macros with a comprehensive toolkit with colors, styles, tables, progress bars, etc. 
   - For production environments, logs need to be machine-readable JSON injestible by Loki. use tracing_subscriber::{fmt, prelude::*, EnvFilter};
   - Logs are fowarded using Promtail or Fluentd to easily parse and forward.
   - Add logging, locally and with RFC 3339 timestamps (Such as 2026-07-05T11:19:24.356999Z) and OTel (OpenTelemetry) via Prometheus.

   - Issue alert to a SOC SIEM about security-relevant events and conditions defined in the MITRE ATT&CK framework or standard compliance controls (like PCI-DSS, HIPAA, or NIST). A SIEM (Security Information and Event Management) system is designed to cut through the noise of millions of mundane log entries to find the signals that indicate a threat, a breach, or a compliance violation. Such as failed access attempt, a malicious URL, email found.

   - tracing library to log structured spans that follow execution history through an app

   - tracking of run times and costs over time to identify anomalies occuring
   - Error context for debugging
   - Progress logging
   - Token usage tracking

   - Automatic log file rotation offsite to remote backup
   - Limit log backup handling accounts to Write-only access to prevent deletion ability.
   - Limit log restore handling accounts to Read-only access to prevent deletion ability.

* Network protection
   - Incoming IP addresses are checked for its physical geography used to reject based on origin (which can be spoofed).
   - URL texts do not contain Homoglyphs for malicious rerouting [DONE]
   - DNS domain, IP, not reported to be malicious [DONE]
   - Use the EmailRep.io and AlienVault API to determine Email Reputation - whether email addresses were reported as being used to distribute malware, phishing, or spam. There's also IPQualityScore for a Threat Intelligence - where the domain is newly registered (a sign of malicious intent).

   - Phone numbers not reported to be spam-related

   - <a target="_blank" href="https://github.com/Naurt-Ltd/simple-address-format">Address Formatting</a>
   - <a target="_blank" href="https://wilsonmar.github.io/regex/">regex</a> (Regular Expression)
   - <a target="_blank" href="https://crates.io/crates/countries">countries crate</a> gives rich metadata for each Alpha-2 ISO 3166 country (name, continent, region) 
   - <a target="_blank" href="https://crates.io/crates/iso-country">iso-country crate</a> for quick is_valid_country_code("US") using a tiny binary enum table in-memory. No README file.
   - <a target="_blank" href="https://crates.io/crates/rust_iso3166">rust-iso3166 crate</a> to use Rust's type system for making invalid country codes unrepresentable
   - Currency Exchange rates and time series
   - Delivery Point Validated by USPS, EU Loqate GBG, 
   - Translation of geo names between English and French names

* Error handling
   - actix-web-prometheus crate to easily add a metrics middleware.
   
   - Custom error type using thiserror
   - <tt>error.rs</tt> custom module serves as a central hub for all error types used within that crate. Thefile that defines a project's core error-handling logic. This is a common and structured error handling. standard convention. Automated
   - <a target="_blank" href="https://crates.io/crates/thiserror">thiserror crate</a> for modeling errors in errors.rs instead of multiple trait implementations. Declining in usage over time.
   - Handles rate limiting with retry logic
   - Timeout handling

   - Generation of property-based tests
   - Generation of tests that exercise user GUI functional workflow 

* Data validation
   - Use uom (unit of measure) crate so the Rust compiler will not allow conversion errors between metric & imperial. The API's raw f64 elevation is wrapped immediately via Length::new::<meter>(result.elevation), so the "this number means meters" fact is encoded in the type, not just a variable name. So there's no way to accidentally treat one as the other, since Length doesn't expose a bare numeric value without picking a unit. [DONE]

   - proptest library to make property-based tests

* Streaming Support
   - <a target="_blank" href="https://crates.io/crates/serde">serde crate</a> for serialization/deserialization
   - Real-time token-by-token response
   - Flushes output immediately for better UX
   - rayon crate for parallel computing with complicated synchronization
   - YouTube uploading & casting

* Database interaction support
   - csv
   - UUID for NoSWL documentDB [DONE]
   - TSDB (Time Series DataBase) a la Prometheus
   - PostgSQL, MariaDB
   - GraphDB
   - RAG embedding
   - Parquet format from Databrick & <a target="_blank" href="https://wilsonmar.github.io/snowflake/">Snowflake</a>
   - <a target="_blank" href="https://docs.rs/object_store/latest/object_store/">object_store crate</a> provides an tokio async API works for interacting with a trait object storage services and local files via the ObjectStore trait. The same binary and code can run in multiple clouds and local test environments, via a simple runtime configuration change. From InfluxData and subsequently donated to Apache Arrow for governance. futures = "0.3" # for iterating over list streams. bytes = "1"

   Interaction to change storage backends by changing "aws" to "gcp", "azure", or "fs" (filesystem) as needed
   (AWS S3, Google Cloud Storage, Azure Blob Storage, local filesystem, etc.)
   <tt>object_store = { version = "0.10", features = ["aws"]</tt>

* Retry Logic with Exponential Backoff
   - Automatically retries failed requests
   - Implements exponential backoff (2s, 4s, 8s...)
   - Special handling for rate limits

* Payment
   - Use <a target="_blank" href="https://docs.rs/crypto-pay-api">Telegram’s crypto-pay-api</a> to create crypto invoices and handle payment flows to a return payment URL. [<a target="_blank" href="https://help.send.tg/en/articles/10279948-crypto-pay-api">release</a>]


### Emailrep.io Enum

<pre>
{
  "email": "test@test.com",
  "reputation": "high",
  "suspicious": false,
  "malicious": false,
  "credentials_leaked": true, 
  "data_breaches": ["LinkedIn", "Adobe"],
  "first_seen": "2015-01-01",
  "last_seen": "2023-10-24"
}
</pre>

### Phone number

* WhoCalled.us: One of the oldest and most straightforward databases. Just type in the number to see comments from other people who received calls from it.

* 800Notes.com: Highly active forum-style site. You type in the number and read a thread of comments from other users detailing exactly what the scammer said or wanted.

* ShouldIAnswer.com: Originally a popular app, their website (shouldianswer.com) allows you to search numbers and see a "trust rating" based on community feedback.

* RoboKiller Lookup: RoboKiller is a major spam-blocking app, but they have a free web lookup tool where you can type in a number to see if it's in their scam database.


### Secrets scanning

We look for secrets leaking at EACH step in the development process:

1. Within the IDE, anomalies are instantly highlighted by extensions installed:

   creates

1. For a fast, simple pre-commit hook to prevent committing secret keys into source code. 

   ripsecrets is known for being extremely fast (reportedly 95 times faster than other tools). It detects secrets by looking for variable assignments with names like "token", "secret", or "password" that contain random-looking strings.

   security-harness-kit: A Rust CLI that scans for secrets, PII, and sensitive data. It can scan project paths and Git-staged files across many file types, including source code, Markdown, and even Office documents.

1. On MCP agents:

   leakferret: An MCP-native secret scanner written in Rust. A key feature is that it can call the provider to verify which detected secrets are actually live and can rewrite the leak in your code to read from an environment variable instead.

1. On git push, more comprehensive scans:

   SecretScout: A "blazingly fast, memory-safe CLI tool" for detecting secrets in git repositories. It's a complete Rust rewrite of the popular gitleaks project, offering 10x faster performance with 60% less memory usage.

   Kingfisher: An open-source secret scanner built in Rust by MongoDB. It features live secret validation and ships with over 950 built-in rules to detect and triage leaked credentials.

1. In the background, use advanced techniques that take longer:

   argus: A high-performance security scanner that uses Shannon entropy analysis and multi-pattern matching to identify both known and unknown credentials.

* secretsniff: A source-code secret scanner that finds AWS keys, GitHub tokens, JWTs, and high-entropy strings. It has a Rust core and a Python frontend.


### Beware of crates

Unless otherwise noted, crates mentioned above have signs of quality:

   * increasing downloads over time (are gaining in popularity)

   * updates within the last 6 months (has not been abandoned)

   * multiple maintainers

Please connect with me to join our code explaination and refactoring sessions.

-- <a target="_blank" href="https://linkedin.com/in/wilsonmar">https://linkedin.com/in/wilsonmar</a>


<a id="Practical"></a>

## Practical apps written in Rust

RANT: I think it's a terrible idea to spend time writing another editor or operating system using Rust. 
Here I showcase creation of enterprise-worthy apps rather than basic/toy examples on the internet.

We are working on integrating here other code examples from GitHub.com:
   * <a target="_blank" href="https://github.com/wilsonmar/Rust-algorithms">wilsonmar/Rust-algorithms</a>
   * <a target="_blank" href="https://github.com/AnasImloul/Leetcode-Solutions">AnasImloul/Leetcode-Solutions</a> contains codin for Algorithms, Database, Shell, Concurrency in various languages.

Examples in Python:
   * https://hackathon-starter-1.ydftech.com/api Node.js webapp based on code at<br />https://github.com/sahat/hackathon-starter - provides sample code for a wide range of authentication options and API connections as well as AI Examples and Boilerplates.
   * https://github.com/arunprabusamy/course-explainer-app/tree/starter-template


* https://www.youtube.com/watch?v=EUmK2tFAQfE = The Simplest AI Coding CLI in Pure Rust 50 Lines

* grafana/augurs = Time series analysis for Rust, with bindings to Python and Javascript

* https://github.com/RustScan/RustScan = Rust Scan - finds all open ports faster than Nmap.

* https://github.com/dani-garcia/vaultwarden/ = Vaultwarden - unofficial Bitwarden compatible server written in Rust.

* https://github.com/starship/starship = Starship - the cross-shell prompt written in Rust.

   * <a target="_blank" href="https://www.youtube.com/watch?v=5C_HPTJg5ek&pp=ugUEEgJlbg%3D%3D">Rust in 100 Seconds</a> @Fireship

* https://github.com/rustybuilder/rust-faces = Face Detection in Rust with Python Bindings

* <a target="_blank" href="https://vector.dev/docs/setup/">Vector.dev</a> (by Datadog) is a lightweight agent running on the app server to send logs to the central server without slowing down the app after updating XCOde CLI:
   ```bash
   sudo rm -rf /Library/Developer/CommandLineTools
   sudo xcode-select --install
   brew trust --formula vectordotdev/brew/vector
   brew tap vectordotdev/brew && brew install vector
   ```
   Incredibly fast, low memory footprint, and handles both collection, parsing (transform), and routing logs. Recommended over Fluent Bit written in C and Filebeat written in Go. Vector does not block your application’s main thread. Instead of your app waiting for a network round-trip to the central server, your app writes logs to a local buffer (e.g., stdout, a local file, or a Unix socket). Vector reads from these local sources asynchronously. The app continues processing requests while Vector handles the network I/O in the background.

## Achilles Heel

This may be a popular trivia question that everyone may not know:

<a target="_blank" href="https://www.youtube.com/watch?v=eULu3j81Ak0&t=16m35s">VIDEO</a>
Rust cannot handle double-linked lists, aka self-referential structs and cyclic graphs.

The workaround is the Arena Pattern which has a 36% performance penalty to maintain the sequence number.


<a id="Algorithms"></a>

## Algorithms

<a target="_blank" href="https://github.com/wilsonmar/Rust-algorithms/tree/master/src">Alogorithms in Rust</a>
   - zstd crate for high-performance Zstandard compression. <a target="_blank" href="https://www.generalistprogrammer.com/tutorials/zstd-rust-crate-guide">The most popular crate</a>.
   - zip crate for reading and writing zip archives
   - Ciphers (Cryptography)
   - Conversions
   - Data Structures
   - Financial
   - General Logic
   - Graph
   - Hashing
   - Navigation
   - Searching
   - Signal analysis





<a name="Install"></a>

## Install

<a name="rustup"></a>

### rustup cargo installer

1. PROTIP: Add to startup .bash_profile/.zshrc to update Rust utilities so have the <a target="_blank" href="https://github.com/rust-lang/rustup/tags">latest version of the installer</a> when you open a Terminal. This takes a few seconds.

   REMEMBER: If you used Homebrew to install rustup, instead of <tt>rustup</tt> command to upgrade itself, use:
   ```bash
   brew upgrade rustup-init
   ```
1. Read <a target="_blank" href="https://rustup.rs/">rustup.rs</a>

   You don't need to rememeber that "toml" means (Tom's Obvious Minimal Language).

   Inside the file, version="0.1.0" is updated manually to semver.org (Semantic Versioning).

   The edition="2024" is described at
   https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html

1. To find the version history of a crate such as "backup"
   ```bash
   cargo info backup
   ```
   The response at time of this writing:
   <pre>
        Updating crates.io index
      Downloaded backup v0.1.0
      Downloaded 1 crate (85.6KiB) in 0.39s
    backup #backup #cli #restore
    create encrypted backups
    version: 0.1.0
    license: BSD-3-Clause
    rust-version: unknown
    documentation: https://github.com/nbari/backup
    homepage: https://github.com/nbari/backup
    repository: https://github.com/nbari/backup
    crates.io: https://crates.io/crates/backup/0.1.0
           </pre>


   ### IDE install

   For code completions, documentation on hover, etc.

   VS Code is the most widely used editor for Rust. 

1. VSCode users: install <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer">rust-analyzer</a> (not "rust-lang.rust"). https://code.visualstudio.com/docs/languages/rust

   IDEs are visual frontends for underlying debuggers like LLDB (on macOS/Linux) or GDB (on Linux) or the MSVC debugger (on Windows).

1. To enable breakpoints in VSCode, install the CodeLLDB extension by Vadim Chugunov by clicking this, then "Install", "Continue", "Allow", "Trust publisher":

   <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb">https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb</a>

   https://github.com/vadimcn/vscode-lldb

1. To set a breakpoint, click in the gutter (the empty space to the left of the line numbers) to place a red dot (your stop point). Then you press F5 (or go to Run -> Start Debugging). It will compile your code and stop execution exactly at that line, allowing you to inspect variables, view the call stack, and step through code line-by-line.

   Dynamic Linking (Default): 
   
   By default, Rust dynamically links to your system's C library (usually glibc on Linux). If you compile a binary on Ubuntu 22.04, it might refuse to run on an older server running CentOS 7 because the older server is missing the newer glibc version. (Low binary portability).

   Static Linking (musl): You can tell Rust to compile against musl libc (e.g., cargo build --target x86_64-unknown-linux-musl). This bakes the C library directly into your executable. The resulting binary is a single file that will run on almost any Linux distribution from the last 15 years. (High binary portability)
 
   Windows Binaries: By default, Rust statically links the Microsoft Visual C++ runtime into Windows executables. This means a Rust .exe is highly portable across different Windows versions and usually doesn't require the user to install "VCRedist" packages.


1. Assuming you have <a target="_blank" href="https://bomonike.github.io/rustlang">the CLI utilities (XCode, git, VSCode, rustup, etc.) to use Rust installed</a>, to get this repo on your machine:
   ```bash
   git clone https://github.com/bomonike/rustlang-samples --depth 1
   cd rustlang-samples
   ```

   This repo currently has code for these sample Rust (.rs) program source <strong>packages</strong>:
   
   * <a href="https://github.com/bomonike/rustlang-samples/blob/main/src/useful-rust/src/main.rs">useful-rust at https://github.com/bomonike/rustlang-samples/blob/main/src/useful-rust/src/main.rs</a>
   
   * nato-phonetic-audio is designed to be submitted to crates.io

   * openai-chat between a front-end client talking with a chat bot.

   * started around Nov 2022 


   <a id="nato-phonetic-audio"></a>

   ### nato-phonetic-audio

   I created it with Claude's help.

   Its Rust code is within a <tt>lib.rs</tt> file because the package is structured for upload to crates.io as a library for use by others.

1. Navigate to the <tt>examples</tt> directory provided to execute it like clients would:
   ```bash
   cargo run --example speak_sentence -- "KLQ9" -v
   ```
   The example file .rs name is auto-discovered.

   Observe that the letters have a note to ensure proper pronounciation.

   ### useful-rust

1. To work on it, first navigate to:
   ```bash
   cd src/useful-rust
   pwd
   ls -al
   ```
   At that folder, read the <a href="https://github.com/bomonike/rustlang-samples/blob/main/src/useful-rust/README.md">README.md for running useful-rust</a>.

   REMEMBER: Unlike Python and other languages, your working folder with Rust is a folder up from the <tt>main.rs</tt> file which is what all Rust code files are named.


   ### Configure

1. Edit the <tt>Cargo.toml</tt> file for its sample settings.

   PROTIP: Many enterprise teams host sample files like in this repo to provide the team a consistent starting point, which reduces endless discussions when new people join the team.

1. To update your dependencies to the latest allowed versions, run:
   ```bash
   cargo update
   ```
1. PROTIP: Clean the Build Cache: A corrupted build cache can cause weird errors. To resolve these issues:
   ```bash
   cargo clean
   cargo build
   ```


   ### Build (Compile) and run

1. REMEMBER: The name of the program worked on is inferred from the folder name of the pwd (present working directory).
   ```bash
   pwd
   ```
   Example:
   <pre>
   /Users/johndoe/bomonike/rustlang-samples/src/useful-rust
   </pre>

1. REMEMBER: Compile in release mode only after all reviews are done:
   ```bash
   cargo run --release
   ```
   The Rust compiler aggressively optimizes the code -- rearrange lines, inline functions, and remove unused variables, making it impossible for the debugger to map your stop points to the actual executing machine code.

1. After each edit, just compile (build):
   ```bash
   cargo build
   ```
   Success means a message such as:
   <pre>
   Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.24s
   </pre>

1. REMEMBER: Rust's compile/run command has an extra <tt>--</tt> before run parameters:
   ```bash
   RUST_LOG=debug cargo run -- -v -s
   ```
   Parameters for each program should be defined in the program's README

   <tt>RUST_LOG=debug</tt> makes use of coding in the program to do logging.
   It can be removed.

   Alternately, with JSON logs:
   ```bash
   RUST_LOG=info cargo run 2>&1 | jq
   ```
   <tt>2>&1</tt> routes STDERR to screen.


   ## cargo dev dependencies

1. Navigate to your project's root directory (where your Cargo.toml is located) and run:
   ```bash
   cargo install cargo-udeps
   cargo udeps
   ```

   ## cargo outdated

1. Widen your CLI window and/or set the font smaller.
1. Navigate to your project's root directory (where your Cargo.toml is located) and run:
   ```bash
   cargo install cargo-outdated
   cargo outdated --aggressive --offline
   ```
   Specify "--root-deps-only" instead of "--aggressive".

   Exclude "--offline" if you're not offline.

   Expect to see a table listing your dependencies, their current version, the latest compatible version, and the absolute latest version:
   
   
   ## Cargo audit

1. Run <a target="_blank" href="https://crates.io/crates/cargo-audit">cargo audit</a> to scan the <tt>Cargo.lock</tt> file (generated by <tt>cargo run</tt>) against the RustSec Advisory Database, which tracks known vulnerabilities (including CVEs) and security advisories for published crates.
   ```bash
   cargo audit
   ```
   At time of running, it displayed "Vulnerable crates found!" within openai-client calling async-openai transitively calling backoff calling instant:
   <pre>
   Version:   0.4.0
   Warning:   unmaintained
   Title:     `backoff` is unmaintained.
   Date:      2025-03-04
   ID:        RUSTSEC-2025-0012
   URL:       https://rustsec.org/advisories/RUSTSEC-2025-0012
   Dependency tree:
   backoff 0.4.0
   └── async-openai 0.24.1
      └── openai-client 0.1.0
   &nbsp;
   Crate:     instant
   Version:   0.1.13
   Warning:   unmaintained
   Title:     `instant` is unmaintained
   Date:      2024-09-01
   ID:        RUSTSEC-2024-0384
   URL:       https://rustsec.org/advisories/RUSTSEC-2024-0384
   Dependency tree:
   instant 0.1.13
   └── backoff 0.4.0
      └── async-openai 0.24.1
         └── openai-client 0.1.0
   </pre>

   REMEMBER: As they say, "with Rust, you get the hangover before". 
   Use Clippy whinning as learning opportunities to write safer code.

1. https://github.com/divviup/janus/issues/3725
   <pre>
   ├ Advisory: https://rustsec.org/advisories/RUSTSEC-2025-0012
   ├ The [backoff](https://crates.io/crates/backoff) crate is no longer actively maintained. For exponential backoffs/retrying, you can use the [backon](https://crates.io/crates/backon) crate.
   ├ Announcement: https://github.com/ihrwein/backoff/issues/66
   ├ Solution: No safe upgrade is available!
   </pre>

1. If you decide to wait for fixes, so that the same error doesn't appear, silence them by setting unmaintained crates to "warn" instead of "deny":
   ```bash
   cargo deny
   ```

1. Migrate backoff to backon https://github.com/divviup/janus/pull/3769 shows a resolution on Apr 14, 2025

1. I asked AI "how to fix this" and got back:
   
   The most sustainable solution is to update async-openai to a version that no longer depends on backoff. The latest version (0.41.1) still lists backoff as a dependency, but the maintainers may address this in a future release.
   ```bash
   cargo update async-openai --verbose
   ```
   

   ### Clippy scans

1. PROTIP: Run the built-in clippy code scanner utility different ways. First, get a summary:
   ```bash
   cargo clippy --manifest-path Cargo.toml 2>&1 | grep -E "warning:|error:|Finished" | sort -u
   ```
   TODO: Define the commands above as aliases so you can invoke the command easily and frequently.
   See my https://github.com/wilsonmar/mac-setup/main/blob/aliases.sh

   PROTIP: In the command above, "grep" creates a summary of one line per message. The "sort -u" presents only unique lines:
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#no_effect_underscore_binding">warning: binding to `_` prefixed variable with no side-effect</a>
   
   * <a target="_blank" href=" https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#map_unwrap_or">warning: called `map(<f>).unwrap_or_else(<g>)` on an `Option` value</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#map_unwrap_or">warning: called `map(<f>).unwrap_or(false)` on an `Option` value</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#let_underscore_must_use">warning: non-binding `let` on an expression with `#[must_use]` type</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#let_underscore_must_use">non-binding `let` on an expression with `#[must_use]` type</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#let_underscore_untyped">warning: non-binding `let` without a type annotation</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#collapsible_if
help: collapse nested if block">warning: this `if` statement can be collapsed</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#unnecessary_debug_formatting">warning: unnecessary `Debug` formatting in `eprintln!` args</a>
   
   * <a target="_blank" href="">warning: use the `?` operator instead of an `and_then` call</a>
   
   * <a target="_blank" href="https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#uninlined_format_arg">warning: variables can be used directly in the `format!` string</a>
   </pre>
   

   ### Learn!

   > If you'd rather be a pro than a mindless poser, do the work now to reap rewards in the years to come.

1. The command to get the full details into a file so you can take notes on the response:
   ```bash
   timestamp=$(date "+%Y%m%d_%H%M%S");clear;cargo clippy --manifest-path Cargo.toml --all -- -D warnings 2>"clippy-$timestamp.txt"
   code "clippy-run-$timestamp.txt"
   ```
   PROTIP: A <tt>clear</tt> command would enable you to quickly reach the top of a long output by pressing command+up arrow.

   PROTIP: <tt>2>"clippy_$timestamp.txt"</tt> sends the output to a file named with a ISO8601 UTC date/time stamp.

1. REMEMBER: Bookmark the link to <a target="_blank" href="https://doc.rust-lang.org/error-index.html">Rust error codes</a>

   Each error has both bad example and good example code.

1. REMEMBER: To view on a browser from a Terminal app, hold down command to click on <strong>Clippy Lints</strong> for each of 809+ messages, such as:

   https://rust-lang.github.io/rust-clippy/rust-1.96.0/index.html#collapsible_if

1. PROTIP: Open another Terminal window to read the output about messages, such as:
   ```bash
   rustc --explain E0502
   ```
   Press q to exit to the CLI prompt.

1. If you have AI tokens to spend:
   ```bash
   explain errors
   ```
   Then:
   ```bash
   explain fixes
   ```
   An AI with an understanding of prior context would understand.

1. PROTIP: Take notes such as my:

   <a target="_blank" href="https://bomonike.github.io/rustlang">https://bomonike.github.io/rustlang</a>

   * cannot borrow * as mutable because it is also borrowed as immutable. 
      CAUSE: an active immutable borrow when you try to create a mutable borrow.	
      Restructure your code. Ensure the immutable borrow is no longer used before the mutable borrow occurs. Sometimes, you can end the borrow earlier by limiting its scope with a block {} or by cloning the data if performance allows.

   * does not live long enough. CAUSE: A value is dropped (goes out of scope) while it's still being borrowed.	Fix the lifetime. You may need to extend the lifetime of the value, take ownership (return an owned String instead of a &str), or add explicit lifetime annotations to your functions.

   * mismatched types. CAUSE: A variable or return value is of the wrong type.	Convert the type. Use .into(), as, or another method to convert the value to the expected type.


   ### Forgetaboutit

1. The <tt>Cargo.toml</tt> and <tt>clippy.toml</tt> files can contain specifications about what check to igore.
   Location is the ~/.cargo folder would apply to all Rust runs in any folder.
   Annoying examples:
   
   warning: doc paragraphs should end with a terminal punctuation mark


1. https://doc.rust-lang.org/stable/cargo/ = The Cargo Book




## Comments in code

These programs were created with the help of several AI tools, including Claude and Warp Oz.

Here I aim to provide specifics wisdom and examples, beyond platitudes such as "Leverage the Compiler, Don't Fight It".

* <tt>// TECHNIQUE:</tt> prefixes "how to" coding mechanics learned.
* <tt>// CAUTION:</tt> highlights dangerous situations to avoid.
* <tt>// PROTIP:</tt> prefixes suggestions not widely available elsewhere because it's gained from personal heartache.
* <tt>// POLICY:</tt> "steers" what the code generator should remember for more readable, maintainable, secure, scalable, and efficient code.

Examples of what is applicable to many modules:

// POLICY: Generally, issue results from functions rather than print formatted output so that the calling function has a choice of natural languages to present results.

// POLICY: Within main(), uniquely identify each step to provide the AI a way to reference code rather than using more cumbersome line numbers. The AI can renumber sequentially numbered steps automatically when asked.

// POLICY: When printing sequential numbers, zero-fill 3-digit numbers (specified as "{:03}") so columns line up vertically.

// POLICY: Do not store sensitive values in clear-text .env files, even though they are in the user home folder. Store secrets in a local secrets database such as KeepassXC.

// POLICY: Use the zeroize crate to securely wipe the master password from memory as soon as the database is decrypted. This is so other processes snooping can't steal it.

// POLICY: To access a database from multiple threads (e.g., in a Tauri or Axum web app), wrap crypto keys in a Mutex inside a single thread, or decrypt what you need and pass the decrypted strings (carefully) to other threads.

// POLICY: When running in production (ENV_TYPE="PROD"), verify that the hash (SHA-1) of the main.rs file is the same hash as the file in GitHub to ensure that the file has not been corrupted.


## Using KeePassXC

To store API keys as secrets using the "Custom Attributes" Approach (Recommended)

This method allows you to store as many distinct API values as you need for a single service while keeping them organized and secure.

1. Create a new .kdbx file for APIs separate from your personal secrets (for banking, etc.).

1. Open KeePassXC and create a new entry (or open an existing one).
1. In the Title field, enter the name of the service (e.g., OpenAI API or AWS Production).
Leave the Username and Password fields blank (or put a dummy username like API_User if your workflow requires those fields not to be empty).
1. Click on the Advanced tab in the right-hand panel of the entry window.
1. Under the Additional Attributes section, click the + (Plus) button to add a new custom field.
1. In the Key column, type the name of the value (e.g., API Key, Client Secret, Base URL, Refresh Token).
1. In the Value column, paste your actual API value.

1. CRITICAL: Check the box under the Protect column (the little shield icon). This ensures the value is hidden behind asterisks and cannot be read by casual shoulder-surfers. It also prevents the value from being stored in cleartext in certain plugin caches.


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
