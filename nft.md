---
layout: post
date: "2025-01-28"
lastchange: "v008 + Polygon :nft.md"
file: "nft"
title: "nft"
excerpt: "Non-Fungible Tokens (NFTs) use unalterable blockchains, crypto currency wallets, and smart contracts (all web3 tech) to prove provenance and thus make it safer to buy & sell digital media in a distributed ecosystem not centrally controlled by billionaires."
tags: [apple, mac, utilities]
image:
# feature: pic Giant-Swiss-Army-Knife-1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622061/afe5f5da-0584-11e6-8140-3278289baef4.jpg
  credit:
  creditlink:
comments: true
---
<a target="_blank" href="https://bomonike.github.io/nft"><img align="right" width="100" height="100" alt="nft.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/nft.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

The NFT (Non-Fungible Token) ecosystem was created because copies of digital media can be easily duplicated.

"Digital media" file formats include music audio (mp3), video (mp4), or images (GIF/PNG/JPEG).
NFTs can be artwork, collectibles, virtual real estate, or any media file.
<a target="_blank" href="https://magiceden.us/collections/polygon/0x251be3a17af4892035c37ebf5890f4a4d889dcad">
Courtyard.io</a> sells paper trading cards.

However, NFTs enable a person to assert ownership that can be verified by others.
Each NFT is a unique digital identifier enshrined in a chain of cryptographic hashes within a blockchain.
So an NFT can be owned only by one party at a time.
NFTs enable an image to be verified as the authentic creation of an artist.

NFTs provides a way of establishing the <strong>provenance</strong> of a digital piece of art --
providing documentation which indelibly authenticates the creator, ownership history, and
appraisal value of a specific piece of art.

## Bitcoin

Traditional payment infrastructure falls short:

   * Credit cards charge fees of 2-3% on every transaction
   * Settlement takes days
   * Anti-fraud systems (such as CAPTCHA and 2FA) were built to require human intervention to prevent fraud, thus not facilitate automated autonomous payments by agents instead of people


## Glossary of Terms

* Bitcoin: Cryptocurrency that runs on blockchain.
* Blockchain: A decentralized distributed ledger that allows peer-to-peer (p2p) transactions secured by cryptographic algorithms and consensus mechanisms.
* Consensus mechanism: A way to ensure that the transaction is valid without the need for a central authority, and that there is no double-spending.
* Cryptocurrency: A digital token exchanged on blockchain using cryptographic algorithms to secure the p2p transaction.
* Double-spending: The possibility for one party to 'copy-and-paste' and 're-use' an electronic transaction (e.g., payment).

* Miners/validators: Network participants dedicated to validating transactions and avoiding double-spending.
* Permissionless blockchain: Blockchain protocol that allows anyone to join the network.
* Permissioned blockchain: Blockchain protocol that requires authorization to join the network.
* Smart contract: Software program that waits for triggers to automatically execute instructions to transfer blockchain tokens.
* Token: The digital representation of a 'unit of possession' that can be exchanged between parties.
* Valid transaction: Parties are certain that the exchange has happened and cannot be neglected.

## The first NFT trades ever

<img align="right" alt="quantum-kevin-mcoy-500x347.png" width="100" height="100" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1736451085/quantum-kevin-mcoy-500x347_tplugn.png" />
This piece of digital art, named "Quantum", is the <a target="_blank" href="https://nftnow.com/art/quantum-the-first-piece-of-nft-art-ever-created/">first NFT</a> to be minted, in 2014.

The digital artists who created it, Jennifer and NYU professor Kevin McCoy (of <a target="_blank" href="https://www.mccoyspace.com/projects">mycoyspace.com</a>), teamed up with <a target="_blank" href="https://www.anildash.com/about/">Anil Dash</a> to create the tech to sell <a target="_blank" href="https://www.mccoyspace.com/projects/cars">a digital image</a> (for $4) through the Namecoin blockchain. In <a target="_blank" href="https://vimeo.com/96131398">a recording of the demo</a>.
After McCoy promoted his work on media outlets like <a target="_blank" href="https://www.axios.com/2021/03/25/nft-sale-art-blockchain-millions">Axios</a>,
in June of 2021 he put the "Quantum" NFT up for auction among Sotheby’s art collectors who bought it for <a target="_blank" href="https://www.sothebys.com/en/buy/auction/2021/natively-digital-a-curated-nft-sale-2/quantum">more than one million dollars</a>.

## Music blockchains

Clarian North was the first musician to ever mint a music album as NFT, on OpenSea March 3rd, 2022.
His “Whale Shark LP” album beat Kings of Leon to it.
North also built NFT marketplace <a target="_blank" href="https://magiceden.us/polygon">MagicEden.us/Polygon tokens</a> (MATIC), a cheaper and faster alternative to Ethereum mainnet. In 2023 he published (via Packt) a 3-hour video course (<a target="_blank" href="https://learning.oreilly.com/course/the-complete-solidity/9781805122470/">on OReilly.com</a>) about the Solidity Smart Contract language.

