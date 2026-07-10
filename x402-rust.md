---
layout: post
date: "2026-07-10"
lastchange: "v005 fix: youtube url @x402-rust.md"
url: "https://bomonike.github.io/x402-rust"
file: "x402-rust"
title: "x402-rust"
excerpt: "How to setup a Rustlang Axum web server to get and receives stablecoins using x402, without APIs and subscriptions."
tags: [AI, production, macos, defi]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-05-19"
---
<a target="_blank" href="https://bomonike.github.io/x402money"><img align="right" width="100" height="100" alt="x402money.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/x402money.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

{% include whatever.html %}

## What's this?

This document is not about exploring options and syntax, but the steps for making a specific set of choices happen. 

My dream is to have someone's <strong>mobile photo</strong> app scan my QR code (at right) and I instantly receive <strong>x402money</strong>. But without plus 3% transaction fee and monthly subscription on my credit card.

I've been searching for <strong>sample code</strong> and step-by-step to make that happen, such that wee mortals can just change secrets and it works. We can they study the inner workings.

But so far I've only seen deep dive tutorials that tell me to first learn <strong>Axum web servers</strong> and API calls from the ground up. It's like I ask to rent an apartmentment and I'm told "first learn how to find ingredients to make concrete". 

So here's what I've learned so far ... because I want to learn the Rust programming language well. 
And I wanted to use both local and cloud resources such as Hertzner based in Germany.


## The project plan

<a href="#SetupDevEnv">A. Setup dev enviornment on my Mac</a>

<a href="#Rustlang">B. Learn Basic Rust knowledge (ownership, traits, async/await)</a>

<a href="#SetupDBs">C. Setup database & utility servers</a>

<a href="#SetupAxum">D. Setup Axum web server</a>

<a href="#x402servers">E. Setup x402 servers</a> (on EU compute resources such as Herzner)

<a href="#TestSystem">F. Test whole system making calls</a>

<a href="#ProdPrep">G. Prepare for Production</a> begins from the beginning with test data.

<hr />


<a id="SetupDevEnv"></a>

## A. Setup dev enviornment on my Mac

Here's what we'll end up with your client machine in production

   * XCode (for its build utilities)
   * Homebrew package manager
   * git, gh, g, curl, jq, vscode, etc.
   * Chrome, Firefox, Postman, Insomnia, 
   * Keepass, <a target="_blank" href="https://www.youtube.com/watch?v=ZhedgZtd8gw">VScode</a> IDE & extensions, etc.
   * Kity CLI, Argon2 hashing algorithm, SSH, 

   * Claude
   * Make a folder to receive GitHub.
   * Backup server
   * NodeJs, Rust 1.78+
   * Docker, Dockeer Compose
   * PostgreSQL for Modules 08-09
   * SQLx databaase driver

   * external SMTP, DNS, CDN, email server

   https://app.insomnia.rest/app/authorize

<a id="Responsibilities"></a>

## Responsibilities

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1783652708/org-tasks-2422x1034_d792xt.png"><img alt="org-tasks-2422x1034.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1783652708/org-tasks-2422x1034_d792xt.png" /></a>


<a id="Servers"></a>

## Servers

Services are brought up in this sequence:
   
   1. SMTP Time service
   1. Keepass database giving out secrets
   1. DNS
   1. Artifactory providing run-time artifacts
   1. Email server
   1. Messaging server (NextCloud)
   1. Document servicr (NextCloud)
   1. Pingdom PagerDuty external uptime monitor
   1. Archiving
   1. Alerting OpsGenie
   1. Grafana dashboards
   1. Logging
   1. Prometheus metrics
   1. Kubernetes
   1. x402 Facilitator
   1. WebSocket
   1. Web service

   Shutdown sequence goes the opposite direction.

Each server is configured 

