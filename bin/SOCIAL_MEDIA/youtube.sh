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
alias SOCIAL_MEDIA_CMD='zsh $SOCIAL_MEDIA && bash $SOCIAL_MEDIA'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   YouTube Unlisted Video — search for videos available only by link on youtube
   YouTube Comments Analyze — Download detailed information about YouTube video comments to a .tab or .gdf
   Noxinluencer — youtube channels comparing
   YouTube MetaData Viewer
   PocketTube — YouTube Subscription Manager
   YouTube comment Finder
   YouTube Comment Downloader — easy to install and fast tool for downloading YouTube comments in txt/json. Does NOT require authorization or API keys.
   Montage.meedan.com — Search #YouTube video by date (uploaded or recording) and by geolocation.
   Slash Tags — tool for recommending YouTube tags and displaying related statistical data from search keyword(s)
   YouTube playlist len — Find out the total time of all the videos in playlist
   Anylizer.com — watch frame by frame YouTube and Vimeo)
   Improve YouTube — extension with dozens of different tweaks to the standard #YouTube interface
   YoTube Channel Search — Tool for searching YouTube channels by keywords in the name and creation date. The result is a table with the channel ID, name, description, date of creation, as well as the number of subscribers, views, and uploaded videos
   watchframebyframe.com — watch frame by frame YouTube and Vimeo
   Hadzy.com — YouTube comment search)
   Ytcs — google chrome extension to search YouTube comments without leaving the site (link to source code)
   YouTube Comment Search Chrome Extension
   YouTube Transcript API — Get the transcript/subtitles for a given #YouTube video (by ID from adress bar). It also works for automatically generated subtitles and supports translating subtitles.
   Jump Cutter — An extension for those who watch university lectures on #YouTube and want to save their time. It identifies chunks where the lecturer writes silently on the board (or is just silent) and plays them back at double speed...
   YouFilter – YouTube Advanced Search Filter — An extension that displays #YouTube search results in a table with very detailed information about each video (including quick links to the channel owner's contacts). It's can to download the results in CSV.
   YouTube Timestamp Comments – extension finds all the timestamps in YouTube video comments and arranges them in chronological order.
   Youtube Actual Top Comments – Fetch all comments to Youtube video (without answers). Sort them by likes and filter  by keywords
   YouTube Scraper – Extract and download channel name, likes, number of views, and number of subscribers. Scrape by keyword or URL.
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://unlistedvideos.com/" }
_sf_1 ()  { open "https://tools.digitalmethods.net/netvizz/youtube/mod_video_info.php" }
_sf_2 ()  { open "https://noxinfluencer.com/youtube/channel-compare" }
_sf_3 ()  { open "https://citizenevidence.amnestyusa.org/" }
_sf_4 ()  { open "https://chrome.google.com/webstore/detail/pockettube-youtube-subscr/kdmnjgijlmjgmimahnillepgcgeemffb/related" }
_sf_5 ()  { open "https://ytcomment.kmcat.uk/" }
_sf_6 ()  { open "https://github.com/egbertbouman/youtube-comment-downloader" }
_sf_7 ()  { open "https://montage.meedan.com" }
_sf_8 ()  { open "https://github.com/huhmit/slashtags" }
_sf_9 ()  { open "https://ytplaylist-len.herokuapp.com/" }
_sf_10 () { open "https://anilyzer.com/" }
_sf_11 () { open "https://chrome.google.com/webstore/detail/improve-youtube-video-you/bnomihfieiccainjcjblhegjgglakjdd" }
_sf_12 () { open "https://tools.digitalmethods.net/netvizz/youtube/mod_channels_search.php" }
_sf_13 () { open "http://www.watchframebyframe.com/" }
_sf_14 () { open "https://hadzy.com/" }
_sf_15 () { open "https://github.com/lettapp/ytcs" }
_sf_16 () { open "https://chrome.google.com/webstore/detail/ycs-youtube-comment-searc/pmfhcilikeembgbiadjiojgfgcfbcoaa/related" }
_sf_17 () { open "https://github.com/jdepoix/youtube-transcript-api" }
_sf_18 () { open "https://chrome.google.com/webstore/detail/jump-cutter/lmppdpldfpfdlipofacekcfleacbbncp/related" }
_sf_19 () { open "https://chrome.google.com/webstore/detail/youfilter-–-youtube-advan/lnlanlnejphdbhplbgokklmgfbjphigi/related?hl=ru" }
_sf_20 () { open "https://chrome.google.com/webstore/detail/youtube-timestamp-comment/khngjoedfeicfbjlcfmiigbokbnlibei/related" }
_sf_21 () { open "https://chrome.google.com/webstore/detail/youtube-actual-top-commen/hbdmelobmfcompinikjdaiphhonbgfpn/related" }
_sf_22 () { open "https://apify.com/bernardo/youtube-scraper" }
_sf_23 () { SOCIAL_MEDIA_CMD }

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
