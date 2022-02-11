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
alias MESSENGERS_CMD='zsh $MESSENGERS && bash $MESSENGERS'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   Telegago — Telegram search engine
   Commentgram CSE — search by Telegram comments
   Telegram Message Analyzer — Export #Telegram chat (with Windows version of Telegram app) and get detailed analyze of it (message count, average message count per day, word frequency etc)
   @SangMataInfo_bot — forward a message from the user and find out the history of their name in Telegram
   @tgscanrobot — telegram bot to show which telegram groups a person is member of.
   Telegram Nearby Map — Discover the location of nearby Telegram users on OpenStreetMap
   Telescan — search users in groups (and in which groups is the user) by id, username or phone number (if it's in your contacts)
   Tgstat — one of the largest directories of Telegram channels, which has detailed information about the growth of the audience, its engagement and mentions of a particular channel in various sources.
   Telescan — search users in groups (and in which groups is the user) by id, username or phone number
   Telegcrack.com — search in telegra.ph)
   @VoiceMsgBot — telegram bot to which you can send voice messages and it converts them into text
   @transcriber_bot — telegram bot, which can convert to text voice messages in 24 languages (view pic)
   Telegramchannels.me — Ratings of the 100 largest (by number of subscribers) #Telegram channels for different languages
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()   { open "https://cse.google.com/cse?q=+&cx=006368593537057042503:efxu7xprihg#gsc.tab=0&gsc.q=%20&gsc.page=1" }
_sf_1 ()   { open "https://cse.google.com/cse?cx=006368593537057042503:ig4r3rz35qi#gsc.tab=0" }
_sf_2 ()   { open "https://github.com/zqtay/Telegram-Message-Analyzer" }
_sf_3 ()   { open "https://t.me/SangMataInfo_bot" }
_sf_4 ()   { open "https://t.me/tgscanrobot" }
_sf_5 ()   { open "https://github.com/tejado/telegram-nearby-map" }
_sf_6 ()   { open "https://github.com/pielco11/telescan" }
_sf_7 ()   { open "https://tgstat.com" }
_sf_8 ()   { open "https://github.com/pielco11/telescan" }
_sf_9 ()   { open "https://telegcrack.com/" }
_sf_10 ()  { open "https://t.me/VoiceMsgBot" }
_sf_11 ()  { open "https://t.me/transcriber_bot" }
_sf_12 ()  { open "https://telegramchannels.me/list/biggest?language=en" }
_sf_13 ()  { MESSENGERS_CMD }

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
