
<a target="_blank" href="https://bomonike.github.io/software-dev"><img align="right" width="100" height="100" alt="software-dev.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/software-dev.png?raw=true" />
This is shown formatted at <a target="_blank" href="https://bomonike.github.io/software-dev">https://bomonike.github.io/software-dev</a> from <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/software-dev.md">this file</a>.

<a target="_blank" href="https://youtu.be/SdxRvTWo-JU"><em>Click this diagram to see video (without audio):</em><br /><img alt="software-dev-4.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1724184659/software-dev-4_z6epyo.png"></a>

We call it  <strong>Low Level</strong> when we work with code that directly control the <strong>hardware</strong> that we can physically touch. The lowest level is working with commands to the <strong>Binary Machine Code</strong> which controls the <strong>CPU (Central Processor Unit)</strong>, as defined by the <strong>ISA (Instruction Set Architecture)</strong> for each particular chip design.

The ISA is the basis for <strong>driver</strong> code that each <strong>OS</strong> (Operating System) uses to control various devices connected to the computer.

The <strong>AMD64</strong> ISA controls recent <strong>PCs</strong> running the <strong>Windows</strong> or <strong>Linux</strong> Operating Systems. It's called AMD because the company figured out how to make Intel x86 work in 64 bits (while maintaining backward compatibility). AMD was adopted by Intel as "x86-64".

As for Apple, its <strong>macOS</strong> operating systems is the latest in several generations, with different names. Older versions ran on Intel chips until switching to using ARM chips they branded as "Apple Silicon". The R in ARM stands for <strong>"Reduced Instruction Set Computer"</strong>. Its reduced instruction set makes the chip run faster and cooler, which is why it's also used on <strong>Android</strong> mobile phones as well as Linux and Windows.

&nbsp;

Over time, many companies have created easier and more reliable ways to control hardware at a <strong>High Level</strong>
becuase it's tedious and time consuming to work with low-level code.
That's why there are many ways to create, <strong>for each Operating System</strong>, <strong>application</strong> programs  which present a Graphical User Interface (<strong>GUI</strong>) for end-users to view and enter data.

Programmers use text <strong>Code Editors</strong> to craft <strong>programmatic</strong> code.

&nbsp;

A file is <strong>executable</strong> by the Windows operating system if a file's name ends with the <strong>.exe</strong> suffix or extension. Other programs are used to open a file based on a list maintained by Windows.

However, Linux reads the <a target="_blank" href="https://en.wikipedia.org/wiki/List_of_file_signatures">first few bytes of a file (its signature)</a> to determine what program executes that file.

At the low-level, an executable is created by a <strong>Linker</strong> program that combines a <strong>library</strong> of reusable utility objects with custom <strong>object code</strong>. Object code is created by an <strong> Assembler</strong> program based on <strong>Assembly code</strong> written by programmers using a <strong>Code Editor</strong>.
Editors such as Microsoft's Visual Studio Code include a Command-Line Terminal app that executes <strong>Shell</strong> scripts to manage the operating system.
For example, shell commands download and install commands such as <strong>git</strong> to clone and push code changes to and from the GitHub.com website holding source code files.

At the top of programming code are requests for <strong>download and install</strong> the 3rd-party <strong>packages</strong> referenced within the code.

&nbsp;

<strong>C and C + +</strong> source code is <strong>compiled</strong> into Assembly code.<a target="_blank" href="https://www.youtube.com/watch?v=N2y6csonII4">*</a>

As for Higher Level programming,
<strong>Java and C sharp</strong> are also compiled, but the compiler generates <strong>Intermediate Language</strong> code that's independent of operating system. A <strong>Runtime</strong> utility specific to each operating system translates the IL into commands specific to each operating system.

<strong>Python</strong> code are <strong>Interpreted</strong> to be run by a <strong>Runtime</strong> utility installed on each target operating system to issue commands specific to each operating system.

