---
layout: post
date: "2026-06-21"
lastchange: "v022 refs @rustlang.md"
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

<a target="_blank" href="https://github.com/rust-lang/rust-artwork/tree/master/logo
"><img align="right" width="100" src="https://raw.githubusercontent.com/rust-lang/rust-artwork/refs/heads/master/logo/rust-logo.svg" /></a> <a target="_blank" href="https://www.rust-lang.org/">rust-lang.org</a> is the home page for the language. 

{% include whatever.html %}


The mascot for the Rust language is a red crab?
Their name is <a target="_blank" href="https://rustacean.net/">Ferris</a> (like "ferrous")
because ferrous oxide is the chemical name for rust of iron.



## History

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

## Show Me The Money

https://jobs.letsgetrusty.com


## Why Rust?

   * <a target="_blank" href="https://www.youtube.com/watch?v=2KTG3OQPPJ4" title="Oct 8, 2019 Doug Milford">Why Rust</a>
   <br /><br />

> "Rust isn't difficult. It's unfamiliar."

Rust was rated the "most loved" among all programming languages in the <a target="_blank" href="https://web.archive.org/web/20201008033536/https://insights.stackoverflow.com/survey/2019/?utm_source=social-share&utm_medium=social&utm_campaign=dev-survey-2019#most-loved-dreaded-and-wanted">2020 StackOverflow survey of developers</a> (ahead of Python, TypeScript, Kotlin, etc.).

> "In other languages simple things are easy and complex things are possible, in Rust simple things are possible and complex things are easy."

Rust was <a target="_blank" href="https://www.tiobe.com/tiobe-index/">#26 on the TIOBE index of programming languages</a>, based on "the number of skilled engineers world-wide, courses and third party vendors. Popular search engines such as Google, Bing, Yahoo!, Wikipedia, Amazon, YouTube and Baidu were used to calculate the ratings.".

Like C, C++, Java:
   * Rust uses <tt>//</tt> for comments and ignored code between <tt>/*</tt> and <tt>*/</tt>
   * Rust uses <tt>//!</tt> to precede comments about the program file.
   * In practice <tt>///</tt> are comments that apply to a particular line below the comment.
   * Rust uses semicolons to end each sentence.
   <br /><br />

Like C, C++:
   * Rust does not use a <strong>garbage collector</strong> (which increases Runtime program size).
   * Objects in Rust are discarded when the last "owner" goes out of <a href="#Scope">scope</a>.
 
Unlike Python and Java:
   * Rust execution does not pauses occassionally for automatic Garbage Collection.

Unlike other languages: <a target="_blank" href="https://www.youtube.com/watch?v=DJdUjjOmyx8">This Is How Rust Stops Memory Leaks</a> by @Low Level
   * which can have several variables point to the same memory, which can cause parallel and concurrency issues, Rust has a <strong>clone</strong> method.
   * "&" in front of a variable designates "borrowing"
   * Rust provides <tt>assert</tt> and <tt>cargo test</tt> commands for <tt>#[test]</tt> or <tt>#[should_panic]</tt>
   * <tt>rustdoc</tt> command generates HTML documentation (like JavaDoc) without installing additional tools
   <br /><br />

