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
alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   Wenku — download documents from Baidu Wenku without registration
   Slideshare Downloader — A very simple and fast tool for downloading Slideshare presentations in PDF format (recommend to choose High quality at once)
   Gdown — When downloading files from Google Drive curl/wget fails (because of the security notice). But this problem is easily solved
   Waybackpack — download the entire #WaybackMachine archive for a given URL. You can only download versions for a certain date range (date format YYYYMMDDhhss)
   Chat-downloader — download chats messages in JSON from #YouTube, #Twitch, #Reddit and #Facebook.
   Gallery-dl — Quick and simple tool for downloading image galleries and collections from #flickr, #danbooru, #pixiv, #deviantart, #exhentai
   Spotify downloader — download spotify playlist in mp3 from YouTube
   Zspotify — Spotify track downloader. Download mp3 by link or by keywords
   Snaptik.app — TikTok Video Downloader TikTok Scraper — scrapping video from user, trend or hashtag feed, extracting video's or user's metadata, downloading video or music, processing a list of clips or users from a file
   TikTok Scraper — scrapping video from user, trend or hashtag feed, extracting video's or user's metadata, downloading video or music, processing a list of clips or users from a file
   YouTube Comment Downloader — easy to install and fast tool for downloading YouTube comments in txt/json. Does NOT require authorization or API keys.
   Storysaver.net — download Instagram stories
   Fdown.net — Facebook video downloader
   Untwitch.com — Twitch video downloader
   Redditsave.com — Reddit video downloader
   DownGit — Create GitHub Resource Download Link
   SaveFrom.net — download video from YouTube, Vimeo, VK, Odnoklassniki and dozen of others services
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://pypi.org/project/wenku/" }
_sf_1 ()  { open "https://github.com/mohan3d/slideshare-go" }
_sf_2 ()  { open "https://github.com/wkentaro/gdown" }
_sf_3 ()  { open "https://github.com/jsvine/waybackpack" }
_sf_4 ()  { open "https://github.com/xenova/chat-downloader" }
_sf_5 ()  { open "https://github.com/mikf/gallery-dl" }
_sf_6 ()  { open "https://github.com/spotDL/spotify-downloader" }
_sf_7 ()  { open "https://github.com/Footsiefat/zspotify" }
_sf_8 ()  { open "https://snaptik.app/" }
_sf_9 ()  { open "https://github.com/drawrowfly/tiktok-scraper" }
_sf_10 () { open "https://github.com/egbertbouman/youtube-comment-downloader" }
_sf_11 () { open "https://www.storysaver.net" }
_sf_12 () { open "https://fdown.net" }
_sf_13 () { open "https://untwitch.com" }
_sf_14 () { open "https://redditsave.com" }
_sf_15 () { open "https://minhaskamal.github.io/DownGit/#/home" }
_sf_16 () { open "https://en.savefrom.net/70/" }
_sf_17 () { TOC_CMD }

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
