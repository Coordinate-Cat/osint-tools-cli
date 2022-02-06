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
   Tiktok Timestamp — determines the time of publication of the video to the nearest second. Just copy the link.
   TikStats — detailed statistics on the growth dynamics of subscribers, likes, and video views for the TikTok account TikTok Scraper — scrapping video from user, trend or hashtag feed, extracting video's or user's metadata, downloading video or music, processing a list of clips or users from a file
   TikTok Scraper — scrapping video from user, trend or hashtag feed, extracting video's or user's metadata, downloading video or music, processing a list of clips or users from a file
   TikTokD — TikTok Video Downloader
   Snaptik.app — TikTok Video Downloader
   Exolyt.com — TikTok profile analyze
   Tikbuddy — TikTok profile analytics
   Mavekite.com — Enter the nickname of the user #TikTok and get the data on likes, comments, views, shares and engagements for his forty last videos
   Tiktok Scraper — Extract data about videos, users, and channels based on hashtags, profiles and individual posts.
   Tikrank.com — free tool for comparing and analyzing #TikTok accounts. Available ranking of the most popular users by country (there are more than a million accounts with the largest number of subscribers in the database)
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://bellingcat.github.io/tiktok-timestamp/" }
_sf_1 ()  { open "https://tikstats.org/" }
_sf_2 ()  { open "https://github.com/drawrowfly/tiktok-scraper" }
_sf_3 ()  { open "https://tiktokd.com/" }
_sf_4 ()  { open "https://snaptik.app/" }
_sf_5 ()  { open "https://exolyt.com/" }
_sf_6 ()  { open "https://app.tikbuddy.com/" }
_sf_7 ()  { open "https://mavekite.com/" }
_sf_8 ()  { open "https://github.com/sauermar/Tiktok-Scraper" }
_sf_9 ()  { open "https://tikrank.com" }
_sf_10 () { SOCIAL_MEDIA_CMD }

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
