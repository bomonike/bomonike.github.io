---
layout: post
date: "2026-07-08"
lastchange: "v004 axum @micropayments.md"
url: "https://bomonike.github.io/micropayments"
file: "micropayments"
title: "Micropayments"
excerpt: "Get and receive money without subscriptions."
tags: [AI, production, macos]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-05-19"
---
<a target="_blank" href="https://bomonike.github.io/micropayments"><img align="right" width="100" height="100" alt="micropayments.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/micropayments.png?raw=true" /></a>
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

{% include whatever.html %}

This article shows how you can make and receive <strong>micropayments from individual visits</strong> to your static website (just a HTML file).

<a target="_blank" href="https://www.mckinsey.com/capabilities/quantumblack/our-insights/the-agentic-commerce-opportunity-how-ai-agents-are-ushering-in-a-new-era-for-consumers-and-merchants">McKinsey projects</a> that agentic commerce — where AI agents transact autonomously on behalf of businesses and consumers — will mediate $3 trillion to $5 trillion of global commerce by 2030, with the US B2C retail market alone seeing up to $1 trillion in orchestrated revenue. 

At a local swap meet farmstand, one can hand over paper (US dollar) bills (fiat currency) to buy fruits and vegetables.

On the internet, if you wanted to buy a song on the internet, you would go through Apple, Amazon, Spotify or some website.

Websites require a monthly subscription to access their content (Netflix.com, Disneyplus.com, OReilly.com, etc.)
which you pay via credit cards.

web3
The new way is to use Etherium Improvement project definitions ???
https://eips.ethereum.org/all
https://eips.ethereum.org/EIPS/eip-20 token standard
EIP-3009 (Transfer With Authorization) authorises the entire transfer. It is a single-call execution.
   https://academy.extropy.io/pages/articles/review-eip-3009.html
   Its adoption by major stablecoins like USDC has made it a foundational component for the emerging machine-to-machine economy.

multi-party computation (MPC) technology manages private keys by distributing key shards across multiple parties to ensure wallets are guarded against, unauthorized access and theft of funds/assets.

https://www.circle.com/blog/four-ways-to-authorize-usdc-smart-contract-interactions-with-circle-sdk
   Circle USDC

The majority of wallets today are browser extensions or mobile apps such as MetaMask. These wallets allow users to connect to a Web3 dapp (think of this as logging in) and sign transactions.

 Circle created Programmable Wallets.
 wallet as a service that uses familiar Web2 paradigms such as a PIN, security questions, and passwords instead of recovery phrases and browser extensions.

https://www.circle.com/blog/choosing-a-wallet-as-an-enterprise-team?utm_campaign=Developer%20Newsletter&utm_medium=email&_hsenc=p2ANqtz-8XlUmKSZH_V7Ywmx3yisOvcX1bcjvY7KOEC96JHDJ0FSDrsAwuTsAKghLZHI7JgEQWXKEiuo1N8RfhGKhOttqkjLfMFA&_hsmi=295947306&utm_content=295947306&utm_source=hs_automation


Several major employees (Dankrad Feist, Laura Shin, etc.) exited Etherium in 2026.
BTW: Solana is the only major blockchain compatible with Coinbase x402 and Stripes.
GetBlock built the fastest Solana node.
In 2025, Kraken, a Wyoming SPDI, was granted access to a limited version of a "master account" to the Fed Bank of Kansas.
Two independent clients on a mainnet is critical: agave & Firedancer.

## Consumer Ensh*tified processes

Financial companies in the US built payment systems <a target="_blank" href=https://www.linkedin.com/pulse/x402-protocol-explained-how-ai-agents-started-paying-each-jadeja-wv7tf/>"on top of the internet rather than inside it"</a>.
Stripe.com has made billions chargeing 3% plus 30 cent for every transaction. This is not the ideal situation.

   * Setting up the subscriptions add a stubling block to quick purchase.
   * Pre-arrangement needs to be made with each server (Gmail, Netflix, etc.)
   * API keys that accompany requests expose security risks and require rotation to keep secure.
   * Prepaid monthly subscriptions force overpayment and add friction when funds run out.
   * Use of credit cards limit participation by the poor.
   * Use of credit cards result in transaction fees of 3-5% plus 50 cents each.
   * Bloating of transaction costs limit the growth of micropayment applications and autonomous agents.
   * A change in credit card number requires manually visiting every server.
   <br /><br />

In 2026, the rupture of EU from US-based credit card processing to EU-based processors accellerated the transition.
On May, 2026, the Qivalis Consortium from Amsterdam announced 25 banks joining to establish a euro stablecoin.


## HTTP 402 return status

   References:
   * https://github.com/Merit-Systems/awesome-agentic-commerce
   * https://www.youtube.com/watch?v=IJhS_fv5Ktk by CoinBuresu
   * https://www.youtube.com/watch?v=lSdHKTmLArY&t=1m23s = Deep dive
   <br /><br />

