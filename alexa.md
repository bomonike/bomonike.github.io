---
layout: post
date: "2025-02-26"
lastchange: "v006 + from wilsonmar :alexa.md"
file: "alexa"
title: "Alexa (from Amazon)"
excerpt: "Here are my notes on creating Alexa skills programs, now with more AI than ever!"
tags: [AI,AWS,IoT]
image:
# feature: sf-ohana-1900x500-178173.jpg
  feature: https://res.cloudinary.com/dcajqrroq/image/upload/v1695381272/alexa-devices-1900x500_bcc1m4.png
  credit: Amazon Alexa
  creditlink: https://developer.amazon.com/en-US/alexa/alexa-skills-kit
comments: true
created: "2023-09-22"
---
<a target="_blank" href="https://bomonike.github.io/alexa"><img align="right" width="100" height="100" alt="alexa.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/alexa.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

## Devices

Amazon has put Alexa Natural Language Processing (NLP) smarts available in several types of devices:

   * Echo (the tall tube containing speakers) can be used as a speakerphone
   * Echo Show (with the monitor) is for individual use on desks within private offices
   * Echo Dot is for controlling speakerphone devices such as Polycom

   * Hub
   * Tap
   * Multi-modal devices have a touch-screen in addition to microphone and speaker

   * on iPhones mobile phones
   * on Android mobile phones
   * on Windows 10 computers
   * on macOS laptops and workstations
   * on smart appliances such as TVs and microwave ovens
   <br /><br />

In January 2019, Amazon's devices team announced that they had sold over 100 million Alexa-enabled devices.I

A number of manufacturers have integrated Alexa into their vehicles, including Ford, BMW, Audi, Lincoln, SEAT, and Toyota.


### Sony headphones

<a target="_blank" href="https://www.sony.com/electronics/support/wireless-headphones-bluetooth-headphones/wf-1000xm5/articles/00225624">BLOG</a>: Sony headphones with Alexa built-in are available in the U.S., UK, Germany, France, Italy, Spain, Mexico, Australia, India, Canada, and Japan.

1. Power on your headphone (<a target="_blank" href="https://electronics.sony.com/audio/headphones/headband/p/wh1000xm4-b">WH-1000XM4</a>).
1. Install Sony's Headphones Connect app. 
1. Connect to your mobile phone via Bluetooth.

1. Install the Amazon Alexa app. In the app...
1. Menu. Add device. Headphones. Set location. Enable. Pair by holding down power button. Select your device in the Accessory list. 



### Smart Home

PROTIP: Instead of the Alexa-branded Smart Home devices from Amazon, I recommend 3rd-parties who created devices that work with both Alexa and Google Home:

   * Nest thermostat

   * Phillips Hue <a target="_blank" href="https://www.amazon.com/gp/product/B07XD578LD/">Smart Plug</a>, bulbs, and other devices
   * <a target="_blank" href="https://www.amazon.com/gp/product/B07XD578LD/">Phillips Hue Smart Plug</a> is added as an accessory within the Phillips app. <a target="_blank" href="https://www.amazon.com/gp/product/B07XD578LD/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&th=1">VIDEO</a>: It can be controlled from a Stream Deck.
   <br /><br />

https://github.com/alexa-samples/alexa-smarthome

To install Blink cameras, 
1. Install the <a target="_blank" href="https://apps.apple.com/us/app/blink-home-monitor/id1013961111">Blink Home Monitor app</a> from Immedia Semiconductor on your iPhone.
https://support.blinkforhome.com/en_US/using-the-blink-app
1. <a target="_blank" href="https://www.amazon.com/Blink-Sync-Module-2/dp/B084RQ6MHJ/">$34.99</a> <a target="_blank" href="https://support.blinkforhome.com/en_US/faq-sm/sync-module-2-faqs
">Sync Module 2</a> is a hub that connects to your home WiFi network and communicates to up to 10  Blink cameras to hold up to 256GB of videos on its USB flash drive. It's for live view and and response to events from Blink cameras. Not compatible with Blink XT2, XT, and 1st generation Indoor cameras.
1. Install Lithium AA batteries in the Blink camera for the red light in front. This guy says he gets 4 months of battery life.
1. When the red light blinks, click "Discover the device" in the Blink app.
1. Join the Blink network. Allow.
1. Login to your Amazon account.
1. Select your Amazon account and Authenticate. Set Privacy settings.
1. Join your home network. Echo says "I found ..." connected to your home network.
1. In General Settings,change the name of the camera.
1. Wire doorbell to ___ for live view.
1. Blink Plus Plan 30-day free trial for unlimited cloud video recordings.

1. PROTIP: Click the sound icon to turn off sound so you don't hear the annoying doorbell ring.

1. Configure motion detection.
1. Install the Blink camera on a wall or ceiling.
1. Turn off audio on the doorbell if you want.


### Alexa on your mobile app

1.  On your iPhone App Store or Android, search for "Amazon Alexa" and install <a target="_blank" href="https://apps.apple.com/us/app/amazon-alexa/id944011620">Amazon Alexa app</a> under "Lifestyle" from "AMZN Mobile LLC" (Amazon).
1.  Open the app.
1.  Sign in with your Amazon account.
1.  Review your privacy settings.
1.  Click the "hamburger" menu at the upper-left corner.
1.  Set the language.

    Interaction and communication with Alexa are available in English, German, French, Italian, Spanish, Portuguese, Japanese, and Hindi. 

    In Canada, Alexa is available in English and French (with the Quebec accent).

Apple provides its Siri voice assistant, so Amazon has removed its app from the Apple App Store for Apple MacOS computers.

Eye gaze on Alexa will be available to customers on Fire Max 11 Tablets in the U.S., UK, Germany, and Japan.

<hr />

## Get device working

1.  Plug in the Alexa device.
1.  Setup its Internet connection so it can downloads the latest software updates and connect to your Amazon account.
1.  Setup your voice profile to enable personalized experiences.

1.  Select Menu. Select Settings. 
1.  Select Voice Responses. Enable Brief Mode, Whisper Mode, Adaptive Volume.

1.  Select Alexa Privacy. Select Manage Your Alexa Data. Select Review Voice History. Select Delete All Recordings for All History.

1.  Go back to Link Account with the carrier of your mobile phone number you want to call.

    <a name="WakeWord"></a>
    
    ### Wake (Invocation) Word

1.  Say "Alexa", the default <strong>wake word</strong>.

    PROTIP: The wake word can be changed to "Amazon", "Echo". To set Alexa devices to recognize "Computer" is the wake word used in the original Star Trek (with Leonard Nemoy) in the 60's.  

    I don't know if it's true, but I heard that in Canada, it's illegal to name your child Alexa.

    PROTIP: A blue light appears on the device to indicate that Alexa is listening.
    This is so you know that you can say <strong>follow-up</strong> commands without saying the wake word again.

