---
layout: post
date: "2026-08-10"
lastchange: "v025 CARICOM French Guiana @countries.md"
url: https://bomonike.github.io/countries
file: "countries"
title: "Countries"
excerpt: "Political boundries around Earth."
tags: [geography, geo]
image:
# feature: pic green matrix hallway 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14623876/07afd066-0593-11e6-933a-2e596511ac67.jpg
  credit:
  creditlink:
comments: true
created: "2025-10-22"
---
<i>{{ page.excerpt }}</i>
{% include _toc.html %}

<a target="_blank" href="https://github.com/wilsonmar/python-samples/blob/main/country_info.csv">My country_info.csv file</a> 
contains data combined from several sources. We've spent countless hours: downloading, merging, cleaning, formatting, and aggregating this data into an accurate and concise product.
   * https://simplemaps.com/data/countries free version has less fields than paid updated scope
   * https://www.worlddata.info/downloads/#google_vignette (charges 8 euros)
   * https://gist.github.com/ofou/df09a6834a8421b4f376c875194915c9#file-country-capital-lat-long-population-csv
   * CIA World Book (RIP)
   * https://history.state.gov/countries/all
   * https://countrycode.org/ misses some

Fields (columns) in the csv:
* _Country_Name in English
+ _CountryName in local language
+ _demonym = The name used to refer to natives or inhabitants of the country. (Americans)
* <a href="#Corruption">Cor_rank</a> = Corruption_rank
* <a href="#Corruption">Cor_scale</a>
* <a href="#Peace">Peace_rank</a> = "conflict" rank
* <a href="#Peace">Peace_score</a>
* <a href="#Passport">Passport</a>
* _Phone = Telephone Dialing prefix Mobile Country Code (MCC)
* _ISO639-2 (two letters) = ISO 3166-1 alpha-2
* ISO-3 (three letters) = ISO 3166-1 alpha-3
+ iso_numeric = Three-digit country code (ISO 3166-1 numeric).
* _tld = Internet domain TLD (Top-Level Domain) codes used on the internet

