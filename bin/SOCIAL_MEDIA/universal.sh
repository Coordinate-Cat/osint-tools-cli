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
   Gallery-dl — Quick and simple tool for downloading image galleries and collections from #flickr, #danbooru, #pixiv, #deviantart, #exhentai
   Kribrum.io — searchengine for different social media platforms with filters by author and time period
   Auto Scroll Search — automatically scrolls the page down (and loads the ribbon) until the specified keyword appears on it.
   Social Blade — help you track YouTube Channel Statistics, Twitch User Stats, Instagram Stats, and much more
   ExportComments — Export comments from social media posts to excel files (Twitter, Facebook, Instagram, Discord etc), 100 comments free
   Social Media Salary Calculator — for YouTube, TikTok, Instagram
   Chat-downloader — download chats messages in JSON from #YouTube, #Twitch, #Reddit and #Facebook.
   FindMyBID — Toolkit for collecting data from social networks
   Social Analyzer — extension for Google Chrome that simplifies and speeds up daily monitoring of social networks. Create your own list of keywords and regularly check what's new and related to them.
   Khalil Shreateh Social Applications — More than 20 tools to extend the standard functionality of #Facebook, #TikTok, #Instagram, #Twitter (information gathering, random pickers for contests, content downloaders etc.)
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://github.com/mikf/gallery-dl" }
_sf_1 ()  { open "https://kribrum.io/search" }
_sf_2 ()  { open "https://chrome.google.com/webstore/detail/auto-scroll-search/ieceeinfkigfaeoomfimmecebngempef/related" }
_sf_3 ()  { open "https://socialblade.com/" }
_sf_4 ()  { open "https://exportcomments.com" }
_sf_5 ()  { open "http://lickd.co/blog/social-salary-calculator" }
_sf_6 ()  { open "https://github.com/xenova/chat-downloader" }
_sf_7 ()  { open "https://findmyfbid.in/" }
_sf_8 ()  { open "https://chrome.google.com/webstore/detail/socialanalyzer-social-sen/efeikkcpimdfpdlmlbjdecnmkknjcfcp" }
_sf_9 ()  { open "https://khalil-shreateh.com/khalil.shtml/social_applications/" }
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