1.  Say "Alexa - enable follow-up mode".

    <a name="LockDown"></a>

    ### Security Fears and Mitigations

    Some people are concerned about Alexa devices ALWAYS listening to conversations and sending them to Amazon for analysis.

    Alexa devices are designed to listen only when a wake word is spoken.

    Also, Alexa devices have a physical <strong>mute button</strong> to turn off the microphone.

1.  Select Menu. Select Settings. 

1.  Select Account Settings. Select Guest Connect. Select Disable Guest Connect.

1.  Back to Account Settings. Select Voice Purchasing. Select Purchase Controls. For "Who would you like to be able to make purchases", check "No one (disable voice purchasing)". Turn it back on when you want to make a purchase.

1.  Back to Account Settings. If Amazon Sidewalk appears, disable it because it shares your Internet connection with neighbors.<a target="_blank" href="https://www.youtube.com/watch?v=NHswkfcpz_M">VIDEO</a>

1.  Select Alexa Privacy. Select Manage Your Alexa Data. Select Review Voice History. Select Delete All Recordings for All History.

1.  <a target="_blank" href="https://www.youtube.com/watch?v=NHswkfcpz_M&t=4m9s">VIDEO</a>: Turn off "Drop In". Repeat for each device. In the Alexa app,  select Device Settings. Select your device. Select Communications. Select Drop In. Select On. Select Household Only. Select Save.


<hr />

## DEFINITIONS: Developer Buzzwords

Source: <a href="#[1]">[1] 3:39</a>:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695966156/alexa-flow-1120x547_ym92fn.png"><img alt="alexa-flow-1120x547.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695966156/alexa-flow-1120x547_ym92fn.png"></a>

1.  If the Alexa device is set to listen, it listens for the <a href="#WakeWord">wake word</a> before beginning to record.

1.  When it hears the wake word, it reviews the "utterance" (a spoken phrase) following the <a href="#WakeWord">wake word</a> followed by <a href="#OneWord">just one word</a>, a command, or a question.
    
1.  The Alexa-enabled device passes the recording file to the Amazon Alexa Service. The Alexa service applies to each recording its Speech Recognition (ASR) and Natural Language Understanding (NLU) software to come up with the "<strong>intent</strong>" which back-end servers understand. Part of that is identifying the specific "<a href="#Skills">skill</a>" (app) can fulfill specific "<strong>task</strong>". 
    
1.  Intents are handled by a Skill app written by programmers. 

    The set of words and phrases (utterances, intents, and slots) defined for each skill is called its "<strong>interaction model</strong>". 

    Design for a Voice User Interface (VUI) is different from app design for a graphical user interface (GUI) such as a website or iPhone.  

    A VUI replaces keyboard, mouse, and touch controls, and also adapts to the diverse ways users express meaning and intent through speech. 

1.  The service sends the request to the identified skill's <strong>hosting service</strong>. There is a separate hosting service for each programming language (Python, Node.js, etc.).
    
1.  The hosting service executes the skill code and returns a <strong>response</strong>, including text for Alexa to speak back to the user. 
    
    If the device has a screen, the response also has a visual component, such as an image, video, animation, or on-screen text.


    ### Whisper Mode

1.  Tell Alexa "set whisper mode", and Alexa will keep responding in a whisper back to you if you whisper to it.


<hr />

<a name="Skills"></a>

## Skills (apps)

   <a name="OneWord"></a>

### Just one word

   PROTIP: Ask common actions with just or one or two words:

   * time
   * weather
   <br /><br />

   You may tell Alexa to <strong>stop</strong> or <strong>cancel</strong> at any time.

   <strong>Built-in skills</strong>:

   * Timer. 10 minutes.
   * Timer. Stop.

   * How many miles is 500 kilometers?
   * How many inches in a foot?
   * How many feet in a mile?
   * How much does a gallon weigh?
   * How many teaspoons in 4 tablespoons?

   * How tall is Taylor Swift? 
   * How old is Meryl Streep? 

   * Tell me a joke
   * Tell me a story
   * Ask Tonight Show to play the Monologue

   * What is the definition of the word _____?
   * What are synonyms for _____?
   * How do you spell _____?

   * What's the weather in San Francisco?
   * What is the time in _____?
   * What is the capital of _____?
   * What is the population of _____?
   * What is the distance between Chicago and San Francisco?

   * Ted Talks

   Sleep sounds:
   * Ask Sleep Sounds for a list of sounds
   * Ask Sleep Sounds to play: Thunderstorms / Rain Sounds / Ocean Sounds / Babbling Brook / Fireplace Sounds / White Noise / City Sounds / Rainforest Sounds / Crickets / Fan Sounds / Cat Purring / Airplane Sounds / Train Sounds / Vacuum Sounds / Pink Noise / Brown Noise / Windy Leaves / Dripping Water / Frogs / Birds / Clock / Tibetan Bowl / Wind Chimes / Cat Meowing / Whale Sounds / Heartbeat / Crowd Sounds / Clock Ticking / Washing Machine / Dishwasher / Clothes Dryer / Car Ride / Car Engine / Shower / City Rain / Rain on a Tent / Rain on a Tin Roof / Rain on a Window / Rain on a Car Roof / Rain on a Metal Roof / Rain on a Wood Roof / Rain on a Fiberglass Roof / Rain on a Canvas Roof

   * Pandora, Spotify, TuneIn, Food Network, iHeartRadio, SiriusXM (see <a href=#Music">Music</a>)

   * Associated News, Bravo, CBS, CNET, CNN, Daily Tech, Engadget, ESPN, Fox, NBC (see <a href="#FlashBriefing">Flash Briefing</a>)
   <br /><br />

   <a name="FlashBriefing"></a>

### Flash Briefing

   * Flash briefing is Alexa's version of a news feed aggregator. In your Alexa app you can specify which news sources you want to hear from, and Alexa will play the latest news from those sources when you ask "flash briefing".

### Launch custom apps
   
   * Alexa - open Skill Finder" or Alexa, tell Skill Finder to give me the skill of the day.

   * Launch "This Day in History"

   * Alexa - ask Opening Bell for the price of Google.
   * Alexa - ask TD Ameritrade for the price of Amazon.

   " Ask Wine Gal what goes with a pot roast?

   * https://www.cnet.com/home/smart-home/the-50-best-alexa-skills-that-help-make-your-life-so-much-easier/


### Premium Skills

   * Alexa, I prefer AccuWeather for my weather updates.
   * Alexa, I prefer Big Sky for my weather updates.
   * Alexa, tell Big Sky to turn on more details
   * Alexa, open Dark Sky
      * Sunrise/Sunset times
   <br /><br />

### AI skills

   1. Alexa, open "Character.AI". Alexa then asks whether you'd like to speak with assistants, helpers, famous people, or have fun and games. Alexa lists some of the different characters waiting to chat with you.  Grace Hopper.
   
   1. Alexa, create a song with <a target="_blank"  href="https://www.amazon.com/dp/B0CRVV9WGQ/ref=sr_1_1?crid=2VQTQTZZJ1AGT&keywords=splash&qid=1704829371&s=digital-skills&sprefix=splash%2Calexa-skills%2C119&sr=1-1&tag=zd-buy-button-20&ascsubtag=63997c683b45432896640ca6cff6e012%7C8604594e-d1c5-4776-864b-19eac1ce0c51%7Cdtp">Splash music</a>" to create a song based on your description for any genre of music you want. After playing a short excerpt, Alexa asks if you want to make any changes, such as adding lyrics. If you like the tune, you can then tell Alexa to send it to your phone for playback.
   
   1. "Alexa, open Volley Games". It's an AI-driven spin on the 20 questions game. After giving you the category, guess an object by asking  'yes' or 'no' questions. Along the way, you can ask for hints if you're stumped.
   

### Amazon-account Skills

   Here are some skills you need to setup in the mobile app:

   * Tell SMS with Pamela to text Jim z"Vamanos".
   
   <em>After you setup your <a target="_blank" href="https://todoist.com/pricing">Todoist</a> <a target="_blank" href="https://www.youtube.com/watch?v=3sAYxuGD22c">VIDEO</a>)</em>
   
   * Add milk to my <strong>Grocery List</strong> 
   
   * Alexa - add call steve to my <strong>ToDo list</strong>

   The Capital One skill allows you to check your credit card balance or make a payment.

   Since your Amazon shopping account is associated with a credit card, you can invoke Alexa "Premium" apps that charge money, such as:

   * "Alexa, ask Premium Trivia for a sports question."
   
   * The <a target="_blank" href="https://www.cnet.com/products/anova-precision-cooker-bluetooth-plus-wi-fi/review/">Anova Precision Cooker</a>'s Alexa skill can look up cooking guides and begin cooking using your voice. 
      * Alexa, ask Anova to help me cook steak
      * Alexa, ask Anova to increase the temperature by 2 degrees Fahrenheit
      <br /><br />
   
   * The <a target="_blank" href="https://www.cnet.com/reviews/joule-review/">Joule</a> <a target="_blank" href="https://alexa.amazon.com/spa/index.html?tag=cnet-buy-button-20&ascsubtag=b6be6f9dea0a44a58385b8d8a7017a3b%7C6bbc442f-847c-4efc-969f-4a7ab0313118%7Cdtp%7Ccn#cards">Joule: Sous Vide skill</a> by ChefSteps. This skill can recall your past cooking settings when you say, 
       * Alexa, ask Joule to cook steak like last time
       * set the temperature and check the status of your cooking session
       <br /><br />

   Users can <a target="_blank" href="https://developer.amazon.com/en-US/alexa/alexa-skills-kit/get-deeper/tutorials-code-samples/design-for-in-skill-purchasing">make purchases within the app</a> so developers can make money and <a target="_blank" href="https://developer.amazon.com/en-US/blogs/alexa/alexa-skills-kit/2022/07/Alexa-shopping-actions-july-2022">grow revenue</a>


