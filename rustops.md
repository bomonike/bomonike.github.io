---
layout: post
date: "2026-08-11"
lastchange: "v038 whereis @rustops.md"
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

This is about installing and using the infrastructure around the Rust programming language -- 
the quickest way to <a href="#UseAI">use AI</a> to building <a href="#Worthy">production-quality</a> <a href="#Practical">practical applications</a> while learning the Rust language.

This page is NOT about the Rust game and <a target="_blank" href="https://rustops.org/">Rustops.org</a>

This references my <a href="https://github.com/bomonike/rustlang-samples/">github.com/bomonike/rustlang-samples</a> repo and 
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
1. DEFINITION: A library crate is a crate that is not compiled, and thus doesn’t generate binaries. It’s a crate provided so that other crates or packages can reference code.
1. Some crates act on code, such as creating <tt>error.rs</tt> file that structures common error handling.
1. Each day, changes in the crates.io website are reflected in the <strong>lib.rs</strong> website which provides advanced filtering and categories. There are also additional libraries not in crates.io.

1. <tt>cargo fmt</tt> reformats your Rust code, based on settings in the 
1. <tt>rustfmt.toml</tt> file.
1. <tt>cargo clippy</tt> scans your Rust code to identify <a target="_blank" href="https://rust-lang.github.io/rust-clippy/master/index.html">lint warnings and errors</a>, based on settings in the <a target="_blank" href="https://github.com/rust-lang/rust-clippy">clippy.toml</a>
1. <tt>rustfmt.toml</tt> file.

1. Specifying the <tt>--release</tt> parameter creates an <strong>optimized</strong> executable.
1. Optimized executables can be added to the <strong>public</strong> crates.io registry of libraries.
obtainable from shared registry are downloaded.

1. A <tt>git clone</tt> command can create a <strong>package folder</strong> and its


## Not Discussed

* An "application" is  built to meet the needs of a user persona - a standalone executable that uses multiple services.

* Translation to different languages

* CONTRIBUTING.md

* CHANGELOG at the root. A CHANGELOG is not a dump of your Git commit history, but chronologically summarizee, in plain English, notable impacts. https://keepachangelog.com/en/1.1.0/ provides an example of the categories: Added, Changed, Deprecated, Removed, Fixed, Security.

* <a target="_blank" href="https://www.youtube.com/watch?v=QZKWEEO-Uoo">VIDEO</a>: Chapter 14.3: Manage complexity by using <strong>workspaces</strong> that consists of a main binary and several internal crates (libraries each with clear boundaries) that are always developed and released together. Create
   ```
   cargo new my_app --bin   # Creates a binary crate
   cargo new my_lib --lib   # Creates a library crate
   cargo run -p my_app
   ```
See more `Cargo.toml` keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html


   ## Playground
    
   https://github.com/diegopacheco/rust-playground
   rust-playground is a set of rust useful code and poc.


   <a name="IDE"></a>

   ## IDE Install

   ### VSCode & Rust Analyzer
   
   <a target="_blank" href="https://www.linkedin.com/in/doug-milford-065a292/">Doug Milford</a> 
   (lambdavalley.com) uses Visual Studio Code (VSCode) IDE on YouTube:

   There is Rust Rover and Freemium Fleet from JetBrains. 
   <a target="_blank" href="https://www.youtube.com/watch?v=sZaAP4AS0hc">VIDEO</a> 
   VSCode extensions to get comparable features:

   * rust-analyzer
   * CodeLLDB
   * Even Better TOML
   * Crates
   <br /><br />   

   VisualRust IDE?


## Monorepo

The Rust compiler, rustc, operates on one crate at a time. So compiling a large abstract syntax tree creates a large and lenthy sequential bottleneck. But multiple crates can be compiled in parallel on different CPU cores.

DEFINITION: A "monorepo" contains several separate crates in the same Git repo, within a single Cargo.lock file and Cargo workspace map defined in a Cargo.toml file and thus a single external dependency.
Each crate binary executable has its own version number.

Link-Time Optimization???

The most common and effective structure for a production Rust workspace separates the codebase into three distinct categories:
   1. library crates
   2. executable binary crates, and 
   3. shared utility crates.
<pre>
workspace_root/
├── Cargo.toml
├── Cargo.lock                    # the lockfile freezes your dependencies in time
├── apps/                         # contains main.rs file as executable entry points
├── crates/                       # target library creates (do not contain main.rs)
│   ├── domain_billing/           
│   ├── domain_inventory/         
│   ├── domain_shipping/          
│   ├── infra_postgres/           # contains concreate implementations to persist data
│   └── infra_redis/              # contains 

├── utils/                        # helper crates that do not contain business logic.
│   ├── secure_strings/
│   └── telemetry_helpers/
├── public_api_gateway/
├── public_api_server/
└── background_job_processor/
</pre>

Under crates/, folder names have a prefix to specify what <strong>architectural layer</strong> each crate belongs in, to reduces cognitive friction while navigating the codebase:
   * "domanin_" crates contain pure business rules
   * "infra_"   crates contain external adapters
   * "util_"    crates contain proovide utility functions

Under each domain_ crate, modules (.rs files) are <strong>business entities</strong>, such as:
```
domain_inventory/src/
├── lib.rs
├── models/
│   ├── mod.rs
│   ├── product.rs
│   └── location.rs
├── events/
│   ├── mod.rs
│   └── stock_adjusted.rs
└── errors.rs
```
Under each infra_, modules (.rs files) define external integrations or technical implementation details:
```
infra_postgres/src/
├── lib.rs
├── connection.rs
├── queries/
│   ├── mod.rs
│   ├── insert_product.rs
│   └── fetch_location.rs
└── mappings.rs
```


## main.rs module entry point

main.rs files within the apps/ directory define executable entry points. 
* parse command-line arguments
* initialize the logging system
* read environment variables
* instantiate database connections from infrastructure crates
* pass connections into the domain logic.

Such logic in main.rs should be thin to keep core logic isolated in library crates where it can be easily subjected to unit and integration testing.

Among helper crates in the utils/ directory, have small, focused crates rather than a single "lib.rs" dumping ground for miscellaneous shared functionality: timezone parsers, cryptographic hashers, string formatting macros, customized error types, etc. 


### My Workspace root

   ```
   my-workspace root/
    ├── Cargo.toml        # Central Workspace root config
    ├── Cargo.lock        # File created after first cargo build/run
    ├── my_app/
    │   ├── Cargo.toml
    │   └── src/
    │       └── main.rs   # binary
    │   └── bin/
    │       └── main.rs
    ├── my_lib/
    │   ├── Cargo.toml
    │   └── src/
    │       └── lib.rs    # library code
    └── target/           # Shared build output directory
   ```
   So they share a single Cargo.lock external versioning file. A <tt>[workspace]</tt> section in the Cargo.toml file defines member subdirectories belonging to the workspace.
   
### Central Workspace Cargo.toml

The root workspace Cargo.toml defines what member custom code are built into a single crate for distribution.
```
[workspace]
members = [
"crates/*",
"utils/*",
"apps/*"
]
```
The root workspace Cargo.toml is where a <strong>centralized</strong> set of specific <strong>external crate version</strong> defined for use within all member crates:
```
[workspace.dependencies]
tokio = { version = "1.32", features = ["full"] }
serde = { version = "1.0", features = ["derive"] }

// Centralize internal path dependencies:
domain_billing = { path = "crates/domain_billing" }
```
All members need to follow the same lint rules:
```
[workspace.lints.rust]
unsafe_code = "forbid"
missing_debug_implementations = "warn"

[workspace.lints.clippy]
unwrap_used = "deny"
expect_used = "warn"
clone_on_ref_ptr = "deny"
```

### Child create Cargo.toml

Individual child crates reference versions in the workspace root Cargo.toml instead of specifying versions. Inside the child crate Cargo.toml files:
```
[package]
name = "secure_strings"
version.workspace = true
edition.workspace = true
authors.workspace = true

[dependencies]
tokio = { workspace = true }
serde = { workspace = true }
domain_billing = { workspace = true }
```

## Cargo new

   ```
   cargo new my_app --bin   # Creates a binary crate
   cargo new my_lib --lib   # Creates a library crate
   cargo run -p my_app
   ```
   DEFINITION: A workspace is a container for several Rust projects which share the same target folder.

   ```
   cargo run --bin [name]
   ```
   "[name]" means that instead of specifying "server.rs" in the command, specify "server" because that's the name for that file in Cargo.toml.

   ```
   cargo run -p my_app
   ```
   In the Workspace root config
   ```
    # my-workspace/Cargo.toml
    [workspace.dependencies]
    serde = { version = "1.0", features = ["derive"] }
    tokio = { version = "1.0", features = ["macros", "rt-multi-thread"] }
   ```