* _cur_name = currency name
* _cur_cd  = ISO 4217 currency code (USD), used for lookup
* _cur_num = currency number (whatever that's for)

+ median_age	Age that divides a population into two numerically equal groups.
* Population

* Area_KM2 (Surface area (km² and sq mi)
* Langs ???
* GDP_USD_BIL
* GDP_PP

* Capital city name
* Latitude
* Longitude
* Population
* CapType = ("Capital", "Admin", "Legis.")

+ website = The official government website of the country.
+ calling_code	= The international calling code for the country.		
+ driving_side	= The side of the road on which vehicles drive (right or left).		
+ continent	= One of 7 continents where the country is located.		
* un_member	= Whether the country is a member of the United Nations (TRUE or FALSE).		

+ language_all	= The primary languages spoken in the country. Delimited by \|.
* religion_all	= The most practiced religions in the country in order. Delimted by \|. Limit of 3. Lower threshold 10%. "No Religion" included.	

Additional fields to be added:
+ labor_force	Total labor force figure.
+ Capital Building name (Bundestag)
+ Olympic Committee code
* Region

* Coastline (km and mi)
* Government form
* Birthrate (per 1000 inhabitants/year)
* Deathrate (per 1000 inhabitants/year)
+ Fips10
+ STANAG 1059
+ Country code FIFA (also non-members)
+ Vehicle registration codes (unofficial codes in brackets)
+ United Nations Code for Trade and Transport Locations
+ Maritime identification digits (MID)
+ International Telecommunication Union (ITU)
+ International Union of Railways (UIC)


## Time Zones

<a target="_blank" href="https://en.wikipedia.org/wiki/Daylight_saving_time_by_country">BLOG</a>:
The US, Canada (except Arizona (except Navajo) and Hawaii do not observe DST), and 
Carribean countries Bahamas, Bermuda, Haiti, Turks & Caicos, Saint Pierre & Miquelon, Mexican border cities (e.g., Tijuana, Ciudad Juárez):
   * Start DST on the Second Sunday in March, 02:00 local
   * Stop. DST	on the First Sunday in November, 02:00 local

Countries that observe DST in the European Union and others: 
   * start DST on the Last Sunday in March, 01:00 UTC
   * stop. DST on the Last Sunday in October, 01:00 UTC
   * Lebanon turns at 00:00 local time

Israel 
   * start DST on the Friday before the last Sunday in March, 02:00 local
   * stop. DST on the Last Sunday in October, 00:00 local time

Egypt
   * Start DST on the Last Friday in April, 00:00 local	
   * Stop. DST	on the Last Thursday in October, 24:00 local

In the Southern Hemisphere: Australia, New Zealand 
   * Start DST on the First Sunday in October, 02:00 local
   * Stop. DST	on the First Sunday in April, 03:00 local

Chile (most of country; Magallanes and Aysén now exempt)	
   * Start DST on the First Saturday in September, 24:00 UTC−04:00
   * Stop. DST	on the First Saturday in April, 24:00 UTC−03:00

As of 2026, DST is not used by Latin American countries.
Brazil abolished seasonal clock changes in 2019 and now uses four standard time zones year‑round.

## Country groups

The <strong>EU (European Union)</strong> is a political and economic union of 27 member countries. 20 of the 27 EU countries are in the "eurozone" where the euro (€) is the official currency since 2002. Members of the Economic Monetary Union (EMU) follow unified monetary policies managed by the European Central Bank (ECB). Some non-EU microstates also use the Euro by arrangement.
Poland and Hungary do not use the euro.
Malta and the Republic of Cyprus adopted the Euro in 2008. 
Former communist countries adopted the euro include Slovakia (2009), Estonia (2011), Latvia (2014), Lithuania (2015), and Croatia (2023).

The <a target="_blank" href="https://www.mercosur.int/en/about-mercosur/what-is-mercosur">MERCOSUR</a> (Mercado Común del Sur, or Southern Common Market) refers to a South American regional economic and political bloc created in 1991 by the Treaty of Asencion among full members Brazil, Paraguay, Uruguay, Bolivia, Venezuela. 
But Venezuela's membership was suspended in 2016. Associate members, with more limited trade and participation rights are, on the west coast: (Colombia, Ecuador, Peru, Chile) and on the Northern coast: Guyana, and Suriname, plus Panama. 
Unlike the EU, MERCOSUR is primarily a free-trade area and customs union, not a shared-market system with a common currency or fully unified laws.
French Guiana is not a member because it's a region of France and the only EU territory overseas department in South America.

To foster closer cooperation in trade, climate resilience, and security, on July 7, 2026, French Guiana and Martinique (overseas departments of France) became Associate Members of the <strong>Caribbean Community (CARICOM)</strong>, joining
British Overseas Territories (Anguilla, Bermuda, British Virgin Islands, Cayman Islands) and Curaçao (constituent country of the Kingdom of the Netherlands). Full members of CARICOM include British Overseas Territories (Turks and Caicos Islands, Montserrat); Antigua and Barbuda, The Bahamas, Barbados, Belize, Dominica, Grenada, Guyana, Haiti, Jamaica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Suriname, Trinidad and Tobago.

<strong>Baltic</strong> countries include Estonia, Latvia, Lithuania, Poland, which is East of Germany, Austria, Czech Republic.

Those in the <strong>Schengen Area</strong> agreed to abolish passport controls at mutual borders. It includes most EU countries plus Switzerland, Norway, and Iceland who are not in the EU.
Ireland is not in Schengen.

<strong>NATO (North Atlantic Treaty Organization)</strong>, at <a target="_blank" href="https://www.nato.int/">https://www.nato.int</a>, is a military alliance made up of 32 countries from North America and Europe. US, Canada, Norway, and Turkey are in NATO but not in the EU.

<strong>BRICS</strong> is an acronym for Brazil, Russia, India, China, and South Africa.
But it refers to a bloc of 10 economies, of which no EU member nation is a part.

<a target="_blank" href="https://en.wikipedia.org/wiki/Five_Eyes">"Five Eyes"</a> is an "Anglosphere" intelligence alliance comprising English-speaking Australia, Canada, New Zealand, the United Kingdom, and the United States. These countries are party to the multilateral UKUSA Agreement, a treaty for joint cooperation in signals intelligence.

On <a target="_blank" href="https://www.whitehouse.gov/fact-sheets/2025/12/fact-sheet-president-donald-j-trump-further-restricts-and-limits-the-entry-of-foreign-nationals-to-protect-the-security-of-the-united-states/">December 16, 2025, the Trump White House</a> expanded travel bans bans on "12 "High Risk" countries and partial restrictions on 20 others:

   1. Afghanistan
   1. Angola (additional partial)
   1. Antigua and Barbuda (additional partial)
   1. Benin (additional partial)
   1. Burundi (original high risk)
   1. Burkina Faso (new full)
   1. Burma (Myanmar)
   1. Chad
   1. Cote d’Ivoire (additional partial)
   1. Cuba (original high risk)
   1. Dominica (additional partial)
   1. Republic of the Congo
   1. Equatorial Guinea
   1. Eritrea
   1. Gabon (additional partial)
   1. Haiti
   1. Iran
   1. Laos (previously partial)
   1. Libya
   1. Malawi (additional partial)
   1. Mali (new full)
   1. Mauritania (additional partial)
   1. Niger (new full)
   1. Nigeria (additional partial)
   1. Palestinian Authority passport holders
   1. Senegal (additional partial)
   1. Sierra Leone (previously partial)
   1. Somalia
   1. South Sudan (new full)
   1. Sudan
   1. Syria (new full)
   1. Tanzania (additional partial)
   1. The Gambia (additional partial)
   1. Togo (original high risk)
   1. Tonga (additional partial)
   1. Venezuela (original high risk)
   1. Yemen
   1. Zambia (additional partial)
   1. Zimbabwe (additional partial)
   <br /><br />


## Country Notes

* Akrotiri in the West and Dhekelia in the East are part of Sovereign Base Areas (SBAs) in a British Overseas Territory the UK retained for military purposes when Cyprus gained independence in 1960. Its official currency is the Euro (€), and the calling code is +357, the same as the Republic of Cyprus.

* Bougainville	is expected to split from Popua New Guinea in 2027.

* The "Caribbean Netherlands" (Dutch: Caribisch Nederland) (code "BQ") is the Caribbean part of the country of the Netherlands. It is a distinct "special" region consisting of three special municipalities: Bonaire, Sint Eustatius, and Saba (often called the BES islands). It came into being on 10 October 2010, when the Netherlands Antilles (AN") was dissolved. 

* South Sudan split from Sudan in 2025.

* The "Republic of North Macedonia" changed from "Republic of Macedonia" on February 12, 2019. It became the 30th member of NATO on March 27, 2020. Greece objected to the use of the name "Macedonia," as it is also the name of a northern Greek region and the ancient kingdom of Alexander the Great, which Greece considers part of its own history and heritage. The islands do not form part of the European Union. They have the status of "overseas countries and territories" (OCT), meaning EU law does not automatically apply to them.

* Kosovo is a country in Southeast Europe in the Balkans. It declared independence from Serbia in 2008, and its international status is partly disputed because some countries recognize it while others do not. It's a EU candidate country, but blocked by Bulgaria minority.

* Greenland is a self-governing, autonomous country within the Kingdom of Denmark and has been part of Denmark for 600 years despite being 1,815 miles away (for context, the distance between Greenland and the US is 3,134 miles).

* "Guyana" is a sovereign country with a capital at Georgetown.
* “Guianas” refers to the historical region in northern South America, which also includes Suriname.
* "French Guiana" is an overseas territory of France, with a capital is Cayenne. If someone says “Guiana,” they usually mean the region; if they say “Guyana,” they mean the country.

* Jersey and Guernsey are separate Bailiwicks (legal areas of jurisdiction) collectively called the "Channel Islands". The islands are possessions of the Crown, not UK regions or overseas territories. Their constitutional link is directly with the Crown rather than with Parliament. The UK government is responsible for defence and international representation, but the islands run most domestic affairs themselves. Residents are British citizens, but Channel Islands law and taxes can differ from UK law. Island laws require Crown assent (via Privy Council) to become final, so the Crown/UK has ultimate constitutional oversight.

* "Swaziland" is the former name of the southern African country now officially known as the Kingdom of Eswatini. Eswatini is Africa's last absolute monarchy. The name was changed in April 2018 by King Mswati III to mark the 50th anniversary of the country's independence from British rule and to reclaim its pre-colonial identity. "Eswatini," means "land of the Swazis" in the local Swati language.

* "Timor-Leste" is the official name of "East Timor". "Timor" comes from the Malay word for "east." "Leste" is the Portuguese word for east. So the country's name is essentially "East East", as it occupies the eastern half of the island of Timor, north of Australia. After being colonized by Portugal, it declared independence in 1975 but was almost immediately invaded and occupied by Indonesia. It wasn't until May 20, 2002 that East Timor finally achieved full independence, becoming the first new sovereign state of the 21st century.

* Although the <strong>Vatican City</strong> has +379 as its official country code is, it not used because their telephone system is integrated with Italy's country code +39. Call that, followed by the area code for Rome 06, and then the local number 698xxxxx. When dialing within Italy, 06 698xxxxx.


<a id="Corruption"></a>

## Corruption Perceptions Index (CPI)

An annual ranking published by Transparency International since 1995.
* https://www.unesco.org/en/world-media-trends/corruption-perceptions-index
* https://www.transparency.org/en/cpi/2025


<a id="Peace"></a>

## Peace (Conflict) Ranking

<a target="_blank" href="https://www.visionofhumanity.org/maps/#/">visionofhumanity.org</a>
annually publishes a rank and composite score (weighted on a scale of 1-5) based on 23 quantitative and qualitative indicators. 

2026 GPI scores for 162 matching countries. Territories/microstates not covered by the GPI index (Andorra, Monaco, Luxembourg, Malta, small island nations, dependencies) and were correctly left blank.

The lowest score (ranked at #1) continues to be Iceland, followed by Ireland, New Zealand, Austria, Switzerland, Singapore, Portugal, Denmark, Slovenia, Finland in the top 10. The US dropped from 128th in 2025 to 134th in 2026.


https://atlas.bti-project.org/
The project “Shaping Change – Strategies of Development and Transformation” is carried out in consultation with an interdisciplinary board of experts that helps to define the project focus, identifies challenges and debates project results.
The BTI is the result of the collaboration of nearly 300 country and regional experts from leading universities and think tanks worldwide. The project analyzes and compares transformation processes towards democracy and inclusive market economy worldwide. The BTI aims to identify successful strategies for steering change.


## Vector databases for Semantic Search

A vector database is a specialized database designed to store, index, and query high-dimensional vector embeddings—numerical representations of unstructured data like text, images, audio, or video. Unlike traditional relational databases that handle structured data in rows and columns, vector databases enable similarity search by treating data as points in a multi-dimensional space where proximity reflects semantic similarity.

Vector embeddings are dense arrays of floating-point numbers (often 100s to 1000s of dimensions) that translate complex, unstructured data into a format machine learning models can process. These embeddings capture semantic meaning—similar items are positioned closer together in vector space, while dissimilar items are farther apart.

It uses specialized algorithms like k-nearest neighbor (k-NN), Hierarchical Navigable Small World (HNSW), or Inverted File Index (IVF) to enable fast lookup

Popular Vector Databases include Pinecone, Milvus, Weaviate, Qdrant, Chroma, and cloud offerings like AWS OpenSearch, Google Vertex AI Vector Search, and Azure Cognitive Search.
Qdrant (<a target="_blank" href="https://qdrant.tech/">qdrant.tech</a>, written in Rust) runs as fully open-source self-hosted options or as lightweight embedded libraries. https://qdrant.tech/

My countries-mdrant Rust program was created using this prompt:
"In folder /Users/johndoe/bomonike/rustlang-samples create countries-mdrant Rust program countries-mdrant to load a Qdrant database named countries-qdrant from country_info.csv in folder /Users/johndoe/bomonike/rustlang-samples. Use the Dioxus library to create Rust code present a chatbot GUI for users to type in questions answered using the database. Measure the elapsed time taken for each step. Write the program such that others can use its functions for other databases. Create a CLI bash shell script named countries-mdrant.sh to start the Qdrant database."


<a id="Scatterplot"></a>

## Scatterplot of Corruption vs. Conflict (Peace)

"Also create a scatterplot of Cor_rank (Corruption rank) vs. Peace_rank. Include a correlation line. 

In the scatterplot below, "Peace Index" scores are called "Conflict Rank" to minimize the "mental gymnastics" of reconciling that and the Conflict rank.

> The lower the rank and score the more peaceful and corrupt is the country.

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1786021406/countries-scatter-1396x911_r059fs.png"><img alt="countries-scatter-1396x911.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1786021406/countries-scatter-1396x911_r059fs.png" /></a>

Observe that less-corrupt countries (on the left) tend to be be ranked as less conflict (be more peaceful).


## Passport Index

<a target="_blank" href="https://www.globalcitizensolutions.com/global-passport-index/">Global Passport Index 2025</a> goes beyond visa access. It evaluates mobility, quality of life, and investment appeal, showing not just where a passport can take you, but how well you can live and plan once you get there.

https://www.boundless.com/blog/us-passport-ranking/
The top-ranked countries in the 2024 report:

1. Singapore (193 destinations)
2. (tie) Japan and South Korea (190 destinations)<br />
(tie) France, Germany, Italy, Spain, Denmark, Ireland, Finland<br />
(tie) Netherlands, Sweden, Belgium, Portugal, Norway, Austria, Luxembourg<br />
(tie) Switzerland, Greece, New Zealand<br />

UAE

## Citizenship & Residency Program Evaluations

https://ntltrust.com/
https://www.youtube.com/@ntltrust1994

## Language requirements:

French is an official language in 29 countries around the world.
French is the sole official language in France & Monaco, Benin, Burkina Faso, Democratic Republic of the Congo, Republic of the Congo, Djibouti, Gabon, Guinea, Ivory Coast (Côte d’Ivoire), Mali, Niger, Senegal, Togo
French is one of multiple official languages in: 
   * Belgium (one of 3 official languages, mainly in Wallonia. Germany)
   * Switzerland (one of 4 official languages, in western regions)
   * Luxembourg (one of 3 official languages: Luxembourgish,  French, German )
   * Burundi, Cameroon, Central African Republic, Chad, Comoros, Equatorial Guinea, Madagascar, Rwanda, Seychelles
   * Canada (one of 2 official languages, dominant in Québec)
   * Haiti (one of 2 official languages)
   * Vanuatu (one of 3 official languages)

Spanish

German: Germany, Austrian German, Lichtenstein, Luxembourg, Belgium
https://en.wikipedia.org/wiki/High_German_languages
"High (Highland) German" refers to the dialect group that originated in the mountainous central and southern regions (the "High" refers to the High/Middle Uplands and Alps). in Central and southern areas (south of the Benrath isogloss) 
   * Brazil (5 million), Russia, France, Canada, Italy, Paraguay.
   * Czech Republic – Bohemia
   * Poland – Upper Silesia
High German dialects also exist in diaspora communities in Romania, Russia, Canada, the US, Brazil, Argentina, Mexico, Chile, and Namibia.



### NomadCapitalist.com

To consider the “true value” of citizenship in countries around the world, to “go where you’re treated best”, NomadCapitalist.com presents rankings based on "20 sources, such as country tax authorities for tax rankings, and the World Happiness Report and the United Nations’ Human Development Index for perception rankings".

https://www.cnbc.com/2025/04/03/which-country-has-the-best-passport-see-the-2025-ranking.html

Unlike other rankings, which often evaluate passports based solely on their visa-free travel strength, Nomad Capitalist’s ranking analyzes five criteria:

   * Visa-free travel — 50%
   * Taxation — 20%
   * Global perception — 10%
   * Ability to hold dual citizenship — 10%
   * Personal freedom (freedom of the press, mandatory military service, etc.) — 10%
   <br /><br />

Their ninth edition ranked 199 countries and territories, with the top 49 listed below. Each score range from 10 to 50, except for the visa category, which is the number of countries that passport holders can enter without needing a visa.

```
Rank	Country	Visas	Taxation	Perception	Dual Cit	Freedom	Total Score
1	Ireland	176	30	50	50	50	109
2T	Switzerland	175	30	50	50	50	108.5
2T	Greece	175	40	40	50	40	108.5
4	Portugal	176	30	50	50	40	108
5T	Malta	171	40	40	50	50	107.5
5T	Italy	175	40	40	50	30	107.5
7T	Luxembourg	176	20	50	50	50	107
7T	Finland	176	20	50	50	50	107
7T	Norway	176	20	50	50	50	107
10T	UAE	179	40	40	20	30	106.5
10T	New Zealand	173	30	50	50	40	106.5
10T	Iceland	171	30	50	50	50	106.5
13T	Netherlands	176	30	50	20	50	106
13T	Germany	176	20	50	40	50	106
13T	Czech Republic	174	20	50	50	50	106
13T	Belgium	176	20	50	50	40	106
13T	Denmark	176	20	50	50	40	106
13T	Slovenia	172	40	50	30	40	106
19T	Sweden	175	20	50	50	40	105.5
19T	Latvia	173	30	40	50	40	105.5
21T	United Kingdom	172	30	40	50	40	105
21T	France	176	20	40	50	40	105
21T	Estonia	174	30	50	20	50	105
21T	Croatia	174	30	40	40	40	105
21T	Romania	172	30	40	50	40	105
26T	Monaco	169	50	40	10	50	104.5
26T	Cyprus	171	30	40	50	40	104.5
26T	Singapore	175	40	50	10	30	104.5
29T	Lithuania	172	30	50	30	40	104
29T	Austria	176	20	50	20	50	104
29T	Bulgaria	172	30	40	40	40	104
32T	Hungary	175	30	30	40	30	103.5
32T	Poland	175	20	30	50	40	103.5
32T	Spain	177	30	30	20	40	103.5
35	Slovakia	174	20	40	40	40	103
36	Liechtenstein	173	20	50	20	50	102.5
37T	Malaysia	170	40	40	10	40	102
37T	Japan	174	20	50	20	40	102
39	South Korea	175	20	40	30	30	101.5
40T	Canada	172	20	30	50	30	101
40T	Australia	172	20	30	50	30	101
40T	Chile	162	30	50	50	40	101
43T	Argentina	162	30	30	50	40	99
43T	Brazil	164	30	40	40	30	99
45T	United States	171	10	30	50	30	98.5
45T	San Marino	161	40	40	10	50	98.5
47T	Bahamas	154	50	30	20	50	97
47T	Barbados	156	40	30	50	30	97
49T	Saint Kitts and Nevis	147	50	40	50	40	96.5
49T	Uruguay	151	40	40	40	50	96.5
49T	Vatican City	151	50	40	30	40	96.5
49T	Andorra	161	30	40	10	50	96.5
```

European countries hold nine of the top 10 spots, from the perennial powerhouse of Switzerland to the small nations of Luxembourg and Malta.

The highest ranked passports outside of Europe are the United Arab Emirates and New Zealand, which are both tied for 10th place.

The complete list can be viewed at Nomad Capitalist’s website.

Greece rises, UAE falls
Greece (tied for 2nd), Slovenia (tied for 13th) and Spain (tied for 32nd) rose in the 2025 rankings, fueled by changes to each countries’ tax scores.

“In a turbulent year marked by shifting geopolitics and policy upheaval, Greece surged dramatically from sixth into joint second with Switzerland, reflecting its growing credibility among high-net-worth individuals, retirees, and global investors,” according to a press release announcing the ranking.

However, other countries — including Lithuania, Netherlands, Germany and Hungary — moved down the ranking. Notably, the UAE — which was No. 1 in 2023 and tied for No. 6 in 2024 — moved to 10th place in 2025.

“Recently introduced taxes ... have tarnished [the UAE’s] allure for global entrepreneurs,” the release stated.

Countries which top other lists — like Singapore and Japan — rank lower in Nomad Capitalist’s list. Both score low for dual citizenship, which is restricted in Japan and not recognized in Singapore. Japan is also dinged in the taxation category, while Singapore has lukewarm scores for personal freedoms.

Singapore ranked 126 out of 180 countries in Reporters Without Borders’ 2024 World Press Freedom Index and requires male citizens and permanent residents to serve approximately two years in the military when they turn 18 years old. The island nation, however, has top scores for “perception.”

The weakest passports on the list, ranked from 195 to 199, are Pakistan, Iraq, Eritrea, Yemen and Afghanistan.

https://nomadcapitalist.com/nomad-passport-index/


<a target="_blank" href="https://www.youtube.com/watch?v=05-EgC5ILas">VIDEO</a>: 
World’s Largest Cities by Population (3700 BC – 2050 AD)

## Commercial Nuclear countries

<a target="_blank" href="https://www.visualcapitalist.com/expected-nuclear-capacity-by-country/">
<img alt="" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1777052666/countries-nuclear_tlciml.jpg" /></a>

Countries are entering a new "golden age" of nuclear. This shift reflects a broader push to secure reliable, low-carbon energy as electricity demand rises.

The world’s first commercial nuclear power plant came online in 1956 within the UK, which later scaled back its use of nuclear. 

France remains a historic leader in nuclear energy, with around 69% of its electricity generated from the technology. 

Uganda is set to scale up the most to 18,000 MW, followed by Poland with 15,612 MW and Türkiye with 14,700 MW.


## Dominican Republic

In the Carribean:
East side of Haiti on the island of Hispaniola, SouthEast of Cuba and West of Puerto Rico.

https://dominicantoday.com/dr/tourism/2025/07/29/dominican-republic-to-welcome-22-cruise-ships-in-august-2025/
Dominican Republic to welcome 22 cruise ships in August 2025

https://www.cruisemapper.com/ports/puerto-plata-amber-cove-port-1936#google_vignette
* Celebrity Beyond
* Carnival Cruise Line
* Holland America Line (owned by Carnival) <a target="_blank" href="https://www.hollandamerica.com/en/us/find-a-cruise/c5t07e/k581">from Ft. Lauderdale</a>
* Princess Cruises
* Norwegian Cruise Line (NCL) Aqua
* Royal Caribbean International
* Virgin Voyages (offers specific Dominican Republic itineraries)
* MSC World America (debuting April 2025)

 A few of the major cruise lines that sail to the Dominican Republic include Carnival, Princess, Norwegian Cruise Line (NCL) and Holland America Line (HAL). 25 BEST Dominican Republic Cruises 2024 (Prices + Itineraries): Cruises to Dominican Republic on Cruise Critic

Main Ports of Call: 

Santo Domingo - The capital city also receives cruise ships

Puerto Plata Area: <a target="_blank" href="https://cruisedig.com/ports/puerto-plata-amber-cove-dominican">ports</a>
   * Amber Cove - A popular cruise terminal
   * Taíno Bay - Another major terminal

Cabo Rojo in Pedernales

Coworking hubs like 2Work located in both Santo Domingo and Punta Cana or Comun Co-Work in Las Terrenas offer fast Wi-Fi, backup power, and a community of remote professionals. Even more laid-back towns often have cafés with decent connectivity—just make sure to ask about backup power (inverter or generator) during rainy season or in areas with frequent outages.


## Phones

spysatphone.com

https://satellitephonestore.com/catalog/sale/details/iridium-9555-satellite-phone-kit-4
$100/mo. 


## International Money

https://www.youtube.com/watch?v=QitVfpFfNTo
Don’t Leave the US Until You Do This With Your Money
Smile Abroad | The American Exit System

Charles Schwab

NOT HSBC

https://www.youtube.com/watch?v=tty9GpglnmQ
by International Asset Management

https://www.youtube.com/watch?v=bnxeMVfkBl4
Medicare Doesn't Work Abroad: Here's What Expat Retirees Need Instead