### Alexa Emergency Assist

   New U.S. customers can subscribe to Alexa Emergency Assist for $5.99 per month or $59 per year. Guard Plus customers will instead get access to <a target="_blank" href="https://www.amazon.com/dp/B0BZSZBK3T?ref_=ods_surl_alxprtctpr">Alexa Emergency Assist for $4.99 per month or $49.99 per year</a>.

   For hands-free 24/7 Urgent Response, Smart Alerts, and Emergency Contacts to help keep everyone you care about safe while at home or away.
 
1.  Enable Emergency Contacts. Alexa will notify your emergency contacts if you ask for help.

1.  Enable Smart Alerts. Alexa will notify you if it detects the sound of a smoke or carbon monoxide alarm, or glass breaking.

1.  Enable Urgent Response. Alexa will connect you to an emergency helpline if you ask for help.

    * <a target="_blank" href="https://www.amazon.com/gp/help/customer/display.html?nodeId=TkuRYGqllwbDDA5uBO&ref_=pe_29327650_737319650">test emergency helpline</a>

    * call for help.



### Free skills

   Some skills available for free:

   * All Recipies
   * Recipie Finder
   * Trending Recipies
   * Best Recipies
   * Easy Cocktail
   <br /><br />

### Account-specific Skills

On Alexa, you can access apps setup on your mobile iPhone/Android Alexa app:

1.  Order Starbucks:
    1. Open Starbucks
    1. Ask Starbucks to start my order
    1. Ask Starbucks to add a tall latte

1.  Ask Grubhub / Instacart to reorder my last order


### Multi-step skills

    REMEMBER: For skills that have several steps you need to repeat the skill name with every utterance. This will be fixed soon by Amazon I hope.

    1. Alexa - Ask All Recipes, what can I make with Chicken and ketchup? 
    1. Alexa – Open All Recipes. Find me a chicken recipe that takes no more than 15 minutes.
    1. Alexa – Ask All Recipes the next step.
    <br /><br />

    Multi-step enables interactive gameplay:

    * Blackjack
    * Baseball
    * Bingo: call the next number.
    * Dice
    * Jeopardy
    * The Name Game
    * Tic Tac Toe: Top Left / Center
    * Truth or Dare
    * Twenty Questions
    * Would You Rather
    <br /><br />

    ## Slots in Skills

1.  More capable skills contain "slots" which represent variable information that a user supplies to Alexa.

    For example, several utterances to book travel using Alexa:

    * Book travel.
    * I'm going on a trip leaving Oct 11 {travelDate}  
    * I want to visit San Francisco {toCity}  
    * Ii want to travel from {fromCity} to {toCity} {travelDate} 
    * I'm {travelMode} from {fromCity} to {toCity} 
    * I'm {travelMode} to {toCity} to go {activity}
    <br /><br />

1.  Book an Uber

1.  Ask Open Table to make a reservation

    ## IFFTT integration

    The website IFFTT.com (If This Then That) provides a way to integrate Alexa with many other services on the internet.

    * Gmail, Google Drive, Google Calendar
    * Nest, Phillip Hue light bulbs
    * Todoist (to-do list)
    * Twitter
    * Facebook
    * Instagram
    * Slack
    * Dropbox
    * Evernote
    * Fitbit
    <br /><br />

<a name="GenAI"></a>

## Generative AI in Alexa

In 2022 the world blew up around "Generative AI" with the availability of LLMs (Large Language Models).
 
<a target="_blank" href="https://www.aboutamazon.com/news/devices/amazon-alexa-generative-ai">Alexa engineers are on it</a>. 
<a target="_blank" href="https://www.youtube.com/watch?v=UqS3NxJ2L_I">VIDEO</a> on the <a target="_blank" href="https://www.youtube.com/@AmazonAlexa">Alexa channel on YouTube</a>.

Generative AI means the ability to generate new content. 

So Alexa would ask more intelligent and personalized <strong>follow-up questions</strong> in a <strong>conversation</strong> with users