Use  when your project is a workspace, a CLI tool with multiple sub-commands, or any project where you have multiple executable files and need to run a specific one.


???
* <a target="_blank" href="https://www.youtube.com/watch?v=70_9IIsQfjs">Cargo Workspaces</a>


## Local Vendoring

"Vendoring" is the process of downloading and storing external libraries so that builds can occur locally, offline. This insulates builds from being affected by network or vendor infra outages and bad vendor version controls. Having previous versions of vendor libraries provides a way to conduct forensics.

A modern Rust web service can easily pull in two hundred transient dependencies. Vendoring these crates means committing tens of thousands of files and megabytes of third-party source code into your Git history. This can slow down repository cloning times and inflate the size of your storage mechanisms.

1. Define inside <tt>.cargo/config.toml</tt>
   ```
   [source.crates-io]
   replace-with = "vendored-sources"

   [source.vendored-sources]
   directory = "vendor"
   ```
1. Navigate to your repo's <tt>Cargo.lockfile</tt>.
   
   CAUTION: Every dependency specified in the lockfile will be downloaded, and take up disk space. Do you have enough disk space?

   QUESTION: Transitive dependencies downloaded?

1. Download every crate specified in the lockfile and place them into the "vendored-sources" directory path specified within <tt>.cargo/config.toml</tt>
   ```sh
   cargo vendor
   ```


## Evaluating crates

1. Look at the frequency of recent commits. A repository with no activity for two years is a major risk, even if the code currently works perfectly.

1. Issues. If bug reports remain unaddressed, the project lacks the necessary maintainance bandwidth.

1. When you import a 0.x crate, future updates will likely require your manual refactoring of your code.

1. Many production teams utilize automated tools to monitor the registry and generate pull requests when new versions of dependencies are released. These pull requests trigger the automated test suite. If the tests pass, the team can review the changelog and merge the update confidently.

1. Does the library force you to allocate memory on the heap for every operation?

1. Does it spawn its own background threads (which will destroy your system invariants).


## Know the crates

PROTIP: Pick a category (such as "Security") and specialize at getting to know all the crates.



## Table of Contents

{% include _toc.html %}


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

Many repos have a "NO AI SLOP" policy to protect themselves.

PROTIP: First of all, look at existing code and ask experienced team members to ensure consistency with established standards (whether formal or de facto).

So use AI to build in segments, identifying code to add such that you're <strong>crafting</strong> the program:
<pre>
rust function to humanize the display of the number of elapsed seconds. 
</pre>
Provide details such as:
<pre>
For sub-second values, output using abbreviations such as ns, µs, ms, s.
</pre>

The better AI provide test code without being asked.

The best AI recognizes typos and comes up with ideas without being asked:
<pre>
Rather than growing the hardcoded list further (which is already a maintenance trap), I'll write a dedicated extractor for comparison queries that matches directly against the loaded country names in SQLite — a real fix, not a patch on a fragile pattern.
</pre>

I am often surprised at compatibility note such as:
```
auth-git2 version mismatches with newer git2/rustc releases are a common cause of this error.
```

Analyze the AI response for programming techniques rather than blindly copying and pasting.
PROTIP: Look at the version of Cargo.toml provided by AI. Edit the year to the latest (2024) so that you're using the latest version associated with that.

