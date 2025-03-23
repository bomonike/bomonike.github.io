---
layout: post
date: "2025-03-22"
lastchange: "v006 + sunlight :weather-info.md"
file: "weather"
title: "Weather microclimate"
excerpt: "How to measure weather metrics at your microclimate."
tags: [weather, observability,rcloud]
image:
# feature: pic green matrix hallway 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14623876/07afd066-0593-11e6-933a-2e596511ac67.jpg
  credit:
  creditlink:
comments: true
created: "2018-04-03"
---
<a target="_blank" href="https://bomonike.github.io/weather-info"><img align="right" width="100" height="100" alt="weather-info.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/weather-info.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}
---

## Measurements and Instruments

This display is from the <a target="_blank" href="https://ambientweather.com/support/ws-5000-weather-station-support/">Ambient Weather WS-5000 series</a> after <a target="_blank" href="https://www.youtube.com/watch?v=wyFh8edFZiA" title="VIDEO">installation/configuration</a>:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742185185/weather-ws-5000-891x527_z7ypgc.png"><img alt="weather-ws-5000-891x527_z7ypgc.png" width="891" height="527" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742185185/weather-ws-5000-891x527_z7ypgc.png" /></a>

(-) and (+) adjust values:<br />
<table border="1" cellpadding="4" cellspacing="0"><tr valign="top"><td>(-)<br />Minus<br />Brightness </td><td>(+)<br />Plus<br />Brightness<br />Adjust </td><td> Backlight<br />On/Off<br />toggle </td><td> Background<br />On/Off<br />toggle </td><td> Pressure<br />Absolute<br />/Relative<br />toggle </td><td> Channel </td><td> History </td><td> Set<br />Mode </td></tr></table>

1. On the <a target="_blank" href="df920bc15d3b38069de0ddc5cc34b374">AmbientWeather.net web page</a> click the icon for more information. See the <a target="_blank" href="https://ambientweather.com/support/ws-5000-weather-station-support/">FAQ</a>.
2. Wi-Fi signal strength icon. An exclamation point ! indicates the display is connected to Wi-Fi but not the Internet.

3. Outdoor Sensor Array Low Battery Indicator 
4. Outdoor Sensor Array Signal Quality 

5. Temperature is measured in Centigrade or Fereinheght by therometers: current, high, and low temperature of the day.

6. Humidity measured in "Hg percentage" by hygrometers. Manual hygrometers use a polished mirror. As air within the hygrometer is cooled to the dew point, moisture forms on the mirror, which blocks some of the reflected light, indicating that the dew point temperature has been reached.

   A manual psychrometer (aka "sling psychrometer") uses two thermometers. One has a wet wick around the bulb. As the water from the wick is evaporated, heat is removed, as measured on the thermometer. The temperature difference on the two thermometers provides the dew point.

7. Wind: 
   * Wind direction (blue arrow) is measured in compass degrees by wind vanes (looks like an airplane)
   * Wind speed and Gust in mph is measured by anemometers within 10-minute average wind direction (larger gray arrow).
   * Old anemometers have spinning cups
   * New anemometers have ultrasonic technology that has no moving parts.

