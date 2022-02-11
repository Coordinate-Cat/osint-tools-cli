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
alias IMAGE_SEARCH_AND_IDENTIFICATION_CMD='zsh $IMAGE_SEARCH_AND_IDENTIFICATION && bash $IMAGE_SEARCH_AND_IDENTIFICATION'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   News Myseldon — from the photo looks for famous and little-known (like minor officials) people
   Ascii2d.net — Japanese reverse image search engine for anime lovers expose image properties, EXIF data, and one-click download
   Searchbyimage.app — search clothes in online shops
   Aliseeks.com — search items by photo in AliExpress and Ebay
   lykdat.com — clothing reverse image search services
   IQDB.org — reverse image search specially for anime art
   pic.sogou.com — chinese reverse image search engine
   Same Energy — reverse image search engine for finding beautiful art and photos in the same style as the original picture
   Revesearch.com — allows to upload an image once and immediately search for it in #Google, #Yandex, and #Bing.
   Image Search Assistant — searches for a picture, screenshot or fragment of a screenshot in several search engines and stores at once
   Pixsy — allows to upload pictures from computer, social networks or cloud storages, and then search for their duplicates and check if they are copyrighted
   EveryPixel — Reverse image search engine. Search across 50 leading stock images agencies. It's possible to filter only free or only paid images.
   openi.nlm.nih.gov — Reverse image search engine for scientific and medical images
   DepositPhotos Reverse Image Search — tool for reverse image search (strictly from DepositPhoto's collection of 222 million files).
   Portrait Matcher — Upload a picture of a face and get three paintings that show similar people.
   Image So Search — Qihoo 360 Reverse Images Search
  ﴚ [ BACK TO IMAGE_SEARCH_AND_IDENTIFICATION ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://news.myseldon.com/en/" }
_sf_1 ()  { open "http://ascii2d.net" }
_sf_2 ()  { open "https://searchbyimage.app/" }
_sf_3 ()  { open "https://www.aliseeks.com/search" }
_sf_4 ()  { open "https://lykdat.com/" }
_sf_5 ()  { open "https://iqdb.org/" }
_sf_6 ()  { open "https://pic.sogou.com/" }
_sf_7 ()  { open "https://same.energy/" }
_sf_8 ()  { open "https://revesesearch.com" }
_sf_9 ()  { open "https://chrome.google.com/webstore/detail/image-search-assistant/kldhhobmmejaeaiilomaibhjlcfpceac/related" }
_sf_10 () { open "https://pixsy.com" }
_sf_11 () { open "https://www.everypixel.com/" }
_sf_12 () { open "https://openi.nlm.nih.gov/gridquery" }
_sf_13 () { open "https://ru.depositphotos.com/search/by-images.html" }
_sf_14 () { open "http://zeus.robots.ox.ac.uk/portraitmatcher/index?error=agree" }
_sf_15 () { open "https://image.so.com/" }
_sf_16 () { IMAGE_SEARCH_AND_IDENTIFICATION_CMD }

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