Use follow-up prompt such as:
<pre>
Explain the use of <`a> in rust code.
</pre>

PROTIP: AI can save you a lot of time at finding crates which may have issues resolved in its code as well as documentation that you don't have to write and review:
<pre>
rust crate that humanize the display of the number of elapsed seconds. 
</pre>
The response can be pleasant surprises, such as
   * "eternity-rs" crate provides bot readable formats and time range selection, ideal for use with logging/monitoring.
   * "humfmt" crate is an ergonomic toolkit that handles durations, byte sizes, compact numbers, ordinals, relative time, and natural-language lists—all in one crate."

PROTIP: Prefer using crates (such as time-humanize and human-repr) which have "zero dependencies" that potentially allow security vulnerabilities to creep in. 

PROTIP: TEAMWORK: Have your Security team review your use of external crates. 

PROTIP: Once working (passes all the edits you can think off), commit the version and ecpore alternatives.


<a id="Worthy"></a>

## Production-worthy?

"Robust enterprise-worthy <a target="_blank" href="https://wilsonmar.github.io/production/">production</a> code", "easy to extend", "performant", and other nice objectives are achieved not by empty promises but the extent that these features are implemented. Here are specific coding features:

* GUI Interactive
   - Automatic screen blank logout after a few minutes
   - Login required after screen blanking
   - Plausible self-hostable instead of Google tracking: No cookies. Minimal impact on site speed.
   There are several frameworks for developing interactive apps in Rus, for the Autonomous Age of AI is for "Human In the Loop" to approve rather than initiate actions.

   - <a target="_blank" href="https://crates.io/crates/axum">axum crate</a> is a popular modern, ergonomic web framework built by the Tokio team. More popular than actix-web.
   - <a target="_blank" href="https://wilsonmar.github.io/azure-functions/">Azure Serverless functions</a>

* Multi-platform
   - <a target="_blank" href="https://wilsonmar.github.io/printing/">printing to printers</a>  Use multi-os std::process::Command (No external crates needed for CUPS like Linux [DONE]
   - rodio crate: play an audio file (mp3, wav) [DONE]
   - Camera scan bar code or QR code
   - <a target="_blank" href="https://wilsonmar.github.io/alexa/">Alexa</a> voice response
   - Flipt Open-source feature flags and experimentation. Graduel feature rollouts. A/B Testing. Target specific user groups.

* Authentication
   - Hanko: Passwordless Authentication with WebAuthn Support:
   - #localvault - retrieve secrets from a secure local vault on USB drive (rather than clear-text env files)
   - <a target="_blank" href="https://wilsonmar.github.io/passkeys/">Passkeys</a>
   - Write-only archival handling accounts
   - JSON API auth
   - OAuth2 endpoint auth
   - custom header-based API auth
   - <a target="_blank" href="https://wilsonmar.github.io/okta/">Okta</a>
   - <a target="_blank" href="https://wilsonmar.github.io/zero-trust/">Zero Trust</a>
   - Ory Kratos Open-source identity management.
   - Twingate for Zero Trust means every interaction is authorized. No assumed safe areas. [Christian Lempa](https://www.youtube.com/@christianlempa)

* Configuration Management
   - Use a --verbose/-v argument to select run-time verbosity of run stats
   - <a target="_blank" href="https://www.generalistprogrammer.com/tutorials/whoami-rust-crate-guide">whoami crate</a> to get the current user and environment.
   - <a target="_blank" href="https://crates.io/crates/dirs">dirs crate</a> to get user directories cross-platform, C:\Users\... or assuming /usr/local/bin) [DONE]
   - <a target="_blank" href="https://wilsonmar.github.io/dns/">DNS</a> host name hops nslookup [DONE]
   - Set a wait after creating Azure Cosmos DB's sub-resources (database/container) of 2.5 minutes headroom.
   - No billed resources are left behind at the end of full capability test runs.

* Secrets handling
   - Load run control variables that don't need to be kept secret retrieved from environment variable (.env) in your user home folder, away from Github repos. [DONE]
   - AWS Secrets Manager
   - <a target="_blank" href="https://wilsonmar.github.io/azure-key-vault/">Azure Key Vault</a>
   - secretscout crate scans for secrets in your own Rust applications.
   - leakguard crate: to redact secrets & PII from text and logs. It can find and remove emails, credit cards, IP addresses, JWTs, AWS keys, and more.
   - caviarder Rust CLI (that can also be used as a library) to read text and replace detected secrets using Gitleaks' 220+ detection patterns.
   - <a href="#SecretsScan">Secrets scan on git pre-commit</a>

* Client framework support
   - Scan to not allow standard library "std::process::Command" which executes arbitrary CLI commands. Instead, of calling CLI fastfetch or inxi utilities to get system info, use crate ___.
   - multi-modal OpenAI prompt handling (speech recognition, GenAI of text, images, video)
   - <a target="_blank" href="https://github.com/AnBowell/s3-filesystem">OpenOptions struct</a>: read (get) file at the end of a AWS S3 or MinIO compatible endpoint cloud URI. To treat S3 files as if they were local files.
   - write (put) a file to AWS S3 cloud (mimio) 
   - AWS, Azure, <a target="_blank" href="https://wilsonmar.github.io/gcp/">GCP</a> interoperability

* Logging and Observability
   - Output logs in dual-format: use human-readable text for development and JSON Lines (JSONL) for machine parsing in production, enabled using CLI flag <tt>--jsonl</tt> or <tt>--log-format json</tt>
   - In dev, consistently and pleasantly formatted print messages (like the rich library in Python) by replacing default print macros with a comprehensive toolkit with colors, styles, tables, progress bars, etc. 
   - consistently use the same RFC 3339 format to display timestamps (such as "2026-07-05T11:19:24.356999Z") 
   - Use microsecond-level timings accuracy.

   - JSONL preserves the structure of your data, so it's easily ingested by tools like Datadog, ELK Stack (Elasticsearch, Logstash, Kibana), Splunk, and Loki. And it allows for powerful filtering and analysis.
   Use <tt>tracing_subscriber::{fmt, prelude::*, EnvFilter};</tt>
   - Data can be stored in a more dense format in <strong>Parquet</strong> format within a columnar database such as Databricks, Snowflake, MS Flow. Parquet files are used by the datafusion crate to push down filters (the WHERE clause) so only relevant data is read. The datafusion crate is from the open-source Apache Arrow ecosystem, to provide a high-performance query engine for reading, filtering, and aggregating logs.
   - Forward and parse logs using Promtail or Fluentd crate libraries.

   - Issue alert to a SOC SIEM about security-relevant events and conditions defined in the MITRE ATT&CK framework or standard compliance controls (like PCI-DSS, HIPAA, or NIST). A SIEM (Security Information and Event Management) system is designed to cut through the noise of millions of mundane log entries to find the signals that indicate a threat, a breach, or a compliance violation. Such as failed access attempt, a malicious URL, email found.

   - log structured spans that trace execution history through an app tracing library to 
   - Add logging, locally and with ??? and OTel (OpenTelemetry) via Prometheus.
   - tracking of run times and costs over time to identify anomalies occuring
   - Error context for debugging
   - Progress logging
   - Token usage tracking

   - Automatic log file rotation offsite to remote backup
   - Limit log backup handling accounts to Write-only access to prevent deletion ability.
   - Limit log restore handling accounts to Read-only access to prevent deletion ability.

   - https://www.youtube.com/watch?v=1ddvwuf0YGw by Fearless

* Deletion prevention
   - Use Parquet database format which are immutable. Individual entries cannot be deleted. Instead, a new "snapshot" of the data, called a "tombstone", are a new version of all data created with deleted records omitted. This "soft delete" provides a simpler approach of adding a boolean "is_deleted" column that is filtered out in queries. So partition log files by time to make deletion and time-travel queries more efficient. Parquet handles the low-level file operations,

* Secret info leakage prevention
   - For image compression, use <a target="_blank" href="https://github.com/oxipng/oxipng">cargo install oxipng</a> reduce bandwidth usage by --strip all metadata in png images sizes. Run apngopt before running Oxipng.

* Network protection
   - Incoming IP addresses are checked for its physical geography used to reject based on origin (which can be spoofed).
   - URL texts do not contain Homoglyphs for malicious rerouting [DONE]
   - DNS domain, IP, not reported to be malicious [DONE]
   - Use the EmailRep.io and AlienVault API to determine Email Reputation - whether email addresses were reported as being used to distribute malware, phishing, or spam. There's also IPQualityScore for a Threat Intelligence - where the domain is newly registered (a sign of malicious intent).

   - Use a protocol faster than JSON (CBOR, Protobuf, Flat Buffers, Message Pack)
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
   - sqlx  is a safe ORM
   - proptest library to make property-based tests

* Honeytaps
   * <a target="_blank" href="https://infisical.com/docs/documentation/platform/honey-tokens/aws/usage">Plant a decoy among secrets so that alert is triggered</a> to the SOC when an attacker uses them. (AWS only) To avoid alert fatigue, only one email notification per honey token every 24 hours even though all trigger events are  recorded and viewable in the event log.

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
   - Parquet to hold logs
   - Supabase managed PostgreSQL real time
   - Airbyte to move data between many sources (ELT)
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
   - ACH transfer via Lead.Bank API
   - Paypal
   - Use <a target="_blank" href="https://docs.rs/crypto-pay-api">Telegram’s crypto-pay-api</a> to create crypto invoices and handle payment flows to a return payment URL. [<a target="_blank" href="https://help.send.tg/en/articles/10279948-crypto-pay-api">release</a>]

* Web3 DeFi micropaymenets in Stablecoin ( USDC on Base Sepolia) 
   - <a target="_blank" href="https://github.com/DioxusLabs/dioxus">Dioxus</a> cross-platform or web, desktop, and mobile.


* Base axum backend web framework which serves the frontend. Or using a server-driven approach with HTMX.
   - See https://github.com/tokio-rs/axum (built with Tokio and Hyper Tower-http) <a target="_blank" href="https://www.youtube.com/watch?v=sIkbTL5XskY">VIDEO</a>
   - https://www.youtube.com/watch?v=usYYJSUsfjg = "Are we there yet" 
   - <a target="_blank" href="https://github.com/coinbase/x402">coinbase</a>
   - The x402-reqwest client library supports custom payment selectors for complex multi-chain scenarios. It automatically intercepts 402 responses. It signs the payment requirement with a wallet, includes the signature in a Payment-Signature header, and retries the request.

   - the x402-axum Tower middleware layer intercepts HTTP requests to check if they include a valid payment header.

   - The Server (Payment Receiver) protects its API routes using middleware (like x402-axum). When a client requests a protected resource, the server responds with a 402 status and a Payment-Required header detailing the cost. Once payment is verified, access to the resource is granted.  If no valid payment is detected, the API returns a 402 status code accompanied by a cryptographically signed payment request payload.

   - <a target="_blank" href="https://crates.io/crates/x402-rs">x402-rs</a> workspace provide client and server-side libraries, with the latter offering a more modular, multi-chain support.

   - <a target="_blank" href="https://crates.io/crates/x402-facilitator">The x402-facilitator</a> service handles the blockchain settlement with Base or Solana, running in Docker for easy setup. 

   - The rust-x402 crate also provides a standalone facilitator binary. The rust-x402 crate supports frameworks like Actix Web and Warp. 
   
   - The Facilitator (Settlement Layer) is optional but a recommended service to verify client signatures and settles payments on the blockchain. This lets your API server focus on its core logic without handling complex blockchain interactions.

* Scalability testing
   - playwright-rs crate leverages Playwright from Microsoft. Cross-browser: Chromium, Firefox, WebKit. https://github.com/microsoft/playwright-rs (site: https://playwright-rust.dev/

<hr />


<a id="SecretsScan"></a>

## Secrets scanning

We look for secrets leaking at EACH step in the development process:

<a name="SecretsScan"></a>

## Scan for sensitive data:

1. Within the IDE, anomalies are instantly highlighted by extensions installed:

   Type - Count - Severity - Description
    * Sensitive file extensions - 2,053 - Medium - .pem, .key, .p12 files
    * Connection strings - 1,146 - High - Credentials in URLs
    * Backup files - 412 - Low - Editor or config backups
    * Private key headers - 233 - Critical - Actual private keys
    * Database URLs - 184 - Critical - Exposed DB credentials
    * AWS access keys - 20 - Critical - AWS API keys
    * GitHub tokens - 7 - Critical - Access tokens
    * Stripe keys - 4 - Critical - Payment API keys
    
1. For a fast, simple pre-commit hook to prevent committing secret keys into source code. 

   ripsecrets is known for being extremely fast (reportedly 95 times faster than other tools). It detects secrets by looking for variable assignments with names like "token", "secret", or "password" that contain random-looking strings.

   security-harness-kit: A Rust CLI that scans for secrets, PII, and sensitive data. It can scan project paths and Git-staged files across many file types, including source code, Markdown, and even Office documents.

1. On MCP agents:

   leakferret: An MCP-native secret scanner written in Rust. A key feature is that it can call the provider to verify which detected secrets are actually live and can rewrite the leak in your code to read from an environment variable instead.

1. On git push, more comprehensive scans:

   SecretScout: A "blazingly fast, memory-safe CLI tool" for detecting secrets in git repositories. It's a complete Rust rewrite of the popular gitleaks project, offering 10x faster performance with 60% less memory usage.

   Kingfisher: An open-source secret scanner built in Rust by MongoDB. It features live secret validation and ships with over 950 built-in rules to detect and triage leaked credentials.

   For scanning in CI/CD pipelines, use a pre-built GitHub Action 
   guibranco/github-infisical-secrets-check-action

1. Use batch scanner on whole repos <a target="_blank" href="https://infisical.com/docs/documentation/platform/secret-scanning/overview">which may contain secrets already committed</a>

   argus: A high-performance batch security scanner that uses Shannon entropy analysis and multi-pattern matching to identify both known and unknown credentials.

   <a target="_blank" href="https://app.infisical.com/">infisical</a> to "continuously" scan repositories, builds, and runtime artifacts for leaked secrets and misconfigurations.

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

* <a target="_blank" href="https://vector.dev/docs/setup/">Vector.dev</a> (by Datadog) is a lightweight agent running on the app server to send logs to the central server without slowing down the app after updating XCode CLI:
   ```bash
   sudo rm -rf /Library/Developer/CommandLineTools
   sudo xcode-select --install
   ```

   ```bash
   brew trust --formula vectordotdev/brew/vector
   brew tap vectordotdev/brew && brew install vector
   ```
   Incredibly fast, low memory footprint, and handles both collection, parsing (transform), and routing logs. Recommended over Fluent Bit written in C and Filebeat written in Go. Vector does not block your application’s main thread. Instead of your app waiting for a network round-trip to the central server, your app writes logs to a local buffer (e.g., stdout, a local file, or a Unix socket). Vector reads from these local sources asynchronously. The app continues processing requests while Vector handles the network I/O in the background.


<a name="Install"></a>

## Install



<a name="CLIoptions"></a>

### Kitty CLI options

The Terminal program that comes with Operating Systems such as macOS are rather primitive compared to AI-enabled CLI Terminals. For one, legacy Terminal (including VS Code Terminal) cannot display images such as QR codes.

* Kitty - True 24-bit color depth, high resolution
* iTerm2 - Full color (macOS)

* Windows Terminal - Sixel support (from version v1.22+)
* WezTerm - Full support
* GNOME Terminal - Sixel support via patch
* Konsole Terminal - Sixel support via patch
* xTerm - Sixel support With -ti vt340

Sixel (short for "Six-bit elements") is a graphics protocol that allows terminals to display bitmap images directly within the terminal window. It was originally developed by DEC (Digital Equipment Corporation) in the 1980s for their VT-series terminals.

1. Check if your terminal supports Sixel. This returns colored blocks if supported:
   ```bash
   echo -e "\ePq#0;2;0;0;0#1;2;100;100;0#2;2;0;100;0#1~#2~#3~\e\\"
   ```

viuer automatically falls back to ASCII art rendering. This ensures your PNG still displays something readable:


## Output folders

What folder should rust programs output files to from within the main.rs?

POLICY: ❌ Don't hardcode filepath to just <tt>./output.txt</tt> which this dumps files wherever the user runs the program -- messy and unpredictable.

POLICY: The output folder (designated by a /) should be in <tt>.gitignore</tt> so that they are never pushed up to GitHub.

POLICY: ❌ Don't write to the <tt>target/</tt> folder — it's for build artifacts, not your program's output.

Use my ____ function which puts outputs based on the OUTPUT_DIRPATH variable in .env file.
If that is not specified, runs in Test environment output to hard-coded:
   * <tt>target/tests/</tt> (which get cleaned by <tt>cargo clean</tt>)

POLICY: ❌ Do not output to target/release and /debug folders the only cargo should output to:
   * ../target/debug/ for debug builds (cargo build)
   * ../target/release/ for release builds (cargo build --release)

If that is not specified in production, the standard practice is to 
   * macOS:   ~/Library/Application Support/<em>com.mycompany.myapp</em>/
   * Linux:   ~/.local/share/<em>myapp</em>/
   * Windows: C:\Users\<em>You</em>\AppData\Roaming\MyCompany\MyApp\data\

Use the ProjectDirs::data_dir() method to return a platform-specific path intended for your application's persistent data files. https://docs.rs/envpath/0.0.1/x86_64-apple-darwin/envpath/struct.ProjectDirs.html
??? write to the user's OS-specific data directory by using the directories crate to get the right path:
   ```
   let output_filename = "a-very-fine-file.pdf"
   let test_dir = std::path::Path::new(output_filename);
   std::fs::create_dir_all(test_dir).unwrap();
   ```


<a name="rustup"></a>

### rustup cargo installer

1. PROTIP: Add to startup .bash_profile/.zshrc to update Rust utilities so have the <a target="_blank" href="https://github.com/rust-lang/rustup/tags">latest version of the installer</a> when you open a Terminal. This takes a few seconds.

   REMEMBER: If you used Homebrew to install rustup, instead of <tt>rustup</tt> command to upgrade itself, use:
   ```bash
   brew upgrade rustup-init
   ```
   That's instead of<br />
   <strike>curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh</strike>
   The response:
   <pre>
   Warning: Formula rustup-init was renamed to rustup.
   Warning: rustup 1.29.0_2 already installed
   </pre>

1. Check the version of the Rust toolchain manager and rustc compiler:
   ```bash
   rustup --version
   rustc --version
   ```
   On Windows:
   ```
   rustc.exe --version
   ```
   <pre>
   rustup 1.29.0 (2026-03-05)
   info: This is the version for the rustup toolchain manager, not the rustc compiler.
   info: the currently active `rustc` version is `rustc 1.96.0 (ac68faa20 2026-05-25)`
   </pre>
   Alternately, for just the rustc version:
   ```bash
   rustc --version
   ```
   FUN FACT: <a target="_blank" href="https://www.emilyalbini.it/blog/shipping-a-compiler-every-six-weeks/">Rust is released every 6 weeks</a>

1. Where is that installed?
   ```bash
   whereis rustc
   ```
   <pre>
   rustc: /opt/homebrew/opt/rustup/bin/rustc /opt/homebrew/share/man/man1/rustc.1
   </pre>
   ```bash
   whereis cargo
   ```
   <pre>
   cargo: /opt/homebrew/opt/rustup/bin/cargo /opt/homebrew/share/man/man1/cargo.1
   </pre>

1. Read <a target="_blank" href="https://rustup.rs/">rustup.rs</a>

   DEFINITION: "toml" (Tom's Obvious Minimal Language) contains "[]" section headers.

   Inside the file, version="0.1.0" is updated manually based on semver.org (Semantic Versioning) conventions.

   <tt>edition="2024"</tt> is described at
   * https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html
   * https://www.youtube.com/watch?v=o8aLar7eTFQ&t=3m32s

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
   * <a target="_blank" href="https://www.youtube.com/watch?v=ZhedgZtd8gw">LGR</a>
   <br /><br />

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
   The repo currently has code for these sample Rust (.rs) program source <strong>packages</strong>:
   
   * <a href="https://github.com/bomonike/rustlang-samples/blob/main/src/useful-rust/src/main.rs">useful-rust at https://github.com/bomonike/rustlang-samples/blob/main/src/useful-rust/src/main.rs</a>
   
   * <a href="#nato-phonetic-audio">nato-phonetic-audio</a> is an example of what to submit to crates.io

   * openai-chat between a front-end client talking with a chat bot.

   * started around Nov 2022 

   ??? https://rust-analyser.github.io


   <a id="nato-phonetic-audio"></a>

   ### nato-phonetic-audio

   I created it partly with assistance from Claude's AI help.

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
   
   <a id="PostgreSQL"></a>

   ## PostgreSQL database local

   PostgreSQL (pronounced “post-gres”) is the most popular SQL database, especially on local.

1. Install
   ```bash
   brew install postgresql
   ```
   Install creates user "postgres" with permission to create and delete all databases..
1. DBeaver (pronounced “dee-beaver”) 
   ```bash
   brew install --cask dbeaver-community
   ```
1. Use a tool for connecting to PostgreSQL from the terminal to manage databases or send queries.
   ```bash
   psql -U postgres
   ````
   Successful response means seeing:
   <pre>
   psql (15.0)
   Type "help" for help.
   postgres=# _
   </pre>
