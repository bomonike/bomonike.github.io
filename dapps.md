---
layout: post 
date: "2023-01-09"
changes: "v033 + from wilsonmar :dapps.md"
file: "dapps"
title: "DApps (Distributed Applications) for DAOs (Distributed Autonomous Organizations)"
excerpt: "How to use and write code running blockchains (Etherium ECS cluster based on AWS Blockchain Templates)"
tags: [shop,blockchain]
image:
# dapps-collab-1900x500.png 
  feature: https://user-images.githubusercontent.com/300046/132136810-696b151f-9cbb-4f2c-93fb-7061754d9591.png
  credit: Flock
  creditlink: https://blog.flock.com/3-things-ceos-must-do-for-effective-collaboration
comments: true
created: "2021-08-13"
---
<a target="_blank" href="https://bomonike.github.io/dapps"><img align="right" width="100" height="100" alt="dapps.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/dapps.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

{% include whatever.html %}

## DAOs (Decentralized Autonomous Organizations)

[<a target="_blank" href="https://www.youtube.com/channel/UCX4GNxoP4GdGQk7pUp0j6JA">channel</a>]
<a target="_blank" href="https://www.youtube.com/watch?v=rGFTeW6QBSo">VIDEO</a>: "The way the world is going to work in the future" <a target="_blank" href="https://www.youtube.com/watch?v=DRl53OBUdUU&t=2m23s" title="Sep 9, 2019 by Adam Levi, DAOStack">"A DAO is like a Faceboook group, but has a budget and people can propose and vote"</a> -- <a target="_blank" href="https://www.linkedin.com/in/leviadam/">Adam Levi</a>, former CEO DAOStack.

   * <a target="_blank" href="https://daotalk.org">https://daotalk.org</a>
   * <a target="_blank" href="https://aragon.org/">https://aragon.org</a>
   <br /><br />

DeFi (Decentralized Finance) DApps from protocols such as:
   * <a target="_blank" href="https://coinmarketcap.com/alexandria/article/all-about-compound-flipside-crypto">Compound</a>
   * <a target="_blank" href="https://coinmarketcap.com/alexandria/article/defi-continues-blistering-growth-in-february-flipside-crypto">Aave</a>
   * <a target="_blank" href="https://coinmarketcap.com/alexandria/article/how-to-use-uniswap">Uniswap</a>
   <br /><br />

The "Common - Collaborative Action" mobile app on <a target="_blank" href="https://apps.apple.com/il/app/common-collaborative-action/id1512785740">iOS</a> and <a target="_blank" href="">Android</a> is by 
<a target="_blank" href="https://daostack-1.gitbook.io/v1/">DAOstack.io</a> (<a target="_blank" href="https://twitter.com/daostack">@DAOstack</a> based in Israel with remote workers).

"Working together to make a difference" is the tagline. That can be the same as any other collaboration app. But this open source project aims to provide a platform to eventually create businesses that work autonomously -- one with no employees, no bosses, and nonstop production: preprogrammed rules determines how the company operates, and computers do the rest. It's not yet a fleet of autonomous taxis running itself 24-7, including driving to the repair shop for maintenance, without any human involvement.

> "Common is a platform for distributed, democratic, and transparent social action"

