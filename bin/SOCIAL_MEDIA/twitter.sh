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
   Twitter account detector — A simple and fast Chrome extension that finds all Twitter accounts on a site.
   Follower Wonk/Compare — this service allows you to find out how many followers two (or three) Twitter accounts have in common.
   Tweepsmap Unfollows — displayed unsubscribed accounts (list for the one week available for free)
   app.truthnest.com — best tool for Twitter account investigation
   Treeverse.app — view dialogs in Twitter as a graph
   Hashtagify — compare the popularity of the two hashtags
   Scoutzen — search twitter lists by keywords
   One Million Tweet Map
   Tweet Binder — detailed twitter account analyze
   Tweet Sentiment Visualization
   Tweet Beaver Friends Following
   Tweet Topic Explorer
   Twitter Money Calculator
   Twitter Analytics — gather detailed infromation about your own account
   Vicintias.io — very fast export of information about Twitter account followers to XLSX
   DO ES FOLLOW — quick check if one user is subscribed to another on Twitter
   Sleeping Time — determining the approximate sleeping time of a user based on analysis of the timing of a tweet
   Tweet Tunnel — tool for quick and comfortable viewing old tweet's of someone account
   Twitter users directory
   FollowerAudit — In-depth analysis of Twitter followers. Identifies inactive and fake accounts, assesses followers by the number of tweets, profile information (biography, geolocation, links, profile picture).
   Foller.me — Twitter account detailed analyze
   Get day Twitter Trends
   US Twitter Trend Calendar
   Followerwonk — search by Twitter bio
   Twitter Botometr
   projects.noahliebman.net/listcopy — copy a list made by another user to your Twitter account
   Unfollower Stats — iOS App that tracking unfollowers and show nofollowersback and unactive followers for your Twitter account
   Twish — very simple, quick, comfortable and nicely designed advanced #Twitter search query builder for #GoogleChrome.
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()   { ERROR_CMD }
_sf_1 ()   {  }
_sf_2 ()   {  }
_sf_3 ()   {  }
_sf_4 ()   {  }
_sf_5 ()   {  }
_sf_6 ()   {  }
_sf_7 ()   {  }
_sf_8 ()   {  }
_sf_9 ()   {  }
_sf_10 ()  {  }
_sf_11 ()  {  }
_sf_12 ()  {  }
_sf_13 ()  {  }
_sf_14 ()  {  }
_sf_15 ()  {  }
_sf_16 ()  {  }
_sf_17 ()  {  }
_sf_18 ()  {  }
_sf_19 ()  {  }
_sf_20 ()  {  }
_sf_21 ()  {  }
_sf_22 ()  {  }
_sf_23 ()  {  }
_sf_24 ()  {  }
_sf_25 ()  {  }
_sf_26 ()  {  }
_sf_27 ()  {  }
_sf_28 ()  { SOCIAL_MEDIA_CMD }

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