Generative AI has the ability to summarize long-form text, so Alexa can respond more succinctly.

With AI, Alexa can draft an email for you, or write a blog post for you based on "prompts" you provide.

LLMs are enabling more natural-sounding and enthusiastic text-to-speech in Amazon's <a target="_blank" href="https://www.amazon.science/blog/alexa-unveils-new-speech-recognition-text-to-speech-technologies">Conversational Speech Recognition (CSR) engine</a> in more spoken languages.

You can ask "who <strong>should</strong> win the Oscar for best actor?" and Alexa will a name rather than simply a list of nominees.

When AI is enabled, Alexa users can program complex <strong>Routines</strong> (a series of actions) such as: “Alexa, every weeknight at 9 p.m., make an announcement that it’s bedtime for the kids, dim the lights upstairs, turn on the porch light, and switch on the fan in the bedroom."

<a target="_blank" href="https://www.youtube.com/watch?v=kVYfiB5FlWs">VIDEO: LLM and Generative AI tools for Alexa developers</a> 

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695444005/AlexaLLM-2538x1152_bzgau5.png"><img alt="AlexaLLM-2538x1152.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695444005/AlexaLLM-2538x1152_bzgau5.png"></a>

   * Character.ai enables chats with virtual helpers like trip planners to fitness coaches to famous personalities like Einstein and Socrates. These characters remember conversations and adapt to user preferences, making the interactions more personalized over time.

   * <a target="_blank" href="https://developer.amazon.com/en-US/blogs/alexa/alexa-skills-kit/2023/09/alexa-llm-fall-devices-services-sep-2023">More device</a> using Philips Hue light bulbs, GE Cync appliances, iRobot & <a target="_blank" href="https://us.roborock.com/">Roborock</a> & <a target="_blank" href="https://www.ecovacs.com/us">Ecovacs</a>, and Xiaomi (from China) vacuum cleaners.

   https://www.aboutamazon.com/news/devices/amazon-alexa-generative-ai

<hr />

## Socials for developers

https://www.youtube.com/@AlexaDevelopers

<a target="_blank" href="https://www.youtube.com/watch?v=i9zG3RorjHM&list=PL2KJmkHeYQTNndZFdaqzwc2RMSCwnvmc2">
Alexa Tech Talks on YouTube</a>

https://alexacommunity.slack.com/join/shared_invite/zt-1gb7584hx-TlkMthvhqEm4LlcbH~Gh3A#/shared-invite/email

https://amazon.developer.forums.answerhub.com/index.html
The Alexa Skills Kit (ASK) Developer Forum is a space for you to post questions about skill building and to answer other skill builders' questions. 

Amazon's Alexa evangelist Jeff Blankenburg at <a target="_blank" href="https://www.youtube.com/channel/UCJ0wvKQ5YHxLGapgJZVbtCw">Alexa Developers</a> on YouTube.

Amazon's Twitch website has a channel for Alexa developers "Alexa Office Hours"
to get answers to your questions, hear about new features, and learn about Alexa developer tools, skill certification, smart home devices, gaming, and related topics. Each week, Alexa's developer evangelists answer questions, feature the stories of successful still builders, or interview leaders in voice technology. 


## Setup Developer tooling in VSCode

Use my mac-setup.zsh script to install all that's needed

   * Git
   * VSCode and its extensions https://code.visualstudio.com/

1.  Click each of the VSCode extension links. Click the green "Install". Once in VSCode, click the blue install.

    * VSCode extensions for Alexa from https://github.com/alexa/ask-toolkit-for-vscode
    * VScode Python https://marketplace.visualstudio.com/items?itemName=ms-python.python
    * ASK Toolkit for VS Code https://marketplace.visualstudio.com/items?itemName=ask-toolkit.alexa-skills-kit-toolkit
    <br /><br />

    From independent developers:
    * <a target="_blank" href="https://marketplace.visualstudio.com/items?itemName=anfuchs.alexa-code-snippets">Alexa Code Snippets</a> from Andreas Fuchs at <br />https://github.com/foxytocin/VSCode-Alexa-Code-Snippets<br />
    provides snippets for Interaction Model, Lambda Handler, Response Builder, Helper Functions, Variable Calls, Alexa Presentation Language (APL) and Mocha-Tests. Example: https://github.com/wilsonmar/VSCode-Alexa-Code-Snippets/blob/main/snippets/aplcommands.json

    * https://marketplace.visualstudio.com/items?itemName=mark-tucker.ask-cli-configure  to quickly access Alexa Skills Kit (ASK) CLI information and docs from Visual Studio Code.

## GitHub

1.  Creat a GitHub account if you don't already have one.
1.  Set up OTP (One Time Password). I recommend the Authy mobile app to make it easier.

1.  Visit the Alexa Skills Kit GitHub repo:

     https://github.com/alexa

     It provides sample code, tutorials, open-source libraries, SDKs, APIs, language tools, and many other skill-building resources. 

1.   Here:

     https://developer.amazon.com/de-DE/docs/alexa/hosted-skills/alexa-hosted-skills-ask-cli.html

https://github.com/alexa/ask-cli

https://github.com/alexa/alexa-skills-kit-sdk-for-python

https://github.com/alexa/alexa-apis-for-python

https://github.com/alexa/alexa-apis-for-nodejs

https://developer.amazon.com/en-US/docs/alexa/ask-toolkit/vs-code-testing-simulator.html

https://github.com/alexa/skill-components
Public repository for Alexa Conversations Description Language (ACDL) Reusable components

https://github.com/alexa-samples


<a name="CustomSkills"></a>

## Custom Private Skills

Several custom skills can be housed within a file directory is the list of folders for your skill. 

1.  Access the directory on the Code tab. 

    Each custom skill is defined by a set of files in the JavaScript programming language.
    The folders appear in a file tree on the left side of the screen, as shown in the preceding image. Your free AWS resources (generated automatically) are housed inside the main Skill Code folder. 

    These resources are listed in the following table of File name and Description:
    * index.js Launches your skill, routes requests, and handles responses.
    * local-debugger.js Contains a debugging script. However, this script is being deprecated (phased out). Instead, for debugging, use the ASK Toolkit for VS Code.
    * package.json Lists dependencies, licenses, and other basic information.
    * util.js Lets you access media in your AWS storage bucket.
    <br /><br />

    https://github.com/alexa/unreliable-news-detection-biases

    By definition, private skills would not be in the public Alexa Skills Store. To make private skills available for your users to discover and enable using their Alexa app, see http://docs.aws.amazon.com/a4b/latest/ag/private-skills.html

    Private skills are not subject to <a href="#SkillCert">certification by Amazon</a>.

    <a target="_blank" href="https://alexa.sana.ai/s/7WKLitKvG9V9/file:dsDdHK91dVEf">LEARN</a>:
    What can you build with Alexa?

   1. On the Build tab, in the left pane, click CUSTOM > Invocations > Skill Invocation Name.
   1. In the Skill Invocation Name edit box, replace the words change me with hound hub.
   1. Click Save, and then click Build Skill.
   1. In the Build skill dialog box, click Build.
   1. Wait for a banner notification that says the build is complete and the locale sync was successful.
   <br /><br />