<strong>Smart Contracts</strong> associated with a NFT is what enable its owner to receive <strong>royalties</strong>
from those who play music from the <a target="_blank" href="https://tamastream.info/">Tamago.info</a> Decentralized
Music Streaming Platform.

Smart Contracts also enable creators to receive <strong>commissions</strong> on each future sale of the NFT.

https://builtin.com/blockchain/blockchain-music-innovation-examples

https://docs.openzeppelin.com/contracts/4.4.1/

## Tamago player

The Tamago platform uses the <a target="_blank" href="https://near.org/">NEAR Layer-1 blockchain</a>
(<a target="_blank" href="https://near.ai/">NEAR protocol</a> with JavaScript and Rust WASM coding).

Blockchains enable Trust Without intermediaries, replacing the need for central authorities, enabling "trustless" transactions.
   * Security: They safeguard the network from attacks and ensure data integrity.
   * Decentralization: They distribute decision-making power among network participants.
   * Resilience: They eliminate single points of failure, ensuring high availability.

## NEAR Protocol

<a target="_blank" href="https://www.youtube.com/watch?v=cRvtA_-jV2Q" title="Tech Showcase">VIDEO</a>:
NEAR.ai was created in 2017 by one of the Generative AI pioneers who authored the seminal "Attention is all you need" article at Google.

<img alt="near-tech-1299x605.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1738552519/near-tech-1299x605_n5swwn.png" />

"User-Owned AI" front-end combines "AI Assistants" with AI Agents finds the best for you.

NEAR is able to achieve high scalability and fast transaction processing because of its sharding technology (called <a target="_blank" href="https://discovery-domain.org/papers/nightshade.pdf">Nightshade</a>) with its utilization of a "Proof of Stake (PoS)" consensus mechanism (instead of the Beacon Chain used by others).
<a target="_blank" href="https://www.linkedin.com/pulse/consensus-mechanisms-heartbeat-blockchain-sharad-kamra-lyu3c/">
The Heartbeat of Blockchain</a>: Rules in Consensus Mechanisms ensure all participants in a blockchain network agree on the same version of the ledger to achieve synchronization across distributed nodes.

The "NEAR Protocol" <a target="_blank" href="https://www.youtube.com/watch?v=MRuVnxq9BVY">VIDEO</a>
was formed in 2018 by Google engineers who designed Google's AI Transformers.

* Telegram???
* https://dev.near.org Dev Portal
* https://chat.near.ai is like ChatGPT or Perplexity and can generate websites (launch memcoin)
* https://github.com/near
* https://near.org/blog
* Telegram: t.me/neardev
* near.inc is incorporated in the Grand Caymens (for doging something?)

"the foundation for an AI-driven Web3 future." which means shifting from selling views:

<img alt="near-tech-1299x605.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1738552512/near-new-771x317_nxtbo6.png" />

<a target="_blank" href="https://www.binance.com/en/trade/NEAR_USDC?type=spot" title="on Binance">Spot rate history candlestick chart back to 1 week</a> from 3/10/24, dipped to all-time low of 3.08 since until recovery to 7.3 on 12/1/24, then dropping since.

<a target="_blank" href="https://www.youtube.com/watch?v=aibV9rIkGXM&t=846s">Other Layer-1 blockchains</a>:
   * Aptos
   * Herada
   * NEAR
   * Injectiver
   * Stellar
   * MultiverseX <a target="_blank" href="https://www.youtube.com/watch?v=VNYMMVJtH6k">VIDEO</a>

All written in WASM language.

"Chain Abstraction" - <a target="_blank" href="https://www.youtube.com/watch?v=363tiDWblFQ">VIDEO</a>

At the time of writing, it costs 1 $NEAR for every 100kb of data stored in a way that's resistant to storage attacks.

<strong>"Intents"</strong> A new type of transaction to allow information, assets, goods, and services exchange between AI agents, users, and real world services. The attestation dispute resolutions. Abstracts chains, tokens, agents & contracts.

In 2023 it's home to 3 of the top 10 apps on Web3:
   * $KAIKAI: 31.7 million MAU
   * $HOT Wallet: 4.2 million MAU built on Telegram
   * $SWEAT Economy: 1.6 million MAU
   * Playember: 500k MAU

At https://app.near.ai/agents
All Ethereum Wallets, Including MetaMask, <a target="_blank" href="https://near.org/blog/ethereum-near-mainnet/">Now</a> Usable on NEAR Mainnet MyNearWallet
   * Sender
   * Meteor Wallet
   * Bitte Wallet

