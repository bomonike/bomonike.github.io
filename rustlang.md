---
layout: post
date: "2026-05-23"
lastchange: "26-05-23 v020 Deza classes @rustlang.md"
url: https://bomonike/rustlang
file: "rustlang"
title: "Rustlang (Rust language)"
excerpt: "Efficient, secure, performant concurrent systems programming that compiles to machine running byte-code"
tags: [Rust, Python, Machine Learning]
image:
# rustlang-1900x500.png
  feature: https://user-images.githubusercontent.com/300046/136715984-3033af38-810d-4b29-a555-aac392b374ac.png
  credit: RustLang.org
  creditlink: https://www.rust-lang.org/
comments: true
created: "2021-10-03"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

<a target="_blank" href="https://www.rust-lang.org/">rust-lang.org</a> is the home page for the language. 

{% include whatever.html %}

According to [1]<a target="_blank" href="https://www.wikiwand.com/en/Rust_(programming_language)">Wikipedia</a>, the Rust language begun in 2006 as a personal project by <a target="_blank" href="https://usesthis.com/interviews/graydon.hoare/">Graydon Hoare</a> while a Mozilla employee, before he went to Apple.
Rust is open-sourced (MIT license) since July 7, 2010.
Rust 1.0 was released on May 15, 2015.

Rust maintainers have a <a target="_blank" href="https://github.com/rust-lang/rfcs/blob/master/text/0507-release-channels.md">6-week rapid release process</a> even though they support a large number of platforms.

In August 2020, Mozilla laid off most of the Rust team (along with completely disbanding the Servo parallel browser team). 
The event raised concerns about the future of Rust.
So in Feburary 2021, the "Rust Foundation" was formed with (AWS, Huawei, Google, Microsoft, and Mozilla) all who use Rust as a <strong>systems programming</strong> language:
   * TensorFlow and ONNX libraries use Rust's FFI to wrap underlying C implementations.
   * Linkerd creator Oliver Gould, says <a target="_blank" href="https://www.youtube.com/watch?v=BWL4889RKhU" title="May 14, 2021">the Future of the Cloud will be Built on Rust</a> CNCF 
   * Amazon Web Services (AWS) has used Rust since 2017 for its serverless computing offerings, AWS Lambda and AWS Fargate. With that, Rust has gained further inroads. The company has written the Bottlerocket OS and the AWS Nitro System to deliver its Elastic Compute Cloud (EC2) service.<a href="#[3]">[3]</a> See “How our AWS Rust team will contribute to Rust’s future successes,” http://mng.bz/BR4J 
   * Google, on April 6, 2021, announced support for Rust within Android Open Source Project as an alternative to C/C++. Google develops parts of Android, such as its Bluetooth module, with Rust. Rust is also used for the crosvm component of Chrome OS and plays an important role in Google’s new operating system, Fuchsia. http://mng.bz/ryOX
   * Microsoft writes components of its Azure platform, including a security daemon for its Internet of Things (IoT) service, in Rust. See https://github.com/Azure/iotedge/tree/master/edgelet.
   * Facebook uses Rust to power Facebook’s web, mobile, and API services, as well as parts of HHVM, the HipHop virtual machine used by the Hack programming language. See “HHVM 4.20.0 and 4.20.1,” https://hhvm.com/blog/2019/08/27/hhvm-4.20.0.html.
   <br /><br />

Rust uses <a target="_blank" href="https://llvm.org/">LLVM</a> to generate a language compiler/debugger, so performance improvements in LLVM would also benefit Rust.


## Why Rust?

> "Rust isn't difficult. It's unfamiliar."

Rust was rated the "most loved" among all programming languages in the <a target="_blank" href="https://web.archive.org/web/20201008033536/https://insights.stackoverflow.com/survey/2019/?utm_source=social-share&utm_medium=social&utm_campaign=dev-survey-2019#most-loved-dreaded-and-wanted">2020 StackOverflow survey of developers</a> (ahead of Python, TypeScript, Kotlin, etc.).

> "In other languages simple things are easy and complex things are possible, in Rust simple things are possible and complex things are easy."

