This is shown formatted at <a target="_blank" href="https://bomonike.github.io/software-dev">https://bomonike.github.io/software-dev</a> from <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/software-dev.md">this file</a>.

<a target="_blank" href="https://youtu.be/8lOaxFIk3wE"><em>Click this diagram to see video (without audio):</em><br /><img alt="" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1724028528/software-dev-4_ukb4dy.png"></a>

Let's start at the conceptual <strong>low level</strong> of how the <strong>hardware</strong> is controlled by the <strong>Binary Machine Code</strong>.
The format of instructions is defined by an <strong>ISA (Instruction Set Architecture)</strong> for the  <strong>CPU (Central Processor Unit)</strong> hardware.
The <a target="_blank" href="https://wilsonmar.github.io/quantum"/>Quantum</a> computers being designed today have a completely different architecture. So we call the processors we use today <strong>Classical</strong> processors.

You are using the <strong>AMD64</strong> ISA if you are running a recent <strong>PC</strong> with the <strong>Windows</strong> or <strong>Linux</strong> Operating Systems. It's called AMD because the company figured out how to make Intel x86 work in 64 bits (while maintaining backwards compatibility). AMD was adopted by Intel as "x86-64".

After several generations of operating system names using varios chips, Apple's <strong>macOS</strong> Operating System ran on Intel chips until switching to its own "Apple Silicon" chip, which makes use of the ARM ISA. The R stands for <strong>"Reduced Instruction Set Computer"</strong>. Its smaller instruction set makes the chip runs faster and cooler, which is why it's also used on <strong>Android</strong> mobile phones as well as Linux and Windows.

Windows knows which <strong>application</strong> to use for processing each file based on the file name suffix or extension.
Files that end with <strong>.exe</strong> are treated as <strong>executable</strong> by the operating system. On Linux, it's not just <strong>.bin</strong> files because Linux reads the <a target="_blank" href="https://en.wikipedia.org/wiki/List_of_file_signatures">first few bytes of a file (its signature)</a> to determine what program executes that file.

At the low-level, an executable is created by a <strong>Linker</strong> program that combines executable objects from a <strong>library</strong> of reusable utility objects with custom <strong>object code</strong>. Object code is created by an <strong> Assembler</strong> program based on <strong>Assembly code</strong> written by programmers using a <strong>Code Editor</strong>.
Editors such as Microsoft's Visual Studio Code include a Terminal that executes <strong>Shell</strong> scripts to manage the operating enviornment.
For example, shell commands download and install commands such as <strong>git</strong> to clone and push code changes to and from the GitHub.com website holding source code files.

Now let's talk about <strong>Higher Level</strong> programming. <a target="_blank" href="https://www.youtube.com/watch?v=N2y6csonII4">VIDEO</a>:
<strong>C and C++</strong> source code is <strong>compiled</strong> into Assembly code.

Languages <strong>Java and C#</strong> are also compiled, but the compiler generates <strong>Intermediate Language</strong> (IL) code that's independent of operating system. A <strong>Run-Time</strong> utility specific to each operating system translates the IL into commands specific to each operating system.

<strong>Python</strong> code are <strong>Interpreted</strong> into byte-code which a <strong>Run-Time</strong> utility installed on each target operating system to issue commands specific to each operating system.

<strong>JavaScript</strong> is also interpreted, but browsers have an interpreter built-in.
JavaScript is run using Node.Js installed on servers.

The <a target="_blank" href="http://wilsonmar.github.io/golang/">Go language</a> has become popular becuase its compiler creates a standalone executable that includes the Go runtime. A different executable is created for each operating system. This means that those running Go are happy that they don't have the hassle of installing and maintaining a Go run-time on every server.

<strong>Artificial Intelligence</strong> has a different architecture. Instead of humans crafting logical code, <a target="_blank" href="https://www.youtube.com/watch?v=qtuzVc0N5o0">>Data Management</a> utilities filter, clean, and organize the <strong>corpus</strong> of data is used by <strong>machine learning training</strong> to derive a <strong>model</strong> containing logic. A large corpus and new techniques has enable the generation of <strong>LLMs (Large Language Models)</strong> that understand natural language and generate new content.
Programs doing the training can run much faster by using NVIDIA's <strong>CUDA</strong> package that enable  parallel processing by <strong>GPU (Graphics Processor Units)</strong> and now
<strong>TPUs (Tensor Processing Units)</strong> built specifically for machine learning work.

LLM models and other recent advancements in algorithms enable applications to receive <strong>Natural Language</strong> prompts to make requests without programming in a computer language. The ability of the computer to understand relationships among concepts enable it to generate new poems and music videos. The trend of LLMs providing larger <strong>context windows</strong> to insert more customized data to be considered.

All this is enabling <strong>AI agents</strong> that automatically perform actions previously manually done with human intelligence.

On the horizon are Quantum computers.
Work is being done to leaverage Python and other tools used today.
But the mechanisms for controlling Quantum computers is very different, with <strong>Parallel Qubits</strong> manipulated by quantum circuits using quantum gates, switches, operators.
The hope is that Quantum computers can run many times faster than the processors we use today that we have to call today's  processors <strong?>"classical'</strong>, as in classical music. Such speed would enable the enormouse calculations needed to solve problems too complex for today's computers. But there is also fear that such speed can also be used to crack security keys generated using caluclations that take a lot of time today.