1. Create or navigate to a folder to receive GitHub repos.
1. Download:
   ```bash
   # Clone the repository:
   git clone https://github.com/wilsonmar/axum-full-course.git
   cd axum-full-course
   ```
   <pre>
   Cloning into 'axum-full-course'...
   remote: Enumerating objects: 69, done.
   remote: Counting objects: 100% (69/69), done.
   remote: Compressing objects: 100% (45/45), done.
   remote: Total 69 (delta 11), reused 66 (delta 11), pack-reused 0 (from 0)
   Receiving objects: 100% (69/69), 43.64 KiB | 732.00 KiB/s, done.
   Resolving deltas: 100% (11/11), done.
   </pre>
1. Watch <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=2m30s">2:30 modules</a> View folders and files downloaded:
   <pre>
   axum-full-course/
   │ module-nn-xxx (see table below) 
   ├── target/                    # folder appears after cargo is run
   ├── .env.example               # Environment variables template
   ├── .gitignore
   ├── Cargo.lock                 # file appears after cargo is run
   ├── Cargo.toml                 # Workspace manifest with shared dependencies
   ├── Dockerfile                 # Production Docker image
   ├── LICENSE
   ├── README.md                  # This file
   ├── docker-compose.yml         # Local development stack
   </pre>
   <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=2m49s">2:49</a>: <a target="_blank" href="https://github.com/wilsonmar/axum-full-course/tree/main#-whats-new-in-axum-08">What changed</a>

   | Feature | Old Syntax | New Syntax |
   |---------|------------|------------|
   | Path Parameters | `/:id` | `/{id}` ✨ |
   | Custom Extractors | `#[async_trait]` required | Native async traits ✨ |
   | Optional Extractors | Manual handling | `OptionalFromRequestParts` ✨ |
   | Connection Limiting | External | `ListenerExt::limit_connections` ✨ |

   ### Tutorials by module

   | module- folder | Topic | Description | video |
   |----------------|-------|-------------|-------|
   | [01-intro](https://github.com/wilsonmar/axum-full-course/tree/main/module-01-intro) | **Introduction** | Hello World, `axum::serve`, basic handlers | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=4m20s">4:20</a> |
   | [02-routing](https://github.com/wilsonmar/axum-full-course/tree/main/module-02-routing) | **Routing** | Path params `/{id}`, nesting, HTTP methods | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=11m57s">11:57</a> |
   | [03-extractors](https://github.com/wilsonmar/axum-full-course/tree/main/module-03-extractors) | **Extractors** | Path, Query, Json, Headers, custom extractors | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=17m29s">17:29</a> |
   | [04-responses](https://github.com/wilsonmar/axum-full-course/tree/main/module-04-responses) | **Responses** | IntoResponse, Json, Html, status codes | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=21m57s">21:57</a> |
   | [05-state](https://github.com/wilsonmar/axum-full-course/tree/main/module-05-state) | **State** | Arc, RwLock, shared mutable state | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=25m19s:>25:19</a> |
   | [06-middleware](https://github.com/wilsonmar/axum-full-course/tree/main/module-06-middleware) | **Middleware** | Tower, CORS, compression, logging_, timing_, auth_middleware | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=28m48s">28:48</a> |
   | [07-errors](https://github.com/wilsonmar/axum-full-course/tree/main/module-07-errors) | **Errors** | Custom error types, thiserror, error handling | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=32m28s">32:28</a> |
   | [08-database](https://github.com/wilsonmar/axum-full-course/tree/main/module-08-database) | **Database** | SQLx, PostgreSQL, CRUD operations | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=35m12s">35:12</a> |
   | [09-auth](https://github.com/wilsonmar/axum-full-course/tree/main/module-09-auth) | **Authentication** | JWT, Argon2 hashing, protected routes | - |
   | [10-advanced](https://github.com/wilsonmar/axum-full-course/tree/main/module-10-advanced) | **Advanced** | WebSocket, SSE upgrqde, file uploads | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=52m56s">52:56</a> |
   | [11-testing](https://github.com/wilsonmar/axum-full-course/tree/main/module-11-testing) | **Testing** | Unit tests, integration tests, oneshot | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=58m57s">58:57</a> |
   | [12-production](https://github.com/wilsonmar/axum-full-course/tree/main/module-12-production) | **Production** | Docker, graceful shutdown, health checks, tracing | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=1h4m2s">1:04:02</a> |


## Configure secure environment Variables:

1. Copy `.env.example` to `.env` and configure:

   ```env
   # Database (Module 08, 09)
   DATABASE_URL=postgres://postgres:postgres@localhost:5432/axum_course
   
   # JWT Authentication (Module 09)
   JWT_SECRET=your-super-secret-key-change-in-production
   
   # Server
   RUST_LOG=info
   HOST=0.0.0.0
   PORT=3000
   ```
1. Make the code read from the user's $HOME folder so there is no chance of secrets being uploaded or being found by scanners.

1. Obtain the JWT_SECRET and API keys to put in the .env file.

1. Download PostgreSQL image, as described by my rustops page.

1. 🐳 Docker Setup

   ```bash
   # Start PostgreSQL for database modules:
   docker-compose up -d postgres
   
   # Build production image:
   docker build -t axum-course .
   
   # Run with Docker Compose (app + postgres)
   docker-compose up
   ```


<a id="Rustlang">

## B. Learn Basic Rust knowledge 

This project makes use of several ways for my custom program to reuse others' Rust code.

a. <a target="_blank" href="https://github.com/wilsonmar/Rust-algorithms">https://github.com/wilsonmar/Rust-algorithms</a> is cloned Side-by-side so that updates to that repo can be synced to update branch like any other forked repo, but also have its functions be available to my custom app.

b. The main.rs file from <a target="_blank" href="https://www.linkedin.com/in/arfan-zubi/">Arfan Zubi</a> references <a target="_blank" href="https://github.com/3rfaan/courses/tree/main/Rust/rust-by-practice/src">these</a> folders holding packages and individual functions:
   <pre>
   mod basic_types;
   mod collection_types;
   mod compound_types;
   mod flow_control;
   mod formatting;
   mod functional_programming;
   mod generics;
   mod lifetime;
   mod method_associated_functions;
   mod ownership_and_borrowing;
   mod pattern_match;
   mod result_panic;
   mod type_conversion;
   mod variables;
   </pre>
   
   * CLI folder, file utilities
   * git & github
   * Tokio async handler tutorial [https://tokio.rs/tokio/tutorial](https://tokio.rs/tokio/tutorial)


<a id="#SetupDBs"></a>

## C. Setup Databases and utility servers

PostgreSQL


<a id="SetupAxum"></a>

## D. Setup Axum web server

   * <a target="_blank" href="https://www.youtube.com/watch?v=CdVO7oDoAGk&pp=ugUEEgJlbg%3D%3D">VIDEO</a>: Rust Axum in 2026: Is it actually better than Go, Python  and Node?
   * https://www.youtube.com/watch?v=FDWKlJmHv6k&pp=ugUEEgJlbg%3D%3D Creating an Axum Web Server in Rust is easy!
   * <a target="_blank" href="https://www.youtube.com/watch?v=cJyl9e2oqHY&t=321s&pp=ugUEEgJlbg%3D%3D">VIDEO</a>: Rust REST API Tutorial: Axum, SQLx, Postgres & Docker" by Francesco Ciulla
   * [Axum Documentation](https://docs.rs/axum)
   * [SQLx Documentation](https://docs.rs/sqlx)
   * [Tower Service](https://docs.rs/tower)
   <br /><br />

I started with <a target="_blank" href="https://github.com/aarambh-darshan/axum-full-course">axum-full-course repo</a> for the <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE">1 hr VIDEO "
Complete Axum 0.8.8 Tutorial: Build Production REST APIs in Rust (2026 Full Course)"</a> within the <a target="_blank" href="https://github.com/aarambh-darshan">"Aarambh Dev Hub" YouTube channel</a> by 
<a target="_blank" href="https://www.linkedin.com/in/darshan-vichhi-rust-developer/">Darshan Vichhi</a> (resident of Surat, Gujarat, India). He also created:
   * <a target="_blank" href="https://www.youtube.com/watch?v=M0wi7V1rP4Y">VIDEO</a>: "Master Rust Backend with Axum: Full-Stack Guide for Auth, PostgreSQL & Email Verification"
   * https://www.youtube.com/watch?v=M0wi7V1rP4Y">Master Rust Backend with Axum: Full-Stack Guide for Auth, PostgreSQL & Email Verification
   * https://app.codecrafters.io/join?via=aarambh-darshan codecrafters rewrite useful projects


   <a id="Libraries"></a>

   ### Cargo.toml libraries

1. <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=3m39s">3:39</a>: 
   Within the Cargo.toml, a <strong>[workspace]</strong> defines the modules that all reference the same Cargo.toml and Cargo.lock.

   resolver = "2"

   REMEMBER: Know what each library does.

   * <a target="_blank" href="https://crates.io/crates/axum/">axum</a>
   ludcky he's what create 
   
   ```
   [dependencies]
   axum = { version = "0.8", features = ["json"] }
   tokio = { version = "1.35.1", features = ["full"] }
   ```
   and others

1. TODO: Add files to be a versioned GitHub repo   
   <pre>
   ├── CONTRIBUTING.md
   ├── .editorconfig
   ├── git-hooks/
   ├── .git/hooks
   ├── .vscode/
   │   ├── extensions.json
   │   ├── settings.json
   ├── .gitconfig
   ├── work/...
   </pre>

1. .vscode/extensions.json contains:
   ```
   {
      "recommendations": [
      "rust-lang.rust-analyzer",
         "tamasfe.even-better-toml"
      ]
   }
   ```    
1. .vscode/settings.json contains:
   ```
   {
   "rust-analyzer.linkedProjects": [
      "examples/hello/Cargo.toml",
      "exercise/b_functions/Cargo.toml",
      "exercise/c_simple_types/Cargo.toml",
      "exercise/d_control_flow_strings/Cargo.toml",
      "exercise/e_ownership_references/Cargo.toml",
      "exercise/f_structs_traits/Cargo.toml",
      "exercise/g_collections_enums/Cargo.toml",
      "exercise/h_closures_threads/Cargo.toml",
      "exercise/z_final_project/Cargo.toml",
      ]
    }
   ```    
1. .editorconfig contains:
   ```bash
   root = true
   indent_style = space
   indent_size = 4
   ```

1. Make it a repo that tracks versions on github
   ???

1. <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=4m20s">4:20</a>: Click to open each module folder to follow along the video:

   | module- folder | Topic | Description | video |
   |----------------|-------|-------------|-------|
   | [01-intro](./module-01-intro) | **Introduction** | Hello World, `axum::serve`, basic handlers | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=4m20s">4:20</a> |
   | [02-routing](./module-02-routing) | **Routing** | Path params `/{id}`, nesting, HTTP methods | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=11m57s">11:57</a> |
   | [03-extractors](./module-03-extractors) | **Extractors** | Path, Query, Json, Headers, custom extractors | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=17m29s">17:29</a> |
   | [04-responses](./module-04-responses) | **Responses** | IntoResponse, Json, Html, status codes | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE"&t=21m57s">21:57</a> |
   | [05-state](./module-05-state) | **State** | Arc, RwLock, shared mutable state | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE"&t=25m19s:>25:19</a> |
   | [06-middleware](./module-06-middleware) | **Middleware** | Tower, CORS, compression, logging_, timing_, auth_middleware | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=28m48s">28:48</a> |
   | [07-errors](./module-07-errors) | **Errors** | Custom error types, thiserror, error handling | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=32m28s">32:28</a> |
   | [08-database](./module-08-database) | **Database** | SQLx, PostgreSQL, CRUD operations | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=35m12s">35:12</a> |
   | [09-auth](./module-09-auth) | **Authentication** | JWT, Argon2 hashing, protected routes | - |
   | [10-advanced](./module-10-advanced) | **Advanced** | WebSocket, SSE upgrqde, file uploads | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE&t=52m56s">52:56</a> |
   | [11-testing](./module-11-testing) | **Testing** | Unit tests, integration tests, oneshot | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE"&t=58m57s">58:57</a> |
   | [12-production](./module-12-production) | **Production** | Docker, graceful shutdown, health checks, tracing | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE"&t=1h4m2s">1:04:02</a> |

   QUESTION: What is the logic for the sequence above?

1. TODO: Make real example code with hard-coded "User-123", "Demo User", John Doe", and "john@example.com" which need to be converted to variables.

1. Explore within each module:
   <pre>
   axum-full-course / module-01-intro /
   ├── src
   │   ├── main.rs
   ├── Cargo.toml                 # Workspace manifest with shared dependencies
   ├── README.md                  # This file
   </pre>

   ```bash
   # Build all modules:
   cargo build --workspace
   
   # Run a specific module:
   cargo run -p module-01-intro
   
   # Run tests:
   cargo test --workspace
   ```
   Since each code module is self-contained and can be run independently.

1. Run each module when ready:

   REMEMBER: Port 3000 is the default port.

   ```bash
   # Module 01: Basic server (no dependencies):
   cargo run -p module-01-intro
   # Visit: http://localhost:3000
   ```
   REMEMBER: Port 3000 is the default port.

   SQLx

   https://www.youtube.com/watch?v=v9fnBhzH5u8&pp=0gcJCU8LAYcqIYzv SQLx by David Choi
   database driver, not ORM

   ```bash
   docker compose up -d --build
   ```
   5432 default port

sqlx % sh dockeDeploy.sh

A basic Axum app in main.rs:
```
use axum::{
    routing::{delete, get, post, put},
    Router,
};
```
   axum Common API methods:
   * GET: Fetch data from the server (e.g., retrieving product listings)
   * POST: Create new resources (e.g., submitting an order)
   * PUT: Update existing resources (e.g., modifying product details)
   * DELETE: Remove resources (e.g., deleting user accounts)

1. Obtain test versions of host names from DNS so several instances (in different stages of development) instead of "localhost" only at one developer's location.

1. Setup PostgreSQL, then:
 
   ```bash
   # Module 08: Requires PostgreSQL:
   cd module-08-database
   docker-compose up -d postgres    # Start PostgreSQL
   cargo run -p module-08-database
   # Visit: http://localhost:3000/users
   
   # Module 10: WebSockets & SSE:
   cargo run -p module-10-advanced
   # WebSocket: ws://localhost:3000/ws
   # SSE: http://localhost:3000/sse
   ```

1. TODO: Create a user-info.csv file of users for a test GUI program to:

   1. emulate how each user is added into the system, with variations among users
   1. Each user would have a unique name, email, employee number, start date, birth date, home address, 
   1. Teams of people with the same job title and same supervisor.

   This can be started very early in the project with just generic data, with app-related fields added when known.

1. Have user emulation programs reference a user-info database (loaded from .csv file) run while monitors collect logs, traces, metrics (resource consumption statistics).

1. Periodically, plan to purposefully make things go wrong to practice "Chaos engineering" fire drills to periodically improve emergency response.


<a id="x402servers"></a>

## D. Setup x402 server

https://www.youtube.com/watch?v=S6wc6yvoZLY
AI agents are paying each other now…
by Fireship

Waste of time:
   * <a target="_blank" href="https://github.com/ethanniser">Ethan Niser</a> <a target="_blank" href="https://www.youtube.com/watch?v=iaIxRxvp9Vk">VIDEO</a>
   * https://www.youtube.com/watch?v=S6wc6yvoZLY&pp=0gcJCU8LAYcqIYzv

  (on EU compute resources such as Herzner)

github.com/x402-rs

### Wallet setup

1. The user on either end of a transaction needs to have a crypto wallet to hold his/her public and private keys.
1. Consider a dedicated email browser profile you only use for crypto. This is so random phishing emails you can just ignore.

1. Install MetaMask as a <strong>internet browser extension</strong> on Chrome, Brave, or Firefox on macOS.

   PROTIP: The browser extension is simpler and integrates better with dApps.

   1. Open your browser and go to: https://metamask.io
   1. Click Get MetaMask in the top menu.
   1. Choose your browser.
   1. Click the icon for your browser (Chrome / Brave / Firefox). You’ll be redirected to the official extension store page.
   1. Install the extension
   1. Click Add to Chrome (or “Add to Firefox” / “Add to Brave”).
   1. Confirm by clicking Add extension in the popup.
   1. The extension installs and a MetaMask icon appears in your toolbar.
   1. Pin it (optional but useful)
   1. Click the puzzle/extension icon in the toolbar, find MetaMask, and pin it so it’s always visible.

   Option B: macOS Desktop App (less common)
   1. MetaMask also offers a macOS app via the Apple App Store, but the extension is more widely used and supported.
   1. Open App Store on macOS.
   1. Search for MetaMask.
   1. Click Get / Download, then open the app.
   1. Follow the prompts to create or import a wallet.

2. Configure Your MetaMask Wallet
   1. Click the MetaMask icon in your browser toolbar.
   1. Click Get Started → Create a Wallet.
   1. Decide whether to help MetaMask improve the product (“I Agree” or “No Thanks”) — this doesn’t affect functionality.
   1. Set a strong password (≥8 characters) for locking the extension on this browser.
   1. This password only protects local access; it does not replace your Secret Recovery Phrase.
   1. Confirm Terms of Use and click Create.

3. Secure your wallet with the Secret Recovery Phrase (SRP)

   This is the most critical step.

   1. Click Secure My Wallet (do not skip this).
   1. Click Click here to reveal secret words.
   1. MetaMask shows 12 words in order. Write them down:
   1. On paper, stored offline. In a secure, physical location (e.g., safe). Do not store them in iCloud, emails, notes apps, or screenshots.
   1. Click Next, then re‑enter the words in the correct order.
   1. Click Confirm, then All Done.

   If you ever lose access to this browser or reinstall, you’ll use this SRP to restore your wallet.

4. Use MetaMask with a hardware wallet (e.g., Ledger) via the extension.

5. x402 asks for Block or Solana.  MetaMask defaults to Ethereum Mainnet. You can add other networks manually.

   Add Custom Networks (e.g., Polygon, Solana EVM, etc.).:
   1. Lookup the RPC, Chain ID, and explorer for the EVM chain you want (Avalanche, Arbitrum, Optimism, etc.). 
   1. Example: Add Polygon (as shown in one guide):
   1. Open MetaMask.
   1. Click the network dropdown at the top (e.g., “Ethereum Mainnet”).
   1. Click Add Network → Add Network again.
   1. Fill in: Network Name: Polygon
   1. New RPC URL: https://polygon-rpc.com (or official RPC)
   1. Chain ID: 137
   1. Currency Symbol: MATIC

   1. Block Explorer URL: https://polygonscan.com
   1. Click Save. You can now switch to Polygon and see MATIC balances and compatible tokens/NFTs.

6. Coinbase


### X402 Facilitator

/verify
/settle

<a id="TestSystem"></a>

## E. Test whole system making calls

1. Testing

    ```bash
    # Run all tests
    cargo test --workspace
    
    # Run specific module tests
    cargo test -p module-11-testing
    
    # Run with output
    cargo test --workspace -- --nocapture
    
    # Run tests matching a name
    cargo test health_check
    ```

7. Test x402 as buyer (get money) on testnet.
8. Test x402 as seller (receive money) on testnet.

8. Fund your crypto wallet.


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