When Tim Berners-Lee and his team created the internet back in 1997, along with "404" for "Not Found", they reserved HTTP 402 as the "Payment Required" return status code as for future use when a server can demand payment before delivering content.


## x402 Standard: Coinbase

   References:
   * https://en.wikipedia.org/wiki/X402?utm_source=chatgpt.com
   <br /><br />

In 2024, Coinbase (a crypto exchange) designed "x402"  at <a target="_blank" href="https://github.com/coinbase/x402">https://github.com/coinbase/x402</a> to respond to 402 status codes with money (micropayments) by making use of cryptocurrency "stablecoins".

   NOTE: Competitors to Coinbase emerging include Kraken, crypto.com, and others.

To keep the protocol open and neutral, in 2025, Coinbase and Cloudflare formed the <a target="_blank" href="https://www.linuxfoundation.org/x402foundation">x402 Foundation under the Linux Foundation at https://www.linuxfoundation.org/x402foundation</a>.

Here's how x402 works according to https://docs.cdp.coinbase.com/x402/welcome
<ul>
   <a href="#ReceiveMoney">A. Receive money</a><br />
   <a href="#SendMoney">B. Send money</a>
</ul>

After first summarizing the workflow (below), we will then explain what needs to be <strong>pre-installed</strong>.


<a name="ReceiveMoney"></a>

### Receive money

github.com/wilsonmar/python-samples/blob/main/x402-premium-content.html

1. A client (AI agent) sends to an endpoint URL a regular RESTful HTTP GET request (at a resource server), not knowing whether it has a paywall. This can be the result of a mobile resolving a QR code to a webpage.

2. The paywall server sends back a 402 HTTP response code (instead of a 200 HTTP status) along with a <a href="#x402header">deposit address <strong>PAYMENT-REQUIRED</strong> header or JSON body (explained below)</a>.

3. The client app has <a href="#Recognize402">code to recognize the 402 return status</a> and interact with a <a href="#WalletAgent"><strong>crypto wallet agent</strong> pre-added on the client machine (explained below)</a> which creates a <strong>signed proof of payment</strong> (explained below) that the client app adds to the retry request. 

   The x402 standard says that signed <strong>transferWithAuthorization</strong> payments follow the <a href="#EIP-3009">EIP-3009</a> standard.
   
   Alternative 1: if the code recognizes that the client has no wallet, it can (in background) auto-create a wallet which charges the server's Apple Pay credit card to buy USDC. See https://news.futunn.com/en/post/65943752/why-is-x402-the-key-protocol-for-enabling-encrypted-payments?level=1&data_ticket=1781764803368166

   Alternative 2: XRF ???

4. Once the client has a <a href="#PaymentHeader"><strong>PAYMENT-SIGNATURE header</strong></a> in hand, the client attaches the signed payment payload to the HTTP request <strong>resubmitted</strong> to the server.

5. The server uses the <a href="#CoinbaseFacilitator">Coinbase <strong>facilitator service</strong></a> to validate the payment authorization, confirm that payment parameters match the initial quote, then submits the signed transaction to the blockchain for <strong>settlement</strong>.  https://docs.cdp.coinbase.com/x402/core-concepts/how-it-works
   
6. Upon settlement, the server returns the valuable data which the client requested, along with an HTTP 200 status code and an X-PAYMENT-RESPONSE header containing the transaction hash for verification.



<a name="SendMoney"></a>

### Send money

???


<a id="x402header"></a>

## x402 PAYMENT-REQUIRED header

An example header is this json:

   ```json
   {
     "GET /paid": {
       accepts: [
         {
           scheme: "exact",
           price: "$0.01",
           <a href="#network">network: "eip155:8453",</a>
           payTo: payToAddress,
         },
       ],
       description: "API call",
       mimeType: "application/json",
     },
   }
   ```

   ??? With crypto payments, Stripe handles deposit addresses and automatically captures the PaymentIntent when funds settle on-chain.