Rust was <a target="_blank" href="https://www.tiobe.com/tiobe-index/">#26 on the TIOBE index of programming languages</a>, based on "the number of skilled engineers world-wide, courses and third party vendors. Popular search engines such as Google, Bing, Yahoo!, Wikipedia, Amazon, YouTube and Baidu were used to calculate the ratings.".

Like C, C++:
   * Rust does not use a <strong>garbage collector</strong> because objects in Rust are discarded when the last "owner" goes out of scope.

Like C, C++, Java:
   * Rust uses <tt>//</tt> for comments and ignored code between <tt>/*</tt> and <tt>*/</tt>
   * Rust uses <tt>//!</tt> to precede comments about the program file.
   * In practice <tt>///</tt> are comments that apply to a particular line below the comment.
   * Rust uses semicolons to end each sentence.
   <br /><br />

Unlike other languages:
   * which can have several variables point to the same memory, which can cause parallel and concurrency issues, Rust has a <strong>clone</strong> method.
   * "&" in front of a variable designates "borrowing"
   * Rust provides <tt>assert</tt> and <tt>cargo test</tt> commands for <tt>#[test]</tt> or <tt>#[should_panic]</tt>
   * <tt>rustdoc</tt> command generates HTML documentation (like JavaDoc) without installing additional tools
   <br /><br />

Rust is used to write performance intensive, highly-concurrent code, with predictable tail latencies.
   * Variables are immutable (can't be changed) unless marked as "mut" (mutable).
   * The lifetime of several variables that exist together are marked with: <tt>&'z Person</tt> and <tt>Person&LT;'z></tt>
   <br /><br />

Thus, Rust can power performance-critical services, run on embedded devices, and easily integrate with other languages.
"Rust enables low-level control without giving up high-level conveniences."

Unlike Python & Go:
   * Rust compiler issues errors when garbage situations are detexted.
   * Rust eliminates memory issues (null and dangling pointers, data races, etc.). Thus:
   * Parallel processing is a breeze with Rust <a target="_blank" href="https://www.youtube.com/watch?v=1QoT9fmPYr8">Lifetimes references</a>
   * Rust’s rich type system and ownership model guarantees memory-safety and thread-safety — enabling you to eliminate many classes of bugs at compile-time.
   * Rust has <strong>no runtime</strong> Rust does not use an intrepreter.
   <br /><br />

Like C:
   * Developers manage memory in code.
   <br /><br />
   
Like Go:
   * Rust compiles to machine running byte-code rather than a level of abstraction of a virtual machine.
   <br /><br />

Like shell scripts:
   * Rust enables creation of CLI tools. See the <a target="_blank" href="https://crates.io/categories/command-line-utilities">gallary of CLIs built using Rust</a>
   <br /><br />

Like Python:
   * Rust can infer a data type by the value assigned.
   <br /><br />

Unlike Python, JavaScript:
   * Rust has an integrated package manager and build tool: Cargo.
   * Rust has smart multi-editor support with auto-completion and type inspections, and an auto-formatter.
   * Rust does not have <tt>--</tt> and <tt>++</tt> operators.
   * Rust raises “non-exhaustive patterns” compiler errors if match and if logic do not consider all possible values.
   <br /><br />

Rust catches concurrency programming mistakes.

Stack overflow vulnerabilities not possible?

Videos comparing languages:
   * <a target="_blank" href="https://www.youtube.com/watch?v=E-47VLwMY_U" title="Apr 29, 2021">Rust vs Go: Which is best? THE Definitive Answer</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=FKMrpaFjQm4">Rust Vs Go Panel - Miriah Peterson, Michael Snoyman, Jonathan Turner, Steve Francia
RustLab Conference</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=ZJ6dVVobjaI">Rust vs Go - Which is Better and Why?</a> by Federico Terzi
   * <a target="_blank" href="https://www.youtube.com/watch?v=s2Xk3dMTHg8">Virtual Lunch & Learn: Why you want to choose Rust for your next web service!</a> by CodeControl


## Social ecosystem

Rust developers are called "Rustlings" or "Rustaceans".

r/rust

<a target="_blank" href="https://twitter.com/search?q=%23rustlang&src=typed_query">#RustLang on Twitter</a>.

Rust is named after the <a target="_blank" href="https://www.wikiwand.com/en/Rust_(fungus)">rust family of parasitic fungi causing plant diseases with its brown spores</a>.

Rust Belt Rust: conference held in the "Rust Belt" of the U.S.

RustFest: Europe's @rustlang conference

<a target="_blank" href="https://www.youtube.com/watch?v=DnYQKWs_7EA&list=RDCMUCaYhcUwRBNscFNUKTjgPFiA&start_radio=1&rv=DnYQKWs_7EA">VIDEO: RustConf2021 YouTube mix</a>

RustCon Asia

Rust LATAM

Oxidize Global

## Learning Sequence

The core Rust team nor the Rust Foundation currently provide an official, globally recognized certification for Rust developers.
But The Linux Foundation's "Programming in Rust (LFD480)" is an instructor-led training and certification "money grab".

The sequence of concepts: https://github.com/0atman/noboilerplate

   * Multipl string types
   * <a target="_blank" href="https://www.youtube.com/watch?v=K-KK_UGuXFI" title="Oct 8, 2019 Doug Milford">Rust println! and format! macros</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=N28mGv1L8EM" title="Oct 8, 2019 Doug Milford">Rust Enumerations</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=1nCZOh83ins" title="Oct 8, 2019 Doug Milford">Rust Primatives (basic data)</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=ClPrjjHmo2Y" title="Oct 8, 2019 Doug Milford">Rust strings vs str slices</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Vz9_y7NjRlQ" title="Oct 8, 2019 Doug Milford">Rust Conditionals</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=LJ_tHdhkkng" title="Oct 8, 2019 Doug Milford">Rust Casting, Shadowing, Consts and Static</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=hEhnDRR4Ijs" title="Oct 8, 2019 Doug Milford">Rust Functions and Procedures</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=afFehipXJFA" title="Oct 8, 2019 Doug Milford">Rust Tuples</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=gi0AQ78diSA" title="Oct 8, 2019 Doug Milford">Rust Structs, Traits, and Impl</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=nvur2Ast8hE" title="Nov 17, 2019 Doug Milford">Rust Generics</a>

   * <a target="_blank" href="https://www.youtube.com/watch?v=lQ7XF-6HYGc" title="Nov 17, 2019 Doug Milford">Rust Ownership and Borrowing</a> shows coding for stack and heap (which houses collections that needs to grow)
   * <a target="_blank" href="https://www.youtube.com/watch?v=1QoT9fmPYr8" title="Apr 12, 2020 Doug Milford 25:51">Rust lifetimes</a> of references to memory erased at end of } scopes. Lifetimes are defined by an apostrophe prefix.
   <br /><br />  