Rust is used to write performance intensive, highly-concurrent code, with predictable tail latencies.
   * Variables are immutable (can't be changed) unless marked as "mut" (mutable).
   * The lifetime of several variables that exist together are marked with: <tt>&'z Person</tt> and <tt>Person&LT;'z></tt>
   <br /><br />

Like C: <a target="_blank" href="https://www.youtube.com/watch?v=NtYHC1KNGoc">C is 50 Years Old. Should You Learn Rust?</a>
   * Developers manage memory in code.
   <br /><br />
   
Thus, Rust can power performance-critical services, run on embedded devices, and easily integrate with other languages.
"Rust enables low-level control without giving up high-level conveniences."

Unlike Python & Go:
   * Rust compiler issues errors when garbage situations are detexted.
   * Rust eliminates memory issues (null and dangling pointers, data races, etc.). Thus:
   * Parallel processing is a breeze with Rust <a target="_blank" href="https://www.youtube.com/watch?v=1QoT9fmPYr8">Lifetimes references</a>
   * Rust’s rich type system and ownership model guarantees memory-safety and <a href="#Threads">thread-safety</a> — enabling you to eliminate many classes of bugs at compile-time.
   * Rust has <strong>no runtime</strong> Rust does not use an intrepreter.
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

Unlike Zig:
   * <a target="_blank" href="https://www.youtube.com/watch?v=Vxq6Qc-uAmE">Why I chose Rust over Zig</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=2AqwehBu84w">I Can't Believe Rust Is Replacing Zig, Too</a>
   <br /><br />


Rust catches concurrency programming mistakes.

Stack overflow vulnerabilities not possible?

Videos comparing languages:
   * <a target="_blank" href="https://www.youtube.com/watch?v=WhjEL817Onw&pp=ugUEEgJlbg%3D%3D">Why I'm so bullish</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=E-47VLwMY_U" title="Apr 29, 2021">Rust vs Go: Which is best? THE Definitive Answer</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=FKMrpaFjQm4">Rust Vs Go Panel - Miriah Peterson, Michael Snoyman, Jonathan Turner, Steve Francia
RustLab Conference</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=ZJ6dVVobjaI">Rust vs Go - Which is Better and Why?</a> by Federico Terzi
   * <a target="_blank" href="https://www.youtube.com/watch?v=s2Xk3dMTHg8">Virtual Lunch & Learn: Why you want to choose Rust for your next web service!</a> by CodeControl
   * <a target="_blank" href="https://www.youtube.com/watch?v=GCoANs1jRC0">Why Rust is NOT a passing fad</a> by Travis Media
   <br /><br />


## Practical uses of Rust

* https://github.com/RustScan/RustScan = Rust Scan - finds all open ports faster than Nmap.
* https://github.com/dani-garcia/vaultwarden/ = Vaultwarden - unofficial Bitwarden compatible server written in Rust.
* https://github.com/starship/starship = Starship - the cross-shell prompt written in Rust.

   * <a target="_blank" href="https://www.youtube.com/watch?v=5C_HPTJg5ek&pp=ugUEEgJlbg%3D%3D">Rust in 100 Seconds</a> @Fireship

grafana/augurs
Time series analysis for Rust, with bindings to Python and Javascript

https://github.com/rustybuilder/rust-faces
Face Detection in Rust with Python Bindings


## Social ecosystem

Rust developers are called "Rustlings" or "Rustaceans".

r/rust

<a target="_blank" href="https://twitter.com/search?q=%23rustlang&src=typed_query">#RustLang on Twitter</a>.

https://imposterdevs.com by Travis Media for weekly events

Rust is named after the <a target="_blank" href="https://www.wikiwand.com/en/Rust_(fungus)">rust family of parasitic fungi causing plant diseases with its brown spores</a>.

Rust Belt Rust: conference held in the "Rust Belt" of the U.S.

RustFest: Europe's @rustlang conference

<a target="_blank" href="https://www.youtube.com/watch?v=DnYQKWs_7EA&list=RDCMUCaYhcUwRBNscFNUKTjgPFiA&start_radio=1&rv=DnYQKWs_7EA">VIDEO: RustConf2021 YouTube mix</a>

RustCon Asia

Rust LATAM

Oxidize Global

<a target="_blank" href="https://www.youtube.com/watch?v=yW_U1Tz8qac&pp=0gcJCQYLAYcqIYzv">VIDEO</a>: 
Top 4 Rust career paths (and which one you should choose)</a>
   * Embedded
   * Backend (BOOK: Building Bitcoin with Rust)
   * Tooling
   * Systems


## Certification

I am not aware of a globally recognized certification for Rust developers.
The core Rust team nor the Rust Foundation currently provide an official certification.

The Linux Foundation's "Programming in Rust (LFD480)" is an instructor-led training combined with certification "money grab".


## Reference books and websites

https://github.com/sger/RustBooks
List of Rust books

https://github.com/ctjhoa/rust-learning
A bunch of links to blog posts, articles, videos, etc for learning Rust

https://github.com/rust-unofficial/awesome-rust
A curated list of Rust code and resources.

<a target="_blank" href="https://doc.rust-lang.org/book/">doc.rust-lang.org/book</a> "The official Rust Programming Language book" 
https://github.com/rust-lang/book
The Rust Programming Language

<a target="_blank" href="https://doc.rust-lang.org/rust-by-example/">doc.rust-lang.org/rust-by-example</a> "Rust by Example: https://github.com/rust-lang/rust-by-example
Learn by doing with annotated examples"

https://github.com/sunface/rust-by-practice
Learning Rust By Practice, narrowing the gap between beginner and skilled-dev through challenging examples, exercises and projects.

<a target="_blank" href="https://rustlings.rust-lang.org/">rustlings.rust-lang.org<a> "Rustlings: Small exercises to get you used to reading and writing Rust code"

https://github.com/PacktPublishing/Speed-up-your-Python-with-Rust

https://github.com/PyO3/maturin

https://github.com/Indosaram/rust-python-book

https://github.com/pretzelhammer/rust-blog
Educational blog posts for Rust beginners


## Video tutorials

<a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/">VIDEO: Packt: "Ultimate Rust Crash Course" Oct. 2020</a> by <a target="_blank" href="https://www.linkedin.com/in/nathan-stocks/">Nathan Stocks</a>,
with code at https://github.com/CleanCut/ultimate_rust_crash_course
(don't use <a target="_blank" href="https://github.com/PacktPublishing/Ultimate-Rust-Crash-Course">Packt code repo</a>)
when Rust was at 1.89.0.
Shows how to write an interactive Space Invaders game with audio, multithreading.

<a target="_blank" href="https://www.udemy.com/course/rust-lang/">8.5 hour video course "The Rust Programming Language"</a>
by <a target="_blank" href="https://www.linkedin.com/in/dmitri-nesteruk-87b069aa/">Dmitri Nesteruk ("semi-retired" Quant in the UK</a>) shows use of IntelliJ IDEA.

* <a target="_blank" href="https://www.youtube.com/watch?v=zF34dRivLOw">VIDEO "Rust Crash Course | Rustlang"</a> by Traversy Media

* <a target="_blank" href="https://www.youtube.com/watch?v=m76sRj2VgGo">The Box Smart Pointer in Rust</a>

* by <a target="_blank" href="https://www.youtube.com/watch?v=nvur2Ast8hE#:~:text=I%20Code%20Forever-,ForrestKnight">@ForrestKnight</a>



## Sample Rust Code

https://github.com/rust-lang/rustlings
Small exercises to get you used to reading and writing Rust code!

https://github.com/microsoft/RustTraining
Beginner, advanced, expert level Rust training material

https://github.com/anurag-garimella/rust_basics
This repo will contain code from Rust books from Chap.1 to Chap. 4. All the code is collected in one single main.rs file.

https://github.com/google/comprehensive-rust
This is the Rust course used by the Android team at Google. It provides you the material to quickly teach Rust.

https://github.com/CleanCut/ultimate_rust_crash_course
https://learning.oreilly.com/course/ultimate-rust-crash/9781800563902/
presented by Nathan Stocks <a target="_blank" href="https://learning.oreilly.com/search/?q=author%3A%20%22Nathan%20Stocks%22">at O'Reilly</a>

https://github.com/TheAlgorithms/Rust
All algorithms written in Rust

https://github.com/exercism/rust
Exercism exercises in Rust.

https://github.com/AnasImloul/Leetcode-Solutions
A repository with over 7000 solutions to more than 1800 Leetcode problems written in C++, Python, Java, Javascript, Rust & Golang. by <a target="_blank" href="https://www.linkedin.com/in/anas-imloul/">Anas Imloul</a>
   * <a href="#Algorithms">Algorithms</a>
   * <a href="#Database">Database</a>
   * Shell
   * Concurrency
   <br /><br />

https://github.com/mainmatter/100-exercises-to-learn-rust
A self-paced course to learn Rust, one exercise at a time.

https://github.com/LinuxUser255/run_cmds


https://github.com/ShreyashSarage/file_handling_rust
File Handling in rust by accepting the config file path in the command line arguments and passing the file path to the main.rs file to print the content of the given file

https://github.com/rustfs/rustfs
🚀2.3x faster than MinIO for 4KB object payloads. RustFS is an open-source, S3-compatible high-performance object storage system supportin…

https://github.com/rustcc/RustPrimer
The Rust primer for beginners. We need native English speaker help us modify the translation.

https://github.com/Dhghomon/easy_rust
Rust explained using easy English


## Utilities

https://github.com/rust-lang/rustfmt
rustfmt  // Format Rust code

https://github.com/rust-lang/rust-clippy
A bunch of lints to catch common mistakes and improve your Rust code. Book: https://doc.rust-lang.org/clippy/

https://github.com/joaoviictorti/RustRedOps
Repository for advanced Red Team techniques focused on Rust



<a id="Algorithms"></a>

### Sample Code: Algorithms

So that we can confidently call each of the 393 wonderful modules from our own custom modules,
I generated file algorithms.csv to enable automatic execution of each module to:
   * recompile after module dependency upgrades
   * identify coding errors
   * identify function issues    
   * identify version issues (using crate-audit)
   * identify performance issues

The algorithms.csv file contains these fields:
   * seq - sequence to run, starting from 1 to 393.
   * status - "PASS" or "FAIL" summarizing result of last run.
   * category1 — top-level module (e.g., Backtracking), with Category / Subcategory for nested entries like Data Structures / Probabilistic or Machine Learning / Loss Function
   * category2 - metadata for modules to be in a second category:
   * name — display name from the markdown link (e.g., All Combinations of Size K)
   * filename — the .rs source file (e.g., all_combination_of_size_k.rs). The name used to invoke modules.
   * wikipedia - url to details about each algorithm.
   <br /><br />

The 22 categories are listed in the <tt>lib.rs</tt> file.

<tt>mod.rs</tt> files are not in the .csv file because they're in every category folder.

These contain sub-categories (which my .csv generator mixed up):
   * data_structures/probabilistic
   * general/permutations
   * machine_learning/loss_function
   * machine_learning/optimization

Modules having a second catgory:
   * burrows_wheeler_transform.rs — in both compression/ and string/
   * catalan_numbers.rs — in both dynamic_programming/ and math/
   * hamming_distance.rs — in both bit_manipulation/ and string/
   * huber_loss.rs — in both machine_learning/loss_function/ and math/
   * huffman_encoding.rs — in both compression/ and general/
   * interest.rs — in both financial/ and math/
   * run_length_encoding.rs — in both compression/ and string/
   * subset_sum.rs — in both backtracking/ and dynamic_programming/
   <br /><br />

Oz/Warp, which generated the file, iteratively identified errors from this prompt:
   * minimum_coin_changes.rs → actual file is greedy/minimum_coin_change.rs (missing the s)
   * Fixed typo: Greedy / Minimum Coin Change → minimum_coin_changes.rs → minimum_coin_change.rs
   * Added: Ciphers / Gronsfeld Cipher → gronsfeld.rs
   * Added: Data Structures / Skip List → skip_list.rs

These files exist but are not listed in DIRECTORY.md:
   * ciphers/gronsfeld.rs	Gronsfeld cipher — missing from docs
   * greedy/minimum_coin_change.rs	The correctly-named file (CSV had the wrong name)
   * data_structures/skip_list.rs	Skip list — missing from docs
   * big_integer/mod.rs	Module root — expected to be excluded

Explanations not in algorithms.csv:
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Ciphers/playfair-cipher.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Image%20Processing/Harris%20Detector.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Selection%20Algorithms/Find%20Second%20Largest%20Element.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Sorting%20Algorithms/Recursive%20Versions/Recursive%20Bubble%20Sort.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Data%20Structures/Arrays/array.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Data%20Structures/Linked%20Lists/Circular%20Linked%20List.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Data%20Structures/Linked%20Lists/Doubly%20Linked%20List.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Data%20Structures/Linked%20Lists/Singly%20Linked%20List.md
   * https://github.com/TheAlgorithms/Algorithms-Explanation/blob/master/en/Data%20Structures/Stacks/stack.md

https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en
https://github.com/TheAlgorithms/Rust
https://github.com/TheAlgorithms/Rust/blob/master/DIRECTORY.md
   * Backtracking
   * Big Integer
   * Bit Manipulation
   * Ciphers [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Ciphers">Explained</a>]
   * Compression
   * Conversions
   * Data Structures [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Data%20Structures">Explained</a>]
   * Dynamic Programming [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Dynamic%20Programming">Explained</a>]
   * Financial
   * General
   * Geometry
   * Graph
   * Greedy [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Greedy%20Algorithms">Explained</a>]
   * Hashing
   * Machine Learning
   * Math  [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Basic%20Math">Explained</a>]
   * Navigation
   * Number Theory
   * Searching [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Search%20Algorithms">Explained</a>]
   * Signal Analysis
   * Sorting [<a target="_blank" href="https://github.com/TheAlgorithms/Algorithms-Explanation/tree/master/en/Sorting%20Algorithms">Explained</a>]
   * String
   <br /><br />

Prompt to create the program:
```
create program run-algorithms.rs in new utils folder in the src folder.
Create Rust code to load file algorithms-001.csv and loop through each row.
Read arg named startnum and num2run in program call command.
Execute with crate command beginning from startnum for count in num2run.
If startnum is not specified, use hard-coded default of 1.
If num2run is not specified, use hard-coded default of 1.
To algorithms-001.csv add column "status" to the right of column "seq" and change run-algorithms.rs to update the status to contain "PASS" or "FAIL" after running each row.
Stop execution if a module on a row returns FAIL.
Add run-algorithms.rs run of clippy before cargo test. Skip the test if clippy has an error.
```
Run:
```bash
cargo build --bin run-algorithms 2>&1
cargo run --bin run-algorithms -- --startnum 1 --num2run 1  2>&1
```


### Algorithms Book

<a target="_blank" href="https://github.com/QMHTMY/RustBook">github.com/QMHTMY/RustBook</a>:
A book about Rust Data Structures and Algorithms.   

Leetcode


<a id="Database"></a>

## Speed with database 

1. <a target="_blank" href="https://www.youtube.com/watch?v=s19G6n0UjsM" title="2019">
   Rust at speed — building a fast concurrent database</a> Noria
   by Jon Gjengset (MIT CSAIL) using Rust ownership system.

1. Obsedian notes
1. marimo notebooks contain Directed Acyclic Graphs (DAG) for Reactivity to determine the correct running order of cells. 
1. PostgreSQL database to index of my movie DVD collection
1. GraphQL API style db minimizes roundtrips
1. Redis server for caching
1. RAG vector db gRPC microservices protobuff 


## Learning Sequence

   * <a target="_blank" href="https://www.youtube.com/watch?v=2hXNd6x9sZs">How to Learn Rust</a> by @NoBoilerplate
   <br /><br />

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


<a target="_blank" href="https://academy.extropy.io/pages/courses/rust-fundamentals-landing.html">The extropy.io video course</a> is designed to take you from a beginner to a confident Rustacean, specifically tailoring examples and projects towards blockchain and smart contract development. Learn the Rust programming language with a focus on blockchain development, tailored for developers looking transition from other languages to Rust. Example code runs within Codespaces.
Nothing in https://github.com/ExtropyIO/RustCourseExamples

1. Introduction to Rust: Why Rust: Memory Safety, Zero Cost Abstractions and Thread Safety.
   * Memory management: stack vs heap
   * Each value has a variable that is called its owner. One owner at a time. 
   * When the owner goes out of scope, the value is dropped by Rust. No periodic Garbage Collector.
   * Ownership: core logic of Rust
   * Master Rust syntax and unique memory safety features
   * Borrowing
   * Slices

2. Ownership & References: Deep dive into Ownership, References, and Slices - the keys to Rust's memory safety.
   * Understand Ownership, Borrowing, and Lifetimes

3. Types & Traits	Scalar and Compound types (Tuples, Arrays), Logic, and Introduction to Traits.
   * Work with Structs, Enums, and Pattern Matching
      * <a target="_blank" href="https://www.youtube.com/watch?v=N28mGv1L8EM" title="Oct 8, 2019 Doug Milford">Milford: Enumerations</a> Last item can have a comma.

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video5_1/">Ultimate: Structs</a>
   <br /><br />

4. Functional Rust & Errors: Functional programming patterns, Error Handling, and practical application.
   * Handle Errors gracefully with Result and Option types
   * Apply functional programming patterns</a>

5. From Solidity to Rust: A guide for Solidity developers transitioning to Rust for blockchain development.
   * Strategies for migrating from Solidity to Rust



<a name="Install"></a>

## Install locally

   * <a target="_blank" href="https://www.youtube.com/watch?v=f6tizikEMTk" title="Oct 8, 2019 Doug Milford">Milford: setup for Windows</a>
   <br /><br />

1. To see what version of the Rust compiler on your machine: see https://www.rust-lang.org/tools/install

   <pre><strong>rustc --version</strong></pre>

   At time of writing:
   <tt>rustc 1.91.0 (f8297e351 2025-10-28)</tt>
   Previously:
   <tt>rustc 1.25.0 (84203cac6 2018-03-25)</tt>

   
1. THe latest version is available in Homebrew on MacOS:

   <pre><strong>brew info rust</strong></pre>

   <pre>
   ✔︎ JSON API packages.arm64_tahoe.jws.json                                                                  Downloaded   15.2MB/ 15.2MB
   ==> rust ↑: 1.95.0 → stable 1.96.0 (bottled), HEAD
   Safe, concurrent, practical language
   https://www.rust-lang.org/
   Old Names: rustfmt
   Installed (on request)
   From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/r/rust.rb
   License: Apache-2.0 OR MIT
   ==> Installed Kegs and Versions
   rust ↑ 1.95.0 → 1.96.0 (4,766 files, 372.3MB) [Linked]
   ==> Dependencies
   Required (6): libgit2 ↑, libssh2 ✔, llvm ↑, openssl@3 ✔, pkgconf ✔, sqlite ↑
   Recursive Runtime (15): all installed ✔
   ==> Options
   --HEAD
      Install HEAD version
   ==> Caveats
   Link this toolchain with `rustup` under the name `system` with:
   rustup toolchain link system "$(brew --prefix rust)"
   &nbsp;
   If you use rustup, avoid PATH conflicts by following instructions in:
   brew info rustup
   &nbsp;
   The following rust executables are shadowed by other commands earlier in your PATH:
   cargo (shadowed by /Users/johndoe/.cargo/bin/cargo)
   cargo-clippy (shadowed by /Users/johndoe/.cargo/bin/cargo-clippy)
   cargo-fmt (shadowed by /Users/johndoe/.cargo/bin/cargo-fmt)
   clippy-driver (shadowed by /Users/johndoe/.cargo/bin/clippy-driver)
   rust-gdb (shadowed by /Users/johndoe/.cargo/bin/rust-gdb)
   rust-gdbgui (shadowed by /Users/johndoe/.cargo/bin/rust-gdbgui)
   rust-lldb (shadowed by /Users/johndoe/.cargo/bin/rust-lldb)
   rustc (shadowed by /Users/johndoe/.cargo/bin/rustc)
   rustdoc (shadowed by /Users/johndoe/.cargo/bin/rustdoc)
   rustfmt (shadowed by /Users/johndoe/.cargo/bin/rustfmt)
   Running these by name will not invoke the version provided by Homebrew.
   Disable this behaviour by setting `HOMEBREW_NO_PATH_SHADOW_CHECK=1`.
   Hide these hints with `HOMEBREW_NO_ENV_HINTS=1` (see `man brew`).
   ==> Analytics
   install: 33,703 (30 days), 113,069 (90 days), 437,923 (365 days)
   install-on-request: 23,022 (30 days), 80,709 (90 days), 308,521 (365 days)
   build-error: 297 (30 days)
   </pre>
   Previously:
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

1. Setup PATH for rustup:
   * <a target="_blank" href="https://www.youtube.com/watch?v=SoK2TT1JJGo" title="Oct 8, 2019 Doug Milford">Milford: Cargo and Rustup commands</a>
   <br /><br />

   ```bash
   grep -qF '/opt/homebrew/opt/rustup/bin' ~/.bash_profile 2>/dev/null || echo 'export PATH="/opt/homebrew/opt/rustup/bin:$PATH"' >> ~/.bash_profile
   export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
   rustup default stable
   ```

1. Verification:
   ```bash
   rustup --version
   rustc --version
   cargo --version
   ```
   <pre>
   rustup 1.29.0 (2026-03-05)
   info: This is the version for the rustup toolchain manager, not the rustc compiler.
   info: the currently active `rustc` version is `rustc 1.91.0 (f8297e351 2025-10-28)`
   rustc 1.91.0 (f8297e351 2025-10-28)
   cargo 1.91.0 (ea2d97820 2025-10-10)   
   </pre>


   ### Uninstall

   <ul>
   <tt><strong>brew uninstall rust</strong></tt>
   </ul>

   Alternately, if you used rustup to install:

   <ul>
   <tt><strong>rustup self uninstall</strong></tt>
   </ul>



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



   ## My rustlang-samples

1. Create folder and navigate to a folder to receive downloads.

1. Obtain the folder:
   ```bash
   git clone https://github.com/wilsonmar/rustlang-samples --depth 1
   cd rustlang-samples
   ```

   <a name="gitignore"></a>

   ### .gitignore for Rust

   * <a target="_blank" href="https://www.youtube.com/watch?v=DWcIZFGiKr0" title="Oct 8, 2019 Doug Milford">Milford: Hello World</a> and Cargo.toml (without using cargo)
   * <a target="_blank" href="https://www.youtube.com/watch?v=sE2cDV91IRg" title="Oct 8, 2019 Doug Milford">Milford: Cargo.toml</a>
   <br /><br />

1. The <tt>Cargo.lock</tt> file:

   PROTIP: For a binary crate (not a library), Rust's convention recommends committing Cargo.lock so builds are fully reproducible. /Cargo.lock to only ignore a root-level one, then commit src/hello-rust/Cargo.lock.


1. View the <strong>.gitignore</strong> file in my by GitHub:

   ```
   # will have compiled files and executables
   /target/
   target/
   
   # Remove Cargo.lock from gitignore if creating an executable, leave it for libraries
   # More information here https://doc.rust-lang.org/cargo/guide/cargo-toml-vs-cargo-lock.html
   Cargo.lock
   
   # Backup files generated by rustfmt:
   **/*.rs.bk
   
   .obsidian
   .trash
   
   # macOS
   .DS_Store
   ```
   REMEMBER: The <tt>target</tt> folder is where compiled assets (executables) are stored.


   ## Evaluate Rust program code like Ruff for Python

1. Add Clippy utility to your project (if using Cargo)
   ```bash
   cargo add clippy --dev
   ```
1. Run Clippy:
   ```bash
   cargo clippy -- -D warnings
   ```

   
   ## Create new project

   REMEMBER: ".rs" is the file extension for Rust program source files.

1. To verify the installation, create a new Rust project folder :
   ```bash
   export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
   cd src
   cargo new hello-rust
   cd hello-rust
   cargo run
   ```
   <pre>
      Creating binary (application) `hello-rust` package
   note: see more `Cargo.toml` keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html
      Compiling hello-rust v0.1.0 (/Users/johndoe/github-wilsonmar/rustlang-samples/src/hello-rust)
      Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.75s
      Running `target/debug/hello-rust`
   Hello, world!
   </pre>

   Notice that in the folder created is a <tt>hello.rs</tt> file.
   In the src/hello-rust folder:
   * Cargo.lock (file)
   * Cargo.toml (file)
   * src        (folder)
   * target     (folder)
   <br /><br />

   ### Open file for edit in IDE

1. To use VSstudio:
   ```bash
   code hello-rust
   ```

   PROTIP: At the top of the file:
   ```Rust
   #[allow(unused_variables)] // To squash warnings about unused vars
   #[allow(unused_arguments)] // To squash warnings about unused arguments
   ```


   ### Cargo Package Manager of Crates

   REMEMBER: In the Rust development environment, all tools are installed to the directory<br />
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

   ## Hello World program

1. View file "Cargo.taml" (where toml stands for "Tom's obvious minimal language"):

   <pre>[package]
hame="hello"
version="0.0.1"
authors=["John Doe <john.doe@gmail.com>]
edition="2024"
   </pre>

   REMEMBER:
   <tt>edition</tt> refers to the year of the Rust compiler to be used. 2018 is the lastest one as of this writing. (This should really be "Vintage").


1. In the toml file: Toolchain management with rustup (at <a target="_blank" href="https://github.com/rust-lang/rustup.rs">https://github.com/rust-lang/rustup.rs</a>) which manages builds on all platforms that Rust supports, enabling installation of Rust from the beta and nightly release channels as well as support for additional cross-compilation targets.

   <pre>[dependencies]
   rand = "^0"        // for random
   pyo3 = "~0.19.0"
   chrono = "0.4"     // for time stamps
   </pre>

   * <tt>^0</tt> specifies upgrade automatically up to, but not including "1.0.0".
   * <tt>~.0.7.1</tt> with a tilde specifies minimal upgrade automatically up to, but not including "0.8".
   <br /><br />

   six-week release cycles

   Others not used:
   <pre>
   nalgebra = "0.34.0"
   ndarray = "0.17.2"
   num-bigint = { version = "0.4", optional = true }
   num-traits = { version = "0.2", optional = true }
   </pre>

   <pre>
   [dev-dependencies]
   <a target="_blank" href="https://crates.io/crates/quickcheck">quickcheck</a> = Property-based testing library that auto-generates random inputs to find bugs 
   <a target="_blank" href="https://crates.io/crates/quickcheck_macros">quickcheck_macros</a> = Provides the #[quickcheck] attribute that turns functions into test cases automatically 
   </pre>

   REMEMBER: Modules in dev-dependencies (not dependencies) are only used in tests. Think of them like keeping your gardening tools in the shed (dev-dependencies) rather than the living room (dependencies) — you only need them when you're actually working in the garden (writing tests), not when people visit your house (using your crate).
   Cleaner dependency tree: Your crate's public API doesn't expose these testing tools.
   When someone adds your crate to their project, they won't waste time compiling testing libraries.

   REMEMBER: You import them in 
   <tt>#[cfg(test)]</tt> code blocks, not in your main library code.

   
   ```Rust
   // In src/lib.rs (your main code) - NO quickcheck imports here:
   pub fn add(a: i32, b: i32) -> i32 {
      a + b
   }

   // In tests/basic_tests.rs - quickcheck lives here:
   #[cfg(test)]
   use quickcheck::{TestResult, quickcheck};

   #[test]
   fn test_addition() {
      quickcheck(|a: i32, b: i32| a + b == b + a);   // Auto-generates 100+ random cases
   }   
   ```   


   The Rust standard library source is in the Rust repo at:<br />
   https://github.com/rust-lang/rust/blob/main/library/std/src/lib.rs

   Docs about it are at:
   https://doc.rust-lang.org/std/

   After installing rust-src, the local installed source path on Linux is at:
   <tt>lib/rustlib/src/rust/library</tt>


   ### Compile

   There are two ways of building a Rust program. One is cargo referencing a .taml file, and another is using the rustc command:

   <pre>rustc hello.rs
   </pre>

   On MacOS & Linux, compilation creates a "hello" file (with no file extension).

   On Windows, compilarion creates a "hello.exe" file.

1. Move the executable to the target folder where it will execute.

   ```bash
   rustc --explain E0308
   ```


   ### Run executable

   <pre>./hello
   </pre>

   The response is "Hello, World!".

   Alternately, run by

   <pre><strong>cargo run</strong></pre>


   ### Keyboard alias: compile & run 

   So that I can compile and run with a single command:

   <pre>cr hello</pre>
   
   That is enabled by this line in $HOME/aliases.sh
   ```bash
   alias cr="cargo run"
   alias crv="cargo run --verbose"
   ```
   after copying from my:
   https://github.com/wilsonmar/macos-setup/blob/main/aliases.sh
   
   and adding into <tt>~/.bash_profile</tt> a command to run the file:
   ```
   source $HOME/aliases.sh
   ```


   ## Explain Compile Errors

   <pre>rustc --explain E0308</pre>


## CLI output formatting:

   ```
   "\x1b[1m" begin 
   "\x1b[0m" reset
   ```

## Async 

   * <a target="_blank" href="https://www.youtube.com/watch?v=wXtngLBkK4Q">VIDEO</a>: Async Rust explained in 20 minutes 
   <br /><br />

   REMEMBER: Unlike JavaScript or Go: calling an Async function are lazy: doesn't actually eagerly run the async function.

   Example:
   ```Rust
   async fn fetch_user() {
      println!("Fetching user");
   }

   fn main() {
       // Future:
       log_user();  // lazy
   }
   ```
   REMEMBER: Unlike JavaScript or Go: the Async function is not built into the Runtime 
      * JS: Promise -> Event loop -> Callbacks
      * Go: Goroutine -> Scheduler -> OS thread
      <br /><br />

   NOTE: "Embassy" and Tokio are 3rd-party async runtimes for Rust.

   To make a futures run, hand off a <strong>task</strong>. Using the most popular async runtime manager:
   ```Rust
   async fn fetch_user() {
      println!("Fetching user");
   }
   #[tokio::main]  // macro to set up thread pool.
   async fn main() {  // the root task
       // sequential execution of lines:
       let user = fetch_user().await;  // await sequentially. Return expected.
       tokio::spawn(log_user());  // schedule wrapped task to run. No return expected. Fire and forget.
   }
   ```

   ```Rust
   // Interleaving: 1.1 seconds total:
   let (config, db) = tokio::join!(
       load_config();
       connect_to_db(),
   ):
   // ... fetch_user()
   ```

   Structured Concurrency & Cancellation safety:

   ```Rust
   tokio::select! {  // race:
      user = send_message(&mut stream, payload) => {
          // message sent
      }
      // Implicit cancellation and cleanup after 5 second timeout by Runtime:
      _ = sleep(Duration::from_secs(5)) => {
          // treat connection as corrupted for idiomatic recovery:
          let _ = stream.shutdown().await;
      }
   }
   ```

   Sync <-> Async Interop:
   ```Rust
   async fn fetch_options_and_calc_greeks(symbol: &str) -> u64 {
       // async OPRA request:
       let quotes = fetch_option_quotes(symbol).await?:

       // CPU-heavy Greeks calculation moves to blocking pool:
       let result = tokio::task::spawn_blocking(move || calc_greeks(quotes).await?;
   }
   ```
   <a target="_blank" href="https://www.youtube.com/watch?v=wXtngLBkK4Q&t=17m">
   <img alt="rustlang-blocking-1148x611.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1781967989/rustlang-blocking-1148x611_xzef6h.png" /></a>


   Rust Parallel/Async vs. EVM Synchronous:
   <a target="_blank" href="https://academy.extropy.io/pages/courses/rust-fundamentals-landing.html">COURSE</a>:
   Rust has become the industry standard for high-performance <strong>blockchain</strong> development. 
   Use Rust instead of Solidity.
   Rust is the native language for Solana, Near, and Polkadot, and is unlocking new performance levels on EVM (Etherium Virtual Machine) chains like Arbitrum Stylus. It also underpins the logic of Starknet. Whether you are building next-gen DeFi or high-frequency trading dApps, a solid foundation in Rust is your gateway to these ecosystems. 


## Parallel/Async: Wrk framework

   * <a target="_blank" href="https://www.youtube.com/watch?v=TuXyGkf8MEo">VIDEO</a>: "Python vs Rust for Machine Learning" <br /><br />

   80,000 requests per second from FastAPI Python vs. Rust vs. 2,000 = 40x speedup running concurrently.

   onnx model format


## Functions & Macros

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video2_6/">Ultimate</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=K-KK_UGuXFI" title="Oct 8, 2019 Doug Milford">Rust println! and format! macros</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=hEhnDRR4Ijs" title="Oct 8, 2019 Doug Milford">Rust Functions and Procedures</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=K-KK_UGuXFI" title="Oct 8, 2019 Doug Milford">Milford: println! and format! macros</a>
   <br /><br />

"fn" defines

If not referencing a variable in the signature, prefix with an underline. 

"impl"

Function names ending with an exclaimation mark (!), such as <tt>println!</t> are macros.

format! macro

select! macro

let mut v = vec![1,2,3];



## Module System

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video2_8/">Ultimate</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=5F6pHtkWMxg" title="Oct 8, 2019 Doug Milford">Milford: lib vs main</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=5RPXgDQrjio">Let'sGetRusty: Rust's Module System Explained!</a>
   <br /><br />

<tt>use</tt> statements above main() are like Python import.

Standard library: https://doc.rust-lang.org/std/...
<tt>use std::collections::HashMap;</tt> instead of Solidity Mappings.

   * <a target="_blank" href="https://vimeo.com/1155083192/fafd0419df?fl=pl&fe=vl">Extropy: transition</a>
   Use Hashmaps to replicate Solidity Mappings.

Crates is the registry of cargo (packages) referenced by use.

Add the random number package in the toml file under <tt>[dependencies]</tt>

<tt>rand = "0.6.5"</tt>


### Utilities: Logging module

https://github.com/muhammad-fiaz/logly
a Rust-powered, Loguru-like logging library for Python that combines the familiarity of Python’s standard logging API with high-…

https://github.com/open-telemetry/opentelemetry-rust
The Rust OpenTelemetry implementation

Log4r for Logging ???


<a name="Threads"></a>

## Thread Safety

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video6_2/">Ultimate: Threads</a>
   <br /><br />

Rust Threads are portable across platforms (macOS, Linux, etc.)

To spwan a thread to run concurrently in an allocated memory:
```
use std::thread;
fn mail(){
    let handle = thread::spawn(move || {
        // do stuff in a child thread
    });
    // Do stuff simultaneously in main thread.
    // Wait until thread has exited:
    handle.join().unwrap()'
}
```
PROTIP: Alternately, use awake.



### Benchmarking with crate Criterion

Criterion crate has a separate directory and thus separate files from tests.

To benchmark non-public methods, use feature flags and wrappers.

### Tokio for concurrent runtime

   * <a target="_blank" href="https://www.youtube.com/watch?v=guuGCsNAiZg">VIDEO: Rust - Live coding implementation of non-blocking async agents on top of Tokio"</a> by Boy Maas 
   * <a target="_blank" href="https://www.youtube.com/watch?v=4DqP57BHaXI" title="May 20, 2021">VIDEO: Creating a Chat Server with async Rust and Tokio</a> by Lily Mara, author of "Refactoring to Rust" from Manning Publications
   <br /><br />

<a target="_blank" href="https://github.com/tokio-rs/tokio">github.com/tokio-rs/tokio</a> for concurrent runtime.

### musl for cross-compilation



<a name="MemorySafety"></a>

### Memory Safety

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video2_4/">Ultimate</a>
   <br /><br />

<a id="Scope"></a>

### Scope

   * <a target="_blank" href="https://www.youtube.com/watch?v=1QoT9fmPYr8" title="Apr 12, 2020">Milford: lifetimes</a>
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video2_3/">Ultimate</a>
   <br /><br />

Blocks.

Nested blocks.

Variables hoisted, shadowed within an inner block.

The assumption is that variables are immutable by a definition statement such as:
   <tt>x: i2</tt>
To make a veriable mutable:
   <tt>x: &mut i2</tt>

## Strings

   * <a target="_blank" href="https://www.youtube.com/watch?v=ClPrjjHmo2Y" title="Oct 8, 2019 Doug Milford">Milford: strings vs str slices</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=CpvzeyzgQdw">All Rust string types explained</a>
   <br /><br />

A string can be define two ways: <tt>&str</tt> or <tt>String</tt>:

   <pre>fn mail() {
    let example_str: &stsr = "Howdy";  // immutable
    let example_string: String = String::from("Partner");
   }
   </pre>

 “characters (u8s)” gives the impression that individual characters themselves are 8-bit, when inside a string, they can be 8-bit, 16-bit, 24-bit, or 32-bit depending on the character. The "u8s" specifies bytes of memory encoding the string, not individual characters.

Using "unicode.segmentation" package to handle graphemes


<a id="Scalars"></a>

### Scalars Tuples

   * <a target="_blank" href="https://www.youtube.com/watch?v=afFehipXJFA" title="Oct 8, 2019 Doug Milford">Milford: Tuples</a>

Unicode (not UTF-8) scalars


## Scaler types Primitives in Stack

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video3_1/">Ultimate: Primitives</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=1nCZOh83ins" title="Oct 8, 2019 Doug Milford">Milford: Primatives (basic data)</a>
   <br /><br />

REMEMBER: By default, variables are stored in the Stack.

```rust
// Signed: i8, i16, i32 (default), ... isize (the platform's pointer type size)
let stack_i8: i16 = -10;  // integer (whole) number.

// Unsigned: u8, u16, ..., u128, usize
let stack_f32: f32 = 20.1;  // floating point.

let stack_char: char = 'a';
let some_data bool = true; // or boolean false</a> (without quotes)
```
REMEMBER: So they can be fast, stack Variables are fixed in size (cannot grow).

TODO: Rust Native Types vs. Storage Slots vs. Serialisation

REMEMBER: Collections cannot be stack variables.


### Mutable Heap

```Rust
fn main () -> {
    let mut s = String::from("Hello");
    s.push_str(",world!");
    // let s2 = s;  // invalid
    println!("{}", s);
}
```

### Casting

   * <a target="_blank" href="https://www.youtube.com/watch?v=LJ_tHdhkkng" title="Oct 8, 2019 Doug Milford">Milford: Casting, Shadowing, Consts and Static</a>
   <br /><br />

Casting enlarges a variable with the same value.



### Structs & Traits

   * <a target="_blank" href="https://www.youtube.com/watch?v=gi0AQ78diSA" title="Oct 8, 2019 Doug Milford">Milford: Rust Structs, Traits and Impl</a>
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video5_1/">Ultimate: structs</a>
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video5_2/">Ultimate: Traits</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=T0Xfltu4h3A&pp=0gcJCT8LAYcqIYzv">Let'sGetRusty: Traits</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=9RsgFFp67eo">Rust's most complicated features explained</a> Trait
   <br /><br />

A Trait is an Interface.

A dyn-compatible trait can be the base trait of a trait object. A trait is dyn compatible if it is not an async fn which has a hidden Future type.


### Generics (Abstract Types)

   * <a target="_blank" href="https://www.youtube.com/watch?v=nvur2Ast8hE" title="Nov 17, 2019 Doug Milford">Milford: Generics</a>
   <br /><br />

Generics reduces code duplication by adding flexibility downstream:
Instead of defining structs with diffent types: placeholder types, 

```Rust
struct Point<T> {
    x: T,
    y: T,
}
```
The Rust compiler substitutes T with i32.

```Rust
fn main() {
    let a = Point { x: 100, y: -1_f32 };
    println!("x = {} y = {}, a.x, a.y );

    let b = Point { x: 10.1, y: -2.3 };
    println!("x = {} y = {}, b.x, b.y );
```


## Control Flow

   * <a target="_blank" href="https://www.youtube.com/watch?v=Vz9_y7NjRlQ" title="Oct 8, 2019 Doug Milford">Milford: Conditional Statements</a>
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video3_4/">Ultimate</a>
   <br /><br />


### Ownership and Borrowing

   * <a target="_blank" href="https://www.youtube.com/watch?v=lQ7XF-6HYGc" title="Nov 17, 2019 Doug Milford">Milford: Ownership and Borrowing</a> shows coding for stack and heap (smart pointers): which houses collections which needs to grow
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video4_1/">Ultimate</a>
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video4_2/">References and Borrowing</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=wXoY91w4Agk">VIDEO: Niko Matsakis - Rust: Putting Ownership to Use</a> by Curry On!
   * <a target="_blank" href="https://www.youtube.com/watch?v=Fw0ISvfqR6Q&pp=0gcJCT8LAYcqIYzv">25 Rust Ownership Examples You Must Understand</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=8M0QfLUDaaA&pp=0gcJCT8LAYcqIYzv">by @YouCodeThings</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=QIeZmxABG2U">by Dev Level Up</a>
   <br /><br />

Ownership and Borrowing is at the heart of Rust.
But this can be a daunting challenge to many new to Rustlang.

coding for stack and heap (smart pointers): which houses collections which needs to grow

   ### Ownership: Borrow Checker
   
   * <a target="_blank" href="https://www.youtube.com/watch?v=zfb1y8yn8QI">Love the Borrow Checker</a>
   <br /><br />

This keeps developers from spending hours or days hunting down data race conditions.



## Enums

   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video5_5/">Ultimate: Enums</a>
   <br /><br />

Null safety: Option Enum

   <tt>enum Option<T> { some(T), None }</tt>

Explicitly handle missing 

Error Handling: Result Enum


<a id="Functions"></a>

### Functions

   * <a target="_blank" href="https://www.youtube.com/watch?v=hEhnDRR4Ijs" title="Oct 8, 2019 Doug Milford">Milford: Functions and Procedures</a>
   <br /><br />


<a name="Closures"></a>

### Closures

   * <a target="_blank" href="https://www.youtube.com/watch?v=ZkSI2sptSko">VIDEO: Closures - Rust</a> by danlogs
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video6_1/">Ultimate</a>
   * https://vimeo.com/1154699403/97c6bd8b9a?fl=pl&fe=vl
   * <a target="_blank" href="https://learning.oreilly.com/videos/ultimate-rust-crash/9781800563902/9781800563902-video5_4/">Ultimate: Collections</a>
   <br /><br />

A closure is an anonymous function. Aka Lambda.

A closure gives an inner function access to an outer function’s scope, even after the outer function has returned.

A closure is a function bundled together (enclosed) with references to its surrounding state (the lexical environment). 

In JavaScript, closures are created every time a function is created, at function creation time.

To use a closure, define a function inside another function and expose it. 

To expose a function, return it or pass it to another function.


## Traits for inheritance

Traits were added in Rust 0.4 as a means to provide inheritance; 

interfaces were unified with traits and removed as a separate feature.

Use Traits to define flexible behavior.

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



<hr />

## Tutorials

### Rust with AWS & AI

By the distinguished <a target="_blank" href="https://www.linkedin.com/in/noahgift/">Noah Gift</a> (US expat in Valencia, Spain), Liam Parker, <a target="_blank" href="https://www.linkedin.com/in/alfredodeza/">Alfredo Deza</a> at Pragmatic AI Labs: <a target="_blank" href="https://github.com/paiml">https://github.com/paiml</a>
<a target="_blank" href="https://github.com/noahgift/continuous-integration/">https://github.com/noahgift/continuous-integration</a> for .github/workflows

If you have an OReilly subscription:

A. <a target="_blank" href="https://learning.oreilly.com/videos/-/08132023VIDEOPAIML/">1h Using Rust with Python Nov '23</a> 

B. <a target="_blank" href="https://learning.oreilly.com/videos/-/09142023VIDEOPAIML/">5h Rust for Pythonistas</a> Nov '23
creates a Python with Make file, Polars tests.

C. <a target="_blank" href="https://learning.oreilly.com/videos/-/08252023VIDEOPAIML/">3h Rust LLMOps Nov '23</a>

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


### Slint UI framework

<a target="_blank" href="https://www.youtube.com/watch?v=7aFgeUG9TK4&t=57s">VIDEO</a>
"you need to build a RUST desktop app!! by Travis Media"
uses Slint UI framework

1. Build an app with just a counter:
   ```bash
   MYAPPNAME="myapp"
   cargo generate --git https://github.com/slint-ui/slint-rust-template --name "$MYAPPNAME"
   cd "$MYAPPNAME"
   cargo build
   ```
1. Install The Slint for Visual Studio Code Extension


## References

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


https://github.com/ExtropyIO/AwesomeZK
https://academy.extropy.io/pages/courses/zkmaths-course.html
https://maths.extropy.io
https://github.com/ExtropyIO/ZeroKnowledgeBootcamp
ZKP (Zero Knowledge Proofs) protocols.
   * Modular arithmetic: 25 mod 3 = 1 is remainder where n mod k = 1
   * Groups and fields: {a,b,...} Associativity, Identity Elements, 
   * Cyclic groups and generators
   * Finite fields
   * Multiplicative inverses and field constraints in ZK


   * <a target="_blank" href="">Ultimate</a>
   <br /><br />


## Performance Tuning

Lifecycle:
1. Measure performance
   * Disk space consumption
   * Latency (response time, tail latency)
   * Throughput (requests per second)
   * Memory (heap & stack)
   * IO bottlenects (disk, network)
   * CPU time
2. Isolate bottlenecks
3. Optimize code

Frameworks & Tools:
   * log_analyze
   * <a target="_blank" href="https://github.com/sharkdp/hyperfine/">sharkdp/hyperfine</a> to benchmark app run
   * <a target="_blank" href="https://github.com/killercup/cargo-flamegraph/">Cargo Flamegraph</a> creates an .svg file to show where the program run spent CPU time.
   * Dhat
For Async:
   * <a target="_blank" href="https://github.com/tokio-rs/tracing/">Tracing</a> for instrumenting events
   * <a target="_blank" href="https://github.com/hatoo/oha/">Oha</a> for HTTP load.
   * Tokio-console

Techniiques:
   * Algorithms
   * Parallelization (Async)

cd /Users/johndoe/github-wilsonmar/rustlang-samples/src/hello-rust && sudo cargo flamegraph --release -o flamegraph.svg 2>&1


<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
