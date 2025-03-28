---
layout: post
date: "2025-03-28"
lastchange: "v014 + openweather colab modules :weather-info.md"
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

(-) and (+) adjust values: <a target="_blank" href="https://ambientweather.com/glossary.html">Glossary</a><br />
<table border="1" cellpadding="4" cellspacing="0"><tr valign="top"><td>(-)<br />Minus<br />Brightness </td><td>(+)<br />Plus<br />Brightness<br />Adjust </td><td> Backlight<br />On/Off<br />toggle </td><td> Background<br />On/Off<br />toggle </td><td> Pressure<br />Absolute<br />/Relative<br />toggle </td><td> Channel </td><td> History </td><td> Set<br />Mode </td></tr></table>

1. The icon is the <a target="_blank" href="https://ambientweather.net/dashboard/df920bc15d3b38069de0ddc5cc34b374">AmbientWeather.net dashboard for a sample location</a>. (<a target="_blank" href="https://ambientweather.com/support/ws-5000-weather-station-support/">FAQ</a>)
2. Wi-Fi signal strength icon. An exclamation point ! indicates the display is connected to Wi-Fi but not the Internet.

3. Outdoor Sensor Array Low Battery Indicator 
4. Outdoor Sensor Array Signal Quality 

5. Outdoor Temperature (shown with the larger ring) is measured in Centigrade or Fereinheght by therometers. Above and below the current temp. in large numbers in the middle is the high of the day on top and low temp. of the day on the bottom.   The time of day when that's recalculated can be set in Settings.

6. <strong>Humidity</strong> is the <strong>percentage</strong> of water vapor in the air divided by the <a href="#dewpoint">Dew Point</a>.

   A manual psychrometer (aka "sling psychrometer") uses two thermometers. One has a wet wick around the bulb. The thermometer with the wet wick becomes cooler when water evaporates. The temperature difference on the two thermometers provides the Dew Point.

   Manual hygrometers use a polished mirror. As air within the hygrometer is cooled to the dew point, moisture forms on the mirror, which blocks some of the reflected light, indicating that the dew point temperature has been reached.

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
   <a target="_blank" href="https://blog.mensor.com/blog/adjusting-barometric-pressure-readings-for-aviation-and-meteorology">BLOG</a>:
   To allow for comparison between different locations, 
   regardless of their actual elevation, the
   SI Atmosphere (atm) air pressure reported is normalized relative (REL) to 
   <strong>sea level</strong>
   of 101,325 pascals (Pa) or 1013.25 hPa (hectoPascals).
   
   At sea level, absolute and relative pressures are the same.
   As altitude increases, atmospheric pressure decreases.

   The <a target="_blank" href="https://cumulus.hosiene.co.uk/viewtopic.php?t=8286">legacy</a> metric of millibar is equivalent to 100 Pa (Pascals).

   * arrow indicates rate of change of pressure

19. "Max Daily Gust" of wind in MPH.
20. Moon Phase
21. "10 MinAvg" (10-minute average) wind speed and compass direction

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1727494071/compass-800x800_hvwmtu.webp"><img width="300" alt="compass-800x800_hvwmtu.webp" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1727494071/compass-800x800_hvwmtu.webp" /></a>

22. "UV Index" (Ultraviolet Index) is measured by a UV meter (if installed).

23. Under arc: am: Sunrise, pm: sunset. On the website is this tile:

    <a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742678815/weather-amb-web-sun-moon-540x572_ep3qfa.png"><img alt="weather-amb-web-sun-moon-540x572.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742678815/weather-amb-web-sun-moon-540x572_ep3qfa.png" />

    FUN FACT: About 5 minutes is lost or gained each day.

24. <a target="_blank" href="https://ambientweather.com/solarradiation.html">Solar Radiation</a> (if installed) in wm/2 (Watts per square meter), Lux, or FC (Foot Candles). The measurement is used to calculate evapotranspiration - the potential for evaporation of moisture from the soil (or the reverse of rainfall) as a function of solar energy, wind, and temperature.

    Before electronic photoelectric sensors are used by computers, the Campbell-Stokes and Jordan Sunshine Recorders (in the UK) used a glass sphere to focus sunlight onto a recording card replaced each day, creating burn marks that indicate the duration of sunshine that day. 
    
    Not part of the WS-5000 series, a pyrheliometers to measure sunshine intensity thru direct solar radiation (not sunshine duration). Pyrheliometers have a tubular structure that needs to be aimed at the sun, often mounted on a solar tracker. There are also pyranometers that have a dome-shaped sensor that can be seen from all angles, resembling a "UFO saucer". 