https://github.com/PacktPublishing/Speed-up-your-Python-with-Rust

https://github.com/PyO3/maturin

https://github.com/Indosaram/rust-python-book

## Sample Rust Code

### Leetcode

https://github.com/AnasImloul/Leetcode-Solutions
A repository with over 7000 solutions to more than 1800 Leetcode problems written in C++, Python, Java, Javascript, Rust & Golang. by <a target="_blank" href="https://www.linkedin.com/in/anas-imloul/">Anas Imloul</a>
   * Algorithms
   * Database
   * Shell
   * Concurrency
   <br /><br />


### Logging

https://github.com/muhammad-fiaz/logly
a Rust-powered, Loguru-like logging library for Python that combines the familiarity of Python’s standard logging API with high-…

### AI Face Recognition

https://github.com/rustybuilder/rust-faces
Face Detection in Rust with Python Bindings


## What to use

<a target="_blank" href="https://www.youtube.com/watch?v=yW_U1Tz8qac&pp=0gcJCQYLAYcqIYzv">
Top 4 Rust career paths (and which one you should choose)</a>





<a name="Install"></a>

## Install locally

1. To see what version of the Rust compiler on your machine:

   <pre><strong>rustc --version</strong></pre>

   At time of writing:

   <tt>rustc 1.25.0 (84203cac6 2018-03-25)</tt>
   
   https://www.rust-lang.org/tools/install
   
1. THe latest version is available in Homebrew on MacOS:

   <pre><strong>brew info rust</strong></pre>

   <pre>rust: stable 1.55.0 (bottled), HEAD
   ==> Analytics 2018-03-25
   install: 32,304 (30 days), 87,338 (90 days), 284,700 (365 days)
   install-on-request: 18,508 (30 days), 46,834 (90 days), 155,109 (365 days)
   build-error: 0 (30 days)
   </pre>