LEARN: https://alexa.sana.ai/s/7WKLitKvG9V9/file%3AnBXgssTATNK_

<hr />

## Developer Consoles

PROTIP: There are several developer consoles to keep track of within Amazon, AWS, and Alexa.
Bookmark each because they're not all connected by mouse-click menus.

1.  The "landing page" for <strong>all Amazon developers</strong> has divisions for Alexa, Appstore, and AWS:

    <a target="_blank" href="https://developer.amazon.com/en/">https://developer.amazon.com/en/</a>

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695375567/aws-dev-384x89_kvto7d.png"><img alt="aws-dev-384x89.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695375567/aws-dev-384x89_kvto7d.png"></a>

1.  Click "Create an Amazon Developer account" if you haven't already.

1.  Click "Dashboard" at the upper-right for more detailed segregation:

    <a target="_blank" href="https://developer.amazon.com/dashboard">https://developer.amazon.com/dashboard</a>

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695375191/amazon-developer-menu-1812x254_xslqdb.png"><img alt="amazon-developer-menu-1812x254.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695375191/amazon-developer-menu-1812x254_xslqdb.png"></a>

    There's an <a target="_blank" href="https://developer.amazon.com/gameon/console/home">amazon gameson" competition page</a>.

1.  PROTIP: There is a "hidden" menu about Alexa hardware devices:

    <a target="_blank" href="https://developer.amazon.com/en-US/alexa">https://developer.amazon.com/en-US/alexa</a>

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695375132/alexa-developer-menu-2256x160_yqote3.png"><img alt="alexa-developer-menu-2256x160.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695375132/alexa-developer-menu-2256x160_yqote3.png"></a>

    NEW: The "Alexa AI" menu links to <a target="_blank" href="https://developer.amazon.com/en-US/alexa/alexa-skills-kit/alexa-ai">https://developer.amazon.com/en-US/alexa/alexa-skills-kit/alexa-ai</a>