NFT keys in a secure hardware wallet such as
<a target="_blank" href="https://www.investopedia.com/ledger-nano-s-vs-x-5188903">BLOG</a>:
<a target="_blank" href="">Ledger Nano S or X</a>
It supports both Ethereum and Solana NFTs.

<a target="_blank" href="https://neartasks.ai/blog">>"NEAR Tasks"</a> provides a way for individuals (after waitlist) to earn <strong>NEAR Tokens</strong> (money) on gigs (like on Amazon Mechanical Turk, scale.ai, and https://www.masa.ai).
Tasks include image labeling, writing, etc.

To mint NFT: <a target="_blank" href="https://www.youtube.com/watch?v=Rt_cmIq12lo">VIDEO</a>:
https://docs.near.org/docs/tutorials/contracts/nfts/introduction
https://github.com/near-examples/nft-tutorial.git uses JavaScript
using the wallet.testnet.near.org
and front-end https://github.com/near-examples/nft-tutorial-frontend.git



## NFT marketplaces on blockchains

There are several NFT marketplaces: OpenSea, MagicEden.us, Rarible, Superrare, etc.

<a target="_blank" href="https://opensea.io/collection/cryptopunks"><img alt="cryptopunks-900x399.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1736487680/cryptopunks-900x399_njypxq.webp" />

The above is CryptoPunks's gallery</a>, launched as a fixed set of 10,000 items in mid-2017,
is now one of the <a target="_blank" href="https://opensea.io/rankings">most popular</a>
at <a target="_blank" href="https://www.opensea.com/">Opensea.com</a>.

Opensea was used in Martha Stewart's 2021 collaboration with the Tokns UK NFT agency to create
Shopify marthafreshmint.com to sell NFTs of photographs.
It's now defunct.

On Auguest 2024, SEC issues Wells Notice to OpenSea.

Roofstock.com is revolutionizing real estate by using web3 blockchain.

One gimmick is that the NFTs are randomly assigned to purchasers.
Buyers can only uncover an NFT’s content and rarity once it is opened.
Purchasers looking to resell the NFT for a profit will have to
decide whether it is more valuable to sell it opened or unopened.

The Bored Ape Yaught Club created buzz through exclusivity by allowing only those who
have bought the opportunity to join a private chat room.

<a target="_blank" href="https://101blockchains.com/near-rainbow-bridge/">CERTIFICATION BLOG</a>:
<a target="_blank" href="https://www.linkedin.com/pulse/interoperability-building-bridges-between-sharad-kamra-mj5oc/?trackingId=t7I5PpmyQ3mnAl8ShXiCMw%3D%3D">Newsletter</a>:
NEAR's "Rainbow Bridge" facilitates transfers of various token types
between different blockchains.

rewards for validators.

* <a target="_blank" href="https://www.linkedin.com/pulse/introduction-blockchain-what-why-how-sharad-kamra-j7ubc/">Blockchain 101</a>


## Media

https://www.perplexity.ai/page/ai-art-magazine-debuts-.ZLN3RJ0TKSoIakVC1oQvQ
The Art Newspaper, a new 176-page magazine dedicated solely to AI-generated art

https://www.nftculture.com/nft-news/tiga-x-tamago-nft-auction/


<a name="Wallets"></a>

## Crypto wallets

Payment through the marketplace can be in fiat money (issued as cash by governments) such as a normal credit card.

The web3 cryptowallet allows for accepting royalties as well.

Several other blockchains support NFTs, each with its own community and decentralized apps (dApps) for creators and NFT owners.

<a target="_blank" href="https://metamask.io/">Metamask.com</a>
is currently the most popular crypto wallet (even though it doesn't run on Apple's Safari browser).
It can be used as a mobile app or added as an extension to many browsers (not Safari).
It supports Ethereum and Solana blockchains plus a wide variety of cryptocurrencies.
<a target="_blank" href="https://www.investopedia.com/metamask-cryptocurrency-wallet-review-5235562">more</a>.

<a target="_blank" href="https://www.investopedia.com/coinbase-wallet-review-5225031">BLOG</a>:
Coinbase Wallet: Coinbase offers a digital wallet that supports ERC-721 NFT tokens and Solana NFT collections. It can be downloaded as a mobile app or added as a browser extension.

ERC-721, ERC-721A, or ERC-1155 compliant. Metaplex

## NFT API libraries

NFTs can be created, bought, sold, and transferred within various <a href="#Blockchains">blockchain networks</a>
using several libraries:

* <a target="_blank" href="https://docs.opensea.io/reference/api-overview">OpenSea API</a>

* Web3.py

The API fetches ERC721 tokens and ERC1155 token metadata.

The ERC-721 standard was developed to specify the minting of unique tokens.

Use <a target="_blank" href="https://docs.metamask.io/wallet/how-to/batch-json-rpc-requests/">RPC request batching</a>, <a target="_blank" href="https://docs.metamask.io/wallet/concepts/wallet-interoperability/">EIP-6963</a> for wallet discovery to connect to MetaMask without conflict, and wallet security enhancements.


## Like vehicle VINs

A unique Vehicle Identification Number (VIN) is generated by auto manufacturers for each vehicle created. It's displayed on each vehicle for tracking during transport and services performed. The VIN is reference by the DMV to track vehicle ownership and licensing. VIN numbers are posted on ads for each auto to ensure that the specific vehicle being advertised is the one being actually sold.

One can even create virtual real estate on a piece of digital land in virtual reality <a target="_blank" href="https://www.avast.com/c-metaverse">Metaverse</a> of networked 3D worlds.

NFTs provide a way to ensure that each creation can be owned by only one person at a time.

https://nftnow.com/art/quantum-the-first-piece-of-nft-art-ever-created/


When you sell an NFT, you typically transfer over the rights of ownership, but keep your intellectual property rights. When you make NFT art, it gains a unique certificate of authenticity that can be held by only one person at a time. You can always create a new piece with the same style.

Most NFT marketplaces let you choose whether to transfer the copyright upon sale. Copyright laws vary by country as far as what ideas are copyrightable.

se NFT-specific programs like Bueno or NFT-inator,

Use of NFTs requires an understanding of <a href="#Minting">minting</a>, <a href="#Blockchain">blockchain</a>, <a href="#SmartContracts">smart contracts</a>, <a href="#CryptoWallet">cryptocurrency wallets</a>, <a href="#Marketplaces">marketplaces</a>, and <a href="#GasFees">gas fees</a>.

## Hashes

Those who provide a digital file for download usually provide a string which recipients can compare after recalculating the string from the file downloaded. Generating the same string (<strong>cryptopgraphic hash</strong>) on both ends proves that nothing was alterned during transmission. The string is called "SHA256" for the mathematical algorithm used to generate the string on both ends. Such functions generate a different hash value when even a single bit is different.

<a name="Minting"></a>

## Minting into a blockchain

NFTs extend the use of cryptographic hashes to provide a guarantee of true uniqueness in time and space by enshrining the hash within a <strong>blockchain</strong>, which is a chain of strong digital certificates that are very difficult to alter.
Because each NFT is unalterably unique within a blockchain, ownership can be confirmed.
And changes in ownership can be recorded safely as well.

NFTs also include <strong>metadata</strong> describing the asset it represents, plus a link (<a href="#IPFS">IPFS</a> URL) to where the asset content is listed and stored.

??? Each block contains transaction data, a timestamp, and a link to the previous block, forming a chain.

??? information is recorded on the blockchain, it cannot be altered retroactively without altering all subsequent blocks. This makes blockchain ideal for ensuring trust in data integrity and authenticity.


<a name="IPFS"></a>

## IPFS

The IPFS (InterPlanetary File System)</a> is a decentralized, peer-to-peer file storage protocol that enable users to store and access content without a central server. It's used by:

   * https://d.tube a YouTube clone on its Avalon blockchain
   * app.Uniswap.org blockchain app (URL uniswap.exchange) ENS contenthash for uniswap.eth for uniswap.eth.link
   * <a target="_blank" href="https://www.youtube.com/watch?v=_lNL1uU_I58">Filecoin</a>

Notice that files take longer to load than HTTP servers.

CAUTION: IPFS is not an anonymous system because it needs each user's IP address is visible when sharing files.

Unlike HTTP which retrieve data based on a specific location defined by an IP address,
IPFS, uses "content-based addressing" which enables a peer-to-peer exchanges:

<img alt="ipfs-vs-http-383x222.png from eraser.io" width="383" height="222" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1737126071/ipfs-vs-http-383x222_dsvqgn.png" />

This distribution of content by IPFS is immutable.
Once added, files can't be deleted from it (by government censors).

Alternatives for NFT storage are IPFS, Filecoin (which ensures files are backed up), Arweave.

1. To create a temporary link to a file's content only on your local machine, use this web page:

   <a target="_blank" href="https://share.ipfs.io/#/">https://share.ipfs.io/#/</a>

   <a target="_blank" href="https://www.youtube.com/watch?v=s8i8qn8APR4&t=3m56s">VIDEO</a>
   Notice at the upper-right corner is the "PeerID" - a long random number created for your computer.

   It's referenced by the Kademlia Distributed Hash Table (DHT), the catalog of all addresses in IPFS.
   IPNS uses both DHT and libp2p PubSub for publishing and resolving records, offering different trade-offs in terms of global consistency and speed.

1. Drag and drop a file to create a IPFS CID (Content IDentifiers) such as:

   <a target="_blank" href="https://share.ipfs.io/#/bafybeigiepgawww4qsdmwwv5m4zzsaaexwwnnsrfsi4xojfybri3qragju">https://share.ipfs.io/#/bafybeigiepgawww4qsdmwwv5m4zzsaaexwwnnsrfsi4xojfybri3qragju</a>

   That URL link is made up of a SHA256 hash created based on the file's content.

   CIDv0 is 46 characters long and always starts with "Qm". It uses a base 58-encoded multihash to create the content identifier.

   CIDv1 adds to v0 multi-base prefix, CID version identifier, and multi-codec identifier.

   Like git, IPFS also constructs a DAG (Directed Acyclic Graph) in an interlocking chain of hashes.
   So the content associated with a CID is very difficult to change.
   Each change adds another CID to the chain.
   Thus, IPFS is also called the "permanent web".

1. Share the QR code so people can load the URL using a mobile phone.

1. <a target="_blank" href="https://www.youtube.com/watch?v=QIiCdRZbxOE&t=11m10s">However</a>, IPFS does not have a "human friendly" way to discover CIDs and search through their content.

   <img alt="web3-xmit-table.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1737231722/web3-xmit-table_p3tryb.png" />

   So get a private IPFS Gateway & hubs such as from <a target="_blank" href="https://docs.pinata.cloud/web3/ipfs-101/what-are-cids">
   Pinata.com</a>:

   <a target="_blank" href="https://ipfs.github.io/public-gateway-checker/"><img alt="ipfs-gateway-pinata.png 1m10s" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1737231867/ipfs-gateway-pinata_l0d2zo.png" /></a>

1. To make permanent address within the IPFS, "Set pinning" to a local node, which makes it available to be found and imported by others (peer nodes). Each download distributes the file in an additional node.
   Thus, the more that a file is shared, the faster it becomes.

   Publish to IPNS (InterPlanetary Name System), add your files or directory to IPFS using these CLI command:

   ```
   MY_CONTENT_HASH=$( ipfs add -r "$MY_CONTENT_DIRECTORY" )
   ipfs key gen "$MY_KEY_NAME"
   ipfs name publish --key="$MY_KEY_NAME" /ipfs/"$MY_CONTENT_HASH"
   ```

  * IPNS records are typically republished every 4 hours by default to keep them alive in the network.

1. To setup human-readable URLs to frequently shared files, use (set up) a dedicated <a target="_blank" href="https://www.youtube.com/watch?v=gc3-UzHtDzE">IPFS gateway</a>.

1. NOTE: IPFS apps can communicate using the IPFS project's IPFS protocol:

   <tt>ipns://k2k4r8nismm5mmgrox2fci816xvj4l4cudnuc55gkfoealjuiaexbsup#IPFS-Toolkit</tt>

1. More advanced features like IPNS record management and IPFS PubSub functionality. When using IPNS over PubSub, the system calculates a topic name from the IPNS name and joins it by querying the DHT for the topic's provider records2.

Among IPFS Awesome Tools https://awesome.ipfs.io/tools/
* <a target="_blank" href="https://github.com/ipfs-shipyard/ipfs-share-files">without local node</a>
* To browse whats in IPFS, use the Brave browser.
* Helia implementaiton that runs on a browser
App:
* <a target="_blank" href="https://github.com/ipfs/ipfs-desktop/releases">ipfs-desktop</a> has no homebrew
* For simple one-to-one transfers, there is the <a target="_blank" href="https://github.com/psanford/wormhole-william/releases/">Magic Wormhole app</a>.
* To upload files directly from your browser without installing IPFS, use web app IPFS Share (https://share.ipfs.io).
* Install the <a target="_blank" href="https://github.com/ipfs/ipfs-desktop">IPFS Desktop app</a> to click the "Import" button in the GUI
* In the command-line interface, use the <tt>ipfs add</tt> command to add files to IPFS.
* hbarsuite smart nodes that are integrated with IPFS
* https://thedefiant.io/news/defi/filecoin-ipfs-space by Lockheed Martin

Since file content is public by default, <strong>encrypt</strong> the file's content and share its key the usual secure way.

Download as CAR

Official media:
   * https://docs.ipfs.tech
   * https://docs.ipfs.tech/concepts/content-addressing/
   * https://www.youtube.com/watch?v=zE_WSLbqqvo "Why IPFS?" (during IPFS Camp 2000) by Juan Benet on the https://www.youtube.com/@IPFSbot">IPFS YouTube channel</a>
   * https://www.youtube.com/watch?v=18T1AlHVVPo "BASS 2024 01" Juan Benet by Stanford Blockchain Club
   * https://www.youtube.com/watch?v=QIiCdRZbxOE IPFS and Dapps: Obstacles and Opportunities - Daniel Norman
References:
   * https://www.reddit.com/r/ipfs/comments/1cetytv/ipfs_address_space_for_cids/
   * https://www.youtube.com/watch?v=s8i8qn8APR4 "The Missing Piece of Web3" by EatTheBlocks
   * https://www.youtube.com/watch?v=xOUz3ifDpR4 "Upload larger files on IPFS" by HarshLips Academy
   * https://www.youtube.com/shorts/3rkIGZ4RxgQ
   * https://www.youtube.com/watch?v=C3zrFkOacss What Is IPFS and How to Use It [Decentralized File Sharing]
   * https://www.youtube.com/watch?v=TbagkanDeiU How IPFS Works in Under 5 Minutes by Data Slayer
   * https://www.youtube.com/watch?v=z2judsbo-5E What is IPFS and How Does it Work? 5:03
   * https://www.youtube.com/watch?v=_lNL1uU_I58 Introduction to IPFS & Filecoin ft. Konstantin Tkachuk
   * https://www.youtube.com/watch?v=94HH5D23WWI IPFS: the future of data storage
   * <a target="_blank" href="https://www.youtube.com/watch?v=PlvMGpQnqOM">VIDEO</a>: "The IPFS Protocol Explained with Examples - Welcome to the Decentralized Web" by Hussein Nasser
   * https://www.youtube.com/watch?v=5Uj6uR3fp-U "IPFS: Interplanetary file storage!" by Simply Explained
   * https://www.youtube.com/watch?v=TeFAHmzvIdg "Building decentralized websites on IPFS" byRyan Shahine


<a name="GasFees"></a>

## Gas fees

Each blockchain charges a one-time $50 - $300

Royalties up to 10% ???

The cost of creating NFT is recovered with "gas fees" charged when NFTs are transferred on the Ethereum blockchain.



<a href="#Blockchains"></a>

## Blockchain networks (Ethereum, Solana, Flow)

The most popular NFT blockchain is <a target="_blank" href="https://www.investopedia.com/terms/e/ethereum.asp">Ethereum</a>, which hosts thousands of NFT collections. Ethereum NFTs are created utilizing the ERC-721 and ERC-1155 standards, which store the metadata of the NFT on the Ethereum blockchain. The ERC-721 standard was developed by the same teams that developed the ERC-20 smart contract and defines the minimum interface—ownership details, security details, and metadata—required for exchanging and distributing tokens.

Different blockchains validate transactions in different ways (Proof-of-Work, Proof-of-History, and Proof-of-Stake), which affect gas fees, processing speeds, security, and even the environment differently — minting NFTs is energy intensive.
Ethereum uses Proof-of-Stake to confirm transactions, which is the most secure. The main drawback of Ethereum is the high gas fees for each transaction.

Blockchains currently operates using the proof-of-stake (PoS) consensus, making it much more eco-friendly than it used to be. Most NFT marketplaces support the creation of Ethereum NFTs, though transferring NFTs on the Ethereum blockchain may come with high gas fees.

Ethereum is used by other projects (called sidechains) for creating NFTs and cryptocurrencies.
polygonscan.com is one of the more popular sidechains for NFTs, used by some businesses and fans.

Blockchain miners solve complex mathematical puzzles to validate transactions and add new blocks to the chain.

Ethereum and Bitcoin began by using <strong>Pow (Proof of Work)</strong>, which is energy-intensive, slow, and struggles with scalability.

So in 2023 Etherium merged to use <strong>PoS (Proof of Stake)</strong>, which offers scalability and efficiency while maintaining a degree of decentralization. Cardano also uses PoS. Validators are chosen to create new blocks based on the amount of cryptocurrency they stake. Custodial MPC Wallets alsp include Aptos and Sui.

Ethereum has been the default for a long time, so almost every wallet and NFT app supports it because users perceive it to be high-status and secure. However, Etherium is also expensive and slow (costing above $10 just to mint a single NFT taking minutes to be finalized).

Cardano and <a target="_blank" href="https://www.investopedia.com/solana-5210472">Solana</a>
utilize both PoS and <strong>Proof-of-History (PoH)</strong> consensus mechanisms to boast faster transaction speeds than Ethereum. Solana transaction fees are less than $0.01 along with a growing list of supported apps for NFTs.
PoH timestamps transactions to improve speed and scalability.

Solana is not compatible with Ethereum and thus not universally supported like Ethereum. But its transactions are very fast (sub-second) and almost too cheap to meter. That has led Solana to recently exceeded Ethereum in NFT activity.

<a target="_blank" href="https://developers.flow.com/build/getting-started/contract-interaction">flow.com</a>
is a PoS blockchain designed for NFTs and decentralized gaming apps. Many other sports franchises have created marketplaces on the Flow blockchain, making it popular for sports-focused NFT creation. It enables use of Apple Pay for fans to buy popular <a target="_blank" href="https://www.nbatopshot.com/">"NBA Top Shot" NFT collection</a> of officially licensed NFT trading card line with embedded video of a player’s best moments.

Hybrid mechanisms are emerging as innovative solutions to strike a balance between the trilemma of security, scalability, and decentralization.

* With Delegated Proof of Stake (DPoS), stakeholders vote for delegates to validate transactions on their behalf. Used by EOS, TRON -- More centralized than PoW and PoS. But Extremely fast and scalable.

* With Proof of Authority (PoA), a small, trusted group of validators is pre-selected to manage the network, which is  efficient and fast. Used by VeChain and private blockchains with limited decentralization.

* With Byzantine Fault Tolerance (BFT), nodes communicate to agree on a decision, even if some are unreliable or malicious. Fault-tolerant, secure. Used by Hyperledger, Cosmos, who struggle with scalability.

<strong>Polygon</strong> is a <strong>layer-2 chain</strong> that brings costs down to a few cents per minted NFT and works fast as well. It is directly compatible with Ethereum, so it is easy for apps to integrate (and many have). The largest marketplaces (like OpenSea) support Polygon.

<a target="_blank" href="https://www.nftport.xyz/blog/nft-minting-with-rest-api">NFTport</a> supports both Etherium and Polygon.


<a name="SmartContracts"></a>

## Smart Contracts

Blockchain technology also enables the addition of rules (code) in "smart contracts" that are automatically invoked (enforced) when predefined conditions are met.
Such self-executing contracts operate without the need for intermediaries.

Smart contracts are like rules (covenants) added to real estate property deeds processed by escrow agents.

Smart contracts can limit resell such as the amount of commission returned to the orginal artist each time the artwork is transferred.

The Solidity curly-bracketed programming language (to define classes and functions) is commonly used for this purpose, using the <a target="_blank" href="https://remix.ethereum.org/">https://remix.ethereum.org online IDE</a>.
See https://remix-ide.readthedocs.io/en/latest/security.html

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Wallet {
   constructor() public {
   }
   function getResult() public view returns (uint) {
      uint a = 2;
      uint b = 3;
      return a + b;
   }
   uint256 public balance;
   function deposit(uint256 amount) public {
      balance += amount;
   }
   function withdraw(uint256 amount) public {
      balance -= amount;
   }
}
```
Smart contracts are coded in ".sol" (Solidity) files run in the decentralized virtual environment <a target="_blank" href="https://ethereum.org/en/developers/docs/evm/">EVM (Etherium Virtual Machine)</a>.

   * <a target="_blank" href="https://frontendmasters.com/courses/web3-smart-contracts/">"A Tour of Web 3: Ethereum & Smart Contracts with Solidity"</a> 4-hour course by ThePrimeagen

EVMs use "gas" to measure the computational effort required for operations, ensuring efficient resource allocation and network security.

CAUTION: Development of smart contracts requires absolute correctness. So testing by professionals is crucial.
Thus, pro testers are needed.

References:
  * https://www.youtube.com/watch?v=V3xuiUpkcUc What Are Smart Contracts? Learn Solidity Programming for Blockchain Development by Xmps Market
  * Solana


<a href="#CryptoWallet"></a>

## Cryptocurrency Wallets

To create an NFT and sell it online, you first need a crypto wallet linked to a compatible blockchain.
Then you can pick a suitable marketplace, upload your file to “mint” your NFT, and list it for sale.

associated with a token stored on a NFT marketplace.

<a target="_blank" href="https://docs.metamask.io/wallet/connect/">Metamask's SDK</a>
support for libraries <a target="_blank" href="https://docs.metamask.io/wallet/connect/3rd-party-libraries/wagmi/">Wagmi</a>
or <a target="_blank" href="https://docs.metamask.io/wallet/connect/3rd-party-libraries/web3-onboard/">Web3-Onboard</a>.

Marketplaces charge royalty fees to reward the NFT creator if their NFT is resold.
The percentage of the royalty changes depending on the marketplace. Royalties can be from 5% to as high as 50%.

A non-fungible token (NFT) is a digital asset with markers that make it unique through the use of blockchain technology.

Human beings naturally find rare objects valuable, and NFTs guarantee authenticity and ownership, making them rare, useful as status symbols, and convertible to cash via cryptocurrency. After NFTs are put on a blockchain, which acts as a digital ledger, they can't be copied.

<a target="_blank" href="https://xrpl.org/docs/introduction/what-is-xrp">XRP Ledger</a>
https://xrpl.org/docs/tutorials/python/nfts/mint-and-burn-nfts


<a name="Marketplaces"></a>

A token is the item's information hashed into an alphanumeric string.
This token is stored on the blockchain and establishes ownership of a digital item.

 ??? ownable by only one person at a time.



he token itself is hashed information stored on the blockchain. The digital item, tagged with metadata, is stored somewhere else, like Amazon Web Services or another hosting service. This is why you can right-click on the picture on an NFT auction site and save it—it is only the image. But your copy does not have the data associated with the NFT, so you're not the owner. In a sense, you have a forged copy.


https://addons.mozilla.org/en-US/firefox/addon/ether-metamask/

https://nftnow.com/features/the-creators-of-the-worlds-first-nft-talk-new-collection-web3-future/

“The fraud in [the NFT space in] 2022 was pretty intense,” Kevin said.
<a target="_blank" href="https://www.rollingstone.com/culture/culture-news/nfts-worthless-researchers-find-1234828767/" title="September 20, 2023">
Rolling Stones reports that</a> many hyped NFT crypto assets are worthless.

https://medium.com/@analyticsemergingindia/creating-non-fungible-tokens-nfts-with-python-and-blockchain-technology-6f172be6e1aa

https://www.udemy.com/course/how-to-mint-nfts-for-free-in-2022-step-by-step-nft-course/
How to mint NFTs for Free - Step by Step NFT Course


## NFT API hosts

"making the blockchain invisible to end users."

https://docs.crossmint.com/minting/quickstart
Crossmint.com enables flat and cross-chain payments "vetted by Fortune 500 companies" for SOC2 compliance
designed specifically for AI agents to hold and transfer funds, purchase tokenized assets, execute smart contract transactions, and manage digital credentials - all through simple API calls.
* https://docs.crossmint.com/api-reference/introduction
* https://docs.crossmint.com/solutions/ai-agents/introduction
* https://www.youtube.com/@crossmint
* https://discord.com/invite/crossmint?ref=blog.crossmint.com

* https://twitter.com/intent/tweet?url=https://blog.crossmint.com/introducing-goat-great-onchain-agent-toolkit/&text=Introducing%20GOAT%20(Great%20Onchain%20Agent%20Toolkit)
* https://github.com/goat-sdk/goat?ref=blog.crossmint.com
* https://ohmygoat.dev/introduction?ref=blog.crossmint.com
* https://discord.com/invite/2F8zTVnnFz?ref=blog.crossmint.com

## A. Create API Key

1. Sign up, confirm email, create account, Log in to the Crossmint console.

   https://www.crossmint.com/signin?callbackUrl=/console

1. On left menu, click "Integrate" & "API Keys".
1. Click the "Create new key" button in the "Server-side keys" for a pop-up menu of <strong>13 scopes</strong>:
1. Open the Minting API to select all

1. Click "Create server key" to generate your API key.
1. Copy and paste the key to your secrets vault (Keychain Access.app on macOS, etc.)

## B. Create NFT Collection

REMEMBER: In NFT world, a collection has a <strong>fixed number of items</strong> when created.

1. Create an NFT collection and navigate to it in the console.

See https://docs.crossmint.com/minting/guides/sell-nfts

1. Upload NFT “templates” for all the NFTs you wish to list for sale. You can do so from the “NFTs” tab in the console, or by using the API.

1. Navigate to the NFT Checkout entry on the left navbar in the collections page. Follow the wizard to enable payments.

1. (Production only) Verify your account and collection. Not required in staging.

1. Share the url or QR code with your users.

1. You can set a price in crypto (ETH, MATIC, SOL or USDC).
1. For imported and secondary collections, payouts arrive instantly. For managed collections, payouts arrive after a 24-hour withholding period.
1. Your customers can pay with crypto or credit card.
1. You pay credits for NFT gas, user pays only for the item.
​
## References

https://www.alchemy.com/best/nft-minting-tools

https://docs.moralis.com/
Build with ease across 30+ chains with our API references, guides, and tutorials.

<a target="_blank" href="https://www.youtube.com/watch?v=9Kc5QdNmtds&t=643s">VIDEO</a>:
$2,497/year Quantum Wave by Mark Moss:
To block crypto, SEC threatened audits
Elizabeth Warren was against.
Law was vetoed by Binden's administration

Trump fired anti-crypto SEC chair Gensler
replaced him with "crypto mom" Hester Peirce led SEC Crypto Task Force to work with Congress
EO sidelined Fed & FDIC colluding on "Operation Chokepoint 2.0"
appointed David Sachs as "Crypto Czar"
https://www.youtube.com/watch?v=9Kc5QdNmtds