25. "IN "(Indoor) air quality in ug/m3 by a PM2.5 sensor (if installed)
26. "OUT" (Outdoor) Particulate monitor in ug/m3 by a PM2.5 sensor (if installed)

27. <a name="dewpoint"></a><strong>Dewpoint</strong> is calculated for measuring the comfort level from moisture in the air. A Simplified version of the <a href="https://en.wikipedia.org/wiki/Magnus-Tetens_equation">Magnus-Tetens Formula</a> is:

     AirTemp - ( ( 100 − RelHumidity ) / 5 )

    <a target="_blank" href="https://www.weather.gov/arx/why_dewpoint_vs_humidity">According to NOAA</a>:

    At 45 degrees or below, air feels "refreshing".<br />
    At 50, it's "comfortable". At 55, it's "not bad".<br />
    At 60, it's "muggy". At 65 it's "Very Humid". At 70 it's "tropical". 

    Technically, Dew Point is the <strong>temperature</strong> to which air must be cooled (at constant pressure) in order for it to become saturated (have 100% relative humidity). Dewpoint is the maximum amount of water vapor air can hold at a given temperature. When air cools to its dew point, it reaches 100% relative humidity, and any further cooling causes water vapor to condense into droplets, forming dew or fog.

    In <a target="_blank" href="https://ambientweather.com/dewpoint.html">other words</a>, "The dew point is the temperature at which a given parcel of humid air must be cooled, at constant barometric pressure, for water vapor to condense into water. The condensed water is called dew. The dew point is a saturation temperature."

    For example, if the temperature is 80 and the dew point 70, the relative humidity is 72%. Much more water is in the air at 100% humidity at a temperature of 70 degrees than at 30 degrees. 

28. "Feels Like" will always be cooler than the air temperature because it is calculated based on the impact of wind speed (Wind Chill Factor in cold temperatures) or humidity (Heat Index in hot temperatures) on human skin. high humidity can intensify the sensation of cold by increasing heat loss from your body. Likewise, a cloudy sky prevents sunlight from providing even slight warmth, making the chill feel even sharper. <a target="_blank" href="https://www.weatherandradar.com/discover-the-app/understanding-the-feels-like-temperature-weather-and-radars-sophisticated-cold-measurement-tool--8ef4d0b3-5ae4-4e40-ad4c-ff233488a488">PROTIP</a>: On cold windy days, wear "wind-proof" coats instead of woven sweaters because wind whisks away the thin layer of warm air your body creates to stay cozy, leaving you feeling the full bite of winter's chill.

29. The <strong>lightning icon</strong> appears when when conditions make it possible for lightning storms to form in the area. The dew point is the temperature at which air becomes saturated with moisture at a given pressure, leading to the formation of dew, fog, or frost. <a target="_blank" href="https://www.cbsnews.com/boston/news/what-is-dew-point-humidity-sticky-weather/">BLOG</a>
30. Daily Rain Icon: Rainfall is measured by rain gauges. Modern ones use ultrasonic technology that has less moving parts.

* Tide levels?
* Soil moisture is measured by soil moisture sensors (if installed).

<!-- This is from the Ambient Weather WS-5000 series:<br />
<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742181715/weather-ws-5000-dash_bjmwjh.png"><img alt="weather-ws-5000-dash.png" width="546" height="390" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742181715/weather-ws-5000-dash_bjmwjh.png" /></a>
-->

## Maps of Neighborhood Variation

THis map of temperatue around a location -- generated by <a target="_blank" href="https://ambientweather.net/dashboard/df920bc15d3b38069de0ddc5cc34b374">AmbientWeather.net</a> -- shows the extent of variation among microclimates within just a mile or two:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742904058/weather-neighbors-890x618_swk59c.png"><img alt="weather-neighbors-890x618.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742904058/weather-neighbors-890x618_swk59c.png" /></a>


## Trands Over Time

This <a target="_blank" href="https://www.weatherbriefing.com/weather-blog/2020/7/5/a-teaching-tool-relationship-between-temperature-relative-humidity-and-dew-point">meteograph</a> shows the relationship of changes over time of several metrics:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742712550/weather-dew-temp-1019x312_zsq8kp.jpg"><img alt="weather-dew-temp-1019x312.jpg" width="1019" height="312" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742712550/weather-dew-temp-1019x312_zsq8kp.jpg" /></a>

The temperature (brown line) warms up (by the sun) during the day. 
Temperature cools down at night. 

As air cools, humidity (purple line) rises to condensate as morning fog or clouds.