1. To install or upgrade using Homebrew on MacOS:

   <pre><strong>brew install rust</strong></pre>

   <pre>==> Downloading https://ghcr.io/v2/homebrew/core/libssh2/manifests/1.10.0
==> Downloading https://ghcr.io/v2/homebrew/core/libssh2/blobs/sha256:70c0928f2c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sh
==> Downloading https://ghcr.io/v2/homebrew/core/rust/manifests/1.55.0
==> Downloading https://ghcr.io/v2/homebrew/core/rust/blobs/sha256:4486ea172caf9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sh
==> Installing dependencies for rust: libssh2
==> Installing rust dependency: libssh2
==> Pouring libssh2--1.10.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libssh2/1.10.0: 184 files, 970.1KB
==> Installing rust
==> Pouring rust--1.55.0.mojave.bottle.tar.gz
==> Caveats
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> Summary
🍺  /usr/local/Cellar/rust/1.55.0: 30,682 files, 742.4MB
==> Caveats
==> rust
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
   </pre>

   ### Uninstall

   <ul>
   <tt><strong>brew uninstall rust</strong></tt>
   </ul>

   Alternately, if you used rustup to install:

   <ul>
   <tt><strong>rustup self uninstall</strong></tt>
   </ul>

   ### VSCode & Rust Analyzer

   There is Rust Rover and Freemium Fleet from JetBrains. 
   <a target="_blank" href="https://www.youtube.com/watch?v=sZaAP4AS0hc">VIDEO</a> 
   VSCode extensions to get comparable features:

   * rust-analyzer
   * CodeLLDB
   * Even Better TOML
   * Crates
   <br /><br />

   
   <a name="IDE"></a>

   <a target="_blank" href="https://www.linkedin.com/in/doug-milford-065a292/">Doug Milford</a> 
   (lambdavalley.com) uses Visual Studio Code (VSCode) IDE on YouTube:

   * <a target="_blank" href="https://www.youtube.com/watch?v=Az3jBd4xdF4" title="Oct 8, 2019 Doug Milford">Rust intro trailer</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=f6tizikEMTk" title="Oct 8, 2019 Doug Milford">Rust setup for Windows</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=DWcIZFGiKr0" title="Oct 8, 2019 Doug Milford">Rust Hello World</a> and Cargo.toml (without using cargo)
   * <a target="_blank" href="https://www.youtube.com/watch?v=2KTG3OQPPJ4" title="Oct 8, 2019 Doug Milford">Why Rust</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=sE2cDV91IRg" title="Oct 8, 2019 Doug Milford">Rust Cargo.toml</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=5F6pHtkWMxg" title="Oct 8, 2019 Doug Milford">Rust lib vs main</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=SoK2TT1JJGo" title="Oct 8, 2019 Doug Milford">Rust Cargo and Rustup commands</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=K-KK_UGuXFI" title="Oct 8, 2019 Doug Milford">Rust println! and format! macros</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=N28mGv1L8EM" title="Oct 8, 2019 Doug Milford">Rust Enumerations</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=1nCZOh83ins" title="Oct 8, 2019 Doug Milford">Rust Primatives (basic data)</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=ClPrjjHmo2Y" title="Oct 8, 2019 Doug Milford">Rust strings vs str slices</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=Vz9_y7NjRlQ" title="Oct 8, 2019 Doug Milford">Rust Conditional Statements</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=LJ_tHdhkkng" title="Oct 8, 2019 Doug Milford">Rust Casting, Shadowing, Consts and Static</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=hEhnDRR4Ijs" title="Oct 8, 2019 Doug Milford">Rust Functions and Procedures</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=afFehipXJFA" title="Oct 8, 2019 Doug Milford">Rust Tuples</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=gi0AQ78diSA" title="Oct 8, 2019 Doug Milford">Rust Rust Structs, Traits and Impl</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=lQ7XF-6HYGc" title="Nov 17, 2019 Doug Milford">Rust Ownership and Borrowing</a> shows coding for stack and heap (which houses collections which needs to grow)
   * <a target="_blank" href="https://www.youtube.com/watch?v=nvur2Ast8hE" title="Nov 17, 2019 Doug Milford">Rust Generics</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=1QoT9fmPYr8" title="Apr 12, 2020">Rust lifetimes</a>
   <br /><br />

