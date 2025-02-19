---
layout: post
date: "2025-02-15"
lastchange: "v013 + from wilsonmar :quantum.md"
file: "quantum"
title: "Quantum (AI computing)"
excerpt: "The actual tech for terms (Teleportation) that's been overhyped by Hollywood movies. This is about how to prepare for when computers are 300X faster than the fastest today."
tags: [apple, mac, setup, automation]
image:
# feature: pic brown wood apple logo 1900x500.jpg
  feature: https://res.cloudinary.com/dcajqrroq/image/upload/v1695325728/quantum-1900x500_xrd6dd.png
  credit: umass.edu
  creditlink: https://blogs.umass.edu/Techbytes/2016/10/18/quantum-computing/
comments: true
created: "2023-09-12"
---
<a target="_blank" href="https://bomonike.github.io/quantum"><img align="right" width="100" height="100" alt="quantum.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/quantum.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

<a name="Quantum+Supremacy"></a>

## Quantum Supremacy

Quantum Supremacy is the point at which a quantum computer can complete a mathematical calculation that is demonstrably beyond the reach of even the most powerful supercomputer.

Quantum technologies are estimated to be <strong>158 million times faster</strong> than the fastest supercomputer in 2022.

Estimates of <a href="#60years">60 years</a> would instead take <strong>seconds</strong> on a quantum computer.

Quantum can do in 4 minutes what traditional computers would take 10,000 years to do.


<a name="Cracking"></a>

## Quantum Cracking Risk Index?

> The Quantum Cracking Risk Index metric is the <strong>average time to crack passwords and certificates</strong> for comparison of cracking methods.

This is different than https://standards.ieee.org/ieee/7131/10681/ which measures how fast a quantum computer works across various applications.

Our proposal: Identify the level of risk from quantum by periodically running a <a href="#QuantumCrackingTools">quantum secret-cracking tools</a> against your organization's passwords and certificates (given permissions to Vault, Active Directory, etc.).

Instead of an organization's own live production Active Directory, perhaps a <strong>publicly available password database</strong> (dictionary for attack) could be used as the basis of a benchmark over time. Certs created by the maui.exe <a target="_blank" href="https://www.cisa.gov/news-events/cybersecurity-advisories/aa22-187a">North Koreans are known to use to encrypt their ransomware targets' data</a>.

<a href="#Quantum+Supremacy">Quantum Spremacy</a> means that such a metric is effective only if, over time, it provides an assessment even as quantum computers get faster.

The metric would inform corporate <strong>security mitigation policies</strong> such as:

> "Require use of algorithms which generate cryptographic keys that can resist cracking longer than <strong>2 years</strong>".

This period means that the organization would have time to change all passwords and certificates in that period of time.

The <a target="_blank" href="https://www.passwarden.com/help/use-cases/how-long-to-crack-a-password
">recommendation for "from every 30-90 days to every 1-2 years"</a> are based on "pre-quantum" estimates based on the use of "classical" computers (such as Windows) by adversaries.

Consideration of quantum capabilities is an extension of complexity policies (such as number of digits, special characters, etc.) that would be required to make a password meet the corporate threshold.


<a name="60years"></a>

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695613484/quantum-crack-833x229_guwp0j.png"><img alt="quantum-crack-833x229.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695613484/quantum-crack-833x229_guwp0j.png"></a>

With quantum capabilities, the average time to crack keys is estimated to be much much shorter.
Orders of magnitude shorter.

A NIST-published <a target="_blank" href="https://csrc.nist.gov/News/2016/NIST-Released-NISTIR-8105,-Report-on-Post-Quantum">report from April 2016</a> cites experts that acknowledge the possibility of quantum technology to render the commonly used RSA algorithm insecure by 2030.

This benchmarking effort would also be the basis for measuring the capabilities of <strong>QC-resistant algorithms</strong> among <a target="_blank" href="https://www.wikiwand.com/en/Post-quantum_cryptography">Post-quantum cryptography</a> (PQC) algorithms that take advantage of Atomic, Molecular, and Optical physics (AMO). <a target="_blank" href="https://ntru.org/">NTRU</a> is a finalist to <a target="_blank" href="https://www.wikiwand.com/en/Post-Quantum_Cryptography_Standardization">NIST's PQC</a> competition.  The name “NTRU” was originally derived from the pun Number Theorists ‘R’ Us or, alternatively, stood for Number Theory Research Unit1.


## Other use cases

This means that quantum computers can solve problems that were impossible for traditional computers to solve, such as:

   * <a href="#Cracking">Crack encryption cryptography</a> (which can lead to stolen data)
   * Simulate molecules (which can lead to new drugs)
   * Optimize logistics (which can lead to more efficient supply chains)
   * Optimize financial portfolios (which can lead to more efficient investments)
   * Optimize machine learning (which can lead to more efficient AI)
   <br /><br />

<a target="_blank" href="https://www.fool.com/investing/2023/08/31/is-ionqs-quantum-technology-a-risk-worth-taking/">QUOTE</a>:
Global market research and consulting company MarketsandMarkets estimates the global quantum computing market will grow from $866 million in 2023 at a compound annual growth rate of 38.3% to $4.375 billion in 2028. Another research company, P&S Intelligence, is even more optimistic and projects the market size to reach $65 billion by 2030.

