---
layout: post
date: "2025-03-17"
lastchange: "v003 + setup video cumpus buttons :weather.md"
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
<a target="_blank" href="https://bomonike.github.io/weather"><img align="right" width="100" height="100" alt="weather.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/weather.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}
---

## Measurements and Instruments

This is from the most sophisticated manufacturer: Ambient Weather WS-5000 series, which can connect to 8 WH31 Temp/Humidity remote sensors added over 8 channels:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742185185/weather-ws-5000-891x527_z7ypgc.png"><img alt="weather-ws-5000-891x527_z7ypgc.png" width="891" height="527" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742185185/weather-ws-5000-891x527_z7ypgc.png" /></a>

Buttons left to right:<br />
| Minus Brightness | Plus Brightness | Backlight On/Off toggle | Background On/Off toggle | Pressure Absolute/Relative toggle | Channel | History | Set Mode

1. AmbientWeather.net connection icon 
2. Wi-Fi signal strength icon. An exclamation point ! indicates the display is connected to Wi-Fi but not the Internet.
3. Outdoor Sensor Array Low Battery Indicator 
4. Outdoor Sensor Array Signal Quality 

5. Temperature is measured in Centigrade or Fereinheght by therometers. Current, high and low outdoor temperature
6. Humidity measured in Hg percentage by hygrometers
7. Wind: 
   * Wind direction (blue arrow) is measured in compass degrees by wind vanes (looks like an airplane)
   * Wind speed and Gust in mph is measured by anemometers within 10-minute average wind direction (larger gray arrow).
   * Old anemometers have spinning cups
   * New anemometers have ultrasonic technology that has no moving parts.

8. Leak detector status (channels 1-4) 
9. Soil moisture, leaf wetness CH4 (Channel 4 among 1-8) 
10. Current date and time 
11. Lighting detector last strike, last strike time and strikes per hour (if installed)
   * lightning icon appears when then Dew Point exceeds 70 ºF, which signifies temperature and humidity conditions may be possible for lightning storms to form in the area.
12. Indoor, Channel 1-8 humidity 
13. Indoor, Channel 1-8 temperature 
14. CH (Channel) scroll mode indicator 
15. CH7 Channel 7 indicator
16. Rain icon: maximum is 1.4 inch. 
   * "Rate", daily, hourly, weekly, monthly and yearly rain inches
17. Forecast icon based on rate of change of pressure
18. "Barometer Reading": Barometric pressure is measured in ABS Hg by barometers. 
   * Barometric pressure (REL or ABS), 
   * arrow indicates rate of change of pressure

19. "Max Daily Gust" of wind in MPH
20. Moon Phase
21. "10 MinAvg" (10-minute average) wind speed and compass direction

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1727494071/compass-800x800_hvwmtu.webp"><img src="https://res.cloudinary.com/dcajqrroq/image/upload/v1727494071/compass-800x800_hvwmtu.webp" alt="compass-800x800_hvwmtu.webp" /></a>

22. UV Index is measured in UV Index ? by UV meter (if installed)

23. Under arc: am: Sunrise, pm: sunset

24. Solar Radiation in wm/2 by ? (if installed) - Sunshine is measured by sunshine meters
25. IN (Indoor) in ug/m3 by PM2.5 sensor (if installed)
26. OUT (Outdoor) in ug/m3 by PM2.5 sensor (if installed)
27. <a href="#dew-point">Dew point</a> is measured in degrees by dew point meters
28. "Feels Like" above Temperature

    <a name="dew-point"></a>
29. Lightning icon appears when Dew Point exceeds 70ºF, when conditions make it possible for lightning storms to form in the area.
30. Daily Rain Icon: Rainfall is measured by rain gauges. Modern ones use ultrasonic technology that has no moving parts.

* Moonrise/Moonset?
* Tide levels?
* Soil moisture is measured by soil moisture meters

<!-- This is from the Ambient Weather WS-5000 series:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742181715/weather-ws-5000-dash_bjmwjh.png"><img alt="weather-ws-5000-dash.png" width="546" height="390" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742181715/weather-ws-5000-dash_bjmwjh.png" /></a>
-->

## Metrics over time


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

## Internet Weather Reports

* Ambient Weather has its own cloud (AWN) Network to receive weather reports for its devices.
   * https://ambientweather.com/mwdownloads/download/link/id/1223

* WeatherBug.com (USA)
* pwsweather.com (USA) Weather For You
* windfinder.com (USA)
* wxqa.com (Citizens Weather Observation Program) USA
* openweathermap.org USA

* wow.metoffice.gov.uk
* awekas.at (Austria)

* Weather Underground also accepts video from Ambient Weather AirCams


## Additional Analysis 

Comparison vs. other weather stations (upwind, downwind, etc.).

d3.js <a target="_blank" href="https://d3js.org/">d3.js</a> is a JavaScript library for producing dynamic, interactive data visualizations in web browsers. <a target="_blank" href="https://learning.oreilly.com/videos/-/10000MNHV2021133/">VIDEO</a>

Smart Home display trends

Upwind locations on the map would experience weather patterns (such as rain) before you (n=in a downwind location).

https://www.linkedin.com/pulse/ai-classroom-balancing-access-equity-potential-jean-ng--0ub3c/

## Ambient Weather

Ambient Weather is a company that provides weather stations and data for consumer use.

* $449.99 WS-5000 series has WiFi and no moving parts https://www.amazon.com/dp/B087V6N5WZ/ref=dp_iou_view_item?ie=UTF8&th=1 and a TFT color display <a target="_blank" href="https://ambientweather.com/mwdownloads/download/link/id/1081">manual</a> <a target="_blank" href="https://www.youtube.com/watch?v=b8oQCBA6Tio">VIDEO</a> <a target="_blank" href="https://www.youtube.com/watch?v=I560_a3yPmE">User Observations</a>
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