1. In KeepassXC create an account "axum" and generate a password.
1. Create a new user axum for our backend service. Use the following commands to create the new user axum in the database and change the password to ‘1234’:
   ```
   CREATE USER axum;
   CREATE ROLE
   ALTER USER axum PASSWORD '1234';
   ALTER ROLE
1. Create database:
   ```
   postgres=# CREATE USER axum;
   CREATE ROLE
   postgres=# ALTER USER axum PASSWORD '1234';
   ALTER ROLE
   ```
1. Then change the database owner to the axum user. Now you can create tables and modify data when logged in as the axum user.
   ```
   ALTER DATABASE axum OWNER TO axum;
   ```
1. Log in as the axum user. Previously, you saw postgres=# on screen, but now you see axum=#. This shows which user you’re currently logged in as.
   <pre>
   $ psql -U axum axum
   psql (15.0)
   Type "help" for help.
   axum=#
   </pre>
1. Use SeaORM

1. Read:
   https://www.postgresql.org/download/

   <a id="my-alises"></a>

   ## My aliases
   In my repo is an aliases.sh
1. Edit your ~/.bash_profile to invoke that file:
   ```sh
   source ~/aliases.sh
   ```
   See my https://github.com/wilsonmar/mac-setup/main/blob/aliases.sh

   This tutorial explains use of these aliases:
   * <a href="#rtree">rtree</a>


   ## Cargo.toml to Configure Rust

   My <a href="https://github.com/bomonike/rustlang-samples/blob/main/src/useful-rust/README.md">rustlang-samples repo</a> 

   PROTIP: Many enterprise teams host starter files like in this repo to provide the team a consistent starting point, which reduces endless discussions when new people join the team.

1. Edit the <tt>Cargo.toml</tt> file for its sample settings.

1. The location of <tt>Cargo.toml</tt> is where <tt>cargo</tt> commands should be run. So to resolve the path relative to the compiled binary's known location ( current working directory ) at compile time using 
   ```
   CARGO_MANIFEST_DIR="$HOME/.config"
   ```
   https://doc.rust-lang.org/cargo/reference/environment-variables.html
   

   PROTIP: Coordinate the creation and maintenance of an install utility that enforces a consistent work environment among developers.
   This gets new team members productive much quicker, especially for pair programming.
   This also makes for easier testing, troubleshooting, and upgrades.


   <a id="manual-fmt"></a>

   ## Processing of code changes

   Several steps of processing is needed
   1. <a href="#assess-changes">Assess changes</a>
   1. <a href="#git-add">git add</a>
   1. <a href="#install-utils">Install utilities</a>
   1. <a href="#cargo-fmt">cargo fmt</a> (to format code according to rules)
   1. <a href="#git-commit">git commit</a> with a message
   1. GitHub Actions before git push
   1. <tt>git push</tt> to the team's GitHub repo
   <br /><br />

   Invocation steps for developer intervention when an error is identified along any of the steps.

   CAUTION: It takes a few seconds to type and run commands, which distracts the concentration of many developers.

   PROTIP: When developers manually control when utilities are run, they can invoke the operation before stepping away for a few minutes (to take a break, get a drink, go to the bathroom, etc.).

1. To run, use alias for "rust git process" from among <a href="#my-aliases">my aliases</a>:
   ```sh
   rgp
   ```
   Use of this alias avoids typos from typing longer number of characters.

   See https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks
   See https://github.com/Nutlope/aicommits for using AI to draft commit message text.

   <a id="assess-changes"></a>

   ## Assess changes

   The script is careful to keep the scope of process to specific named files rather than any files which has changed.

   "$CHANGED_ITEM"

   Named files which have not actually been changed are not processed.

   Different processes can occur on different types of files, using different utilities.
   Changes to .rs Rust code are processed using cargo utility commands.

   <a id="git-add"></a>

   ## git add

   PROTIP: When an undo is possible, we can confidently take automatic actions.

   Capturing the state of code before processing it. 
   ```
   git add "$CHANGED_ITEM"
   ```

   <a id="install-utils"></a>

   ## Install utilities

 using the latest version of utilities

   <a id="cargo-fmt"></a>

   ## Cargo fmt & rustfmt.toml

   The <tt><strong>cargo fmt</strong></tt> command reformats code controlled by <a href="#fmt-rules">about 80 rules</a> that have defaults which can be overridden by settings in a <tt>rustfmt.toml</tt> file. 

   REMEMBER: <tt>cargo fmt</tt> can be run (perhaps along with other utilities):
   1. by <a href="#manual-fmt">manual entry</a> (typing) in the CLI terminal, using an <a href="#my-aliases">alias</a>,
   1. by CLI commands that execute the <a href="#git-commit">git-commit</a> script,
   1. by a GitHub Actions runner controlled by declarative yml upon every <tt>git push</tt>, and
   1. by a <a href="#fmt-sweep">sweep</a> of all code within all .rs files in the repo (to apply changes in formatting rules)
   <br /><br />

   WHY? Reformatting is largely to keep code more readable.

   PROTIP: The <tt>cargo fmt</tt> command is run for the sake of <strong>team consistency</strong>. Automatic code formatting reduces the need for debates (and stress) that erupt when a rogue team member arranges code in a way that violates standards. Automatic code formatting fixes rogue changes even before others find out about them.

   CAUTION: There is a chance that <tt>cargo fmt</tt> causes compilation or run-time errors. There is also a chance that the team (as a whole) does not like the impact of a particular reformatting rule.

   <a id="git-commit"></a>

   ### git-commit script

   The git client works by looking for a file named "git-commit" (without a suffix like .sh, within the repo's <tt>.git/hooks</tt> folder) to see if there are instructions before executing the git action. See my https://wilsonmar.github.io/git-hooks

   <a id="fmt-install"></a>

   PROTIP: Check whether there is a new version of the utility on every use. Things can change quickly in today's world. And it only take a second.

   <tt>cargo fmt</tt> is NOT built into Cargo, but is an optional component that requires additional installation as an external command distributed with the Rust toolchain. 

   Within a CLI script:
   ```
   rustup component add rustfmt
   ```
   Within GitHub Actions yml:
   ```sh
      # Install Rust toolchain with rustfmt:
      - uses: dtolnay/rust-toolchain@stable
        with:
          components: rustfmt
   ```
   https://github.com/dtolnay/rust-toolchain

   <a id="fmt-workflow"></a>

1. Force everyone to format code according to the same rules by always running the <tt>cargo fmt</tt> command before every push to the team github. 

   WHY? Running as a GitHub Actions runner controlled by declarative yml upon every <tt>git push</tt>


The lowest cost is you have a MacMini, 
1. 
1. 
1. 
1.  in the .gitHub/workflow yml file:
   ```
   # Check formatting (fail if anything is not formatted):
   fmt:
      name: Rustfmt
      runs-on: ubuntu-latest
      steps:
         - uses: actions/checkout@v4
         - name: Install the Rust toolchain
         uses: actions-rust-lang/setup-rust-toolchain@v1
         with:
            components: rustfmt
         - name: Enforce formatting
            run: cargo fmt -all
   ```

1. PROTIP: Capture the state of code before invoking the Github Action. 
   ```
            run: cargo fmt all -- --check
   ```

.github/workflows/fmt.yml:

1. runs-on: ubuntu-latest to run the action on a self-hosted

1. TODO: specify use of a rustfmt.toml file in the GitHub Action request.

1. Each developer would run <tt>cargo fmt</tt> on his/her own.

1. CAUTION: PROTIP: immediately before the above <tt>cargo fmt</tt> command, save a copy of the target (using git) so that you can fall back if needed.

   The utility has a set of default settings it uses.

   <a id="fmt-rules"></a>
   Configuration options for each version
   https://rust-lang.github.io/rustfmt/
   https://github.com/rust-lang/rustfmt
   Each configuration option is either stable or unstable. Stable options can always be used, while unstable options are only available on a nightly toolchain and must be opted into. To enable unstable options, set unstable_features = true in rustfmt.toml or pass --unstable-features to rustfmt.



1. Generate default settings to a <tt>rustfmt.toml</tt> file, which specifies limits enforced when <tt>cargo rustfmt</tt> is run. They reduce the need for human interaction (and stress) within a team.
   ```bash
   rustfmt --print-config default >default-rustfmt.toml
   ```
   PROTIP: In the rustfmt.toml file, only specifies overrides (non-default) setting values. Its faster for the program to ignore a comment.

1. Raname file default-rustfmt.toml to "rustfmt.toml" 

   The "rustfmt.toml" in my rustlang-samples repo was generated using the rustfmt-expand.awk script at https://github.com/ravyne/rustfmt-expander

1. remove "#" in front of lines to activate changes from the default.


   <a id="fmt-sweep"></a>

   TODO: Changes to fmt rules would need to be applied to all code in the repository?


   ### cargo update

1. To update your dependencies to the latest allowed versions, run:
   ```bash
   cargo update
   ```
1. PROTIP: Clean the Build Cache: A corrupted build cache can cause weird errors. To resolve these issues:
   ```bash
   cargo clean
   cargo build
   ```
1. PROTIP: To have Cargo capture timeings to an HTML report at target/cargo-timings/cargo-timing.html. See https://docs.rs/crate/cargo/latest/source/src/doc/src/reference/timings.md
   ```bash
   cargo build --timings
   ```
   The "Unit Graph" visualizes the duration of each compiler invocation and the dependency chain, to identify bottlenecks.

   The "Concurrency Graph" shows how many units are waiting, active, or inactive over time, for insight into parallelization efficiency.

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


## CI/CD


   ### cargo on file change

   Many find this annoying. But see for yourself.

1. Install cargo-watch to automatically kick off cargo whenever a file is saved.
   ```sh
   cargo install cargo-watch
   ```
1. Set cargo to run several tasks in sequence:
   ```sh
   cargo watch -x check -x test -x run
   ```

   ## cargo sbom dev dependencies

1. Navigate to your project's root directory (where your Cargo.toml is located) and run:
   ```bash
   cargo install cargo-udeps
   cargo +nightly udeps 2>&1 | tail -60
   ```
   This command requires the rustc nightly build or get an error.
   Example output:
   <pre>
   `csv-rag-system v0.1.0 (/Users/johndoe/bomonike/rustlang-samples/src/csv2rag)`
   └─── dependencies
      ├─── "openai-api"
      ├─── "qdrant-client"
      ├─── "reqwest"
      ├─── "text-splitter"
         └─── "tokio"
   </pre>
   This has limited usefulness to me, but an SBOM is useful.

   <a id="SBOM"></a>

   TODO: This alternative is not working:
   cargo install tomlq
   RUSTPKG="$(tq -r '.package.name' Cargo.toml)"

1. Save a full indented dependency tree of crates and their versions for potential forensics later.

   TECHNIQUE: Extract from Cargo.toml its name (RUSTPKG). Count rows in the SBOM and include that in the TREEFILE and at the bottom of the SBOM.
   ```bash
   RUSTPKG="$(cargo pkgid | cut -d'#' -f2 | cut -d':' -f2)"
   RTREE_ROWS="$(cargo tree | wc -l | xargs)"
   TREEFILE="$RUSTPKG-$(date -u +%y%m%dT%H%M%SZ)-SBOM-$RTREE_ROWS.txt"
   cargo tree >"$TREEFILE" 
   echo "$RTREE_ROWS" >>"$TREEFILE"
   code "$TREEFILE"
   ```
   Example TREEFILE: "csv-rag-system@0.1.0-260728T145928Z-SBOM-877.txt"

   TECHNIQUE: xargs removes blank spaces from system variables.

   TODO: Procedure to archive run history for forensics.

   TODO: Incorporate the commands in the alias "rtree" defined within <a href="#my-aliases">my alias in $HOME/aliases.sh</a>.

   <pre>
   csv-rag-system v0.1.0 (/Users/johndoe/bomonike/rustlang-samples/src/csv2rag)
   ├── anyhow v1.0.103
   ├── csv v1.4.0
   │   ├── csv-core v0.1.13
   │   │   └── memchr v2.8.3
   ├── openai-api v0.1.4
   │   ├── derive_builder v0.9.0 (proc-macro)
   │   │   ├── darling v0.10.2
   │   │   │   ├── darling_core v0.10.2
   │   │   │   │   ├── fnv v1.0.7
   │   │   │   │   ├── ident_case v1.0.1
   ...
       867
   </pre>
   PROTIP: This is the "supply-chain" SBOM (Software Bill of Material) attestation (like a "food label") that some customers ask to be delivered and retained with each release of software. It's requested by US White House Executive Order 14028 signed by President Biden on May 12, 2021 but rescinded during the second Trump administration.


   ## transitive dependencies: cargo outdated

1. To get a count of how many <strong>transitive dependencies</strong> you have:
   ```bash
   cargo install cargo-outdated
   cargo outdated --aggressive | wc -l
   ```
   <tt>--aggressive</tt> requests reporting of libraries with <strong>transitive dependencies</strong>

   Specify <tt>--root-deps-only</tt> instead of <tt>--aggressive</tt> for just the named crates.

   The count includes two lines for the heading:
   <pre>
   530
   </pre>

1. Create a line for each transitive dependency:
   ```bash
   cargo outdated --aggressive
   ```
   Add <tt>--offline</tt> if you're offline (as in no wifi).

   Expect to see a table listing your dependencies, their current version, the latest compatible version, and the absolute latest version:

1. Widen your CLI window and/or set the font smaller.
   <pre>
   warning: Feature rustls-tls of package reqwest has been obsolete in version 0.13.4
   Name                                             Project                        Compat   Latest   Kind         Platform
   ----                                             -------                        ------   ------   ----         --------
   ahash->cfg-if                                    1.0.4                          ---      Removed  Normal       ---
   ahash->getrandom                                 0.3.4                          ---      Removed  Normal       ---
   ahash->once_cell                                 1.21.4                         ---      Removed  Normal       cfg(not(all(target_arch = "arm", target_os = "none")))
   ahash->version_check                             0.9.5                          ---      Removed  Build        ---
   ahash->zerocopy                                  0.8.54                         0.8.55   0.8.55   Normal       ---
   </pre>
   
   
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

   https://github.com/rust-lang/rust-clippy
   A bunch of lints to catch common mistakes and improve your Rust code. 
   Book: https://doc.rust-lang.org/clippy/

1. PROTIP: Run the built-in clippy code scanner utility different ways. First, get a summary:
   ```bash
   cargo clippy --manifest-path Cargo.toml 2>&1 | grep -E "warning:|error:|Finished" | sort -u
   ```
   TODO: Define the commands above as <a href="#my-aliases">my alias in $HOME/aliases.sh</a> so you can invoke the command easily and frequently.

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
   

   Learn!

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
      CAUSE: an active immutable borrow when you try to create a mutable borrow. - 
      Restructure your code. Ensure the immutable borrow is no longer used before the mutable borrow occurs. Sometimes, you can end the borrow earlier by limiting its scope with a block {} or by cloning the data if performance allows.

   * does not live long enough. CAUSE: A value is dropped (goes out of scope) while it's still being borrowed. - Fix the lifetime. You may need to extend the lifetime of the value, take ownership (return an owned String instead of a &str), or add explicit lifetime annotations to your functions.

   * mismatched types. CAUSE: A variable or return value is of the wrong type. - Convert the type. Use .into(), as, or another method to convert the value to the expected type.


   ### Forgetaboutit

1. The <tt>Cargo.toml</tt> and <tt>clippy.toml</tt> files can contain specifications about what check to igore.
   Location is the ~/.cargo folder would apply to all Rust runs in any folder.
   Annoying examples:
   
   warning: doc paragraphs should end with a terminal punctuation mark

1. https://doc.rust-lang.org/stable/cargo/ = The Cargo Book

   ## Red Teaming

   https://github.com/joaoviictorti/RustRedOps
   TODO: Repository for advanced Red Team techniques focused on Rust

   ## STEP description list

1. Obtain a list of comment lines containing "STEP" the developer added as a comment or println, and strip out text ahead of it:
   ```
   sed -n 's/.*\(STEP .*\)/\1/p' main.rs
   ```
   TECHNIQUE: STEP numbers are zero-filled to ensure consistent vertical positioning.

   <pre>
   STEP sequences : azure-rust @main.rs"
   STEP 01 - SILENT: TODO: Initialize logging.");
   STEP 02 - SILENT: Snapshot start time, memory, and disk as the baseline for deltas.");
   STEP 03 - SILENT: Collect variables in .env file:");
   STEP 04 - SILENT: Run objectstore.");
   STEP 05 - SILENT: parse CLI program invocation flags:");
   STEP 06 - SILENT: Display ENV_TYPE from env file (loaded above).");
   STEP 07 - Print local and UTC timestamps.");
   STEP 09 - For production environments, logs need to be machine-readable."); 
   STEP 10 - Print [package] variables in Cargo.toml.");
   STEP 11 - Display environment variables:");
   STEP 12 - Display OS Environment Variables:");
   STEP 13 - SECRET: OS name, user name (multi-os).");
   STEP 14 - SECRET: The first MAC address may be spoofed within .bash_profile");
   STEP 15 - SECRET: Networking SSID.");
   STEP 16 - SECRET: location info only when --secret / -s is passed.");
   STEP 17 - Set AzureRegionRegistry::new()");
   STEP 18 - Map nearest Azure region to Latitude/Longitude:");
   STEP 19 - Load configuration:");
   STEP 20 - Azure: Create credentials:");
   STEP 21 - Azure: Resource group (control plane)",
   STEP 22 - Azure: Provider registration (control plane)",
   STEP 23 - Azure: Storage account (control plane)",
   STEP 24 - Azure: Storage RBAC",
   STEP 25 - Azure: Key Vault (control plane)",
   STEP 26 - Azure: Key Vault RBAC",
   STEP 27 - Azure: Key Vault", 
   STEP 28 - Azure: Service Bus namespace (control plane)",
   STEP 29 - Azure: Cosmos DB account (control plane):");
   STEP 30 - Azure: Cosmos DB account (control plane)");
   STEP 31 - Azure: Cosmos DB database/container (control plane)",
   STEP 32 - Azure: Cosmos DB RBAC",
   STEP 33 - Azure: Cosmos DB key -> Key Vault",
   STEP 34 - Azure: Cosmos DB section", 
   STEP 35 -Azure:  Delete Cosmos DB account",
   STEP 36 - Azure: Delete storage account",
   STEP 37 - Azure: Delete Service Bus namespace",
   STEP 38 - Elapsed wall-clock time for the custom code section only.");
   STEP 39 - TODO: Log run results off this machine.");
   STEP 40 - Print end-of-run memory and disk deltas vs. the snapshot.");
   STEP 41 - Total elapsed wall-clock time since program start.");
   </pre>

   * <a target="_blank" href="https://www.bing.com/search?q=azure+rust&form=QBLH&sp=-1&ghc=1&lq=0&pq=azure+rust&sc=8-10&qs=n&sk=&cvid=BB885029CB864936BC630170A4C7A505&ntref=1&ntref=1&dayref=1">Azure Blob Storage SDK for Rust - Azure Daily Minute Podcast - 26-MAY-2026</a>
   * <a target="_blank" href="https://www.bing.com/videos/riverview/relatedvideo?q=Azure+Rust+Programming&&mid=885F5063155BA84D41AC885F5063155BA84D41AC&churl=https%3a%2f%2fwww.youtube.com%2fchannel%2fUClny6qj9Mv7uFo9XGUGYQBA&FORM=VRDGAR">Azure Functions in Rust Quickstart</a> 2023

1. For a dynamic view of what's actually called when the program runs.
   ```
   cargo install cargo-modules cargo-call-stack ctags universal-ctags rust-code-analysis-cli 
   cargo modules generate graph --bin azure-rust 2>&1 | head -100
   cargo modules dependencies --bin azure-rust --no-modules --no-types --no-traits --no-externs --no-sysroot 2>&1 | head -150
   ```

   ## Code Coverage

   It takes time to define tests and run code coverage (identifying what portions of the codebase passes quality checks). But automation can help.
1. Use AI to create tests.
1. Install  a cargo subcommand developed by <a target="_blank" href="https://github.com/taiki-e">Taiki Endo</a>:
   ```sh
   rustup component add llvm-tools-preview
   cargo install cargo-llvm-cov
   ```
   <pre>
   Installing /Users/johndoe/.cargo/bin/cargo-llvm-cov
   Installed package `cargo-llvm-cov v0.8.7` (executable `cargo-llvm-cov`)
   </pre>

1. Compute coverage:
   ```sh
   cargo llvm-cov --help
   ```
   That command explains how to upload code coverage metrics to popular reporting services like Codecov or <a target="_blank" href="https://coveralls.io/">Coveralls.io</a>.
   <pre>    
    test result: ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.21s
    &nbsp;
    Filename                                                             Regions    Missed Regions     Cover   Functions  Missed Functions  Executed       Lines      Missed Lines     Cover    Branches   Missed Branches     Cover
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    /Users/johndoe/bomonike/rustlang-samples/src/csv2rag/src/main.rs        1320               155    88.26%          72                 1    98.61%         741                69    90.69%           0                 0         -
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    TOTAL                                                                   1320               155    88.26%          72                 1    98.61%         741                69    90.69%           0                 0         -
    </pre>

1. To run code coverage within this sample GitHub Action <a target="_blank" href="https://github.com/LukeMathWalker/zero-to-production/blob/root-chapter-03-part0/.github/workflows/general.yml">.yml</a>:

   ```
   coverage:
      name: Code coverage
      runs-on: ubuntu-latest
      steps:
      - uses: actions/checkout@v4
      - name: Install the Rust toolchain
         uses: actions-rust-lang/setup-rust-toolchain@v1
         with:
            components: llvm-tools-preview
      - name: Install cargo-llvm-cov
         uses: taiki-e/install-action@cargo-llvm-cov
      - name: Generate code coverage
         run: cargo llvm-cov --all-features --workspace --lcov --output-path lcov.info
      - name: Generate report
         run: cargo llvm-cov report --html --output-dir coverage
      - uses: actions/upload-artifact@v4
         with:
             name: "Coverage report"
             path: coverage/
   ```



<a id="Algorithms"></a>

## Rust-algorithms

```bash
# clone Rust-Algorithms as a peer of 
cd /Users/johndoe/github-wilsonmar/rustlang-samples/src
git clone https://github.com/wilsonmar/Rust-algorithms.git Rust-algorithms 2>&1 | tail -20
echo "---"
ls /Users/johndoe/github-wilsonmar/rustlang-samples/src
```

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

QUESTION: How to call functions in the Algorithms repo?


## Arena Pattern for Double-linked lists

This may be a popular trivia question that everyone may not know:

<a target="_blank" href="https://www.youtube.com/watch?v=eULu3j81Ak0&t=16m35s">VIDEO</a>
Rust cannot handle double-linked lists, aka self-referential structs and cyclic graphs.

The workaround is the Arena Pattern which has a 36% performance penalty to maintain the sequence number.


<a id="FullStacks"></a>

## Full Rust Stacks

<a target="_blank" href="https://www.youtube.com/watch?v=Pr6T0Phjvgc">VIDEO</a>:
<a target="_blank" href="https://github.com/MoonKraken/DrawsNotes">Modern All Rust Stack - Dioxus, Axum, Warp CLI, SurrealDB</a>
to create a Notebook app running on a web browser.



<a name="GUIOptions"></a>

* UI framework
   - Dioxus from <a target="_blank" href="https://dioxuslabs.com">https://dioxuslabs.com</a> React-like coding batches virtual DOM operations. Cross platform. Future Dioxus Deploy paid cloud platform. Hosted.
   - Yew uses a virtual DOM. Gentlest learning curve.
   - Laptos fastest, uses fine-grained reactivity like SolidJs. no tree walking.
   - Sycamore

* HTTP server API 
   - Axum is maintained by the developers of the Tokio asynchronous runtime, has rapidly become the preferred choice for new projects. Axum is built directly on top of tower, a foundational library for defining robust network services. Because Axum utilizes standard tower::Service traits, it allows you to compose your application using generic middleware that works across completely different networking protocols. Axum also relies on standard Rust functions and the type system for state extraction, minimizing macro usage and making the control flow significantly easier to debug.
   - Actix Web is a mature, highly optimized framework built around its own specialized ecosystem and asynchronous runtime extensions. It utilizes a heavily macro-driven approach to route definition and state extraction.
   - Rocket
   - Poem

* Local Database
   - Sqlite
   - PostgreSQL

* Cloud Databases written in Rust
   - <a target="_blank" href="https://surrealdb.com/">SurrealDB.com</a> cloud "document-graph" database. Some say it's slow.
   - Neon serverless PostgreSQL (psql) storage layer
   - Meilisearch like ElasticSearch
   - Qdrant vector database for semantic search

   - Azure Cosmos global db
   - https://github.com/tikv/tikv "Distributed transactional key-value database"
   - AWS


<a target="_blank" href="https://www.youtube.com/watch?v=_a9hrASXekc">VIDEO</a>: Unlike web apps using Electron, Rust Tauri or Iced or Floem,

<a target="_blank" href="https://www.youtube.com/watch?v=_a9hrASXekc&t=2m6s">VIDEO</a>:
Rust uses WGPU layer, a cross-platform abstraction for backends Vulkan, Metal, DirectX on Windows.
That allows manipulatio of Floem and Makepath directly on the GPU.
So Rust runs fundamentally faster bypassing the DOM and CSS engine (the most expensive part).


### Dioxus GUI Framework

   * https://dioxuslabs.com/learn/
   * https://www.youtube.com/watch?v=WgAjWPKRVlQ&pp=ygUPcnVzdCBndWkgRGlveHVz]
   * https://www.youtube.com/@DioxusLabs
   * https://www.youtube.com/watch?v=icNqrEVyKsU&list=PLMnB0j0TXECg5Q8sV5RiPHtyuZtEKPJPy = Syed Hussim Dev

<a target="_blank" href="https://www.youtube.com/watch?v=VQHRUQDCh_Q">VIDEO</a>:
Why WASM? It runs in a sealed sandbox. 16 GB on browser. A WASM module is just code, not like a Docker container which contains a whole operating system like Ubuntu. So it starts in 1ms vs 300ms.
Thus, Akamai bought Fermyon (serverless WASM). Sopify swapping containers for WASM.
However, JavaScript still boots the app, fetches .wasm, paints every pixel.

```
kubectl apply -f wasm-workload.yaml
```

Dioxus WASM for browser
```
rustup target add wasm32-unknown-unknown
   rust-std installed  

