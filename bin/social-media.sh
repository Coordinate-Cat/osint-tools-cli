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
alias TWITTER_CMD='zsh $TWITTER && bash $TWITTER'
alias YOUTUBE_CMD='zsh $YOUTUBE && bash $YOUTUBE'
alias TIKTOK_CMD='zsh $TIKTOK && bash $TIKTOK'
alias FACEBOOK_CMD='zsh $FACEBOOK && bash $FACEBOOK'
alias CLUBHOUSE_CMD='zsh $CLUBHOUSE && bash $CLUBHOUSE'
alias LINKEDIN_CMD='zsh $LINKEDIN && bash $LINKEDIN'
alias XING_CMD='zsh $XING && bash $XING'
alias REDDIT_CMD='zsh $REDDIT && bash $REDDIT'
alias ONLYFANS_CMD='zsh $ONLYFANS && bash $ONLYFANS'
alias TWITCH_CMD='zsh $TWITCH && bash $TWITCH'
alias FIDONET_CMD='zsh $FIDONET && bash $FIDONET'
alias USENET_CMD='zsh $USENET && bash $USENET'
alias TUMBLR_CMD='zsh $TUMBLR && bash $TUMBLR'
alias FLICKR_CMD='zsh $FLICKR && bash $FLICKR'
alias SPOTIFY_CMD='zsh $SPOTIFY && bash $SPOTIFY'
alias DISCORD_CMD='zsh $DISCORD && bash $DISCORD'
alias YANDEX_CMD='zsh $YANDEX && bash $YANDEX'
alias INSTAGRAM_CMD='zsh $INSTAGRAM && bash $INSTAGRAM'
alias GOOGLE_CMD='zsh $GOOGLE && bash $GOOGLE'
alias PATREON_CMD='zsh $PATREON && bash $PATREON'
alias GITHUB_CMD='zsh $GITHUB && bash $GITHUB'
alias PARLER_CMD='zsh $PARLER && bash $PARLER'
alias PORNHUB_CMD='zsh $PORNHUB && bash $PORNHUB'
alias STEAM_CMD='zsh $STEAM && bash $STEAM'
alias XBOX_CMD='zsh $XBOX && bash $XBOX'
alias VK_CMD='zsh $VK && bash $VK'
alias OFFICE365_CMD='zsh $OFFICE365 && bash $OFFICE365'
alias ONEDRIVE_CMD='zsh $ONEDRIVE && bash $ONEDRIVE'
alias UNIVERSAL_CMD='zsh $UNIVERSAL && bash $UNIVERSAL'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   Twitter
   YouTube
   TIKTOK
   Facebook
   Clubhouse
   Linkedin
   Xing
   Reddit
   Onlyfans
   Twitch
   Fidonet
   Usenet
   Tumblr
   Flickr
   Spotify
   Discord
   Yandex
   Instagram
   Google
   Patreon
   Github
   Parler
   Pornhub
   Steam
   Xbox
   VK
   Office365
   OneDrive
   Universal
  ﴚ [ BACK TO TOC ]
"

# SNS URL PUSH
_sf_0 ()   { TWITTER_CMD }
_sf_1 ()   { YOUTUBE_CMD }
_sf_2 ()   { TIKTOK_CMD }
_sf_3 ()   { FACEBOOK_CMD }
_sf_4 ()   { CLUBHOUSE_CMD }
_sf_5 ()   { LINKEDIN_CMD }
_sf_6 ()   { XING_CMD }
_sf_7 ()   { REDDIT_CMD }
_sf_8 ()   { ONLYFANS_CMD }
_sf_9 ()   { TWITCH_CMD }
_sf_10 ()  { FIDONET_CMD }
_sf_11 ()  { USENET_CMD }
_sf_12 ()  { TUMBLR_CMD }
_sf_13 ()  { FLICKR_CMD }
_sf_14 ()  { SPOTIFY_CMD }
_sf_15 ()  { DISCORD_CMD }
_sf_16 ()  { YANDEX_CMD }
_sf_17 ()  { INSTAGRAM_CMD }
_sf_18 ()  { GOOGLE_CMD }
_sf_19 ()  { PATREON_CMD }
_sf_20 ()  { GITHUB_CMD }
_sf_21 ()  { PARLER_CMD }
_sf_22 ()  { PORNHUB_CMD }
_sf_23 ()  { STEAM_CMD }
_sf_24 ()  { XBOX_CMD }
_sf_25 ()  { VK_CMD }
_sf_26 ()  { OFFICE365_CMD }
_sf_27 ()  { ONEDRIVE_CMD }
_sf_28 ()  { UNIVERSAL_CMD }
_sf_29 ()  { TOC_CMD }

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
