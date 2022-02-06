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
   Twitter Scraper — Scrape any #Twitter user profile. Creates an unofficial Twitter API to extract tweets, retweets, replies, favorites, and conversation threads with no Twitter API limits.
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://chrome.google.com/webstore/detail/twitter-account-detector/papcdbgfejihdinhieggiamjnkclhkck/related" }
_sf_1 ()  { open "https://followerwonk.com/compare/" }
_sf_2 ()  { open "https://tweepsmap.com/dash/unfollows" }
_sf_3 ()  { open "https://app.truthnest.com/" }
_sf_4 ()  { open "https://treeverse.app" }
_sf_5 ()  { open "https://hashtagify.me/" }
_sf_6 ()  { open "https://www.scoutzen.com/twitter-lists/search" }
_sf_7 ()  { open "https://onemilliontweetmap.com/" }
_sf_8 ()  { open "https://www.tweetbinder.com/" }
_sf_9 ()  { open "https://www.csc2.ncsu.edu/faculty/healey/tweet_viz/tweet_app/" }
_sf_10 () { open "https://tweetbeaver.com/friendsfollowing.php" }
_sf_11 () { open "http://tweettopicexplorer.neoformix.com/#n=NYTimes" }
_sf_12 () { open "https://influencermarketinghub.com/twitter-money-calculator/" }
_sf_13 () { open "https://analytics.twitter.com/" }
_sf_14 () { open "https://www.vicinitas.io/free-tools/download-twitter-followers" }
_sf_15 () { open "https://doesfollow.com/" }
_sf_16 () { open "http://sleepingtime.org/" }
_sf_17 () { open "https://tweettunnel.com/reverse.php" }
_sf_18 () { open "https://twitter.com/i/directory/" }
_sf_19 () { open "https://www.followeraudit.com" }
_sf_20 () { open "https://foller.me/" }
_sf_21 () { open "https://getdaytrends.com/" }
_sf_22 () { open "https://us.trend-calendar.com/" }
_sf_23 () { open "https://followerwonk.com/bio" }
_sf_24 () { open "https://botometer.osome.iu.edu/" }
_sf_25 () { open "http://projects.noahliebman.net/listcopy/connect.php" }
_sf_26 () { open "https://unfollowerstats.com/" }
_sf_27 () { open "https://chrome.google.com/webstore/detail/twish/afpegchfbaddfmenhkajjggbnjfjejeh/related" }
_sf_28 () { open "https://console.apify.com/actors/u6ppkMWAx2E2MpEuF" }
_sf_29 () { SOCIAL_MEDIA_CMD }

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