In the app, join a "Common" from among <a target="_blank" href="https://alchemy.daostack.io">Alchemy.daostack.io</a> (on @OffchainLabs's Arbitrum) which allows <a target="_blank" href="https://medium.com/daostack/the-alchemy-evolution-part-1-4c30563440c8">quick switching among DAOs</a>:

![dapps-alchemy-daos-364x420](https://user-images.githubusercontent.com/300046/132138091-6021c7be-df36-424a-83eb-a6efc488d6ff.png)

Alchemy's DXdao MultiCall plugin allows the DAO to interact with any ethereum contract. This creates governance proposal opportunities: liquidity provision, trading on AMMs, voting in other DAOs, etc. 

Each DApp makes use of several <a target="_blank" href="https://daostack-1.gitbook.io/v1/introduction/architecture-overview">architectural components of DAOstack</a> peer-to-peer decision-making modules:

![dapp dao-398x523](https://user-images.githubusercontent.com/300046/132134906-cdadc9ff-e11d-46df-9bdf-cef56e4c5c2d.png)

The DApp is "powered" by blockchain-backed <a href="#SmartContracts">smart contracts</a> layer, based on reliable crypto-economic incentives and <strong>decentralized governance protocols</strong>. 

From the bottom, the Etherum blockchain is used to build <strong>Infra</strong>, a smart contract library (written in <a href="#Solidity">Solidity</a> language) to provide Voting Machines which follows predefined rules for decision-making. In addition to a simple absolute majority vote, DAOstack has a sophisticated <a target="_blank" href="https://medium.com/daostack/on-the-utility-of-the-gen-token-eb4f341d770e">Genesis protocol</a> to reach <a target="_blank" href="https://medium.com/daostack/holographic-consensus-part-1-116a73ba1e1c">"holographic concensus"</a> without requiring a high participation rate by the whole group. This works by adding a market for <strong>GEN Predictive Network</strong> (a crypto-economic game using ERC-20 tokens) to each DAO so that any individual who confidently believes a particular proposal will pass can "boost" consideration of a proposal by purchasing a large prediction stake to pass by a "relative" majority. This influences the DAO’s collective attention. DAO members and outsiders can obtain a <strong>GEN reward</strong> for offering a DAO their expert attention, to help the DAO can focus on the highest-leverage proposals and make smarter collective decisions. 

Solidity (using Remix IDE) 

NOTE: <a target="_blank" href="https://coinmarketcap.com/currencies/daostack/">The current price of GEN tokens in USD</a>
by the top exchanges for trading in DAOstack: CoinTiger, AEX, Uniswap (V2), Hotbit, and CoinEx.

> “In the same way that ether is gas for the collective attention of computers, the GEN token is gas for the collective attention of human beings.” - Matan Field, DAOstack Architect

Also included is a voting rights management system to distribute voting rights -- "balances" that represent the voting power each participant holds. Currently, DAOs on DAOstack use "reputation"-based voting rights. Reputation is a number tracked for each user that can be increased / decreased via proposals or other mechanisms.

DAOstack's subgraph: querying DAO data.

The <a target="_blank" href="https://daostack-1.gitbook.io/v1/introduction/architecture-overview/arc.js-javascript-library">Arcjs</a> JavaScript/TypeScript library facilitates DAO access to smart contract voting, proposing, staking and executing proposals. This is particularly helpful for developers who want to get the advantages of decentralized governance on the blockchain without dealing directly with a smart contract language.

<a target="_blank" href="https://www.youtube.com/watch?v=BtCopAFBH6M">Jordan Greenhall (former DIVX CEO)</a>.

Examples of successful DApps with millions of dollars in market capitalization and active users: 
   * Augur (<a target="_blank" href="https://coinmarketcap.com/currencies/augur/">REP</a>) prediction market platform
   * Golem (<a target="_blank" href="https://coinmarketcap.com/currencies/golem-network-tokens/">GNT</a>) market for idle computer power
   * Basic Attention Token (<a target="_blank" href="https://coinmarketcap.com/currencies/basic-attention-token/">BAT</a>) blockchain-based digital advertising platform
   <br /><br />

## First there was GitHub & Bitcoin

<a target="_blank" href="https://git-scm.com/book/en/v2/Getting-Started-A-Short-History-of-Git">In 2005</a>, Linux Torval, who also created Linux, applied "Directed Ascyclic Graphs" to Git, which enabled modern software source version management. For each commit, Git uses the SHA1 cryptographic function to create a hash of the contents and previous hash. This makes it very difficult to insert (corrupt or censor) the chain of events after the fact.

In 2009 Bitcoin ($BTC) appeared as the first decentralized currency.

The concepts behind Bitcoin were described a year earlier in a whitepaper written anonymously under the name "Satoshi Nakamoto". A ledger holds a sequential history (chain) of transactions. A cryptographic hash is made of each transaction and the transaction before it. Any change would be detected.

These features enabled transactions of assets (currency) to occur without the need for a traditional banking system using government-managed money.

BTW "orange pilled" is a term used to describe the process of convincing a fiat-minded person that they are missing out by not investing in bitcoin. 

Unfortunately, criminals use the anonymous aspect of Bitcoin to receive ransoms from victims.

<a target="_blank" href="https://coingecko.com/en/">Many crypto currencies</a> have appeared, but Bitcoin remains the most well-known and has the largest market capitalization.

The number of cryptocurrencies fostered a need for marketplaces and trading platforms than handles several currencies, such as <a target="_blank" href="https://www.liquid.com/">liquid.com</a>

OpenSea (to allow a DAO to manage a NFT storefront)

Etherium ($ETH) is the next largest crypto currency.


<a name="Blockchain"></a>

## Blockchain and peer-to-peer Web3

Blockchain is a paradigm shift that allows the creation of systems which run “on their own”, by the protocol agreed before their launch. 

Unlike "Web 2.0", which enabled "third parties" such as Google, Facebook, LinkedIn to become the richest in the world by controlling and selling their user's data in their centralized databases, <strong>Web3 (aka "Web 3.0")</strong> are <strong>decentralized</strong> systems where users don’t have to give up on control (monitization) of their own data.

The "Sign Sign On" (SSO) of the future are "Decentralized Identifiers"(DDI) used by a "Self Soverign Identities" (SSI) approach, such as the <a target="_blank" href="https://medium.com/energy-web-insights/energy-web-unveils-ew-switchboard-2f71bc82daa0">EW Switchboard</a>.

For example, instead of users going to a central system offered by Facebook, Google Docs, Box, Microsoft, etc., decentralized users would use <a target="_blank" href="https://docs.filecoin.io/">Filecoin</a>, a <strong>peer-to-peer network</strong> that stores files, with built-in economic incentives to ensure files are stored reliably over time:

<a target="_blank" href="https://user-images.githubusercontent.com/300046/132142066-f227265c-afa4-4aa7-bcbd-2b17a838e5ba.png">
<img alt="dao-filecoin-flow-1181x779.png" width="1181" height="779" src="https://user-images.githubusercontent.com/300046/132142066-f227265c-afa4-4aa7-bcbd-2b17a838e5ba.png"></a>

Governments are naturally resistant to decentralized mechanisms because governments are in the business of centralized control, with the ability to shutdown Facebook, Instagram, Twitter, etc. Wikipedia has not been accessible in Turkey for a few years. <strong>Decentralized systems are difficult to shut down.</strong>

<a target="_blank" href="https://coinmarketcap.com/alexandria/article/what-is-web-3-0">Cornerstones of Web 3.0</a> are semantic web and artificial intelligence (AI). Applying semantics in the Web would enable machines to decode meaning and emotions by analyzing data. 

https://medium.com/energy-web-insights/api-access-security-for-dapps-cfcfa928623c

<a name="Web3j"></a>

### web3j

Web3j (at <a target="_blank" href="https://docs.web3j.io/">web3j.io</a>) is a modular, reactive, type-safe Java and Android library for working with Smart Contracts and integrating with clients (nodes) on the Ethereum network.

https://www.dorg.tech/#/dao-creator


## Blockchain Platforms

Several technical platforms have appeared to make use of the Blockchain architecture.

<table border="1" cellpadding="4" cellspacing="0">
<tr valign="bottom"><th> Feature </th><th> Ethereum </th><th> Hyperledger Fabric </th></tr>
<tr valign="top"><td> Sponsor </td><td> Ethereum Developer Community </td><td> Linux Foundation</td></tr>
<tr valign="top"><td> Security </td><td> Permissionless </td><td> Permissioned (ACLs) </td></tr>
<tr valign="top"><td> Confidentiality </td><td> Transparent! </td><td> Confidential transactions</td></tr>
<tr valign="top"><td> Usage/Purpose </td><td> B2C (Business to Consumer) </td><td> B2B (Business to Business)</td></tr>
<tr valign="top"><td> Early Adopters </td><td> IBM, SAP, HPE </td><td> Amazon, Facebook, Ebay</td></tr>

<tr valign="top"><td> Mode of peer participation network </td><td> Public/Private and Permissionless network</td><td> Private and Permissioned network </td></tr>

<tr valign="top"><td> <a href="#SmartContracts">Smart contracts</a> </td><td> <a href="#SmartContracts">Smart contracts</a> </td><td> Chaincode </td></tr>
<tr valign="top"><td> Programming language </td><td> <a href="#Solidity">Solidity</a> (Python) </td><td> Golang, NodeJs, Java </td></tr>
<tr valign="top"><td> Throughput </td><td> ~20 tps </td><td> ~ 2,000 (parallel) tps </td></tr>
<tr valign="top"><td> IDE (Editor) </td><td> Remix IDE </td><td> - </td></tr>
<tr valign="top"><td> API (App Programming Interface) </td><td> <a href="#Web3j">web3j</a> </td><td> ? </td></tr>

<tr valign="top"><td> Concensus mechanism </td><td> PoW (Proof of Work) reached by <strong>mining</strong></td><td> Modular Pluggable Concensus algorithm such as PBFT (no mining required)</td></tr>
<tr valign="top"><td> Cyptocurrency token </td><td> <a href="#Ether">Ether (ETH) Gas</a> built-in </td><td> No built-in cryptocurrency</td></tr>
</table>

Closed and open chains can supplement each other, and move forward together. The Vostok platform, https://vostokplatform.io. is based the open "Waves" technology, from registries to voting, from payments to supply chains.

References:
   * <a target="_blank" href="https://www.youtube.com/watch?v=tjrvWvX4diA" title="Mar 13, 2018">Ethereum vs. Hyperledger</a> by <a target="_blank" href="https://edureka.co/blockchain-training">Edureka</a>.
   * <a target="_blank" href="https://www.youtube.com/watch?v=nxP-H3IE-Bg">by "101 Blockchains"</a>
   * Microsoft exited the blockchain market
   <br /><br />

## Asset Ownership transactions

Each transaction changes the ownership of an <strong>asset</strong>, which might be:
   * Physical property — houses, unique artwork
   * Virtual collectables — unique pictures of kittens, collectable cards
   * “Negative value” assets — loans, burdens and other responsibilities
   <br /><br />

"Chaincode" defines an asset along with instructions (business logic) for modifying them.

<a name="SmartContracts"></a>

## Smart contracts

"Smart contracts" are a mechanism that allows common contractual clauses to be specified, verified (enforced) in the absence of trust between contracting parties and in the absence of a third party.

There are several use cases for decentralized apps processing "smart contracts":
   * voting (registrar signs blinded token to issue each ballot without tying a voter to his/her vote)
   * legal agreements
   * supply chains
   * digital ownership (CryptoArt)
   <br /><br />


## NFT projects

NFT Implementations and other projects

* In Aug 2021, Alibaba (the internet giant in China, which cracked down on all things crypto) created a NFT marketplace called “Blockchain Digital Copyright and Asset Trade” for content creators to copyright material and sell the rights (tokens) as well.

* CryptoKitties. https://www.cryptokitties.co
* 0xcert ERC-721 Token. https://github.com/0xcert/ethereum-erc721
* Su Squares. https://tenthousandsu.com
* Decentraland. https://decentraland.org
* CryptoPunks. https://www.larvalabs.com/cryptopunks issues 10,000 collectible characters were created on the Ethereum blockchain. This boot-strapped a community.
* DMarket. https://www.dmarket.io
* Enjin Coin. https://enjincoin.io
* Ubitquity. https://www.ubitquity.io
* Propy. https://tokensale.propy.com
* CryptoKitties Deployed Contract. https://etherscan.io/address/0x06012c8cf97bead5deae237070f9587f8e7a266d#code
* Su Squares Bug Bounty Program. https://github.com/fulldecent/su-squares-bounty
* XXXXERC721. https://github.com/fulldecent/erc721-example
* ERC721ExampleDeed. https://github.com/nastassiasachs/ERC721ExampleDeed
* Curio Cards. https://mycuriocards.com
* Rare Pepe. https://rarepepewallet.com
* Auctionhouse Asset Interface. https://github.com/dob/auctionhouse/blob/master/contracts/Asset.sol
* OpenZeppelin SafeERC20.sol Implementation. https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/token/ERC20/SafeERC20.sol
* opensea.io Bored Ape Yacht Club
* palm.io

"CryptoArt"

Third party brokers/wallets/auctioneers (“operators”). 

The coinbase app has good tutorials in it and you get free crypto by going through them.

## DApp platforms

*  Ethereum is the clear leader, doubling its total value locked (TVL) to $54 billion in the first three months of 2021. So it can become overwhelmed.

* Binance Smart Chain (BSC) surpassed Ethereum in the number of unique active wallets in Q1 2021, with 105,000 to Ethereum’s 75,000, according to DappRadar.

* Hyperledger
* <a target="_blank" href="https://coinmarketcap.com/currencies/neo/">Neo (NEO)</a>
* <a target="_blank" href="https://coinmarketcap.com/currencies/nem/">NEM (XEM)</a>
* <a target="_blank" href="https://coinmarketcap.com/alexandria/article/a-deep-dive-into-cardano">Cardano</a>
* <a target="_blank" href="https://coinmarketcap.com/alexandria/article/right-on-the-dot-polkadot-and-on-chain-intelligence-flipside-crypto">Polkadot</a>
* EOS

### Etherium 

Etherium is an open-source public blockchain-based platform that supports smart contracts.
It is maintained by the Ethereum Foundation by developers.

Nodes run in the EVM (Ethereum Virtual Machine) execution environment, which
   * executes contract code
   * calculates transaction complexity (gas consumption)
   * verify transactions
   <br /><br />

EVM is Turing complete, meaning it can execute any operation a regular computer can. 

Value is transferred by a transaction message sent between EOAs.

Eth doubling its total value locked (TVL) to $54 billion in the first three months of 2021. 

Transactions are initiated from accounts of two types having an Ether balance, so can fire transactions 
   * Externally Owned Accounts (EOAs) are held by humans identified by a public/private key pair. EOAs have no associated code.
   * Contract accounts are associated with contracts, and associated with code which process transactions on the blockchain.
   <br /><br />

Each transaction contains the recipient, the sender's signature, the value of assets to send to the recipient, and the "gas price" set by the initiatior as incentive for transactions to be processed (in units of Ether). The "gas limit" is the hard cap on that incentive.

Initiated transaction requests are broadcast to all nodes in the entire blockchain network.

Transactions are added to the block of a Miner.

The process of verifying transactions is called "mining" by miners. 
Verification is 
nodes need to converge (agree) on consistency of transactions and order of transactions.

There are two trustless consensus algorithms:

   * Hyperledger uses PBFT (Practical Byzantine Fault Tolerance) Proof-of-stake where the first one shouts out the decision
   * Etherium v1 uses Proof-of-work
   * Ethereum 2.0 uses a proof-of-stake 
   <br /><br />

Miners determine the next block added to the chain.

Each transaction is stored as a "block".

"blocks" in "blockchain" refers to how transactions are stored - in a chain of encypted blocks.
Linked together cryptographically using hashes.
Encryption is used so that the blockchain cannot be modified (corrupted or censored)

Distributed Ledger in a Blockchain Network

Etherium' API is called "web3j". 

<a name="Ether"></a>

To compensate nodes on Ethereum for their participation, "Etherium" uses its "Ether" cryptocurrency.

<hr />

## MainNet and TestNet


### Etherium standards

Other Etherium standards at https://github.com/ethereum/eips/issues/721

   * Standard Interface Detection standard ERC165 is used to expose interfaces.
   * <a target="_blank" href="https://eips.ethereum.org/EIPS/eip-20">ERC-20 Token Standard</a>.
   * ERC-173 Owned Standard.
   * ERC-223 Token Standard.
   * ERC-677 transferAndCall Token Standard.
   * ERC-827 Token Standard.
   <br /><br />

### Etherium blockchain made distinct (non-fungible)

The <a target="_blank" href="https://eips.ethereum.org/EIPS/eip-721">ERC-721 standard</a> defined in 2018 an API to track and transfer non-fungible tokens, also known as deeds" aka "smart contracts" 
powers most digital art and collectibles.

ERC-721 is a mechanism to associate NFTs with URIs. 

ERC-721 is inspired by the ERC-20 token standard where each of a quantity of tokens is identical (fungible), 
which is insufficient for tracking NFTs when each asset is <strong>distinct (non-fungible)</strong>.


<hr />

<a name="Solidity"></a>

## Etherium Solidity programming

"pragma solidity" refers to the Solidity object-oriented programming language.
https://docs.soliditylang.org/en/v0.5.3/layout-of-source-files.html

Solidity is the ("high-level object-oriented") programming language that compiles to Bytecode which runs on Ethereum Virtual Machines.

Solidity is used to build Decentralized applications (DApps)

It has syntax similar to JavaScript: semi-colons at the end of each phrase.

https://www.linkedin.com/learning/blockchain-learning-solidity/get-started-with-solidity
Blockchain: Learning Solidity by Emmanuel Henri


<a name="Truffle"></a>

0xcert ERC-721 Token includes test cases written using Truffle.

Truffle (<a target="_blank" href="https://github.com/trufflesuite/truffle">github.com/trufflesuite/truffle</a>) is a npm development environment, testing framework, and asset pipeline for Ethereum  smart contract compilation, linking, deployment and binary management. Its automated contract testing uses Mocha and Chai testing frameworks.

## CI/CD TestNet 

Migrating contracts to mainnet costs eth. So...

<a target="_blank" href="https://hub.docker.com/r/trufflesuite/ganache-cli/">
Ganache CLI</a> is a test blockchain used to run tests. Many prefer to use its Docker image by migrating contracts to the container where tests are run.

Other test networks: ropsten, rinkeby, kovan

<a target="_blank" href="https://ethnews.com/the-goerli-testnet-has-arrived">
Gorli testnet</a> is suppose to be a universal testnet 

CircleCI is a well-known SaaS CI/CD
<a target="_blank" href="https://github.com/wbuchwalter/circleci-ethereum">
This obsolete Windows VSTS from 2017</a> use Geth and testrpc in containers
by <a target="_blank" href="http://blog.davidburela.com/">David Burela</a>

https://github.com/sambacha/solidity-ci


## IPFS 

Blockchains are not designed to store files. And legacy file storage mechanisms such as NFS, Google Drive, Dropbox, etc. are central Web 2.0 technologies.

The <a target="_blank" href="https://ipfs.io/">IPFS</a> (InterPlanetary File System) distributes files in a <strong>peer-to-peer (P2P)</strong> network of computers which hold files for others, similiar to <a target="_blank" href="https://en.wikipedia.org/wiki/Bittorrent">BitTorrent</a>, which uses its own protocol.

   * <a target="_blank" href="http://www.blust.tv/">Blust.tv</a> aims to use IPFS to distribute movies when requested by its users. By adding their proprietary secret-sauce, they will facilitate the legal streaming of videos over P2P networks.

   * <a target="_blank" href="https://audius.co/">Audius</a> is a music streaming platform built on IPFS. Artists are in control, no fees are taken by the platform, and listeners can enjoy their music while offline.

A file such as https://en.wikipedia.org/wiki/Aardvark, on a website owned by Wikipedia, who can grant or deny access on its own. In IPFS that file would be retrieved using this CID (Content Identifier), a unique fingerprint: <a target="_blank" href="https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Aardvark.html">https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Aardvark.html</a>

Instead of locations, that jumble of characters after "/ipfs/" is the <strong>content identifier</strong> created as a cryptographic hash of the entire contents of the file.  Any change to the content would yield a whole other hash value. So you are able to verify content received by comparing hashes them to the CIDs that you requested. These CIDs also blocks to be deduplicated (removing duplicates), to reduce disk usage.

### Filecoin (FIL)

At the end of 2021, 3,500 storage providers around the world collectively offer more than 13EiB of storage capacity, according to the <a target="_blank" href="https://fil.org/">Filecoin Foundation</a>, who says their Filecoin network storage is more cost effective than traditional storage providers. 

New York City's <a target="_blank" href="https://opendata.cityofnewyork.us/">Open Data</a> office put city information on <a target="_blank" href="https://filecoin.io/">Filecoin</a>, a decentralized storage network - a project of the Protocol Labs, who also developed IPFS and libp2p (a modular networking stack). 

<a target="_blank" href="https://www.coinbase.com/price/filecoin">Filecoin (cryptocurrency FIL)</a> 
provides financial incentives for both ends of "deals" during communication between clients and the network.
Storage miners store the data, and retrieval miners who supply the network bandwidth.

In a storage deal, the client chooses a miner to store their data and locks up the funds necessary to pay for storage. Once the agreement is accepted, the file is transferred and stored by the miner. The miner provides continuous proof of storage to the chain in order to receive rewards from the funds locked up by a client. If they fail to provide a proof (or if proof is delayed) the miner gets penalized.

In a retrieval deal, the client makes a payment to a retrieval miner to extract the data from the network. (Retrieval miners can also be storage miners, but they don’t have to be.) These deals are executed "off-chain" — using micropayment channels to reward miners for data retrieval.


### NPM

The JavaScript language Node package manager (NPM) is also mirrored on IPFS. 

### DNSLink IPNS

<a target="_blank" href="https://docs.ipfs.io/concepts/dnslink/">DNSLink</a> maps CIDs to human-readable DNS names, creating and updating mutable links to IPFS content.

IPFS finds the latest version of a file using the <strong>IPNS InterPlanetary Name System (IPNS)</strong> allows for publishing the latest version of any IPFS content, even though the underlying IPFS hash has changed. 

To request blocks, IPFS currently uses the <strong>Bitswap</strong> module of https://libp2p.io/ to send a <strong>wantlist</strong> of all the blocks you're interested in. 

The IPFS network is a CDN (Content Distribution Networks) by design because each node caches what they consume and serve that data to its peers. But IPFS does not just copy files on several servers like Akamai and other traditional CDNs. 

By using the dedicated client npm-on-ipfs (opens new window), packages are fetched from IPFS and distributed to other clients needing them. For example, a team working in the same building will fetch packages from each other, meaning less network traffic costs for the company.


Content discovery is via distributed hash tables (DHTs) which works similar to DNS.
THe DHT is split across all peers in a distributed network.

There are other content replication protocols under discussion, the most developed which is Graphsync.

An individual IPFS address can refer to the metadata of just a single piece of a file, a whole file, a directory, a whole website, or any other kind of content. 

IPFS is based on possession and participation, where many people possess each others' files and participate in making them available.

IPFS mirrors each file in several locations. So if someone attacks one web server, you can still get the same webpages from another mirror. It's also harder for states, corporations, etc. to block access.

There are services based on IPFS called pinning services (like Dropbox).

By default, your computer shares a file with others for a limited time after you've downloaded it using IPFS. You can also make content available more permanently by pinning it, which saves it to your computer and makes it available on the IPFS network until you decide to unpin it.

<a target="_blank" href="https://www.youtube.com/watch?v=Z5zNPwMDYGg">VIDEO</a>:
How IPFS Deals With Files

<a target="_blank" href="https://github.com/marketplace/actions/upload-to-ipfs">
upload-to-ipfs GitHub Action</a> uploads DApps or content to IPFS in a GitHub pipeline,
using the <a target="_blank" href="https://pinata.cloud/">Pinata cloud service</a>.
They provide 1GB free storage to get you started. Get your API key from the account section for use later.

Clients listen for <a target="_blank" href="https://dnslink.io/">DNSLink</a> entries on the Dweb.


### IPFS CLI

https://docs.ipfs.io/how-to/command-line-quick-start


### IPFS Desktop GUI clients

<a target="_blank" href="https://orion.siderus.io/">Orion</a> enables sharing of content on the public peer to peer network without any command line or technical knowledge. The app includes everything needed to start your own personal IPFS node.

<a target="_blank" href="https://github.com/ipfs-shipyard/ipfs-desktop">IPFS Desktop</a> is the official desktop client for IPFS. It comes with a built-in IPFS node that lets you pin files and gives you a link to share them. This is generally seen as the easiest point-of-entry into the IPFS ecosystem.

<a target="_blank" href="https://arbo.re/">Arbore</a> is a free and open-source file-sharing application that enables you to send your pictures, documents, files to your contacts privately and without limits.


## DWeb DNSLink

<a target="_blank" href="http://blog.davidburela.com/">David Burela</a>
who wrote <a target="_blank" href="http://blog.davidburela.com/2020/10/01/combining-azure-static-web-apps-with-the-decentralised-web/">Combining Azure static web apps with the decentralised web</a> by using Cloudflare which supports ipfs-deploy

<a target="_blank" href="https://fleek.co/">Fleek.co</a> enables websites & apps to be built using IPFS. The workflow is similar to that of Netlify: developers can link their website or a web app hosted on GitHub to Fleek and have it automatically built and deployed on IPFS whenever a change is made to a specific branch. 

Fleek also comes with Ethereum Name Service (ENS) and domain name integration.


<hr />

## Ethereum blockchain dev

Frameworks to build decentralized apps on IPFS:
   * <a target="_blank" href="https://dappkit.io/">Dappkit</a>, 
   * <a target="_blank" href="https://fission.codes/">Fission</a> 
   * <a target="_blank" href="https://fleek.co/">Fleek</a>
   * <a target="_blank" href="https://textile.io/">Textile</a>
   <br /><br />

<a target="_blank" href="https://app.pluralsight.com/library/courses/ethereum-blockchain-developing-applications/table-of-contents" title=" by Ivan @Mushketyk (brewing.codes) Dec 06, 2018">5 hour video course</a> - Learn to develop applications for the Ethereum platform. Start with the basics of blockchain and Ethereum, then learn the core skills for writing smart contracts using Solidity programming language.

<a target="_blank" href="https://framework.embarklabs.io/">Embark</a> is an all-in-one developer platform for building and deploying decentralized applications. It currently integrates with Ethereum blockchains, decentralized storage like IPFS, and decentralized communication platforms like Whisper and Orbit.

It uses static-site generators like VuePress or Gatsby.


## AWS Blockchain Templates for Ethereum

Build your own private network using a AWS Blockchain Template.
"Templates" refers to AWS Cloud Formation templates that use Docker containers within ECS (Elastic Container Service). 

The architecture is from <a target="_blank" href="https://app.pluralsight.com/library/courses/aws-blockchain-ethereum-deploying-templates/table-of-contents">
video course "Deploying Ethereum with AWS Blockchain Templates"</a>
by Janani Ravi:

<img width="1376" alt="nft-network-arch-2752x1584" src="https://user-images.githubusercontent.com/300046/131740785-b3e17d2d-f64e-4553-b73c-6085d1bf5777.png">

## FoxyProxy standard browser extension

1. Install FoxyProxy Standard add-in to Google Chrome browser:

   https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp?hl=en

1. Click "Add to Chrome", "Add extension".

1. Configure FoxyProxy to look for a pattern going through a SOCKS proxy server on port 9001:

   <pre>http://internal-myeth-loaddb*


connects to a SOCKS proxy server within AWS.

External access is through a Bastion host on a public subnet/availability zone.

It communicates though the publc subet of another availability zone.

public subnet has a  container managed by the AWS ECS (Elastic Container Service):

   * EthStats

   * EthExplorer

   * Minor node

Additional nodes by others can be created to participate.

Etherium was designed for this.

Decentralized nodes means that there is no single point of failure.

Transparent.

<a name="Hyperledger"></a>

## Hyperledger Fabric 

https://www.hyperledger.org/use/fabric


Hyperledger has two types of nodes:
   * Peer nodes that execute and verify transactions (transactions)
   * Ordering nodes (consenters) order and propagate transactions 
   <br /><br />

Peer nodes can be endorser and committer. 

The immutable sequenced records in blocks within the blockchain log stores.

The blockchain's current state is stored in the State Database.

This tracks each transaction's provenance (chain of custody).

<a target="_blank" href="https://www.youtube.com/watch?v=js3Zjxbo8TM">VIDEO</a>


So how can CryptoArt be stolen?


Ethereum Name Service (ENS) ?

<hr />

## Internet Computer via DFINITY's dfx to ic0.app

The "Internet Computer" (public cyberspace) extends the internet with compute to host humanity's logic and data.
It is the third major blockchain innovation:
   1. Bitcoin cryptocurrency ("digital gold")
   2. Etherium smart contracts, which made programmable to power "DiFi" (Distributed Finance) 
   3. Infinite blockchain with seamless capacity of special nodes run by independent data centers
   <br /><br />

<a target="_blank" href="https://forum.dfinity.org">forum.dfinity.org</a>

<a target="_blank" href="https://www.youtube.com/watch?v=J8tXcy3dW0o">VIDEO:
Its competitor is Polkadot</a>

DFINITY progressed from Copper 2019 to Bronze 2020 to Tungsten to Sodium to 
<a target="_blank" href="https://www.youtube.com/watch?v=oxEr8UzGeBo&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&index=8">VIDEO</a>:
"Mercury Genesis" launched May 10, 2021.


1. Install DFX

   <pre><strong>sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"
   </strong></pre>

   Response:

   <pre>info: Executing dfx install script, commit: 866752d66cfe26c92fe075028fff6c7c52a2aeb1
warn: Not forcing TLS v1.2, this is potentially less secure
info: Version found: 0.8.1
info: Creating uninstall script in ~/.cache/dfinity
info: uninstall path=/Users/wilsonmar/.cache/dfinity/uninstall.sh
info: Checking for latest release...
warn: Not forcing TLS v1.2, this is potentially less secure
Will install in: /usr/local/bin
info: Installed /usr/local/bin/dfx
   </pre>

   <a target="_blank" href="https://www.youtube.com/watch?v=YWHTNr8RZHg&list=PLuhDt1vhGcrf4DgKZecU3ar_RA1cB0vUT&index=18">VIDEO</a>:
   Dominic Williams, in 2016 founded the <a target="_blank" href="https://www.DFINITY.org/">DFINITY.org</a> foundation (headquarted in Switzerland)
   (<a target="_blank" href="https://twitter.com/dfinity">@dfinity</a>)

1. Verify:

   <pre><strong>dfx --version</strong></pre>

   At time of writing, it was:
   
   <pre>dfx 0.8.1</pre>

1. The sample def.json file at the root Gatsby static site sample

   https://github.com/wilsonmar/dapp-samples/tree/main
   cd dapp-samples

   It contains a minimal index.html

1. Deploy to the Internet Computer ledger (instead of to web servers) to generate a canister id (the equivalent of an IP address on TCP/IP):

   <pre><strong>dfx deploy --network=ic
   </strong></pre>

   This adds a "dfx" folder in the current project folder and a<br />
   <tt>canister_ids.json</tt> folder and displays a canister id (GUID), such as "w2tya-5qaaa-aaaab-abasa-cai".

   The "Internet Computer" hosts <strong>"canisters"</strong> (smart contracts in the Internet Computer blockchain) 
   are a bundle of <strong>Web Assembly bytecode</strong> created by Rust or <a target="_blank" href="https://github.com/dfinity/motoko">Motoko</a> language.
   <a target="_blank" href="https://www.youtube.com/watch?v=xCuZFwAHS1Y&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&index=13">VIDEO</a>

1. Visit your site by constructing its URL from your canister id:

   <pre>https://w2tya-5qaaa-aaaab-abasa-cai.<strong>ic0.app</strong></pre>

   <strong>Canisters</strong> serve internet content (HTML pages, videos, etc.) directly to end-users (internet browsers)
   instead of CDN, firewalls, VPNs, load balancers, databases, etc. now used by central "Big Tech" systems such as Google, Facebook, Instagram, Twitter, etc..

   Canisters run inside hypervisors (4K memory pages).

   Motoko supports IC canisters as <strong>"actors"</strong> (objects that encapsulate their state and communicate through atomic async messages) -- no waiting for reply.

   Instead of TCP/IP ports, there are <strong>functions</strong> such as <tt>getProfile(userId: String)</tt> which calls other computers directly.

   A variable declared as "stable" is persisted across software upgrades.

   ### Network

   It's a peer-to-peer (P2P) network.

   Each canister runs as part of a <strong>subnet</strong>, which replicates nodes who use a concensus protocol to process messages in the order agreed.

   The subnet types:
      * Data (BigMap)
      * System
      * Fiduciary
      * NNS (Network Nervous System) the ICP has an in-protocol open governance system
      <br /><br />

   

   Standardized Node hardware run within independent Data Centers.

   <a target="_blank" href="https://www.youtube.com/watch?v=zHl-oVPoX88&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&index=12">VIDEO</a>:
   "Token economics" ICPT

   <a target="_blank" href="https://www.youtube.com/watch?v=vVLRRYh3JYo&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&index=23">VIDEO</a>:
   The Internet Computer is created by the <strong>ICP (Internet Computer Protocol)</strong> on top of the Internet Protocol widely used today.
   * Block Making: Propose blocks to extend the block chain
   * Notarization: Ensure valid blocks are published (because some block proposals may be invalid)
   * Random Beacon: Agree on randomness
   * Finalization: Know when a block is agreed upon
   <br /><br />

![dapp-ic-token-1588x846](https://user-images.githubusercontent.com/300046/137711022-7b5fcbe7-ad75-46b3-8c20-02d0f1ecebbe.png)

### Wallet

1. <a target="_blank" href="https://www.youtube.com/watch?v=DxCfQOLb_3s&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&index=8">VIDEO</a>:

   dfx ledger --network ic0 balance

1. Wallet

   dfx wallet --network ic1 balance

### LinkedUp social network identity

<a target="_blank" href="https://www.youtube.com/watch?v=J0nCco7lNfQ&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&start_radio=1&rv=J0nCco7lNfQ">VIDEO</a>:
https://www.reddit.com/r/dfinity/comments/etdx8j/introducing_linkedup/
as a "self-soverign" identity. https://www.youtube.com/watch?v=m4xiRlJdhh8

https://github.com/dfinity/linkedup

https://smartcontracts.org/



### Internet Identity on Safari

https://sdk.dfinity.org/docs/ic-identity-guide/what-is-ic-identity.html

<a target="_blank" href="https://www.youtube.com/watch?v=oxEr8UzGeBo&list=PLuhDt1vhGcrf4DgKZecU3ar_RA1cB0vUT&index=11">VIDEO</a>:

To securely access dapps on the Internet Computer and use Internet Identity for authentication, create an <strong>Identity Anchor</strong>,
then add devices to it. 

A different pseudonym is created for each dapp that you access by creating new Identity Anchors.

Windows Hello authentication is supported in Chrome, Edge, and Firefox.

On iOS, authentication works across Safari browsers with registered WebAuthn keys.

However, on OS X, All currently supported authentication methods follow the WebAuthn standard. The following restrictions apply, however:
On OS X, authentication using Safari is coupled to your browser profile. If you want to authenticate to a dapp in a different browser, or if you use multiple Safari browser profiles, you have to add the combination of your authentication method and the new browser as a new device. 

<a target="_blank" href="https://www.youtube.com/watch?v=oxEr8UzGeBo&list=RDCMUCOyguKlTxoDK3HRzmGbLyAg&index=8">VIDEO: Devices use Ubikey</a>
No passwords.

### Chat


<hr />

## References

On OReilly.com:
* <a target="_blank" href="https://learning.oreilly.com/live-events/-/0636920067302/">Blockchain, Bitcoin, Crypto, NFTs and the Metaverse"</a> by George Levy, author of <a target="_blank" href="https://learning.oreilly.com/videos/-/9780135898369/">course: "Getting Started with Blockchain and Cryptocurrency"</a> November 2019
* Blockchain, NFTs, and Smart Contracts for Practical Use</a> by Aamir Lakhani, author of <a target="_blank" href="https://learning.oreilly.com/videos/-/9780138057244/">Practical Blockchain and Cryptocurrency</a> by Aamir Lakhani - Addison-Wesley Professional December 2022
<br />

https://www.youtube.com/watch?v=cmLJHlNlH1s
on the "Bankless" youtube channel

Find NFT projects early and participate in mint launches. 

Cryptopunks

risks involved when trading/investing in NFTs. 

palm.io

A new NFT ecosystem for Culture & Creativity, built efficiently with Ethereum.