VisualRust IDE?



## Cargo Package Manager of Crates

   In the Rust development environment, all tools are installed to the directory<br />
   <tt>~/.cargo/bin</tt> 
   That's where the Rust toolchain is installed, including rustc, cargo, and rustup.

1. Install <a target="_blank" href="https://crates.io/">https://crates.io</a> is the Rust language's library registry (like npm and pypi). On Linux and macOS systems:

   <pre><strong>curl https://sh.rustup.rs -sSf | sh</strong></pre>

   Response:

   <pre>...
      warning: rustup should not be installed alongside Rust. Please uninstall your existing Rust first.
   </pre>

1. Notice the most downloaded libraries are rand, syn.

1. Build

   <pre><strong>cargo build</strong></pre>

1. Toolchain management with rustup (at <a target="_blank" href="https://github.com/rust-lang/rustup.rs">https://github.com/rust-lang/rustup.rs</a>)
   rustup manages builds in a consistent way on every platform that Rust supports, enabling installation of Rust from the beta and nightly release channels as well as support for additional cross-compilation targets.

   <pre>[dependencies]
   rand = "^0"
   </pre>

   * <tt>^0</tt> specifies upgrade automatically up to, but not including "1.0.0".
   * <tt>~.0.7.1</tt> with a tilde specifies minimal upgrade automatically up to, but not including "0.8".
   <br /><br />

## Wrk framework

<a target="_blank" href="https://www.youtube.com/watch?v=TuXyGkf8MEo">VIDEO</a>:

40x speed of FastAPI in Python running concurrently.

onnx model format

<a target="_blank" href="https://www.youtube.com/watch?v=wXtngLBkK4Q">VIDEO</a>: Async Rust explained in 20 minutes

## My GitHub

1. Obtain the folder:

   <pre><strong>git clone https://github.com/wilsonmar/rustlang-samples --depth 1
   cd rustlang-samples
   </strong></pre>

   <a name="gitignore"></a>

   ### .gitignore for Rust

1. View the <strong>.gitignore</strong> file in my by GitHub:

   <pre># will have compiled files and executables
/target/
target/
&nbsp;
# Remove Cargo.lock from gitignore if creating an executable, leave it for libraries
# More information here https://doc.rust-lang.org/cargo/guide/cargo-toml-vs-cargo-lock.html
Cargo.lock
&nbsp;
# Backup files generated by rustfmt:
**/*.rs.bk
&nbsp;
.obsidian
.trash
   </pre>

   PROTIP: The <tt>target</tt> folder is where compiled assets are stored.

   The <tt>Cargo.lock</tt> file?

<hr />



### Hello World

1. Generate files for a Rust program:

   <pre>cargo new hello
   </pre>

   This creates a <tt>hello</tt> folder which contains a <tt>hello.rs</tt> file containing:

   <pre>fn main() {
    println!("Hello, World!");
}
   </pre>

   REMEMBER: ".rs" is the file extension for Rust program source files.

1. View file "Cargo.taml" (where toml stands for "Tom's obvious minimal language"):

   <pre>[package]
hame="hello"
version="0.0.1"
authors=["John Doe <john.doe@gmail.com>]
edition="2018"
   </pre>

   REMEMBER:
   <tt>edition</tt> refers to the year of the Rust compiler to be used. 2018 is the lastest one as of this writing. (This should really be "Vintage").

   ### Compile

   There are two ways of building a Rust program. One is cargo referencing a .taml file, and another is using the rustc command:

   <pre>rustc hello.rs
   </pre>

   On MacOS & Linux, compilation creates a "hello" file (with no file extension).

   On Windows, compilarion creates a "hello.exe" file.

1. Move the executable to the target folder where it will execute.

   rustc --explain E0308


   ### Run executable

   <pre>./hello
   </pre>

   The response is "Hello, World!".

   Alternately, run by

   <pre><strong>cargo run</strong></pre>

   ### Keyboard alias

   So that I can compile and run with a single command:

   <pre>cr hello</pre>
   
   I put this code to create a keyboard alias in my ~/.bash_profile:

   <pre>alias cr="cargo run"
   </pre>

   ## Explain Compile Errors

   <pre>rustc --explain E0308</pre>

   
The most thorough

https://github.com/TheAlgorithms/Rust


### Benchmarking with crate Criterion

Criterion crate has a separate directory and thus separate files from tests.

To benchmark non-public methods, use feature flags and wrappers.

### Tokio for concurrent runtime

   * <a target="_blank" href="https://www.youtube.com/watch?v=guuGCsNAiZg">VIDEO: Rust - Live coding implementation of non-blocking async agents on top of Tokio"</a> by Boy Maas 
   * <a target="_blank" href="https://www.youtube.com/watch?v=4DqP57BHaXI" title="May 20, 2021">VIDEO: Creating a Chat Server with async Rust and Tokio</a> by Lily Mara, author of "Refactoring to Rust" from Manning Publications
   <br /><br />

<a target="_blank" href="https://github.com/tokio-rs/tokio">github.com/tokio-rs/tokio</a> for concurrent runtime.

### musl for cross-compilation

### Log4r for Logging


<hr />

## Language features

### Strings

   * <a target="_blank" href="https://www.youtube.com/watch?v=ClPrjjHmo2Y" title="Oct 8, 2019">Rust strings vs str slices</a>
   <br /><br />

A string can be define two ways: &str or String:

   <pre>fn mail() {
    let example_str: &stsr = "Howdy";  // immutable
    let example_string: String = String::from("Partner");
   }
   </pre>

 “characters (u8s)” gives the impression that individual characters themselves are 8-bit, when inside a string, they can be 8-bit, 16-bit, 24-bit, or 32-bit depending on the character. The "u8s" specifies bytes of memory encoding the string, not individual characters.

## Borrow Checker

<a target="_blank" href="https://www.youtube.com/watch?v=wXoY91w4Agk">VIDEO: Niko Matsakis - Rust: Putting Ownership to Use</a> by Curry On!

This keeps developers from spending hours or days hunting down data race conditions.

But this can be a daunting challenge to many new to Rustlang.

### Closures

<a target="_blank" href="https://www.youtube.com/watch?v=ZkSI2sptSko">VIDEO: Closures - Rust</a> by danlogs

A closure gives an inner function access to an outer function’s scope, even after the outer function has returned.

A closure is a function bundled together (enclosed) with references to its surrounding state (the lexical environment). 

In JavaScript, closures are created every time a function is created, at function creation time.

To use a closure, define a function inside another function and expose it. To expose a function, return it or pass it to another function.


### Generics

   * <a target="_blank" href="https://www.youtube.com/watch?v=nvur2Ast8hE" title="Nov 17, 2019">Rust Generics</a>
   <br /><br />



## Traits for inheritance

Traits were added in Rust 0.4 as a means to provide inheritance; 

interfaces were unified with traits and removed as a separate feature.

For interfacing with C, Rust has a foreign function interface (FFI) that can be called from, e.g., C language, and can call C. While calling C++ has historically been problematic (from any language), Rust has a library, CXX, to allow calling to or from C++, and "CXX has zero or negligible overhead."

The type system supports a mechanism similar to type classes, called traits, inspired by the Haskell language. This facility is for ad hoc polymorphism, achieved by adding constraints to type variable declarations.

Rust Result and Option types ...


## Option types

"Once you've used them, any language with null starts to feel like a loaded gun pointed at your foot."

### Browser javascript GUI

<a target="_blank" href="https://www.youtube.com/watch?v=ohuTy8MmbLc">VIDEO: Rust in the Browser for JavaScripters: New Frontiers, New Possibilities</a> by Coding Tech


## GraphQL API

https://www.youtube.com/watch?v=QXJ0wKBLt-8
Rust and GraphQL: A match made in heaven

## Speed with database 

<a target="_blank" href="https://www.youtube.com/watch?v=s19G6n0UjsM">
Rust at speed — building a fast concurrent database</a> by Jon Gjengset


<hr />


## Video tutorials

Let's Get Rusty:

   * https://www.youtube.com/watch?v=m76sRj2VgGo">The Box Smart Pointer in Rust</a>
   <br /><br />

<a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/">VIDEO: Packt: "Ultimate Rust Crash Course" Oct. 2020</a> by Nathan Stocks.

<a target="_blank" href="https://www.youtube.com/watch?v=zF34dRivLOw">VIDEO "Rust Crash Course | Rustlang"</a> by Traversy Media

<a target="_blank" href="https://www.udemy.com/course/rust-lang/">8.5 hour video course
"The Rust Programming Language"</a>
by <a target="_blank" href="https://www.linkedin.com/in/dmitri-nesteruk-87b069aa/">Dmitri Nesteruk ("semi-retired" Quant in the UK</a>)
shows use of IntelliJ IDEA.


<hr />

## Tutorials


### Rust with AWS & AI

By the distinguished <a target="_blank" href="https://www.linkedin.com/in/noahgift/">Noah Gift</a> (US expat in Valencia, Spain), Liam Parker, <a target="_blank" href="https://www.linkedin.com/in/alfredodeza/">Alfredo Deza</a> at Pragmatic AI Labs: <a target="_blank" href="https://github.com/paiml">https://github.com/paiml</a>

If you have an OReilly subscription:

A. <a target="_blank" href="https://learning.oreilly.com/videos/-/08132023VIDEOPAIML/">1h Using Rust with Python Nov 23</a> 
B. <a target="_blank" href="https://learning.oreilly.com/videos/-/09142023VIDEOPAIML/">5h Rust for Pythonistas</a> Nov 23
B. <a target="_blank" href="https://learning.oreilly.com/videos/-/08252023VIDEOPAIML/">3h Rust LLMOps</a>

D. <a target="_blank" href="https://builder.aws.com/content/3CcA8u1UUlFqDRXOAovCe7wavz6/learn-aws-ai-and-cloud-with-me-40-courses-across-bedrock-sagemaker-lambda-and-mlops">AWS Builder Center</a>: With a Coursera subscription (~$400/year), earn a career certificate you can add to your LinkedIn profile, resume, or CV. Share it on social media and in your performance review.
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

Databricks

X. <a target="_blank" href="https://ds500.paiml.com/bootcamps/rust/">Rust Fundamentals Bootcamp</a> in 6 hours over 5 weeks for $20/month.



<br /><br />


<a name="[1]"></a> 
BOOK: <a target="_blank" href="https://www.rust-lang.org/learn">"The Rust Programming Language" at rust-lang.org/learn</a> with code at https://github.com/rust-lang/rustlings/

https://doc.rust-lang.org/rust-by-example/index.html

<a name="[2]"></a> 
[2] "The Rustonomicon"

<a name="[3]"></a> 
[3] BOOK: <a target="_blank" href="https://www.manning.com/books/rust-in-action">Manning: "Rust in Action" Aug. 2021</a> [<a target="_blank" href="https://learning.oreilly.com/library/view/rust-in-action/9781617294556/">at OReilly.com</a>] by Tim McNamara, with <a target="_blank" href="https://github.com/rust-in-action/code">https://github.com/rust-in-action/code</a>

At the <a target="_blank" href="https://www.youtube.com/channel/UCaYhcUwRBNscFNUKTjgPFiA">
Rust YouTube channel</a> are recordings of meetings.

Bastian Gruber, author of
<a target="_blank" href="https://www.youtube.com/watch?v=QoatPlzc0-Y">VIDEO</a>:
manning.com/books/rust-web-development
and
<a target="_blank" href="https://rustwebdevelopment.com/">https://rustwebdevelopment.com</a>
covers Logging, Error Handling, Vec, HashMap, String, Traits, 
https://git.sr.ht/~gruberb/onetutorial

<a target="_blank" href="https://www.youtube.com/watch?v=cuvp-e4ztC0">
"Rust, Wright's Law, and the Future of Low-Latency Systems"</a> at ScyllaDB's P99 Conf.
by Bryan Cantrill

https://www.youtube.com/watch?v=Uqi9xwlFbEc

<a target="_blank" href="https://www.youtube.com/watch?v=vqavdUGKeb4">Rust Programming Techniques</a>


https://medium.com/@mithi/genetic-algorithms-in-rust-for-autonomous-agents-an-introduction-ac182de32aee
https://github.com/mithi/rusty-genes
A Rust implementation of a genetic algorithm to solve the traveling salesman problem with animated visualizations


grafana/augurs
Time series analysis for Rust, with bindings to Python and Javascript

