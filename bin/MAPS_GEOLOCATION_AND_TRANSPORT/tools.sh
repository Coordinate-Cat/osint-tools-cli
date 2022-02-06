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
   Osmaps Radius — drawing circles with a certain radius on the map
   MeasureTool-GoogleMaps-V3 — Measurement tool for #GoogleMaps.
   ACSDG — tool allows you to quickly mark a group of points on the map and then export their geographic coordinates to CSV.
   MeasureMapOnline — tool for drawing rectangles, circles and complex polygons on a world map to measure their area and perimeter
   Map Fight — compare size of two countries
   Presto Map lead extractor — Converts information about labels on Google Maps to CSV or XLSX
   Gmaps Extractor — Extract data from placemarks
   GPS Visualizer — show gpx and tcx files on map
   Map Checking — tool for measuring the number of people in a crowd of different area and density.
   Mapnificent — Choose a city on the world map, then select an address on the map and see what places you can get to by public transport in a certain time interval (range from 1 to 90 minutes)
  ← [ BACK TO MAPS_GEOLOCATION_AND_TRANSPORT ]
"

# SNS URL PUSH
_sf_0 ()  { open "http://jopf.re/osmaps-radius/" }
_sf_1 ()  { open "http://zhenyanghua.github.io/MeasureTool-GoogleMaps-V3/" }
_sf_2 ()  { open "https://www.acscdg.com/" }
_sf_3 ()  { open "https://app.measuremaponline.com/dashboard/overview" }
_sf_4 ()  { open "https://mapfight.xyz/browse/" }
_sf_5 ()  { open "https://chrome.google.com/webstore/detail/presto-map-lead-extractor/ljnhdpilgapdpecpbpdiideeknfpkiih/related" }
_sf_6 ()  { open "https://chrome.google.com/webstore/detail/g-map-extractor/eehgalnhbmkfalhdjkeenggnniebdpgi/related" }
_sf_7 ()  { open "https://www.gpsvisualizer.com/" }
_sf_8 ()  { open "https://www.mapchecking.com/" }
_sf_9 ()  { open "https://www.mapnificent.net/" }
_sf_10 () { MAPS_GEOLOCATION_AND_TRANSPORT_CMD }

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