cargo install dioxus-cli
```

https://www.youtube.com/shorts/fpcS7kifs1I
```
dx new hello-dioxus
cd hello-dioxus
ls   # assets
cargo add dioxus      # core
cargo add dioxus-web  # renderer
```
 .cargo/config.toml
```
[profile.release]
opt-level = "z"
lto = true
codegen-units = 1
panic = "abort"
strip = true
```
```
dx --help
```
Execute a binary from npm or jsr, like npx

https://dioxuslabs.com/learn/0.4/getting_started/wasm/?phantom=usage#usage
```bash
dx serve --hot-reload
dx serve --platform web --release  # For a more optimized build (crucial for smaller WASM binaries)
```

## AWS SDK for Rust

Why? Rust is the lowest-cost language to use on AWS Lambda service.

1. https://aws.amazon.com/sdk-for-rust/ is the marketing landing page.
1. https://aws.amazon.com/blogs/developer/announcing-general-availability-of-the-aws-sdk-for-rust/ began with samele code for crate: aws-sdk-dynamodb = "1"
1. https://github.com/smithy-lang/smithy-rs generated from
1. https://docs.aws.amazon.com/code-library/latest/ug/ docs for each servicez.ai
1. https://docs.aws.amazon.com/sdk-for-rust/latest/dg/welcome.html
1. https://smithy.io/2.0/languages/rust/index.html defining services for generator
1. https://docs.aws.amazon.com/sdk-for-rust/latest/dg/rust_code_examples.html points to
1. https://github.com/awsdocs/aws-doc-sdk-examples/tree/main/rustv1
1. https://github.com/awsdocs/aws-doc-sdk-examples/tree/main/rustv1/examples for each aws svc
1. https://docs.rs/releases/search?query=aws-sdk-
1. https://github.com/awsdocs/aws-doc-sdk-examples/blob/main/rustv1/run_all.sh

1. https://awslabs.github.io/aws-sdk-rust/ has a link to the crate for each AWS service
1. https://github.com/awsdocs/aws-doc-sdk-examples/blob/rust_dev_preview/rustv1/README.md
1. https://github.com/awsdocs/aws-doc-sdk-examples/tree/main/rust_dev_preview
   by <a target="_blank" href="https://www.linkedin.com/in/david-souther/">David Souther</a>

Rust on AWS use tracing_subscriber with env_filter to print information about various information as the example runs. Because the AWS SDK for Rust and many crates used in these examples use tracing for structured logging, it is important to have an understanding of the RUST_LOG variable.

RUST_LOG controls the tracing environment logger level, allowing fine-tuned control of what log messages to display. 
   * info will show all common output for the program.
   * {crate_name}=debug will show some useful per-action details.
   * aws_smithy_http_tower::dispatch=trace will print the full HTTP request of every call to an AWS SDK.
   * aws_smithy_http::middleware=trace will print the full HTTP response of every call to an AWS SDK.

Environment variables:
   * RUSTFLAGS="-D warnings"
   * APP_ENVIRONMENT="test"
specific to using the AWS SDK for Rust running in Amazon Elastic Container Service (Amazon ECS). See <a target="_blank" href="https://docs.aws.amazon.com/sdkref/latest/guide/feature-container-credentials.html">AWS SDKs and Tools - Container Credentials</a>
   * AWS_CONTAINER_CREDENTIALS_FULL_URI specifies the full HTTP URL endpoint for the SDK to use when making a request for credentials.
   * AWS_CONTAINER_CREDENTIALS_RELATIVE_URI specifies the relative HTTP URL endpoint for the SDK to use when making a request for credentials.
   * AWS_CONTAINER_AUTHORIZATION_TOKEN specifies the Authorization header on HTTP requests.

Environment variables specify how Instance Metadata Service (IMDS) provides data about your instance when using the AWS SDK for Rust running in Amazon EC2. See <a target="_blank" href="https://docs.aws.amazon.com/sdkref/latest/guide/feature-imds-credentials.html">AWS SDKs and Tools - IMDS Credentials</a>
   * AWS_EC2_METADATA_DISABLED specifies whether or not to attempt to use IMDS to obtain credentials.
   * AWS_EC2_METADATA_SERVICE_ENDPOINT specifies the endpoint for IMDS.
   * AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE specifies whether to access IMDS using IPv4 or IPv6.

Environment variables are specific to the AWS SDK for Rust.
   * AWS_SDK_UA_APP_ID specifies an additional app name that will be present in the User-Agent header for every SDK request.

https://docs.aws.amazon.com/AmazonECR/latest/userguide/what-is-ecr.html
Docker image

Tutorial: <a target="_blank" href="https://builder.aws.com/content/3CcA8u1UUlFqDRXOAovCe7wavz6/learn-aws-ai-and-cloud-with-me-40-courses-across-bedrock-sagemaker-lambda-and-mlops">AWS Builder Center</a>: With a Coursera subscription (~$400/year), earn a career certificate you can add to your LinkedIn profile, resume, or CV. Share it on social media and in your performance review.
<a target="_blank" href="https://www.coursera.org/specializations/ai-tooling">
AI Tooling Specialization</a>: Build and deploy production AI systems using Rust on AWS.
Master 20 courses with projects spanning foundation models, prompt engineering, security
in 75 hours of videos:

1. 3 hr LLM Security and Vulnerabilities 
   * 1 hr LLM Foundations and AI Application Security
   * 1 hr LLM Security Vulnerabilities and Defense
   * 1 hr Capstone Project
1. 3 hr CLI Automation with <strong>Amazon Q and CloudShell</strong> (Kiro)
1. 3 hr AI-Powered Analytics and Performance Engineering
1. 4 hr Deterministic LLM programming 
1. 3 hr Building deterministic MCP Agents
1. 3 hr Enterprise AIOps with Amazon Q Business
1. 3 hr Multi-modal AI 
1. 3 hr Prompt Architecture and NLP on Amazon Bedrock
1. 5 hr Privacy-Conscious Development with <strong>AI Assistants</strong>
1. 4 hr Agentic AI: Actor Models and Subagent Architecture
1. 4 hr Build a Production SaaS Application with AI
1. 3 hr AI Tooling Capstone: Serverless Multi-Model Systems
1. 4 hr AI Debugging and Test-Driven fixes
1. 5 hr AI Orchestration: From local models to cloud
1. 4 hr AI Security and Governance on AWS
1. 5 hr AWS Generative AI and Foundation Models
1. 4 hr AWS Intelligent Applications with Amazon Bedrock
1. 4 hr AI Code Review Automation with GitHub Actions
1. 4 hr Conversational Bot Architecture with Rust and Deno
1. 3 hr AI-Powered Data Pipelines with <strong>Deno</strong>
   * 1 hr Deno Foundations and AI-Driven Development
   * 1 hr Data Engineering and Task Systems
   * 1 hr Production Deno Tooling

https://www.coursera.org/specializations/building-cloud-computing-solutions-at-scale 
The Duke University Building Cloud Computing Solutions at Scale Specialization  is a four-course foundation covering serverless, containers, data engineering, and MLOps on AWS:

1. Secrets Manager - Store and rotate passwords, tokens, credentials.
1. Lambda / Serverless - Run code without managing servers.
1. VPC - Secure, isolated cloud network environment.
1. Load Balancer - Distributes incoming traffic across servers.
1. NAT Gateway - Lets private subnets access the internet.
1. API Gateway - Manages, secures, and routes API requests.
1. IAM - Control access with roles, policies, and permissions.

1. S3 - Object storage for files, logs, media, and backups.
1. DynamoDB - Ultra-fast NoSQL key-value store.
1. EC2 - Virtual servers for running applications.
1. RDS - Managed SQL databases (MySQL, PostgreSQL, MariaDB).
1. Auto Scaling Groups - Automatically scale compute up or down.

1. SQS - Queue-based decoupling for async tasks.
1. SNS - Publish/subscribe messaging for alerts and notifications.

1. WAF - Protect apps from attacks like SQLi and XSS.
1. CloudWatch - Monitoring metrics, logs, and alerts.
1. ECS / EKS - Container orchestration for Docker workloads.
1. Route 53 - DNS routing and domain management.
1. Kinesis / PubSub - Real-time streaming data ingestion.
1. CloudFront (CDN) - Deliver content from edge locations.

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


https://github.com/grafana/pyroscope-rs/blob/main/build.rs
profile

<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