<strong>JavaScript</strong> is also interpreted, but browsers have that interpreter built-in.
On servers, JavaScript is run using Node J S installed on each server.

The <a target="_blank" href="http://wilsonmar.github.io/golang/">Go language</a> has become popular because its compiler creates a standalone executable that includes the Go <strong>runtime</strong>. A different executable is created for each operating system. This means that those running Go are happy that they don't have the hassle of installing and maintaining a Go runtime on every server.

&nbsp;

During the last decade, <strong>Low-Code/No-Code GUI</strong> enabled end-users to create code easier.
<strong>RPA</strong> (Robotics Process Automation) automated end-users typing and clicking in the GUI.

&nbsp;

<strong>Artificial Intelligence</strong> has a different architecture. <a target="_blank" href="https://www.youtube.com/watch?v=qtuzVc0N5o0">Data Science</a> utilities filter, clean, and organize the <strong>corpus</strong> of <strong>multi-modal</strong> data for use by <strong>machine learning training</strong> which derive a <strong>model</strong> containing logic created from data rather than programming code. AI models are then referenced by executables making calls to Application Programming Interfaces (<strong>APIs</strong>).

Programs doing the training can run much faster by using parallel processing by <strong>GPU (Graphics Processor Units)</strong> and now <strong>TPUs (Tensor Processing Units)</strong> built specifically for machine learning work.
using NVIDIA's <strong>CUDA</strong> package that enable

The creation of <strong>LLMs (Large Language Models)</strong> and other recent advancements in algorithms enable applications to receive <strong>Natural Language</strong> prompts instead of a computer language. The ability of the computer to understand relationships among concepts enable it to generate new poems and music videos. Over time, LLMs are created with larger <strong>context windows</strong> to insert more customized data for results more relevant to the requestor.

All this is giving rise to <strong>AI agents</strong> that automatically perform actions previously requiring manual work with human intelligence.

&nbsp;

On the horizon are <a target="_blank" href="https://wilsonmar.github.io/quantum/">Quantum</a> computers being designed with a completely different architecture.
Work is being done to leverage Python and other tools used today.
But the mechanisms for controlling Quantum computers is very different, with <strong>Parallel Qubits</strong> manipulated by quantum circuits using quantum gates, switches, operators.
The hope is that Quantum computers can run many times faster than the processors we use today that we have to call today's  processors <strong>"classical'</strong>, as in classical music. Such speed would enable the enormous calculations needed to solve problems too complex for today's computers. But there is also fear that such speed can also be used to crack security keys generated using calculations that take a lot of time today.

-----------------------
QUIZ:

1. What is one advantage of using the JavaScript language?




2. What is an advantage of using the Go language?




3. What is an advantage of using ARM vs. AMD chips?


-----------------------
ADDITIONAL INFO:

ARM licenses its ISA.
RISC-V is an open-source ISA.

Among microprocessors:
* The Raspberry Pico1, based on ARM, consumes 100mW while idle.
* The Raspberry Pico2, based on RISC-V, consumes 80mW while idle.

-----------------------
Description:
Audio for the video was created using the elevenlabs.ai Bill voice. It ignores HTML codes such as strong.
Below are the adjustments that needs to be made for it to pronounce properly:
* GUI => GooEe (Graphical User Interface)
* Node.JS ==> Node J S
* C++ => C + +
* LLMs => L L Ms
* ISA => I S A

TODO: Use SSML for Pronunciation: Implement Speech Synthesis Markup Language (SSML) to specify how certain words should be pronounced. Wrap problematic words in &LT;phoneme> tags using either the International Phonetic Alphabet (IPA) or CMU Arpabet to guide the pronunciation accurately. https://elevenlabs.io/docs/speech-synthesis/prompting



Recently, <strong>Artificial Intelligence</strong> such as ChatGPT makes it possible to get output using <strong>natural language</strong> like two people talking to each other.