Quantum machines are also great for optimization problems because they can crunch through vast numbers of potential solutions extremely fast.
One of the most promising applications of quantum computers is for simulating the behavior of matter down to the molecular level.
Quantum computers are also well-suited to accelerate artificial intelligence. They can crunch through millions of possibilities simultaneously, which could allow them to train deep-learning AI systems much faster than conventional computers can.

Actual instances reported:
   * Airbus is using them to help calculate the most fuel-efficient ascent and descent paths for aircraft.
   * Volkswagen has unveiled a service that calculates the optimal routes for buses and taxis in cities in order to minimize congestion.
   * Daimler is using quantum computers to simulate the chemical composition of electrical-vehicle batteries to help find new ways to improve their performance.
   * Pharmaceutical companies are leveraging them to analyze and compare compounds that could lead to the creation of new drugs.
   <br /><br />

IonQ's analysis of usage type by key industries: https://ionq.com/industry-solutions/

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695593056/quantum-usage-polar-1362x1316_jq7ukf.png"><img alt="quantum-usage-polar-1362x1316.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695593056/quantum-usage-polar-1362x1316_jq7ukf.png"></a>


## Post-quantum schemes

<a target="_blank" href="https://atomicorp.wistia.com/medias/hpiijer2wv">VIDEO: "Post-quantum Cryptography"</a> by Dimitri Va at github.com/VirgilSecurity

* 1978 Code-based cryptography
* 1979 Hash-based signatures
* 1996 Multivariate cryptography
* 2005 Lattice-based cryptography
* 2011 Supersingular isogeny key exchange
* 2022? Quantum key distribution?
<br /><br />

A finalist in the NIST PQC competition is Falcon-512. It has a lattice-based signature scheme based on the problem of finding short integer solutions to a set of linear equations. It is relatively compact at 867-byte public key and 658-byte signature. It's fast enough for constrained environments such as IoT devices at thousands per second.


<hr />

<a name="QAI"></a>

## Quantum Agility Index (QAI)?

Upcoming quantum capabilities imply that organizations now, more than ever, need to gear up to <strong>quickly change their security apparatus</strong>, especially to protect data at rest.

> Just changing the frequency of password changes will be ineffective as well as annoying and disruptive.

Resisting quantum also means use of <strong>short-lived credentials throughout</strong> the infrastructure. That would include the use of <a target="_blank" href="https://wilsonmar.github.io/service-mesh/">Service Mesh</a> (such as Istio) agents to handle communications, thus enabling new algorithms to be updated <strong>en masse</strong>, without changing code in the many programs handling business logic.

The Quantum Agility Index (QAI) KPI measures tracking <strong>how quickly</strong> each organization can quickly change its security apparatus throughout its tech stack. Specifically, the time between vendor announcement of availability to full implementation on all servers, desktops, laptops, and mobile devices?

   * from one version to another of operating system such as Windows, Linux, macOS, iOS, Android, etc.
   * from one version to another of a utility such as OpenSSL
   * from one version to another of a programming library (as notified in GitHub Dependabots)
   * from one version to another of a programming utility such as Brew, NPM, Maven, etc.

Others:
   * from TLS 1.3 to TLS 1.X used by browsers on all servers and clients
   * from SHA-1 to SHA-3 (Secure Hash Algorithm) to detect corruption on all file transfers
   * from 2048-bit to 4096-bit keys on all servers and clients
   * from RSA to ECC (Elliptic Curve Cryptography) algorithms to
   * from AES-128 to AES-256 (Advanced Encryption Standard) algorithms to encrypt data at rest
   * from X.509 version 3 to 4 on mTLS (mutual TLS) certificates within/outside Kubernetes
   <br /><br />

Increased agility also includes the generation of new certificates and passwords for <strong>each new session</strong> rather than reusing stale keys (such as SSH keys for accessing GitHub) that sit around waiting to be stolen.

To live safely in the post-quantum age, organizations need to be quick at switching to both larger password/certificate key lengths that take longer to crack and more advanced algorithms to generate keys.


<a name="AQ"></a>

## Algorithmic Qubits (#AQ) Metric