1.  Click the three-dot menu at the upper-right to pull down this menu to s`elect "Developer Console":

    <img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695947898/alexa-skills-menu_xfgfea.png">

    For the <a href="ASK">Alexa Dev Console ASK (Alexa Skills Kit)</a>

Go back to the Dashboard to click on "Alexa" at the top menu for a full list of Alexa developer resources:
    
    * <a href="ASK">Alexa Skills Kit (ASK)</a> - A collection of self-service APIs, tools, documentation, and code samples that make it fast and easy for anyone to add skills to Alexa 
    
    * <a target="_blank" href="https://developer.amazon.com/alexa/console/avs/home">Alexa Voice Service (AVS)</a> - Create or manage your Alexa enabled devices

    * <a target="_blank" href="https://developer.amazon.com/alexa/console/ack">Alexa Connect Kit (ACK) at https://developer.amazon.com/alexa/console/ack</a> - enables device makers to make any device an Alexa-connected smart device without worrying about managing cloud services, writing an Alexa skill, or developing complex networking and security firmware.
    

<a name="ASK"></a>

## Alexa Skills Kit (ASK) Developer Console

    <a target="_blank" href="https://developer.amazon.com/alexa/console/ask"><strong>https://developer.amazon.com/alexa/console/ask</strong></a>

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695374859/alexa-dev-console-1386x258_cujowe.png"><img alt="alexa-dev-console-1386x258.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695374859/alexa-dev-console-1386x258_cujowe.png"></a>

At <a target="_blank" href="https://developer.amazon.com/alexa/console/ask">https://developer.amazon.com/alexa/console/ask</a> are listed all the Alexa Skills you created and will create.

   * <a target="_blank" href="https://developer.amazon.com/en-US/docs/alexa/devconsole/about-the-developer-console.html">Navigate the Alexa Skills Kit (ASK) developer console</a>

1.  Scroll down for the "Resources"

1.  Login in or first sign up for an Amazon account if you don't already have one or don't want to use your personal account.

1.  The developer console includes an Alexa Simulator to test your input and output, a preview page that shows how your skill will look in the 

1.  Click the Create Skill button.

    See my list of <a href="#Tutorials">Tutorials about building Alexa Skills below</a>.

1.  Choose a memorable, descriptive skill name – For example, users would remember "Pizzabot" and know that it's a food-ordering skill. Likewise, "United States Quiz" is a good name for a history trivia skill.

    <a name="WhatToBuild"></a>
    
    ### What to build?

    There are several custom skills (apps/programs) I'd like to create for the many Alexa-powered devices.
    Ones that add value and solve everyday problems.

    Choose an easy invocation name. For most skills, you also choose a skill invocation name. The invocation name is used to invoke (launch) your skill.

1.  Click Next. Choose a type of experience. These correspond to the categories in the Alexa mobile app:

    * Food & Drink
    * Games, Trivia
    * Movies & TV
    * Music & Audio
    * News
    * Smart Home
    * Other
    <br /><br />

1.  Choose a <strong>model</strong>:  

    * Custom
    * Flash Briefing
    * Music
    * Smart Home
    * Video
    <br /><br />

1.  Check "Sync Locales". A locale refers to a language and the location (region) in which it's spoken, such as es-MX (Spanish language, Mexico) or en-US (English language, United States). If you're not ready to decide now, you can add locales later.

1.  Choose "Hosting services" <em>which depends on the programming language</em>:

    * Alexa-hosted (Node.js)
    * Alexa-hosted (Python)
    * Provision your own
    <br /><br />

1.  Select "Hosting region". The region you select determines where your skill is hosted. For the best performance, choose the region closest to your customers.

    WARNING: model and hosting region can’t be changed after the skill is created.

1.  Click Next to click "Learn more" before choosing a <strong>template</strong> as a convenient start toward a new skill. These templates automatically set up your basic skill framework and components. 

    * "Hello World" is no longer available.

    * "Start from Scratch" gets you started with the required intents and with code demonstrating “Hello World” functionality in building a new Alexa-hosted skill.

    * "Fact Skill" - an engaging fact skill about any topic. Alexa will select a fact at random and share it with the user when the skill is invoked. Includes: custom intents, Personalization

    * "High-Low Game Skill" - Try to guess a target number in a given range and Alexa will tell you if the number she had in mind was higher or lower. Includes: slots, custom intents, data persistence

    * "Pet Tales Skill" - a compelling multi-turn conversational audio and visual experience for a user looking for her favorite pet. Includes: APL for Audio, APL, custom intents, data persistence

    * "Fruit Shop Skill" multi-modal grocery shopping skill using custom and library controls for item lists, shopping cart management, and checkout. Includes: <strong>ASK SDK Controls Framework</strong> Preview, APL, Personalization

    * "Scheduling Skill" Build a skill to allow users to schedule appointments on your calendar, receive email confirmations and reminders. Includes: voice permissions, reminders, API calls, session persistence. By <a href="#DabbleLab">Dabble Lab</a>

    * "Survey Skill" Build a stand-up or survey skill that <strong>uses passcodes</strong> to allow only authorized users to provide updates and respond to questions. Includes: using API calls, session persistence. <a href="#DabbleLab">Dabble Lab</a>

    * "Intro to <strong>Alexa Conversations</strong>" introduces you to providing basic “Hello World” functionality and generating a voice response from Alexa. Includes: Alexa Conversations Preview, APL, APL for Audio, session persistence.

    * "Weather Bot Skill" conversational weather bot skill that allows users to receive brief weather updates for a given location. Includes: Alexa Conversations, APL for Audio, session persistence.

    * "Pizza Ordering Example" with Alexa Conversations demonstrating <strong>user corrections and context carryover</strong>. Includes: Alexa Conversations, APL for Audio, session persistence.

    * "Celebrity Older or Younger" is a different take on the Higher or Lower game that showcases Alexa Entities, APL, and persistent sessions.

1.  Click "Create skill" after reviewing your selections:

    * Skill name: Hound Hub
    * Primary locale: English (US)
    * Type of experience: Other
    * Model: Custom
    * Sync locales: Disabled
    * Hosting service: Alexa-hosted (Node.JS)
    * Hosting region: US East (N. Virginia)
    * Templates: Start from Scratch
    <br /><br />

1.  In the upper-right corner, click "Create Skill".
1.  In the pop-up, click the right arrow to view reminders. Click Done for the menu.

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1695955196/alexa-menu-1525x888_ymqgge.png"><img alt="alexa-menu-1525x888.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1695955196/alexa-menu-1525x888_ymqgge.png"></a>

1.  Select a menu item, make edits, and click "Build skill" again and "Promote to live".

    ### Skill configuration

1.  Skill Invocation Name
1.  Skill Launch Phrases

1.  Intent Launch Phrases
1.  Intents: Annotation sets
1.  Intents: Intent History

    ### Alexa code samples

1.  Intents: JSON Editor

    See github...  
    
    <tt>import ask_sdk_core.utils</tt>

    * https://pypi.org/project/ask-sdk-core/
    * https://alexa-skills-kit-python-sdk.readthedocs.io/en/latest/api/core.html
    * https://developer.amazon.com/en-US/docs/alexa/alexa-skills-kit-sdk-for-python/set-up-the-sdk.html
    * https://developer.amazon.com/en-US/docs/alexa/alexa-skills-kit-sdk-for-python/set-up-the-sdk.html
    * https://github.com/alexa/alexa-skills-kit-sdk-for-python/blob/master/ask-sdk-core/ask_sdk_core/utils/request_util.py
    * https://repost.aws/questions/QUug-YzFkzS1SwMa8BwlmM6w/how-to-run-my-alexa-skill-build-python-code-into-aws-lambda
    * https://stackoverflow.com/questions/60458988/aws-lambda-ask-sdk-core-module-not-importing
    <br /><br />

    Sample code:
    * https://omwtm.blog/2021/02/13/aws-lambda-python-puzzle/

1.  Assets:

1.  MODELS

1.  TOOLS: Monitization

    ### Skill testing

1.  Click "Evaluation model" to see the "Evaluation dashboard" for your skill.

1.  "NLU Evaluation" using Annotation Sets (above) for Natural Language Understanding

    https://developer.amazon.com/en-US/docs/alexa/custom-skills/batch-test-your-nlu-model.html

<a name="SkillGroups"></a>

### Skill groups

Skills are associated with each room as a "<strong>skills group</strong>".

Make a private skill available to shared devices by adding the private skill to a skill group,
   then add the skill group to your rooms.
   Alexa for Business automatically enables skills for Alexa devices assigned to rooms.

https://developer.amazon.com/docs/alexa-for-business/create-and-publish-private-skills-devconsole.html
When you are ready to make your skill available to select organizations, do the following:

1. Open the skill in the developer console.
2. Navigate to the Distribution page.
3. Make sure you have completed all fields in the Skill Preview section for each language.
4. In the left-hand navigation, click Availability.
5. For the availability option, select Alexa for Business Organizations, then click Save and continue.


<hr />

## Tutorials

Amazon's own:

    * https://alexa.sana.ai/s/30MdMhV0h_ea 

    * <a target="_blank" href="https://www.youtube.com/watch?v=??">VIDEO: Build a skill in 5 minutes</a> by Alexa evangelist Jeff Blankenburg at <a target="_blank" href="https://www.youtube.com/channel/UCJ0wvKQ5YHxLGapgJZVbtCw">Alexa Developers</a>

<a name="DabbleLab">Dabble Lab</a>

   * <a target="_blank" href="https://www.youtube.com/@dabblelab">Dabble Lab's YouTube channel</a> has 1,000 subscribers.
   * <a target="_blank" href="https://www.amazon.com/Dabble-Lab-Tutorials/dp/B081S2SJGB/">FireTV channel for Tutorials</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=4SXCHvxRSNE&t=9m20s">1 hour video through freeodecamp.org's YouTube channel</a> way back in 2017.
   * Enable <a target="_blank" href="https://www.amazon.com/Dabble-Lab/dp/B087JGXB7H/">Dabble Lab's Alexa Skill</a> on the Alexa Skills Store to get a daily dose of Alexa development tips and tricks and early access to Alexa development tutorials from Dabble Lab.

By pros at RealPython.com:

    * <a target="_blank" href="https://realpython.com/alexa-python-skill/">Blog "Alexa Python Skill"</a>
   
On the Analytics Vidhya Medium blog:

    * <a target="_blank" href="https://medium.com/analytics-vidhya/basics-for-developing-a-custom-alexa-skill-with-aws-lambda-as-backend-5ac115c2919">How To Build A Custom Amazon Alexa Skill with AWS Lambda as a backend Mar 29, 2020</a> by <a target="_blank" href="https://www.linkedin.com/in/prasoon-singh-297b616/">Prasoon Singh</a>. It demos use of Python via CLI.
 
 By DBA & professional Alexa Skills developer/<a target="_blank" href="https://leaherb.com/category/tutorial/alexa/">blogger</a> <a target="_blank" href="https://www.linkedin.com/in/leaherb/">Leah Erb</a>:

    <a target="_blank" href="https://leaherb.com/add-persistent-data-dynamodb-custom-alexa-skill/">BLOG: Add Persistent Data to a Custom Alexa Skill using Amazon DynamoDB February 20, 2021</a>

 Others:

   * http://alexaskillstutorials.com/page/1/ Retrieving user information in an Alexa Skill
   * http://alexaskillstutorials.com/page/2/

   * <a target="_blank" href="https://www.youtube.com/watch?v=RzS69XCe9cw">VIDEO</a> & <a target="_blank" href="https://adrixus.com/resources/2020/04/01/how-to-build-alexa-skill-python/">BLOG</a> <a name="[1]">[1]</a> where the diagram above is from): "Build Statue of Unity Facts skill" by Rahul Patel. It's based on the Hello World template which no longer exists on the Amazon site.

   * <a target="_blank" href="https://www.youtube.com/watch?v=j8d8PQTi6uA">VIDEO</a>
    
   * <a target="_blank" href="https://www.youtube.com/watch?v=j8d8PQTi6uA">VIDEO</a> by Try2Catch in 2021. blah

   * <a target="_blank" href="https://chatbotslife.com/building-alexa-skills-in-python-for-absolute-beginners-8166a7ad01fa">BLOG</a>: Building Alexa skills in Python, for absolute beginners. By Hitesh Nair Mar 9, 2019

   * https://arctouch.com/blog/alexa-skill-development-best-practices

   * https://www.batlamok.com/an-alexa-skill-to-play-music-from-youtube-in/

   * https://www.javatpoint.com/alexa-python-development

<hr />

<a name="SkillCert"></a>

## Skill Certification

   * <a target="_blank" href="https://alexa.sana.ai/s/PowS5fUsEiKT">Video course: Basics of Alexa skill certification</a>
   * <a target="_blank" href="https://developer.amazon.com/pt-BR/docs/alexa/custom-skills/certification-requirements-for-custom-skills.html">Certification docs</a>
   * <a target="_blank" href="https://www.youtube.com/watch?v=B4C2e6_Crpo">VIDEO: How to Get Your Alexa Skill Certified</a>
   <br /><br />

6. Navigate to the Certification page. Review and correct any validation errors. All validations must pass before you can submit the skill.
7. Click Submission, then click Submit for review.
8. When you publish a skill privately, its status changes to Live in the developer portal. This process can take up to two hours.


<hr />

<a name="Monitization"></a>

## Monitization

Here's an example how Tact.ai makes money:

   * https://www.amazon.com/Tactile-Inc-Tact/dp/B077GG5Q96
   <br /><br />

<a target="_blank" href="https://tact.ai/">Tact.ai</a> brings together customer data scattered across email, calendar, CRM, LinkedIn, Zendesk and other legacy systems. Whether in your office, home, open floor or shared workspace, Tact for Alexa provides contextual insights and the type of frictionless experience that drives greater sales productivity, higher win rates, and faster sales cycles. The skill changes how salespeople work at Fortune 500 customers like GE, Cisco Systems, Kelly Services and others by delivering an omnichannel AI-powered digital assistant for sales teams. The Skill unlocks the Tact Sales Assistant on any Alexa-powered device.

Tact.ai is a sales experience platform that transforms a salesperson's connected device into an AI-powered smart assistant that automates administrative tasks and creates a friction-less selling experience.

To use the Tact skill, you need Tact enterprise license. Contact us at 1-844-HEY-TACT or drop an email to sales@tact.ai to get started.


<hr />

## Local install on a Mac

### Full XCode IDE install

Instead of manually typing the below to install (with -I) and run a demo, have my script do it for you:

   <ul><pre>./mac-setup.sh -v -alexa -I
   </pre></ul>

The ASK CLI requires elements installed when the full <a target="_blank" href="https://developer.apple.com/xcode/">Apple XCode IDE</a> is installed.

1. PROTIP: If you previously installed and enabled command line developer tools separately using these commands:

   <pre>xcode-select --install
   sudo xcode-select --switch /Library/Developer/CommandLineTools  # Enable command line tools
   </pre>

   Before installing XCode IDE, remove the folders Library, SDKs, usr:

   <pre>rm -rf /Library/Developer/CommandLineTools 
   </pre>

2. After a full backup, install XCode from within the App Store on your Mac. PROTIP: It is a large download.

   
   ### ASK CLI install

   Alexa Skills Kit Command Line Interface (ASK CLI) 

3. Install <a target="_blank" href="https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html">ASK CLI</a> (Alexa Skills Kit Command Line Interface) globally:

   <pre><strong>npm install -g ask-cli
   </strong></pre>

   Example response:

   <pre>/Users/wilsonmar/.nvm/versions/node/v9.11.1/bin/ask -> /Users/wilsonmar/.nvm/versions/node/v9.11.1/lib/node_modules/ask-cli/bin/ask.js
+ ask-cli@1.4.4
updated 1 package in 4.63s
   </pre>

4. Verify version:

   <pre><strong>ask --version</strong></pre>

   Example response:

   <pre>1.4.4
   </pre>


   ### Amazon IAM User

5. PROTIP: Use Amazon IAM to define a developer account. For example "py-ec1-1".

6. PROTIP: What permissions???

   ### ask init

5. Create a folder (directory) named "projects" and cd into it.

   <pre>cd ~
   mkdir projects ; cd projects
   mkdir salesforce-ask ; cd salesforce-ask
   </pre>

5. Initialize ASK CLI to your Amazon credentials:

   <pre><strong>ask init</strong></pre>

   An example response:

   <pre>
? Please create a new profile or overwrite the existing profile.
 (Use arrow keys)
  ──────────────
❯ Create new profile 
  ──────────────
  Profile              Associated AWS Profile
  [py-ec2-1]                "__AWS_CREDENTIALS_IN_ENVIRONMENT_VARIABLE__" 
   </pre>

7. Select one ("py-ec2-1" I created) and:

   <pre>
-------------------- Initialize CLI --------------------
Setting up ask profile: [py-ec2-1]
? Please choose one from the following AWS profiles for skill's Lambda function deployment.
&nbsp; 
  default 
❯ py-ec2-1 
  ──────────────
  Skip AWS credential for ask-cli. 
  Use the AWS environment variables. 
  ──────────────
   </pre>

8. Type in the Password when the Amazon Sign in web page opens. The response:

   <pre>
Sign in was successful. Close this browser and return to the command line interface.
   </pre>

9. Close the browser window that opened and return to the Terminal, which now has:

   <pre>Switch to 'Login with Amazon' page...
Tokens fetched and recorded in ask-cli config.
Vendor ID set as M2GA6MK6WH40C?
&nbsp;
Profile [py-ec2-1] initialized successfully.
   </pre>


   ### ASK new

6. Create a new skill <strong>project</strong> from the built-in "Hello World" sample or from one of the supported open-source templates by using the --template option. The newly created skill project folder will contain all the necessary files to deploy it with minimal changes. For more information, see new command.

   <pre><strong>ask new</strong></pre>

   See https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#new-command


   ### ask simulate

   The ask deploy command automatically enables your deployed skill, so you can immediately start testing it on your device or using the ask simulate command. 
   
   Use the Alexa Simulator on the Test page of the developer console.

   ### ask deploy

   After a skill is deployed, the local and remote versions may diverge as you continue to develop the skill. 
   
   To compare between the local and remote versions of a project, use diff. 
   See https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#diff-command
   
   To push the local changes to the remote version, use deploy. 
   See https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#deploy-command


## Device Setup Tools on Windows

   PROTIP: The Device Setup Tool requires a <strong>Windows laptop</strong>. It doesn't work on any virtual desktop running in the cloud or on Apple hardware.

A room profile is associated with a room and contains all of the settings for your devices. This enables Alexa to provide weather, time, and other location-based information. ​You can create a room profile that applies the same settings to all rooms in the same building. You can modify the settings in a room profile, including the default room profile, at any time.

Alexa will only respond to enrolled users if their voice matches their voice profile.


## Provision Security setup

https://docs.aws.amazon.com/a4b/latest/APIReference/CommonParameters.html

Alexa for Business provides a device setup tool that allows you to connect multiple Echo devices to your corporate WPA2 Enterprise or WPA2 Personal Wi-Fi network, and add them to your Alexa for Business account at the same time. The device setup tool scans for devices that are in setup mode, and once discovered, automatically registers them to your account. With the device setup tool, you don’t need to manually set up each device individually.

If you plan to use WPA2 Enterprise for the network security type in the Beta version of the Device Setup Tool, you must first create a Private Certificate Authority (PCA) in AWS Certificate Manager (ACM). To do this, follow these steps:

Create a Private Certificate Authority

Get a Certificate Signing Request (CSR)

Sign Your Private CA Certificate

Import Your Private CA Certificate into ACM PCA

 Lambdas instead of typing out forms in Salesforce.



## ASK CLI Setup

https://developer.amazon.com/docs/smapi/quick-start-alexa-skills-kit-command-line-interface.html

1. Install NodeJs

   <pre>brew install node
   node --version  # v9.11.1
   </pre>

2. Install Git to use templates <a target="_blank" href="https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#new-command">*</a>

 `ask clone' command

