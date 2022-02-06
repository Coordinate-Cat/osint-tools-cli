#!/bin/sh

### [ DON'T TOUCH ] ############################################################
. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases

ERROR_ASCII='\e[31;5;7m
                                                                                                          
  ███████╗██████╗ ██╗   ██╗    ███╗   ██╗ ██████╗ ████████╗    ██████╗ ███████╗ █████╗ ██████╗ ██╗   ██╗  
  ██╔════╝██╔══██╗╚██╗ ██╔╝    ████╗  ██║██╔═══██╗╚══██╔══╝    ██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝  
  ███████╗██████╔╝ ╚████╔╝     ██╔██╗ ██║██║   ██║   ██║       ██████╔╝█████╗  ███████║██║  ██║ ╚████╔╝   
  ╚════██║██╔══██╗  ╚██╔╝      ██║╚██╗██║██║   ██║   ██║       ██╔══██╗██╔══╝  ██╔══██║██║  ██║  ╚██╔╝    
  ███████║██║  ██║   ██║▄█╗    ██║ ╚████║╚██████╔╝   ██║       ██║  ██║███████╗██║  ██║██████╔╝   ██║     
  ╚══════╝╚═╝  ╚═╝   ╚═╝╚═╝    ╚═╝  ╚═══╝ ╚═════╝    ╚═╝       ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝    ╚═╝     
                                                                                                          
\e[m
'

EXIT_ASCII='\e[32;5;7m
                                                                        
   ██████╗  ██████╗  ██████╗ ██████╗     ██████╗ ██╗   ██╗███████╗██╗   
  ██╔════╝ ██╔═══██╗██╔═══██╗██╔══██╗    ██╔══██╗╚██╗ ██╔╝██╔════╝██║   
  ██║  ███╗██║   ██║██║   ██║██║  ██║    ██████╔╝ ╚████╔╝ █████╗  ██║   
  ██║   ██║██║   ██║██║   ██║██║  ██║    ██╔══██╗  ╚██╔╝  ██╔══╝  ╚═╝   
  ╚██████╔╝╚██████╔╝╚██████╔╝██████╔╝    ██████╔╝   ██║   ███████╗██╗   
   ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝     ╚═════╝    ╚═╝   ╚══════╝╚═╝   
                                                                        
\e[31m
'
### [ Error hiding and alias loading in shopt ] ################################
clear && source $HOME/dotfiles/.zshrc

### [ Aliases ] ################################################################
alias MAPS_GEOLOCATION_AND_TRANSPORT_CMD='zsh $MAPS_GEOLOCATION_AND_TRANSPORT && bash $MAPS_GEOLOCATION_AND_TRANSPORT'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   Map View NGMDB — map for exploring some geologic maps and articles from the NGMDB (National Geologic Map Database).
   WAQI — World's Air Pollution: Real-time Air Quality Index map
   GlobalFishingMap — click on a point on the map and get the data on the current fishing effort at that location.
   ncei.noaa.gov — Natural Hazards Viewer (worldwide)
   Lightingmaps — lightning strikes in real time and also data on thunderstorms that ended months or years ago
   Light Pollution World Map — showing the degree of light pollution in different countries. It's possible to see the data over time (since 2013)
   Global Wetlands Map — Interactive map of open waters, mangroves, swamps, fens, riverines, floodswamps, marshs, wet meadows and floodplains (unfortunately, there are not all countries in the world)
   Fire MAP NASA — online map of fire hotspots around the world (data from VIIRS and MODIS satellites, last 24 hours)
   Ocearch Shark Tracker — Click on a shark on the world map and find out its name, size and travel log.
   Surging Seas: Risk Zone Map — Map of points where there is a risk of significant sea level rise in the event of melting glaciers.
   USA Fishermap — when you click on a freshwater body of water, its detailed map opens, on which the depth at different points is marked
   Mindat.org — mineral maps for different countries
   Ventusky.com — collection of weather map (wind, rain, temperature, air pressure, humidity, waves etc)
   Wunderground — weather history data
   Rain Alarm — shows where it is raining on the map. You can enable notification of approaching rain (in the browser and in the mobile app)
   Cyclocane — click on the hurricane on the map and get detailed information about it
   MeteoBlue — Weather stats data
   Zoom.earth — Worldwide map of rains, storms, fires, heats, winds and others natural phenomenas
   NGDC Bathymetry map — worldwide detailed interactive bathymetry map
   Soar.earth — big collection satellite, drone and ecological maps
   Geodesics on the Earth — finding the shortest path between two points
   Google Earth — 3D representation of Earth based primarily on satellite imagery
  ← [ BACK TO MAPS_GEOLOCATION_AND_TRANSPORT ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://ngmdb.usgs.gov/mapview/?center=-97,39.6&zoom=4" }
_sf_1 ()  { open "http://waqi.info" }
_sf_2 ()  { open "https://globalfishingwatch.org/map/" }
_sf_3 ()  { open "https://www.ncei.noaa.gov/maps/hazards/" }
_sf_4 ()  { open "https://www.lightningmaps.org/" }
_sf_5 ()  { open "https://www.lightpollutionmap.info/" }
_sf_6 ()  { open "https://www2.cifor.org/global-wetlands/" }
_sf_7 ()  { open "https://firms.modaps.eosdis.nasa.gov/map/" }
_sf_8 ()  { open "https://www.ocearch.org/tracker/" }
_sf_9 ()  { open "https://ss2.climatecentral.org/#12/40.7298/-74.0070?show=satellite&projections=0-K14_RCP85-SLR&level=5&unit=feet&pois=hide" }
_sf_10 () { open "https://usa.fishermap.org/depth-map/" }
_sf_11 () { open "https://www.mindat.org/countrylist.php" }
_sf_12 () { open "https://www.ventusky.com/" }
_sf_13 () { open "https://www.wunderground.com/history" }
_sf_14 () { open "http://rain-alarm.com" }
_sf_15 () { open "https://cyclocane.com" }
_sf_16 () { open "https://www.meteoblue.com/" }
_sf_17 () { open "https://zoom.earth/" }
_sf_18 () { open "https://maps.ngdc.noaa.gov/viewers/bathymetry/" }
_sf_19 () { open "https://soar.earth/" }
_sf_20 () { open "https://academo.org/demos/geodesics/" }
_sf_21 () { open "https://www.google.com/earth/" }
_sf_22 () { MAPS_GEOLOCATION_AND_TRANSPORT_CMD }

# Search for a selected number of lines
func (){
  for i in `seq 0 99`
    do
    _sf_ + $i () {
      _s_current_n=$i
      _s_break=1
    }
    done
}

# Run the selected function.
_sf_select () {
  # The number of functions
  for i in `seq 0 99`
    do
      if   [ $_s_current_n -eq $i ];then
        _sf_$i
      fi
    done
}

echo "$menu" | _sf_main "$@"