8. Leak detector status (channels 1-4, if installed) 
9. Soil moisture, leaf wetness CH4 (Channel 4 among channels 1-8 for each of 8 WH31 Temp/Humidity remote sensors that can be added.
10. Current date and time 
11. Lighting detector last strike, last strike time and strikes per hour (if installed).
12. Indoor, Channel 1-8 humidity 
13. Indoor, Channel 1-8 temperature 
14. CH (Channel) scroll mode indicator 
15. CH7 Channel 7 indicator
16. Rain icon: maximum is 1.4 inch. 
   * "Rate", daily, hourly, weekly, monthly and yearly rain inches
17. Forecast icon based on rate of change of pressure
18. "Barometer Reading": Barometric pressure is measured in inHg, mmHg, or ABS Hg by barometers. 
   * Barometric pressure (REL or ABS), 
   * arrow indicates rate of change of pressure

19. "Max Daily Gust" of wind in MPH
20. Moon Phase
21. "10 MinAvg" (10-minute average) wind speed and compass direction

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1727494071/compass-800x800_hvwmtu.webp"><img width="300" alt="compass-800x800_hvwmtu.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1727494071/compass-800x800_hvwmtu.webp" /></a>

22. UV Index is measured in UV Index ? by UV meter (if installed)

23. Under arc: am: Sunrise, pm: sunset. On the website is this tile:

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742678815/weather-amb-web-sun-moon-540x572_ep3qfa.png"><img alt="weather-amb-web-sun-moon-540x572.png" width="540" height="572" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742678815/weather-amb-web-sun-moon-540x572_ep3qfa.png" />

24. <a target="_blank" href="https://ambientweather.com/solarradiation.html">>Solar Radiation</a> (if installed) in wm/2 (Watts per square meter), Lux, or FC (Foot Candles). The measurement is used to calculate evapotranspiration - the potential for evaporation of moisture from the soil (or the reverse of rainfall) as a function of solar energy, wind, and temperature.

    Before electronic photoelectric sensors are used by computers, the Campbell-Stokes and Jordan Sunshine Recorders (in the UK) used a glass sphere to focus sunlight onto a recording card, creating burn marks that indicate the duration of sunshine. Not part of the WS-5000 series is a pyrheliometers to measure sunshine intensity thru direct solar radiation (not sunshine duration). Pyrheliometers have a tubular structure that needs to be aimed at the sun, often mounted on a solar tracker. There are also pyranometers that have a dome-shaped sensor that can be seen from all angles, resembling a "UFO saucer". 

25. IN (Indoor) in ug/m3 by PM2.5 air quality sensor (if installed)
26. OUT (Outdoor) Particulate monitor in ug/m3 by PM2.5 sensor (if installed)
27. <a href="#dew-point">Dew point</a> is measured in degrees by ???.

   The dew point is the temperature to which air must be cooled (at constant pressure) in order for it to become saturated (have 100% relative humidity).

   * When air cools to its dew point, it reaches 100% relative humidity, and any further cooling causes water vapor to condense into droplets, forming dew or fog.
   * A low dew point of 45 degrees feels "refreshing". At 50, it's "comfortable". At 55, it's "not bad". 
   * A high dew point indicates more moisture in the air, making it feel humid - and "sticky" and uncomfortable in warm weather. At 60, it's "muggy".At 65 it's "Very Humid". At 70 it's "tropical" 
28. "Feels Like" above Temperature.

    <a name="dew-point"></a>

29. The <strong>lightning icon</strong> appears when Dew Point exceeds 70ºF, when conditions make it possible for lightning storms to form in the area. The dew point is the temperature at which air becomes saturated with moisture at a given pressure, leading to the formation of dew, fog, or frost. <a target="_blank" href="https://www.cbsnews.com/boston/news/what-is-dew-point-humidity-sticky-weather/">BLOB</a>
30. Daily Rain Icon: Rainfall is measured by rain gauges. Modern ones use ultrasonic technology that has no moving parts.

* Moonrise/Moonset?
* Tide levels?
* Soil moisture is measured by soil moisture meters

<!-- This is from the Ambient Weather WS-5000 series:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742181715/weather-ws-5000-dash_bjmwjh.png"><img alt="weather-ws-5000-dash.png" width="546" height="390" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742181715/weather-ws-5000-dash_bjmwjh.png" /></a>
-->

## Additional Analysis 

Metrics over time.

Comparison vs. other weather stations (upwind, downwind, etc.).

d3.js <a target="_blank" href="https://d3js.org/">d3.js</a> is a JavaScript library for producing dynamic, interactive data visualizations in web browsers. <a target="_blank" href="https://learning.oreilly.com/videos/-/10000MNHV2021133/">VIDEO</a>

Smart Home display trends

Upwind locations on the map would experience weather patterns (such as rain) before you (n=in a downwind location).


## Technologies

There are several technologies to measure your weather:

* Build your own weather station on a Raspberry Pi, ESP32, etc.

Instrument manufacturers:
* <a target="_blank" href="https://www.acurite.com/">AcuRite</a> "fell apart after a year" 
   * <a target="_blank" href="https://www.youtube.com/watch?v=7cxNahFvGVU">VIDEO</a>
* Ambient Weather
* Davis Instruments
* https://www.scientificsales.com/6252-Davis-Wireless-Vantage-Pro2-Weather-Station-p/6252.htm
* $339 <a target="_blank" href="https://shop.tempest.earth/products/tempest">Tempest</a> <a target="_blank" href="https://tempestwx.com/map/40.7127/-74.0059/8">MAP</a>

* The <a target="_blank" href="https://www.amazon.com/Ambient-Weather-WEATHERBRIDGE-Universal-Compatible/dp/B00FPPYM7M?ref_=ast_sto_dp">$159.50</a> <a target="_blank" href="https://www.ambientweather.com/weather-bridge">Ambient Weather Bridge</a> updates (without the use of a PC or networking fees) weather servers real-time to Twitter,  MySQL, EMail Summaries and Alerts, and aircams. See http://www.meteobridge.com/wiki/index.php/Push_Services

Several locally-run servers receive and display weather information:
   * The Ignition server
   * "Home Assistant"


## Internet Weather Reports

* Ambient Weather has its own cloud (AWN) Network to receive weather reports for its devices.
   * https://ambientweather.com/mwdownloads/download/link/id/1223

* Weather Underground also accepts video from Ambient Weather AirCams

* WeatherBug.com (USA)
* pwsweather.com (USA) Weather For You
* windfinder.com (USA)
* wxqa.com (Citizens Weather Observation Program) USA
* openweathermap.org USA

* wow.metoffice.gov.uk
* awekas.at (Austria)


## Ambient Weather Instruments

Ambient Weather is a company that provides weather stations and data for consumer use.

* <a target="_blank" href="https://www.amazon.com/dp/B087V6N5WZ/">$449.99</a> WS-5000 series has WiFi and no moving parts and a TFT color display <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1081">manual</a> <a target="_blank" href="https://www.youtube.com/watch?v=b8oQCBA6Tio">VIDEO</a> <a target="_blank" href="https://www.youtube.com/watch?v=I560_a3yPmE">User Observations</a>
* $299.99 WS-2000 has WiFi & display
* $144.99 WS-1965 is a entry-level monitor has moving parts.

Other Ambient Weather devices sold separately, with <a target="_blank" href="https://ambientweather.com/manuals.html">manuals online</a>:

* <a target="_blank" href="https://www.amazon.com/Ambient-Weather-ObserverIP-Stations-separately/dp/B00XNMN2GG/">$77.99</a> 
<a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1081">Network WeatherHub</a> to set up alerts, access your data remotely, and program your home based on weather conditions using IFTTT, Google Home, Alexa, and more. <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1192">manual</a> http://www.meteobridge.com/ using HTUhttps://angryip.org/download/ 

* PM25 Particulate Monitor <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1095">manual</a>
* PM25IN Indoor Particulate Monitor <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1096">manual</a>
* AQIN Air Quality Monitor <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1097">manual</a>

* WH3ILA Leak Detector <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1098">manual</a>
* WH3ILC Infrared Motion Detector <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1099">manual</a>
* WH3ILM Lightning Detector <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1100">manual</a>
* WH315M Soil Monitor Sensor (part of garden bundle) <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1101">manual</a>
* Pool <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1102">manual</a>
* AirCam camera for feeding weather websites <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1103">manual</a>