According to the x402 spec, the PAYMENT-REQUIRED header or JSON body contains:

   * the price (amount) to be paid, 
   * where the payment should be sent to (payTo recipient address),
   * which <a href="#Network">stablecoin cryptocurrency blockchain network</a> to use,
   * which token is accepted, such as "USDC" (US Dollar Coin) smart contract owned by Circle,
   * validity window,
   * payment scheme (e.g., "EIP-3009" specifies an ERC-20 token standard for “transfer with authorization”: instead of first approving spending and then doing a transfer, a user signs an off-chain message that directly authorizes a specific token transfer. The signed message is then submitted on-chain by the user or a relayer, which makes the flow faster and can remove the need for the user to pay gas directly.
   <br /><br />

See below for examples of server programming code to do the above.

@megalithlabs/x402 npm package with Express :



<a id="Recognize402"></a>

## How clients recognize 402 return

In JavaScirpt client code:

```cli
npm install x402-hono
```

```cli
npm install @coinbase/cdp-core @coinbase/cdp-hooks x402-fetch
```
to build restful api

Environment Variables (Set in .env) for charging Apple Pay:
```bash
CDP_API_KEY_ID=your-api-key-id
CDP_API_KEY_SECRET=your-api-key-secret
CDP_WALLET_SECRET=your-wallet-secret
```

In Python client code, 
```
import ???
```

Sample Backend (Node.js example using x402 middleware):

```javascript
import { x402 } from 'x402'; // or use Coinbase's SDK

const app = express();

// Middleware to protect endpoint
app.use('/paid-resource', x402.middleware({
  amount: '1000000', // USDC amount (in smallest unit)
  network: 'base-mainnet'
}));

// Your protected resource
app.get('/paid-resource', (req, res) => {
  res.json({ data: 'This is the paid content' });
});
```

Frontend (Your HTML page - client that pays):

```xml
<script type="module">
  import { createX402Client } from 'x402-client';
  
  const client = createX402Client({ wallet: yourWallet });
  
  // Request the paid resource
  const response = await client.fetch('/paid-resource');
  // Client automatically handles 402 → signs payment → retries
</script>
```

<a name="WalletAgent"></a>

## Wallet Agent


   The client wallet logic can be in several mechanisms: Foe example AEON: 

   a. Browser extension redirects user to an external browser to open the checkout page. After payment, you’ll receive a notification from AEON’s interface.

   b. Miniapp - Users will complete the payment within a miniapp embedded in your product, without leaving your bot at any point.

   c. Bot - Users will redirect to the AEON official bot for payment. Once completed, they are automatically returned to your bot.


   Stripe created an x402 hybrid solution which combines legacy credit card and subscription mechinisms above (for profit). See below.

   Algorand settlement layer ???

Integrate Privy SDK for embedded wallets

Use Stripe/Ramp for fiat-to-USDC conversion


   * https://www.fireblocks.com/blog/how-x402-and-dynamic-enable-internet-native-payments-for-ai-and-apis = Fireblocks.com $ $699/month Dynamic’s wallet stack which can sign the payment payload using an embedded MPC wallet and attach it as an X-Payment header on the next request. A facilitator such as Coinbase then settles the payment onchain and sponsors gas for the buyer. The result is a clean payment loop that works with standard HTTP tooling.
   <br /><br />

NOTE: "X-PAYMENT" headers are obsolete from version 1 of x402.

<a target="_blank" href="https://www.youtube.com/watch?v=oc8hc9MAKaI">VIDEO</a>:
On July 1, 2026, ESMA (European Securities and Markets Authority) CASPs under Article 63 offering cryop-asset services to EU clients without MiCA (Markets in Crypto Assets) license is in breach of EU law. Currently, only 14 can operate a Cryto Exchange (CEX). This has the effect of large firms shutting out small startups.

Dubai VARA


<a name="network"></a>

### eip155 Network

???
The protocol leverages EIP-3009 (permit-style authorization) to enable direct payment verification without external payment gateways. network: "eip155:8453" is a CAIP-2 blockchain network identifier that refers to the Base Mainnet blockchain. In the CAIP-2 format, eip155 indicates an EVM-compatible chain, and 8453 is the chain ID for Base.

CAIP-2 (Chain Agnostic Improvement Proposal) format for network identifiers include (from https://docs.cdp.coinbase.com/x402/network-support?utm_source=chatgpt.com

| Network :Chain Id value | Rail | 
| network: "eip155:1" | Ethereum Mainnet |
| network: "eip155:137" | Polygon |
| network: "eip155:480" | World Mainnet |
| network: "eip155:8453" | Base Mainnet |
| network: "eip155:84532" | Base Sepolia |
| network: "eip155:42161" | Arbitrum One	|
| network: "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" | Solana mainnet |
| network: "solana:EtWTRABZaYq6iMfeYKouRu166VU2xqa1" | Solana devnet |
| network: "?" | Ripple? |

TODO: have to pre-fund each network with money???

QUESTION: Can the client negotiate for another network than the one the server requests???

??? The <strong>t54</strong> rail added <strong>XRP Ledger</strong> as a supported chain enables AI agents to pay in SXRP or $RLUSD for APIs, inference, and compute by AWS, American Express, Google. The XRP crypto currency is owned by <a target="_blank" href="https://www.ripple.com/">Ripple Labs at ripple.com</a>. Some crypto traders have high hopes of XRP value appreciation in the future. RLUSD stablecoin.

ISO 20022 standard ???

What is XRP?
When XRP was launched in 2012., it spiked to $3.84 on Jan 3, 2018. 
XRP spiked again to $3.66 on Jul 17, 2026.

XRPL is permissionless and offers several benefits including low-cost transactions, quick settlement times, scalability, and eco-friendly attributes. XRP, the digital currency, was introduced as an alternative to other digital currencies with a focus on speed and energy efficiency. The XRP Ledger also features the first decentralized exchange (DEX) and custom tokenization capabilities built into the protocol, making it a versatile tool in the digital currency space.

How does XRP work?
XRP operates on the XRP Ledger, which uses a unique Federated Consensus mechanism to validate transactions. Transactions are confirmed through a consensus protocol, where independent servers, known as validators, agree on the order and outcome of XRP transactions. All servers in the network process each transaction according to the same rules, and any transaction that follows the protocol is confirmed immediately. The XRP Ledger is transparent and public, and anyone can operate a validator. This Federated Consensus mechanism aims to process all verified transactions without a single point of failure, as no single participant makes a decision independently.
What are the potential use cases for XRP?
XRP presents a wide variety of applications and use cases related to payments, including micropayments, DeFi, and soon, NFTs. The XRP Ledger supports enterprises and developers with powerful utility and flexibility. Developers can create solutions that solve inefficiencies, including remittance and asset tokenization, using the XRP Ledger. Currently, the five main applications of the XRP Ledger are payments, tokenization, DeFi, CBDCs, and stablecoins. The XRP Ledger provides a platform for developers to build applications with the potential to enhance the efficiency and speed of digital transactions.
What is the history of XRP?
XRP and the XRP Ledger were launched in 2012 by David Schwartz, Jed McCaleb, and Arthur Britto as an alternative to the Bitcoin blockchain with a focus on speed and energy efficiency. In September of the same year, they, along with Chris Larsen, founded the company that is today known as Ripple. The XRP Ledger architects gifted a large amount of XRP to Ripple so that the company could build use cases around the digital asset. Since its inception, the XRP Ledger has been operating reliably. However, since late 2020, Ripple Labs, the creators of the XRP token, has been in a legal battle with the United States Securities and Exchange Commission over whether or not XRP is a security.


<a name="NoWallet"></a>

## No Wallet (Apple Pay)

If the code detects no wallet exists	Wallet auto-created in background 
4	User chooses Apple Pay/credit card	"As seamless as Apple Pay" 
5	Service instantly buys USDC for them	Credit card charged, USDC purchased


??? Hadera settles in HBAR or HTS tokens.


<a id="PaymentHeader"></a>

## PAYMENT-SIGNATURE header

???


<a id="CoinbaseFacilitator"></a>

## Coinbase facilitator service

??? CDP Facilitator support:
https://api.cdp.coinbase.com/platform/v2/x402




## Blockchain rails

<a target="_blank" href="https://www.investopedia.com/decentralized-finance-defi-5113835">
DeFi (Decentrailized Finance)</a> mechanisms got their start in "blockchain" technology first developed in 1991 by Stuart Haber and W. Scott Stornetta who sought to keep track of documents and contracts with timestamps in an effort to detect and prevent tampering.

A blockchain is, fundamentally, a chain of blocks of content data. 
A fixed-sized 32-bit hash value is created from the contents of each block if the "SHA-1" algorithm is used.
Other algorithms (such as SHA-3 and SHA-256) create larger hash values. 
The md5 algorithm has a smaller hash value.

A hash value is the same size no matter how much content is hashed.
So data content cannot be extracted back from a hash value.

Because the hash value changes when content changes, the hash value (aka "signature") can be used to detect tampering (such as when a file sent over the internet has been corrupted during transmission).

The first block in a blockchain is called the "genesis" block.

To ensure integrity in the sequence of blocks, the signature of the next block is included in the data content hashed.

To tamper a block would require finding an identical hash value for a modified content of each and every block in the chain.

PROTIP: <a target="_blank" href="https://www.walletexplorer.com/">walletexplorer.com</a> trace transactions through a blockchain.


### BitCoin

These blockchain mechanisms where used by someone named Satoshi Nakamoto to create Bitcoin as a peer-to-peer "public ledger". 

New nodes of Bitcoin are added by <strong>miners</strong> who use a "Proof of Work" algorithm.
Calculations in Bitcoin are designed to be deliberately complex in order take effort.
Additionally, Bitcoin transactions are broadcast to several duplicates (<strong>mirrors</strong>) around the world.
So a legitimate Bitcoin transaction can take a minimum of 10 minutes to verify.

The anonymity of blocks and the large amount of money handled made Bitcoin the payment of choice for criminals working on various levels of the DarkWeb.

Over time, Bitcoin has also experienced wild fluctuation in value.


### Etherium (ETH) is not BitCoin

x402 makes use of blockchain for its public ledger functionality.

x402 does not use Bitcoin, but Etherium which uses a similar but different blockchain mechanism.

zzz


makes use of The token was launched in 2018 by Circle.
https://developers.circle.com/
<a target="_blank" href="http://developers.circle.com/">Circle’s Cross‑Chain Transfer Protocol (CCTP)</a> 
burns USDC on the source chain and mints it on the destination chain, enabling secure 1:1 transfers across networks.

https://docs.polygon.technology/pos/payments/transfers/transfer-usdc/?h=stablecoin#usdc
Polygon developer documentation


Because USDC runs on multiple blockchains on Coinbase’s Centre consortium, it can reach users worldwide. Circle’s infrastructure supports on‑ and off‑ramps in more than 185 countries.


USDC (USD Coin) is a stablecoin, a digital version of the U.S. dollar. Each token is redeemable 1‑for‑1 for a U.S. dollar, fully backed by cash and short‑term U.S. Treasuries held at regulated financial institutions.

<a target="_blank" href="https://www.circle.com/transparency#:~:text=%E2%80%8D,and%20is%20managed%20by%20BlackRock">Reserves are audited</a> by a Big Four accounting firm and transparently disclosed every week.

The token was launched in 2018 by Circle and and today circulates on more than 30 blockchains. Its programmable nature means developers can move dollars at internet speed across the world and build applications that treat money like software.


Every USDC is backed 1:1 by cash and short-term U.S. Treasuries held in Circle's reserves 
https://polygon.technology/stablecoins/usdc


<a id="WalletAgent"></a>

## Client Wallet Agent Proof of payment submission 

The Proof of Payment under x402 is not the same as a API secret key obtained ahead and sent with every request.

The Proof of Payment makes use of a type of cryptocurrency called "Stablecoin", defined in standards document
ERC-20 (Ethereum Request-for-Comments #20). 

x402 is defined to follow ERC-20 which is also followed by these:
   * USDC (Circle) is recommended for smoothest experience. USDC has the best tooling and lowest friction.
   * USDT (Tether) — some providers like utexo support USDT for agent economy payments
   * EURC (euro-denominated USDC by Qvalis) — supported on Base via EIP-3009
   <br /><br />

https://eips.ethereum.org/EIPS/eip-3009   

(CAIP-2 ID like eip155:8453 for Base)

TODO: unique and indivisible (fungible) ERC-20

TODO: (via Permit2?)  https://docs.uniswap.org/contracts/permit2/overview

TODO: Facilitator

??? A shared rulebook so any wallet or service can negotiate value the same way it negotiates data

Wallets, at their core, are straightforward—they are just a private key, a public key, and a public address.



<a id="EIP-3009"></a>

### EIP-3009

By contrast, EIP-2612 lets a user sign an approval so a spender can later pull tokens. EIP-3009 goes further and authorizes the actual transfer itself, which is more direct and better suited to payment-style flows.
https://developers.circle.com/cpn/references/blockchains/wallet-provider-compatibility

Think of it like signing a check for a specific payee and amount, with an expiration date, 
instead of first handing someone a blank spending limit.

The nonce is the core replay guard, while time bounds and EIP-712 add strong secondary layers.

* In addition to nonces, EIP-3009 includes:
   validAfter: earliest time the authorization is valid
   validBefore: expiration time
   The contract reverts if the current time is outside this window, which further reduces replay risk.

* Signatures are EIP-712 typed for domain separation, which binds them to:
   The specific token contract instance
   The exact message fields (including the nonce)
   This prevents signing reuse across different contracts or different authorizations.


https://learning.oreilly.com/course/understanding-crypto-currencies/9780135235348/
LiveLessons: "Understanding Cryptocurrencies, Bitcoins, and Blockchains"
by <a target="_blank" href="https://www.linkedin.com/in/drchaos/">Aamir Lakhani</a> (DrChaos.com)
and Keith Rayle



## Backend and Middleware

1. Fund with fiat currency such as US Dollars. ???

   <a target="_blank" href="https://www.youtube.com/watch?v=IJhS_fv5Ktk?&t=8m12s">VIDEO</a>:
   x402scan.com is Coinbase create a Bazaar which lists websites which will respond with HTTP 402 and accept micropayments.
   It's nicknamed a "google for AI agents". The Bazaar is machine-readable.
   https://www.x402scan.com/facilitators

   BTW, after Coinbase donated money to the Trump ballroom, questions by the government stopped.

A. <strong>Crypto currency blockchain networks</strong> process micropayments at lower cost than credit cards. There are two:
   <a target="_blank" href="https://en.wikipedia.org/wiki/Ethereum">Etherium</a> Level 2 Base (in ETH Ξ currency) and 
   Solana. "Base" currently handles 3 times the volume of Solana.
   Other coins include Polygon, Arbitrum, Avalanche, World (Sam Altman of OpenAI).
 
   TODO: Variation in the price of Etherium
   <a target="_blank" href="https://finance.yahoo.com/quote/ETH-USD/chart/">In the recent price of Etherium</a>.
   The all-time high for ethereum was $4,953.73 on Aug. 24, 2025.

   ??? Stablecoin USDC

B. To participate in x402, each requestor needs to have a <strong>cryto wallet</strong> installed to work with a crypto currency (stablecoin) network such as Coinbase's Base, Polygon, Solana, and Arbitrum which made it possible to move tiny amounts of value quickly and cheaply. Being able to pay a few cents for an API request opens many use cases and markets, business models. Data providers already:
   * @nansen_ai
   * @CoinMarketCap
   * @coingecko
   * @AlliumLabs
   * @MessariCrypto
   * etc.
   <br /><br />



   Google
   
   8044?? attestation



## x402 variants

Corporations running lucrative legacy payment mechanisms have developed variants to x402:

Coinbase provides the x402 infrastructure and settlement.
   * Coinbase launched its AgentKit in 2024.  It gives any AI agent headless access to Coinbase's exchange, wallets, and payment protocol, wrapped in interfaces designed for how agents actually work. AgentKit provides human identity through its World orb iris authentication devices.
   * Coinbase Exchange API
   * https://x.com/CoinbaseDev by https://x.com/MurrLincoln
   * https://x.com/MurrLincoln/status/2065843470808277417
Cloudflare provides Native x402 support.

Legacy credit card payments infrastructure giant Stripe on September 30, 2026 announced its Agentic Commerce Protocol (ACP) open standard codeveloped with OpenAI. ACP combines traditional subscriptions with usage-based pricing like x402. Stripe is helping OpenAI launch "Instant Checkout" where ChatGPT users (in chats within the United States) can quickly buy from Etsy and Shopify merchants using checkout powered by Stripe. After acquiring Bridge, a stablecoin infrastructure company and its "Open Issuance" platform to enable any business to launch and manage their own stablecoin with just a few lines of code.

Brex coincidentally, today also announced its plans to launch native stablecoin payments.

On June 10, 2026, Mastercard launched its own protocol called Agent Pay for Machines (AP4M), backed by more than 30 launch partners in a payment framework specifically designed for machine-to-machine transactions.


### Amazon Bedrock AgentCore Cognitive Payments

<a target="_blank" href="https://aws.amazon.com/blogs/industries/x402-and-agentic-commerce-redefining-autonomous-payments-in-financial-services/">BLOG</a>: 
<a target="_blank" href="https://aws.amazon.com/bedrock/agentcore/">AWS Amazon Bedrock AgentCore</a> 
<strong>Cognitive Payments Director (CPD)</strong>
is an agentic platform for building, deploying, and operating effective agents securely at scale. With AgentCore, you can enable agents to take actions across tools and data with the right permissions and governance, run agents securely at scale, and monitor agent performance and quality in production - all without any infrastructure management. AgentCore services work together or independently with any framework and foundation model.

   References:
   * https://www.youtube.com/watch?v=usFIb9aEd1U = by Swami Sivasubramanian, VP of Agentic AI at AWS, along with Nick Aldridge, Principal Developer, and  Nora Johnson, Generative AI Solutions Architect, as they unveil Amazon Bedrock AgentCore.
   * https://www.youtube.com/watch?v=QC7lvFFfBgU = Part 1
   * https://www.youtube.com/watch?v=VhvqcpvAiJA&pp=ugUHEgVlbi1VUw%3D%3D = 🚀 AWS AgentCore Gateway Explained! Streamlit AI App + MCP + PostgreSQL RDS (EP.2) on @DewasiAILab - "build a complete AI application using AWS AgentCore Gateway, MCP, Lambda, PostgreSQL RDS, and Streamlit."

https://github.com/awslabs/agentcore-samples

<a target="_blank" href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-get-started-cli.html">CLI</a>
<a target="_blank" href="https://us-west-2.console.aws.amazon.com/bedrock-agentcore/home?region=us-west-2">Console</a>
to service Payments for Agentic commerce
Production capabilities of https://agentcore.ai.demo.aws/ consists of:

   * AgentCore Gateway enables agents to securely access tools by transforming APIs and Lambda functions into agent-compatible tools and connecting to existing MCP servers.

   * AgentCore Memory makes it easy for developers to build context-aware agents by eliminating complex memory infrastructure management while providing complete control over what the agent remembers and learns.

   * AgentCore Identity allows your agents to securely access and operate across AWS resources or third-party tools and services, on behalf of users or by themselves, with scoped permissions, delegated access, and identity-aware authorization.

   * AgentCore Runtime is a secure, serverless runtime purpose-built for deploying and scaling dynamic AI agents and tools. Deploy your agents in seconds with direct code upload or choose container deployment for advanced configurations and maximum flexibility.

   * AgentCore Observability is a managed service that delivers comprehensive operational insights to trace, debug, and monitor AI agent performance, providing real-time visibility into agent workflows with OpenTelemetry-compatible integration.

   * AgentCore Browser & Code Interpreter enables agents to write and execute code securely in sandbox environments, enhancing their accuracy and expanding their ability to solve complex end-to-end tasks. AgentCore Browser provides a fast, secure, cloud-based browser runtime that enables agents to interact with websites and carry out web-based workflows at scale with reduced CAPTCHA interruptions.

   * Policy in Amazon Bedrock AgentCore helps ensure agents stay within defined boundaries without slowing them down. Policy integrates with AgentCore Gateway to intercept every tool call in real time, ensuring agents stay within defined boundaries without slowing them down.

   * AgentCore Evaluations helps teams improve agent performance in production through continuous performance monitoring and real-time quality scoring. The service automatically samples and scores live interactions using 13 built-in evaluators.


Solana - Alternative settlement network
Polygon - Identity and credentials

Visa added x402 support through its Trusted Agent Protocol. 

Google integrated x402 into its Agent Payments Protocol (AP2), where it is the stablecoin payment option. 

Circle - Stablecoin payments
Circle (USDC issuer) built the Circle Agent Stack specifically for x402, enabling gas-free, sub-cent payments

https://docs.temporal.io from $100/month individual and $500/team 
   https://learn.temporal.io/courses/
   $6,000 in free Temporal Cloud credits to startups with less than $30M in funding.

https://www.brex.com/journal/press/brex-announces-launch-of-stablecoin-payments
customers with a Brex business account will be able to accept stablecoins with automatic conversion into USD in their Brex business accounts and send stablecoins directly from their USD balances. 

<a id="Middleware"></a>

## The Crypto Middleware




   Code used by Here's where new code needs to be added. See:
   https://docs.x402.org/getting-started/quickstart-for-sellers#id-2.-add-payment-middleware
   https://github.com/x402-foundation/x402/tree/main/examples

   A client written in Python would need to be using the FastAPI or Flask framework.
   ```
   pip install "x402[fastapi]"
   # For Solana support, also add:
   pip install "x402[svm]"
   ```

   https://www.linkedin.com/company/coinbasedeveloperplatform/posts
   Coinbase Developer Program'

   Crypto currencies rely on a public digital ledger that validates and records transactions and verifies bitcoin ownership. This ledger is called the blockchain, and it is globally distributed — that is, decentralized — across a broad, worldwide network of servers.

   Decentralization is a fundamental aspect of cryptocurrencies. Decentralization facilitates peer-to-peer payments with no banking intermediary, enhanced security, and defense against manipulation attempts.



1. A crypto wallet payment middleware to receive funds by a EVM (Etherium Virtual Machine) or SVM (Solana Virtual Machine) compatible wallet.

   <a target="_blank" href="https://www.x402scan.com/facilitators">The recent history of facilitators</a>
   show that Coinbase processing the majority of all transactions, followed by FluxA and PayAI.

   The Facilitator URL or facilitator client. 
   For testing, use https://x402.org/facilitator which works on Base Sepolia and Solana devnet. For mainnet setup, see Running on Mainnet
   The routes you want to protect.
   Your receiving wallet address.

   When using a facilitator that supports the Bazaar extension, your endpoints can be listed in the x402 Bazaar, the discovery layer that helps buyers and AI agents find services.

   Layer 2 networks made them cheap. Layer 2 (L2) is one of the approaches that the Ethereum ecosystem developed to handle more transactions at lower transaction fees. A Layer 2 chain is a separate blockchain that extends Ethereum (Layer 1) and inherits the security guarantees of Ethereum. There are different types of L2 chains, including optimistic rollups and zero-knowledge rollups (zk rollups). Depending on their individual technical details, some L2 chains are capable of processing thousands of transactions per second.

   Stablecoins such as USDC makes micropayments possible. 
   
   Coinbase (x402 co-creator) hosts the primary facilitator with fee-free USDC settlement

   Major integrations — Stripe, Cloudflare, AWS all natively support USDC on x402
   Emily Sands, Head of Data & AI at Stripe
      https://www.linkedin.com/pulse/internet-has-new-economic-actor-emily-sands-n7ccc/
      "Agents are becoming a new kind of actor on the internet. And that gives us two new jobs: helping agents buy and build on behalf of people and businesses, and helping businesses adapt to the economics of token consumption."


x402 middleware: Add to your API with a few lines (Coinbase's reference impl or Cloudflare Workers)

Base, Polygon, Arbitrum

The x402 process happens over regular HTTP, an existing web infrastructure, so developers can add x402 support to their servers with minimal changes. The protocol handles the blockchain complexity behind the scenes.

To interact with an x402-enabled service, send a request to an API endpoint or resource. The server sends back a HTTP 402 response with details about the price, usually in USDC. The requestor then sign the payment with a wallet and resend the request with an <strong>X-PAYMENT</strong> header. A <strong>facilitator service</strong> checks that your payment is valid and settles it on the blockchain. Once confirmed, you get access to what you requested.


Traditional payment systems weren't built for machines making autonomous decisions. When an AI agent needs to access an API, it can't fill out forms, verify email addresses, or store credit card details. API keys and subscription models assume a human is in control, managing access and handling renewals.

The x402 protocol removes these barriers. On Base  (Coinbase's L2) , transactions cost less than $0.0001 in gas fees and settle in roughly two seconds. There are no protocol fees. Once a payment is confirmed on the blockchain, it's final with no chargebacks. 
With x402, an AI agent can pay cents or even fractions of a cent to access data, computing resources, or specialized services.


Think of it like this: instead of your agent needing a Stripe account and credit card, it just has a crypto wallet. When it hits a paid API, the API says "pay $0.05," the agent pays instantly from its wallet, and gets the data back.

EIP-3009 (transfers with pre-signed messages) enables autonomous agent payments by making them gasless — the agent only signs a message off-chain, while a third party (facilitator) pays the actual gas fee.
https://academy.extropy.io/pages/articles/review-eip-3009.html
Unlike older standards (EIP-2612 permit), EIP-3009 authorizes the entire transfer in one call, not just an approval.
   Instead of sequential account numbers, it uses bytes32 random nonces so agents can generate thousands of concurrent payments without conflicts
   
   * It has Replay protection with validAfter/validBefore timestamps which prevent the same signature from being reused.
   validAfter and validBefore create a time window that the USDC contract enforces on-chain, making each payment authorization only usable within a specific timeframe.

The Base blockchain uses the PING cryptocurrency created to demonstrate how the x402 protocol could be used to mint tokens through payments. When people started minting PING, it created the first major wave of activity on x402. 

PING is part of the Ping Observer project, which focuses on monitoring AI agent activity. The token's surge brought significant attention to the x402 protocol and proved the system could handle high transaction volumes.
Initial excitemnet drove up PING's token's price more than 20 times from the original minting cost, reaching over $80 million before settling to around $30 million to $34 million.

Swap PING crypto using Trust Wallet via our trusted partners:


1. Install the <a target="_blank" href="https://trustwallet.com/download">Trust Wallet app</a> from iOS Apple App Store, Android Google Play, download APK to Android, Chrome browser extension.

   DApps such as MetaMask ???

   https://trustwallet.com/glossary

1. Select “Swap” from the Trust Wallet home screen.

1. Ensure choose USDC as your token to swap from, and the respective chain you have it on.

1. Ensure Base is selected in the “To” network field, and choose PING as your token. Check your swap settings

1. Enter the amount of PING you would like to swap.

1. Select “Continue” and complete the remaining steps.



Tools to get started
pay.sh: Lets AI agents call paid APIs with no sign-up, pay-as-you-go


https://zuplo.com/blog/mcp-api-payments-with-x402
x402-axios: Auto-handles payment flow for MCP servers



## Approaches

An agent can request a resource from a service, API, Model Context Protocol (MCP), or any HTTP addressable endpoint, and the service responds with a payment request. The agent authorizes the payment, and the resource is delivered to the agent. 

<a target="_blank" href="https://mpp.dev/">Machine Payments Protocol (MPP) at mpp.dev</a>
enable payments to be accepted directly from agents programmatically without a human having to be in the loop,
additional account creation, checkout page. The protocol was <a target="_blank" href="https://stripe.com/blog/machine-payments-protocol">co-authored by Stripe</a> and Tempo.
Stripe users can accept payments over MPP in a few lines of code using our PaymentIntents API
https://docs.stripe.com/payments/machine
```JavaScript
const paymentIntent = await stripe.paymentIntents.create({
  amount: 1,
  currency: 'usd',
  payment_method_types: ['crypto'],
  payment_method_data: {
    type: 'crypto',
  },
  payment_method_options: {
    crypto: {
      mode: 'deposit',
      deposit_options: {
        networks: ['tempo'],
      },
    },
  },
  confirm: true,
});
```
Businesses can then accept payments directly from agents, in stablecoins as well as fiat with cards and buy now, pay later payment methods via Shared Payment Tokens (SPTs). 

   * Browserbase, a browser infrastructure provider, lets agents spin up headless browsers and pay per session. 
   * PostalForm helps agents pay to print and send physical mail. 
   * Prospect Butcher Co. lets agents order sandwiches for human pickup or delivery to anywhere in New York City. 
   * Agents can programmatically contribute to Stripe Climate.  


 https://www.youtube.com/watch?v=ewnbbcIZ8yM by Sergei at GetBlock.io $399/mo
   https://www.linkedin.com/company/tempo/
   Tempo is a purpose-built, layer 1 blockchain for payments, developed in partnership with leading fintechs and Fortune 500s. With support for all major stablecoins, Tempo enables high-throughput, low-cost global transactions for any business use case.
Tempo a cross-rail standard?



   Christian Bertsch
   https://link.com/ is the consumer wallet.




## References:

1. https://www.youtube.com/watch?v=DlzkIjhJ18o&pp=ugUEEgJlbg%3D%3D

1. https://www.youtube.com/watch?v=DlzkIjhJ18o
   12 Self-Hosted Apps to Finally Quit Big Tech.

1. https://www.youtube.com/watch?v=joabA1rwtNc = "Coinbase’s Erik Reppel on Design Principles of x402: Internet-Native Money & the AI Agent Economy" on the Questflow channel


Openmeter.com by Kong 
https://openmeter.io/blog/api-monetization

https://www.youtube.com/watch?v=S6wc6yvoZLY Fireship


x402-fetch
https://www.youtube.com/watch?v=KW5aub-m8QU
Zyte API 


https://www.youtube.com/@CryptoCasey
Uphold
uphold elite Visa earn up to 5.75%
https://bit.ly/Lorenzo-x1 = Lorenzo Tax



<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
