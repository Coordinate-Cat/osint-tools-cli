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
_sf_0 ()  { echo "test0" }
_sf_1 ()  { echo "test1" }
_sf_2 ()  { echo "test2" }
_sf_3 ()  { echo "test3" }
_sf_4 ()  { echo "test4" }
_sf_5 ()  { echo "test5" }
_sf_6 ()  { echo "test6" }
_sf_7 ()  { echo "test7" }
_sf_8 ()  { echo "test8" }
_sf_9 ()  { echo "test9" }
_sf_10 () { echo "test10" }
_sf_11 () { echo "test11" }
_sf_12 () { echo "test12" }
_sf_13 () { echo "test13" }
_sf_14 () { echo "test14" }
_sf_15 () { echo "test15" }
_sf_16 () { echo "test16" }
_sf_17 () { echo "test17" }
_sf_18 () { echo "test18" }
_sf_19 () { echo "test19" }
_sf_20 () { echo "test20" }
_sf_21 () { echo "test21" }
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

echo "TOC/\nMaps, Geolocation and Transport/\nNature Aviation" && sleep 1.5m;echo "$menu" | _sf_main "$@"