The skill manifest named skill.json at the root level of your skill directory contains metadata and properties required for a skill.

<pre>ask api get-skill -s {skill_id} > skill.json
</pre>


https://developer.amazon.com/alexa-skills-kit

  
   ### Download skill manifest

1. Download the skill manifest of an existing, development stage skill with the get-skill API:

   <pre>ask api get-skill -s {skill_id} > skill.json
   </pre>

2. Open this file in your preferred text editor or IDE.

3. If you intend to publish your skill as a private skill, add the "distributionMode": "PRIVATE" line in the publishing Information block of your skill manifest. It should look something like this:

   <pre>
   "isAvailableWorldwide": true,
   "testingInstructions": "This is a private skill.",
   "category": "EDUCATION_AND_REFERENCE",
   "distributionMode": "PRIVATE",
   "distributionCountries": []
   },
   "apis": {
   </pre>

4. To upload the updated skill manifest for cloned or new scaffolded projects, use the `ask deploy` command. However, if you use the get-skill API from above, you should instead use the update-skill API by entering the command below:

   <pre>ask api update-skill -s {skill_id} -f skill.json
   </pre>

4. Last, submit the skill. The submission process is similar to certification for public skills. Just issue the following command:

   <pre>ask api submit –s {skill_id}</pre>

5. This submission process may take a few hours to complete, and once completed the skill will be available in the live stage.

6. The final step is to distribute the skill to an Alexa for Business organization. To do this, you’ll need the ARN of the AWS account for the organization in which you want to deploy the skill. Then enter the following command:

   <pre>ask api add-private-distribution-account -s {skill_id} --stage live --account-id <em>id</em>
   </pre>

   For example: `arn:aws:iam::123456789012:root`, where `123456789012` is a placeholder for your AWS account Id. 
   You must specify the root and not an individual user for that account.

   The private skill should now deployed and available to the Alexa for Business organization. 
   
To manage it:

1. Open the <a target="_blank" href="https://console.aws.amazon.com/a4b/">Alexa for Business console</a>.
2. Choose Skills, Private skills.
3. In the list, select the skill published to your account and choose Review.
4. To enable the skill for your Alexa for Business organization, choose Enable.
5. To enable the skill for specific shared devices within your Alexa for Business account, choose Enabled skills, select the check box next to the skill that you added, and choose Add to skill group. Then assign that skill group to a room with a device associated to it.
6. To make the skill available for Enrolled Users to discover and enable, choose Private skills and select the Available to users checkbox.
<br /><br />



<hr />

## References

https://developer.amazon.com/de-DE/docs/alexa/ask-overviews/voice-interaction-models.html
interaction template

https://developer.amazon.com/de-DE/docs/alexa/devconsole/create-a-skill-and-choose-the-interaction-model.html
interaction model

https://alexa.sana.ai/s/7WKLitKvG9V9/file:azM7389gxdgR
ASK Toolkit for VS Code

https://developer.amazon.com/en-US/docs/alexa/developer-account/manage-developer-account.html#add-a-user-to-your-account

https://developer.amazon.com/en-US/docs/alexa/developer-account/manage-developer-account.html#manage-permissions

https://www.amazon.com/alexa-skills/b?ie=UTF8&node=13727921011
Alexa Skills Store,

 and an Analytics tab to help you track skill metrics. When you're ready to certify and publish your skill, you can do that in the console, too.

https://developer.amazon.com/en-US/alexa/alexa-skills-kit/subscription-thanks

https://youtu.be/OoPyhUIoJ5Q
Alexa Design Guide

https://developer.amazon.com/en-US/docs/alexa/devconsole/build-your-skill.html#custom-model
custom skill

https://alexa.design/slack 
Slack channel for real-time engagement: 

By now, There are When <a target="_blank" href="https://www.amazon.com/dp/B0753K4CWG">Alexa Auto</a> hardware becomes widely available with skills, Salespeople would be able to verbally retrieve and enter information in Salesforce.

https://alexa.sana.ai/
Tutorial

https://developer.amazon.com/en-US/alexa

https://developer.amazon.com/en-US/alexa/alexa-skills-kit


Follow along as we build a skill called Hound Hub. This skill is intended for customers of a dog training business, but the concepts you learn are applicable to many other types of skills. 
Hound Hub tells customers about the services Amar and his partners offer: dog training, dog walking, and veterinary care. If a customer expresses interest in a particular service, Hound Hub gives them the price (Figure 1). In a future course, we add ordering functionality to this skill.
For each of the 12 topics in this course, we present learning content (Learn) followed by step-by-step instructions (Build). To help you track your progress, the Build sections are labeled (Step 1 of 2, Step 2 of 2, and so on). To reinforce new concepts, the course also has six multiple-choice questions.
Let's get started!


https://alexa.sana.ai/s/7WKLitKvG9V9
Understand Alexa terminology

<a target="_blank" href="https://www.youtube.com/watch?v=RyXUyVM_ahc">10 BIZARRE Things You Didn’t Know You Could Do With Your Amazon Echo Devices (2022)</a>