Condensation is likely to occur when the air temperature reaches the <a href="#dewpoint">Dew point</a> (green line) rises to the temperature when air becomes saturated with moisture (at a given pressure).
That's when rain and snow occurs.

But remember that temperature (brown line) and dew point (in green) change independently of each other. Each can change without affecting the value of the other.

To see metrics over time with multiple metrics overlaid together, click "Graphs & Tables" on the <a target="_blank" href="https://ambientweather.net/dashboard/df920bc15d3b38069de0ddc5cc34b374">AmbientWeather.net dashboard for a sample location</a>: 

* Outdoor temperature, Dew Point, Feels like
* Wind Speed with Wind Gusts overlaid
* Wind direction (toward the direction of the wind
* Daily Rain with Rain Rate
* Relative Pressure: An upward trend indicates a high pressure system moving in with clear skies, while a downward trend indicates a low pressure sucking in bad weather.
* Humidity
* Sun Height (in yellow line) and Moon Height (in white line)

  The highest point is not exactly Noon. 

* Air quality with Particulate matter overlaid
* Rain with Snow overlaid
* UV Index with Solar Radiation overlaid

<a target="_blank" href="https://ambientweather.com/awn-plus-annual-subscription">AWN+ subscription</a> unlocks premium features like advanced map layers, degree day tiles, enhanced graphing, text alerts, and a 10-Day Hourly Forecast

<a target="_blank" href="https://www.home-assistant.io/integrations/ambient_station/">Home Assistant</a> integration.

Comparison vs. other weather stations (upwind, downwind, etc.).

d3.js <a target="_blank" href="https://d3js.org/">d3.js</a> is a JavaScript library for producing dynamic, interactive data visualizations in web browsers. <a target="_blank" href="https://learning.oreilly.com/videos/-/10000MNHV2021133/">VIDEO</a>

Smart Home display trends

Upwind locations on the map would experience weather patterns (such as rain) before you (n=in a downwind location).


## Internet Weather Reports

* Ambient Weather has its own cloud (AWN) Network to receive weather reports for its devices.
   * https://ambientweather.com/mwdownloads/download/link/id/1223

* WeatherUnderground.com also accepts video from Ambient Weather AirCams.

* WeatherBug.com (USA)
* pwsweather.com (USA) Weather For You
* windfinder.com (USA)
* wxqa.com (Citizens Weather Observation Program) USA
* openweathermap.org USA

* wow.metoffice.gov.uk
* awekas.at (Austria)


## Python Program Code

I wrote a Python program to retrieve and format weather info from an API calls to openweather.com.

The program makes use of external modules, so can't be run within ProgramWiz.

Here's how to run my program within Google's Colab like the pros:

1. Open a Terminal app.
1. Bring the <tt>openweather.py</tt> file to the Terminal.

   Type an exclamation point character in front of each Bash CLI command such as git.

   In Google CoLab???

1. To copy a file from your Google Drive:
   ```
   !cp /content/drive/My\ Drive/Importing\ Scripts\ as\ Modules/utils.py /content
   ```
   Alternately, you can manually select the file using:
   ```
   files.upload()
   ```
1. Set permissions:
   ```
   chmod +x openweather.py
   ```
1. Set .env file containing the API keys
   ???
1. Because T-Mobile does not correctly identify your physical location, provide your US Zip Code when requesting the weather there:

   <a target="_blank" href="https://github.com/wilsonmar/python-samples/blob/main/openweather.py">openweather.py</a> program:
   
1. Execute the program:
   ```
   !./openweather.py -z 59041
   ```
   The weather service converts your Zip Code to a latitude and longitude:
   ```
openweather.org at 10:59 AM (10:59:07) 2025-03-26 reports
as 0     at: 11:02 AM (11:02:06) 2025-03-26 TZ: -21600
          Sunrise: 07:06 AM (07:06:56) 2025-03-26
           Sunset: 07:35 PM (19:35:56) 2025-03-26
few clouds at "zip=59041" country=US
     Latitude:  45.48686° from the Equator &
     Longitude: -108.97500° from the Meridian at Greenwich, UK
mild Dew Point of 35.77°F vs. 58.15°F at 43% humidity
     Wind: 11.48 mph from SW (202°)
     Visibility to 10000 meters
normal pressure at 1014 hPa (HectoPascals aka 10.14 millibars)
       vs. normal: 1013.25 hPa at sea level
                    881    hPa at ground level
   ```

   A longitude and longitude can be specified as well.


<a name="instrument-tech"></a>

## Instrument Technologies

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