IonQ provides their <a target="_blank" href="https://ionq.com/algorithmic-qubits">Algorithmic Qubits (#AQ) metric</a> to measure the effective number of qubits "2Q" needed to achieve fidelity on each given algorithm.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695593047/quantum-IonQAria-AQ-2022-1172x1386_i0taqw.png"><img alt="quantum-IonQAria-AQ-2022-1172x1386.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695593047/quantum-IonQAria-AQ-2022-1172x1386_i0taqw.png"></a>

On the right, <strong>"Result Fidelity"</strong> measures how close the output of a quantum circuit is to the ideal output. The ideal output is the output that would be produced by a perfect quantum computer. The fidelity of a quantum circuit is a number between 0 and 1 (blue dots), where 1.0 represents perfect fidelity.
"Success" can be defined along that spectrum, such as "37%".

So the blue dots on the chart is saying that they have consistently achieved useful results across many (but not all) algorithms tested.

About "2Q": Unlike <a target="_blank" href="https://www.zdnet.com/article/ionq-introduces-algorithmic-qubits-to-counter-quantum-volume-in-quantum-computing/">IBM's Quantum Volume</a> (QV) metric, IonQ's AQ adjusts down for error-correction resources in its number of "effectively perfect" qubits that are actually useful for a given algorithm. In the absence of error-correction encoding, AQ = log2(QV), or inversely, QV = 2AQ. AQ represents the number of "useful" encoded qubits in a particular quantum computer and is a simple proxy for the ability to execute real quantum algorithms for a given input size.

AQ is generally smaller than the number of physical qubits. Hence, ignore vendors (and by extension, their roadmaps) that describe their systems purely by the number of physical qubits. A 72 qubit chip and a million qubit chip with 95% fidelity gates both have a QV of 8 and an AQ of 3.  With that fidelity, only three qubits can be used for calculation, no matter the number of physical qubits.

With conventional computers (such as Windows), doubling the number of bits doubles its processing power (a factorial increase). However, adding a qubit to a quantum machine produces an <strong>exponential increase</strong> in its number-crunching ability. Thus, a 30-qubit quantum machine would, in theory, be a million times more powerful than a 10-qubit one.

It’s unclear exactly how many qubits will be needed to achieve Quantum supremacy. Researchers keep finding new algorithms to boost the performance of classical machines, and supercomputing hardware keeps getting better. But researchers and companies are working hard to claim the title, running tests against some of the world’s most powerful supercomputers. <a target="_blank" href="https://www.science.org/content/article/ibm-promises-1000-qubit-quantum-computer-milestone-2023">IBM seeks</a> a 1,000-qubit machine by 2023, up from 65 in 2020. A 1,000-qubit machine would still be 1000 times too small to break current internet encryption schemes. So IBM and Google plan to build a million-qubit quantum computer by 2030. IonQ plans to build a million-qubit machine by 2023.

Researchers Graig Gidney of Google, and Martin Ekera from the Swedish Royal Institute of Technology
demonstrated that 20 million qubits could <a target="_blank" href="https://cacm.acm.org/news/237303-how-quantum-computer-could-break-2048-bit-rsa-encryption-in-8-
">crack 2048-bit RSA in 8 hours</a>. This is actually far better than previous estimates of 1 billion qubits would be needed to break 2048-bit RSA keys. The reason for the difference is that the new algorithm (based on the number field sieve) is much more efficient than previous algorithms.

The "Q" variable is called the "<strong>Hamiltonian</strong>" of a qubit-based system because the quantum dynamics of a physical system are determined by its "Hamiltonian" encoding of all information about the interactions between constituents of the system and the effects of exogenous driving forces in a 2N by 2N matrix of complex numbers on classical machines. By running Analog Hamiltonian Simulation (AHS) quantum tasks on a quantum device, one can avoid these exponential resource requirements. Special-purpose devices reproduce the time-dependent quantum dynamics of hundreds of simultaneously interacting qubits.

Quantum computers harness entangled qubits in a kind of quantum daisy chain. The machines’ ability to speed up calculations using <strong>quantum algorithms</strong> is why there’s so much buzz about their potential.

<strong>"Circuit Width"</strong> refers to techiques for optimizing circuits. Many quantum circuits can be made more efficient if they have access to <strong>ancilla bits</strong> used as a workspace. A single ancilla in an unknown ("dirty") state can cut the cost of incrementing a register in half.
A quantum register consists of multiple qubits taken together.

https://quantumai.google/cirq/hardware/azure-quantum/getting_started_ionq

<hr />

<a name="Qubits"></a>

## Qubits

> "Atom Computing <a target="_blank" href="https://arstechnica.com/science/2023/10/atom-computing-is-the-first-to-announce-a-1000-qubit-quantum-computer/">claimed in 2023</a> to have built a 1,180 qubit quantum computer. While this is still too small to do real work, it’s the largest quantum computer we know about; it looks like it can scale to (somewhat) larger sizes; and it doesn’t require extreme cold."

<em>Adapted from Martin Giles January 29, 2019</em>

"Classic" computers (such as Windows and Macs) work using <strong>bits</strong> — a stream of electrical or optical pulses representing 1s or 0s. Everything from tweets and e-mails to iTunes songs and YouTube videos are essentially long strings of these binary digits.

The secret to a quantum computer’s power lies in its ability to generate and manipulate quantum bits, or <strong>qubits</strong>.

Qubits are typically subatomic particles such as <strong>electrons or photons</strong>. Generating and managing qubits requires scientific and engineering breakthroughs in atomic, molecular, and optical physics (AMO). Most of the hardware of a quantum computer is to isolate qubits in a cold, controlled quantum state.

   * Companies such as IBM, Google, <a href="#Microsoft">Microsoft</a>, and <a target="_blank" href="https://www.wikiwand.com/en/Rigetti_Computing">Rigetti Computing</a>, use <strong>superconducting circuits</strong> cooled to temperatures colder than deep space. Rigetti developed the <a target="_blank" href="https://www.wikiwand.com/en/Quil_(instruction_set_architecture)">pyQuil Python library</a> and a quantum programming API.

   * <a target="_blank" href="https://www.wikiwand.com/en/IonQ">IonQ</a> traps individual atoms within electromagnetic fields on a silicon chip in <strong>ultra-high-vacuum</strong> chambers (what they call "trapped-ion technology").

Qubits have quirky quantum properties such that a connected group of them can provide way more processing power than the same number of binary bits. One of those properties is known as superposition and another is called entanglement.

The quantum world is <strong>Probabilistic</strong>, not Deterministic. Matrices are used.

> "If quantum mechanics hasn't profoundly shocked you, you haven't understood it yet." - Niels Bohr


## Superposition

Qubits can represent numerous possible combinations of 1 and 0 <strong>at the same time</strong>. This ability to simultaneously be in multiple states is called <strong>superposition</strong>.

To put qubits into superposition, researchers manipulate them using precision lasers or microwave beams.

This counterintuitive phenomenon is what enables a quantum computer with several qubits in superposition to crunch through a vast number of potential outcomes simultaneously. The final result of a calculation emerges only once the qubits are measured, which immediately causes their quantum state to “collapse” to either 1 or 0.


## Entanglement

Researchers can generate pairs of qubits that are “entangled,” which means the two members of a pair exist in a single quantum state. Changing the state of one of the qubits will instantaneously change the state of the other one in a predictable way. Amazingly, this happens even if they are separated by very long distances.

Albert Einstein famously disparaged quantum entanglement as “spooky action at a distance,” because the idea that two particles separated by light-years could become “entangled” and instantaneously affect one another was counter to classical physics and intuitive reasoning.


## Decoherence

The interaction of qubits with their environment in ways that cause their quantum behavior to <strong>decay</strong> and ultimately disappear is called decoherence. Their quantum state is extremely fragile. The slightest vibration or change in temperature—disturbances known as “noise” in quantum-speak—can cause them to tumble out of superposition before their job has been properly done. That’s why researchers do their best to protect qubits from the outside world in those supercooled fridges and vacuum chambers.

Early quantum devices are generally referred to as noisy intermediate-scale quantum (NISQ) devices.

Despite efforts, noise still causes lots of errors to creep into calculations. Smart quantum algorithms can compensate for some of these, and adding more qubits also helps. However, it will likely take thousands of standard qubits to create a single, highly reliable one, known as a <strong>“logical” qubit</strong>. This will sap a lot of a quantum computer’s computational capacity.

Sometimes described in technical specs as “T2 time,” <strong>coherence time</strong> is how long a qubit can maintain coherent phase, that is, how long it can successfully maintain one of the critical quantum qualities like superposition and entanglement necessary for computation. Without these, you could use the qubits like classical bits, but there wouldn’t be much utility in that. Again, ions have a major advantage over many other qubit technologies here, with coherence times measured in minutes, potentially thousands of times longer than other platforms.


<hr />

<a name="QuantumCrackingTools"></a>

## Quantum Key Cracking tools

Cracking passwords and certificates using quantum computers requires hardware and software.

Quantum hardware manufacturers are also providing their own proprietary software running in public clouds:

   * <a href="#IBM+Qiskit">IBM Qiskit</a>
   * <a href="#Google+Cirq">Google Cirq</a>, led by Hartmut Neven
   * <a href="#Amazon+Braket">Amazon Braket</a>
   * <a href="#Microsoft+Q#+QML">Microsoft Q# QML</a> on Azure Quantum
   <br /><br />

Coding <a target="_blank" href="https://github.com/ionq/QC-App-Oriented-Benchmarks">prototype volumetric benchmark algorithms</a> (apps) used as the basis for <a href="#AQ">AQ metrics</a> are maintained by the Quantum Economic Development Consortium (QED-C) and SRI International. Their <a target="_blank" href="https://github.com/ionq/QC-App-Oriented-Benchmarks#implementation-status">progress on each platform above</a> is tracked in <a target="blank" href="https://github.com/ionq/QC-App-Oriented-Benchmarks/blob/master/_doc/images/proto_benchmarks_status.png">this table</a>:

<a target="blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695618862/quantum_benchmarks_status-1094x751_nu2ocm.png"><img alt="quantum_benchmarks_status-1094x751.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695618862/quantum_benchmarks_status-1094x751_nu2ocm.png"></a>

Notice that software used to crack passwords and certificates are not among them.


### Cracking Software

<a target="_blank" href="https://www.youtube.com/watch?v=6qD9XElTpCE">VIDEO</a>: <a target="_blank" href="https://www.wikiwand.com/en/Shor's_algorithm">Shor's Algorithm</a> is used to find the prime factors of an integer.

Run it in Jupyter on <a target="_blank" href="https://www.wikiwand.com/en/IBM_Q_System_One">IBM's Q System One</a> quantum computers <a target="_blank" href="https://github.com/smaranjitghose/quantum_burglary">"quantum burglary"</a> which calls Python qiskit to crack RSA encryption.

That's the quantum equivalent of the <a target="_blank" href="https://hashcat.net/hashcat/">Hashcat</a> password-cracking tool using classic software and hardware (Windows).

Alternately, <a target="_blank" href="https://hashcat.net/forum/thread-9818-page-2.html">these CUDA</a> running on NVDIA GPUs.


<a name="IBM+Qiskit"></a>

### IBM Qiskit

https://quantum-computing.ibm.com/

https://www.research.ibm.com/ibm-q/network

IBM provides access to their actual quantum computers using <a target="_blank" href="https://www.ibm.com/quantum-computing/learn/what-is-ibm-q/">IBMQ</a> when it released its open-source quantum computing development environment called <a target="_blank" href="https://qiskit.org/">Qiskit.org</a> (pronounced "kiss kit") in 2017.
It works with noisy quantum computers at the level of pulses, circuits, and algorithms.

IBM calls its jumbo liquid-helium refrigerator a "cryostat".

<a target="_blank" href="https://qiskit.org/textbook/preface.html">Qiskit Textbook</a> is a free introduction to quantum computing and Qiskit.


### D-Wave

<a target="_blank" href="https://www.dwavesys.com/">D-Wave at dwavesys.com</a> is a Canadian firm that provides access to their quantum computers through their <a target="_blank" href="https://cloud.dwavesys.com/leap/login/">Leap</a> cloud service.

<a name="Google+Cirq"></a>

### Google Cirq

In 2018 Google announced the creation of a 72-qubit quantum chip called "Bristlecone".

In 2021 Google has a cryogenic control circuit that operates at 4K, using Helium-4 and Helium-3 isotopes.

https://ai.google/research/teams/applied-science/quantum-ai/

1.  In Google Colab, Run this within Anaconda:
https://github.com/smaranjitghose/quantum_burglary/blob/master/quantum_burglary.ipynb
1.  Get dependencies: <tt>pip install -r requirements.txt</tt>
1.  Run <tt>jupyter notebook quantum_burglary.ipynb</tt>
1.  Enter your message, encrypt it using RSA and watch Shor's algorithm


<a name="Amazon+Braket"></a>

### Amazon Braket

Amazon provides a fully-managed IaaC service to quantum computers through their <a target="_blank" href="https://aws.amazon.com/braket/">Amazon Braket</a> offering [<a target="_blank" href="https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html">docs</a>]. As with other AWS services, Braket jobs run under IAM policies and roles to control access to S3 storage buckets and other resources.

The "Braket" named after the <a target="_blank" href="https://en.wikipedia.org/wiki/Bra%E2%80%93ket_notation">"bra-ket" notation standard</a> in quantum mechanics, aka Dirac notation introduced by Paul Dirac in 1939 to describe vectors (the state of quantum systems).

The Amazon Quantum Solutions Lab (AQSL) help customers explore the power of quantum computing and identify practical applications.

Amazon provides 1 free hour of simulation time per month on their Free Tier.

Access is provided through the <a target="_blank" href="https://aws.amazon.com/braket/getting-started/">AWS Braket GUI console</a> or the <a target="_blank" href="https://aws.amazon.com/braket/getting-started/#AWS_Braket_SDK">AWS Braket SDK</a> (Software Development Kit) for Python (<tt>braket.ahs</tt>), running in Jupyter notebooks on <a target="_blank" href="https://docs.aws.amazon.com/braket/latest/developerguide/braket-devices.html#braket-qpu-partner-quera">various providers of hardware</a> and <a target="_blank" href="https://quantiki.org/wiki/list-qc-simulators">simulators</a>.

AWS Braket <a target="_blank" href="https://docs.aws.amazon.com/braket/latest/developerguide/braket-devices.html#braket-qpu-partner-quera">enables</a> use of the PennyLane open-source software library to assist with the variational quantum eigensolver (VQE) algorithm and approximate optimization algorithm (QAOA). (Eigen is German for "own" and used in Linear Algebra)


<a name="Microsoft+QML"></a>

### Microsoft QML (Quantum Machine Learning)

   * <a target="_blank" href="https://aka.ms/learnqc">Microsoft's Quantum Computing Fundamentals Learning Path</a>
   * https://quantum.microsoft.com/ is the marketing landing zone
   * https://learn.microsoft.com/en-us/azure/quantum/ is the documentation menu
   * <a target="_blank" href="https://cloudblogs.microsoft.com/quantum/2018/06/01/achieving-practical-quantum-computing/">2018 VIDEO by Dave Wecker</a> on achieving practical quantum computing
   * <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/install-overview-qdk?tabs=tabid-vscode%2Ctabid-conda#to-configure-for-another-environment?azure-portal=true">Install the Quantum Development Kit (QDK)</a> on your local machine to develop and test quantum programs.
   * <a target="_blank" href="https://cloudblogs.microsoft.com/quantum/author/microsoft-quantum-team/"> Microsoft Quantum Team Blog</a>
   * Join the <a target="_blank" href="https://azure.microsoft.com/en-us/solutions/quantum-computing/network/?rtc=1">Microsoft Quantum Network</a> to collaborate with Microsoft and other organizations on quantum computing.
   <br /><br />

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695273472/az-quantum-arch-1224x363_sdsjmk.png"><img alt="az-quantum-arch-1224x363.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695273472/az-quantum-arch-1224x363_sdsjmk.png"></a>

In 2019, Microsoft developed a <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=quantum.quantum-devkit-vscode">QDK (Quantum Development Kit)</a> in
<a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/quickstart-microsoft-qiskit-portal">
Qiskit</a>,
<a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/quickstart-microsoft-cirq-portal">
Cirq</a>, and Microsoft's own <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/overview-what-is-qsharp-and-qdk">Q# (Qsharp)</a> languages that integrates with Python and .NET to run within Jupyter Kernel Type "IQ#" Notebooks running within <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/how-to-create-workspace?tabs=payg%2Ctabid-quick">Quantum workspaces</a> in the <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/overview-azure-quantum">Azure Quantum service</a> that use <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/provider-quantinuum?tabs=tabid-mcmr-with-q-provider%2Ctabid-arbitrary-angle-zz-gates-with-q-provider%2Ctabid-emulator-noise-parameters-with-q-provider%2Ctabid-tket-compilation-with-q-provider">Quantum simulators</a> and <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/quantum-computing-target-profiles">QPUs (Quantum Processing Units)</a> within <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/qc-target-list">hardware</a> provided by:

* <a target="_blank" href="https://www.rigetti.com/">Rigetti</a>: Gate-based superconducting processors that utilize Quantum Intermediate Representation (QIR) to enable low latency and parallel execution. <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/provider-rigetti#simulators">Simulator</a> and <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/provider-rigetti#quantum-computers">QPU</a>

* <a target="_blank" href="https://ionq.com/">IONQ</a>: Dynamically reconfigurable trapped-ion quantum computer for up to 11 fully connected qubits, that lets you run a two-qubit gate between any pair.

* <a target="_blank" href="https://www.quantinuum.com/">Quantinuum</a>: Trapped-ion system with high-fidelity, fully connected qubits, low error rates, qubit reuse, and the ability to perform mid-circuit measurements. <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/provider-quantinuum?tabs=tabid-mcmr-with-q-provider%2Ctabid-arbitrary-angle-zz-gates-with-q-provider%2Ctabid-emulator-noise-parameters-with-q-provider%2Ctabid-tket-compilation-with-q-provider">Quantum simulators</a>

* <a target="_blank" href="https://quantumcircuits.com/">Quantum Circuits</a>, Inc: Full-stack superconducting circuits, with real-time feedback that enables error correction, encoding-agnostic entangling gates.

* <a target="_blank" href="https://pasqal.io/">Pasqal</a>: Neutral atom-based quantum processors operating at room temperature, with long coherence times and impressive qubit connectivity. You can pre-register today for Azure Quantum’s private preview of Pasqal.

Microsoft provides a $500 credit for each of these providers.

Others include IBM, D-Wave (a Canadian firm), Alibaba in China are also offering access to quantum machines.

Use the Azure Quantum Resource Estimator to estimate the cost of running your programs on these providers.

As with other Microsoft language architectures, a <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/concepts-qir">Quantum Intermediate Representation (QIR)</a> program is produced from source code.



#### Install

1.  View the Microsoft Quantum Development Kit (QDK) code repository:

    https://github.com/microsoft/Quantum/

1.  After installing az base, install the <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/install-overview-qdk?tabs=tabid-vscode%2Ctabid-conda#azure-cli">CLI extension</a>

    az extension add --upgrade -n quantum

1.  There is a <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=quantum.quantum-devkit-vscode">QDK extension for VS Code</a>.

1.  Install

    pip install --upgrade azure-quantum

1.  Install optional dependencies for submitting Qiskit programs:

    pip install --upgrade azure-quantum[qiskit]

1.  Install optional dependencies for submitting Cirq programs:

    pip install --upgrade azure-quantum[cirq]

    ### VSCode Project

1.  <a target="_blank" href="https://learn.microsoft.com/en-us/training/modules/qsharp-create-first-quantum-development-kit/2-install-quantum-development-kit-code">Restart VSCode</a>

1.  Instead of creating new "Hello World" projects, clone the entire Microsoft Quantum Development Kit code repository at

    git clone https://github.com/wilsonmar/DevSecOps.git --depth 1

1.  In VSCode, open the folder "DevSecOps/Azure/QuantumHello"

1.  Navigate to the folder "Quantum", then "Samples" folder.

    cd DevSecOps/Azure/QuantumHello

1.  Verify the version of .NET Core you have installed:

    <pre><strong>dotnet --version
    </strong></pre>

    7.0.304 is the version I used at time of writing.

1.  Run the "Hello World" program:

    <pre><strong>dotnet run
    </strong></pre>


#### Visual Studio 2022 for Mac

1.  https://devblogs.microsoft.com/visualstudio/tag/visual-studio-2022-for-mac/ says "Visual Studio 2022 for Mac" is in Preview (at time of writing Sep 2023).

1.  If you have a Mac machine containing Apple Silicon (ARM64) M1 & M2 processors, at https://learn.microsoft.com/en-us/visualstudio/releases/2022/mac-release-notes click the blue "Download" for the latest <strong>Visual Studio 2022 for Mac</strong> installer, such as 50 MB "visualstudioformacinstaller-17.6.0.49.dmg".

    NOTE: That installs a different product than <tt>brew install --cask visual-studio</tt> which installs product "Visual Studio for Mac" (at version 17.5) is scheduled for retirement on August 31, 2024.

    WARNING: Do not download file <tt>VisualStudioSetup.exe</tt> for Windows PCs from
    https://visualstudio.microsoft.com/vs/mac/

    It contains .NET 6.0 SDKs.

1.  In your Finder, double-click "visualstudioformacinstaller-17.6.0.49.dmg" to run it.

1.  Double-click the "Install" button. Click "Open" on the confirmation pop-ups.
1.  Click "Install and Update" with a check to install <strong>3.5 GB</strong> containing .NET Core 7 SDK (the 3.1 has been deprecated)
1.  Provide your Mac password to allow the installation. A few times.
1.  Click "Continue" to install <strong>1.5 GB</strong> of .NET 6.0 SDKs.
1.  When "Done" appears, squeeze 4 fingers together on your mac trackpad to view apps.
1.  Click the "Visual Studio 2022 (preview).app" icon to run it.
1.  Click the "X" to close the installer dialog.
1.  In Finder, Downloads, right-click the "Visual Studio 2022 (preview).app" to Move it to trash.
<hr />


### Q# (Qsharp) Programming

    https://docs.microsoft.com/azure/quantum/concepts-overview/

    https://docs.microsoft.com/azure/quantum/concepts-qsharp-fundamentals/

See <a target="_blank" href="https://learn.microsoft.com/en-us/samples/browse/?languages=qsharp">Q# code samples</a> using the QDK.

   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/intro-to-qsharp-jupyter/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/running-your-first-job-on-the-azure-quantum-service/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/run-q-programs-from-python-or-net/ using code at https://github.com/microsoft/quantum/tree/main/samples/interoperability/qrng
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/creating-random-numbers-with-quantum-computing/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/solving-sudoku-using-grovers-algorithm/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/qsharp-with-dotnet/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/visualization/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/facts-and-assertions/
   1. https://learn.microsoft.com/en-us/samples/microsoft/quantum/quantum-teleportation-sample/ of entangled quibits See <a target="_blank" href="https://www.wikiwand.com/en/Quantum_teleportation">1,400 km (870 mi)</a>
   <br /><br />

CAUTION: Azure Quantum and the QDK manage three different capability profiles for QPU hardware:

   * <strong>Full</strong>: This profile can run any Q# program within the limits of memory for simulators or the number of qubits for physical quantum computers. Try it using the <a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/machines/full-state-simulator">Full state simulator</a>.

   * No Control Flow: This profile can run any Q# program that doesn't require the use of results from qubit measurements that control program flow. Within a Q# program targeted for this kind of QPU, values of type Result don't support equality comparison, such as this comparison between two results (desired != M(q)) to control the computation flow with an if statement:

   <pre>operation SetQubitState(desired : Result, q : Qubit) : Result {
        if (desired != M(q)) {
            X(q);
        }
    }
operation MeasureQubit(q : Qubit) : Result {
   return M(q);
}
operation SampleMeasuredQubit(q : Qubit) : Result {
    H(MeasureQubit(q));
    return M(MeasureQubit(q));
}
   </pre>

   * <strong>Basic Measurement Feedback</strong> profiles have limited ability to use the results from qubit measurements to control the program flow. Within a Q# program targeted for this kind of QPU, you can compare values of type Result as part of conditions within if statements in operations, allowing mid-circuit measurement.

   Basic Measurement Feedback profile targets allow measurement-based conditional operations and mid-circuit measurements, meaning that qubits can be selectively measured at a point other than the final statement of a quantum program, and the output of the measurement can be used in other operations. Mid-circuit measurement enables multiple measurements at any point throughout the quantum program. The quantum information of the measured qubits collapses to a classical state (zero or one), but the non-measured qubits retain their quantum state.

   <pre>operation MeasureQubit(q : Qubit) : Result {
    return M(q);
}
operation SetToZero(q : Qubit) : Unit {
     if MeasureQubit(q) == One { X(q); )
}
   </pre>

   Notice corresponding conditional blocks might not contain return or set statements.


### Honeywell

Honeywell has a relationship with Microsoft.

### Cambridge Quantum Computing

### Rigetti


<hr />

<a name="Circuit+diagrams"></a>

## Circuit diagrams

QASM (Quantum Assembly Language) is a textual representation of quantum circuits.

Graphical depiction of <a target="_blank" href="https://www.wikiwand.com/en/Quantum_circuit">quantum circuit</a> elements is described using a variant of the <a target="_blank" href="https://www.wikiwand.com/en/Penrose_graphical_notation">Penrose graphical notation</a>.
Richard Feynman used an early version of the quantum circuit notation in 1986.

Each horizontal line (left to right) represents time for a qubit.
Doubled lines represent classical bits.

Items connected by lines are operations performed on the qubits, such as measurements or gates.

These lines define the sequence of events, and are usually not physical cables.

The "depth" of a circuit is a metric that calculates the longest path between the data input and the output. Each gate counts as a unit.

The simplest gate involves one qubit, called a Hadamard Gate (H) which puts the qubit into superposition
(flipping the qubit from 0 to 1 or vice versa).
It's also known as a square-root of NOT gate.
The Pauli-X gate (NOT gate)...

The CNOT gate (controlled-NOT gate) is a two-qubit gate that performs a NOT operation on the second qubit only when the first qubit is in the state |1⟩.

The "width" of a circuit is the number of qubits used.

A gate that operates on two qubits is called a Controlled-NOT (CN) Gate.

A gate that operates on three qubits is called a Controlled Controlled-NOT (CCN) Gate.

<hr />

## References

    https://learn.microsoft.com/en-us/visualstudio/mac/supported-versions-net?view=vsmac-2022&WT.mc_id=dotnet-35129-website

    https://dotnet.microsoft.com/download/dotnet/3.1?azure-portal=true

    https://dotnet.microsoft.com/en-us/download/dotnet/7.0
    dotnet-sdk-7.0.401-osx-x64.pkg

    https://download.visualstudio.microsoft.com/download/pr/e0f9aead-ae21-411b-bb38-1c6393fb278a/69566da6d19724215edda3af6a9663cd/dotnet-sdk-7.0.401-osx-x64.pkg

1.  Install .NET SDK 6.0 from https://dotnet.microsoft.com/download

1.  Create a quantum-based random number generator (project "QuantumRNG")

              https://learn.microsoft.com/en-us/azure/quantum/quickstart-microsoft-qc?pivots=platform-ionq

    TUTORIAL: https://learn.microsoft.com/en-us/training/modules/qsharp-create-first-quantum-development-kit/

1.  Project file QuantumRNG.csproj

    <pre>&LT;Project Sdk="Microsoft.Quantum.Sdk">
  &LT;PropertyGroup>
    &LT;OutputType>Exe&LT;/OutputType>
    &LT;TargetFramework>net6.0&LT;/TargetFramework>
    &LT;ExecutionTarget>ionq.qpu&LT;/ExecutionTarget>
  &LT;/PropertyGroup>
&LT;/Project>
    </pre>

1.  Starter code "Program.qs" (Q#):

    <pre>namespace QuantumRNG {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
&nbsp;
    @EntryPoint()
    operation GenerateRandomBits() : Result[] {
        use qubits = Qubit[4];
        ApplyToEach(H, qubits);
        return MultiM(qubits);
    }
}
    </pre>

1.  Run on IonQ, Quantinuum, and Rigetti.

1.  quantum gates, algorithms, and T factories (Toffoli, Fredkin, etc.)

    Error correction is necessary.

<a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/install-overview-qdk?tabs=tabid-vscode%2Ctabid-conda">Set up the QDK</a>

s input and, therefore, supports any language that translates to QIR, for example, you can use the Azure Quantum Resource Estimator with Q# and Qiskit.

<a target="_blank" href="https://learn.microsoft.com/en-us/azure/quantum/hybrid-computing-interactive">
Examples of problems</a> that can use this approach are
Variational Quantum Eigensolvers (VQE) and
Quantum Approximate Optimization Algorithms (QAOA).

The Azure Quantum Resource Estimator computes post-layout physical resource estimation by taking a set of inputs such as qubit parameters, the quantum error correction (QEC) code, the error budget, and other parameters into account. It takes a Quantum Intermediate Representation (QIR) program as input and, therefore, supports any language that translates to QIR, for example, you can use the Azure Quantum Resource Estimator with Q# and Qiskit.

https://www.technologyreview.com/s/612844/what-is-quantum-computing/?utm_campaign=site_visitor.unpaid.engagement&utm_source=hs_email&utm_medium=email&utm_content=69704878&_hsenc=p2ANqtz-_1ri8lmxU5s3GtYayE9BTUjc9X24kky1mK95qgkzX5HOWJ9Jq4cwe80r50ZMkk68XKiRgqhZKDz3cfYtQpOmv2FC4_Fw&_hsmi=69704878



## Nano tech

Nano-switches made out of graphene could make electronics even smaller.
China’s military is rushing to use artificial intelligence.
Even Amazon wants face recognition regulated.
China is leaving the US in the dust on electric-vehicle chargers.

Universities and businesses working on them are facing a shortage of skilled researchers in the field—and a lack of suppliers of some key components.

If these exotic new computing machines live up to their promise, they could transform entire industries and turbocharge global innovation.

<a target="_blank" href="https://www.eventbuilder.rocks/">Event builder</a> <a target="_blank" href="https://meetings.hubspot.com/david-mendies?__hstc=25031653.a0e8cffc2aed46806882a4610d6922e3.1695342836103.1695342836103.1695342836103.1&__hssc=25031653.1.1695342836103&__hsfp=2283562759&hsCtaTracking=30bd1522-2714-4521-a874-18ed8e87f79c%7C2e49fec3-8e16-478b-94ea-bf3f9c1e67dd">Meet with</a> David Mendies

<hr />

## Resources

* <a target="_blank" href="https://standards.ieee.org/ieee/7130/10680/">P7130 – IEEE Standard for Quantum Computing Definitions</a>

* https://ionq.com/resources/glossary

* NIST Post-Quantum Computing Standard https://www.nist.gov/newsevents/
news/2019/01/nist-reveals-26-algorithms-advancing-post-quantum-crypto-semifinals

<a target="_blank" href="https://learning.oreilly.com/search/topics/quantum-computing/?type=*&rows=10">On OReilly.com</a>:
   * <a target="_blank" href="https://learning.oreilly.com/library/view/quantum-computing-in/9781617296321/">OReilly</a>: Quantum Computing in Action</a> Manning Publications February 2022 By Johan Vos

   * <a target="_blank" href="https://learning.oreilly.com/videos/-/9780137872558/continue/">8-Hour video "Quantum Computing Fundamentals"</a> on OReilly from Pearson February 2023 - introduction to Quantum Computing from <a target="_blank" href="https://www.linkedin.com/in/chuck-easttom-m-ed-mba-msse-ph-d2-d-sc-482568184/">Dr. Chuck Easttom</a> at Vanderbilt and Georgetown.

   * https://quantumcomputing.stackexchange.com/questions/5769/how-to-calculate-circuit-depth-properly

   * <a target="_blank" href="https://cloudblogs.microsoft.com/quantum/2020/05/19/azure-quantum-preview-new-developer-training-learning-tools/">quantum-inspired optimization (QIO)</a>

* https://www.classiq.io/docs/constraints

* <a target="_blank" href="https://www.youtube.com/watch?v=JXA6XC9WB6w&list=PLIuxSyKxlQrCmQL8wRn3F04VmD596oD7s&index=1">Conf42.com Quantum Computing 2023 presentations</a>

https://sdtimes.com/softwaredev/mastering-the-quantum-code-a-primer-on-quantum-software/

BLOG: https://security.apple.com/blog/imessage-pq3/
https://www.youtube.com/watch?v=4USgxax1-RQ
Apple Updates iMessage with Post Quantum Encryption (PQC)
https://signal.org/blog/pqxdh/
Signal protocol published in 2013
https://signal.org/docs/specifications/x3dh/
X3DH Key Agreement Protocol
HNDL forward secrecy