---
layout: post
date: "2026-07-08"
lastchange: "v001 axum @x402-rust.md"
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

My dream is to have someone's mobile photo app scan my QR code (at right) and I instantly receive <strong>x402money</strong>. But without plus 3% transaction fee and monthly subscription on my credit card.

I've been searching for <strong>sample code</strong> and step-by-step to make that happen, such that wee mortals can just change secrets and it works. We can they study the inner workings.

But so far I've only seen deep dive tutorials that tell me to first learn <strong>Axum web servers</strong> and API calls from the ground up. It's like I ask to rent an apartmentment and I'm told "first learn how to find ingredients for concrete". 

So here's what I've learned so far. I'm not bitter to learn from the ground up because I wanted to the Rust programming language well anyway. And I wanted to learn to use EU compute resources such as Herzner.


<hr />

<a href="#SetupDevEnv">A. Setup dev enviornment on my Mac</a>

<a href="#Rustlang">B. Learn Basic Rust knowledge (ownership, traits, async/await)</a>

<a href="#SetupAxum">C. Setup Axum web server</a>

<a href="#x402servers">D. Setup x402 servers</a> (on EU compute resources such as Herzner)

<a href="#TestSystem">E. Test whole system making calls

<a href="#ProdPrep">F. Prepare for Production

<hr />

<a id="SetupDevEnv"></a>

## A. Setup dev enviornment on my Mac

   * XCode (for its build utilities)
   * Homebrew package manager
   * Make a folder to receive GitHub.
   * Install Rust 1.78+ installed (Install Rust)
   * Docker for database modules
   * PostgreSQL for Modules 08-09
   * SQLx ORM

To setup secure environment Variables:

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

1. 🐳 Docker Setup

   ```bash
   # Start PostgreSQL for database modules
   docker-compose up -d postgres
   
   # Build production image
   docker build -t axum-course .
   
   # Run with Docker Compose (app + postgres)
   docker-compose up
   ```
   
<a id="Rustlang">

## B. Learn Basic Rust knowledge 

   * Tokio Tutorial [https://tokio.rs/tokio/tutorial](https://tokio.rs/tokio/tutorial)


<a id="SetupAxum"></a>

## C. Setup Axum web server

   * [Axum Documentation](https://docs.rs/axum)
   * [SQLx Documentation](https://docs.rs/sqlx)
   * [Tower Service](https://docs.rs/tower)
   <br /><br />

I started with <a target="_blank" href="https://github.com/aarambh-darshan/axum-full-course">axum-full-course repo</a> for the <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE">VIDEO "
Complete Axum 0.8.8 Tutorial: Build Production REST APIs in Rust (2026 Full Course)"</a> within the <a target="_blank" href="https://github.com/aarambh-darshan">"Aarambh Dev Hub" YouTube channel</a> by 
<a target="_blank" href="https://www.linkedin.com/in/darshan-vichhi-rust-developer/">Darshan Vichhi</a>. He also created:
   * https://www.youtube.com/watch?v=M0wi7V1rP4Y">Master Rust Backend with Axum: Full-Stack Guide for Auth, PostgreSQL & Email Verification
   * https://app.codecrafters.io/join?via=aarambh-darshan codecrafters rewrite useful projects

1. Create a folder:

1. Download:

   ```bash
   # Clone the repository:
   git clone https://github.com/aarambh-darshan/axum-full-course.git
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
1. View folders and files downloaded:
   https://github.com/wilsonmar/axum-full-course/tree/main
   <pre>
   axum-full-course/
   │ module-nn-xxx (see table below) 
   ├── .env.example               # Environment variables template
   ├── .gitignore
   ├── Cargo.toml                 # Workspace manifest with shared dependencies
   ├── Dockerfile                 # Production Docker image
   ├── LICENSE
   ├── README.md                  # This file
   ├── docker-compose.yml         # Local development stack
   </pre>

1. Add files to be a versioned GitHub repo   
   <pre>
   ├── CONTRIBUTING.md
   ├── .gitconfig
   ├── .git/
   ├── work/...
   </pre>

1. Make it a repo that versions.
   ???
1. Know
   | module- folder | Topic | Description | video |
   |--------|-------|-------------|------|
   | [01-intro](./module-01-intro) | **Introduction** | Hello World, `axum::serve`, basic handlers | <a target="_blank" href="https://www.youtube.com/watch?v=Ka7mRKsTCyE">0:00</a> |
   | [02-routing](./module-02-routing) | **Routing** | Path params `/{id}`, nesting, HTTP methods |
   | [03-extractors](./module-03-extractors) | **Extractors** | Path, Query, Json, Headers, custom extractors |
   | [04-responses](./module-04-responses) | **Responses** | IntoResponse, Json, Html, status codes |
   | [05-state](./module-05-state) | **State** | Arc, RwLock, shared mutable state |
   | [06-middleware](./module-06-middleware) | **Middleware** | Tower, CORS, compression, custom middleware |
   | [07-errors](./module-07-errors) | **Errors** | Custom error types, thiserror, error handling |
   | [08-database](./module-08-database) | **Database** | SQLx, PostgreSQL, CRUD operations |
   | [09-auth](./module-09-auth) | **Authentication** | JWT, Argon2 hashing, protected routes |
   | [10-advanced](./module-10-advanced) | **Advanced** | WebSocket, SSE, file uploads |
   | [11-testing](./module-11-testing) | **Testing** | Unit tests, integration tests, oneshot |
   | [12-production](./module-12-production) | **Production** | Docker, graceful shutdown, tracing |

   QUESTION: What is the logic for the sequence above?

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

1. REMEMBER: Each module is self-contained and can be run independently:

   ```bash
   # Module 01: Basic server (no dependencies)
   cargo run -p module-01-intro
   # Visit: http://localhost:3000
   
   # Module 08: Requires PostgreSQL:
   cd module-08-database
   docker-compose up -d postgres    # Start PostgreSQL
   cargo run -p module-08-database
   # Visit: http://localhost:3000/users
   
   # Module 10: WebSockets & SSE:
   cargo run -p module-10-advanced
   # WebSocket: ws://localhost:3000/ws
   # SSE: http://localhost:3000/sse
      
   
<a id="x402servers"></a>

## D. Setup x402 servers

 (on EU compute resources such as Herzner)



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

<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
