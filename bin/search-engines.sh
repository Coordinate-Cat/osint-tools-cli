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
   fnd.io — alternative search engine for the AppStore and iTunes
   GlobalSpec Engineer Search Engine
   Napalm FTP Indexer
   S — Search from command line in 106 different sources
   Onion Search
   Recruitin.net — easily use Google to search profiles on LinkedIn
   Cloud File Search Engine — search music, books, video, programs archives in 59 file-sharing sites (#meganz, #dropark, #turbotit etc)
   URVX — Based by Google Custom Search tool for searching in popular cloud storages service
   Mac Address Search Tool — search by full Mac adress, part of Mac adress (prefix), vendor name or brand name
   Hashatit.com — hastag searchengine. Search in twitter, instagram, facebook, youtube, pinterest
   Goo.ne.jp — beautiful japanese search engine
   Explain Shell — this site will help you quickly understand terminal commands-lines from articles, manuals, and tutorials
   Firebounty — Bug bounty search engine
   TheDevilsEye — Search links in #darknet (.onion domain zone) from command line without using a Tor network.
   Peteyvid — search engine for 70 video hosting sites
   Filesearching — old FTP servers search engine with filter by top-level domain name and filetype
   3DFindit — tool for searching 3D models by 3560 3D CAD (computer aided design) and BIM (Building Information Model) catalogs.
   Filechef — tool for searching different type of files (videos, application, documents, audio, images)
   Find Who Events — Google CSE for finding events by location (keywords) in #Facebook, #Eventbrite, #Xing, #Meetup, #Groupon, #Ticketmaster, #Yepl, #VK, #Eventective, #Nextdoor
   buckets.grayhatwarfare.com — Amazon Public Buckets Search
   osint.sh/buckets — Azure Public Buckets Search
   Listennotes — Podcast Search Engine
   thereisabotforthat.com — search by catalog of 5151 bots for 17 different apps and platforms
   BooleanStringBank — over 430+ strings and 3553+ keywords
   Google Unlocked — browser extension uncensor google search results
   Iconfinder.com — Icons Search Engine
   Google Datasets Search
   Onion Search Engine (+maps, mail and pastebin)
   KILOS Darknet Search Engine
   Gifcities.org — GIF Search Engine from archive.org
   Presearch.org — privately decentralized search engine, powered by #blockchain technology
   milled.com — search engine for searching through the texts of email marketing messages
   Orion — open-Source Search Engine for social networking websites.
   soundeffectssearch.com — find a sound library
   PacketTotal — .pcap files (Packet Capture of network data) search engine and analyze tool. Search by URL, IP, file hash, network indicator, view timeline of dns-queries and http-connections, download files for detailed analyze.
   SearXNG — Free internet metasearch engine which aggregates results from more than 70 search services. No tracking. Can be used over Tor
   searchall.net — 75 fields for quick entry of queries to different search services on one page
   Query-server — A tool that can send queries to popular search engines (list in picture) and return search results in JSON, CSV or XML format.
  ﴚ [ BACK TO TOC ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://fnd.io/" }
_sf_1 ()  { open "https://www.globalspec.com/" }
_sf_2 ()  { open "https://www.searchftps.net/" }
_sf_3 ()  { open "https://github.com/zquestz/s" }
_sf_4 ()  { open "https://github.com/megadose/OnionSearch" }
_sf_5 ()  { open "https://recruitin.net/" }
_sf_6 ()  { open "http://filesearch.link" }
_sf_7 ()  { open "https://uvrx.com" }
_sf_8 ()  { open "http://mac.lc" }
_sf_9 ()  { open "https://www.hashatit.com/" }
_sf_10 () { open "https://www.goo.ne.jp/" }
_sf_11 () { open "https://explainshell.com/" }
_sf_12 () { open "https://firebounty.com" }
_sf_13 () { open "https://github.com/rlyonheart/thedevilseye" }
_sf_14 () { open "https://peteyvid.com" }
_sf_15 () { open "https://filesearching.com" }
_sf_16 () { open "https://3dfindit.com/textsearch" }
_sf_17 () { open "http://filechef.com" }
_sf_18 () { open "https://cse.google.com/cse?cx=017922636351918147428:v7m0tfgk6uj#gsc.tab=0" }
_sf_19 () { open "http://buckets.grayhatwarfare.com" }
_sf_20 () { open "http://osint.sh/buckets" }
_sf_21 () { open "https://www.listennotes.com/" }
_sf_22 () { open "https://thereisabotforthat.com/bots/search" }
_sf_23 () { open "https://www.scoperac.com/booleanstringbank/" }
_sf_24 () { open "https://github.com/Ibit-to/google-unlocked" }
_sf_25 () { open "https://www.iconfinder.com/search" }
_sf_26 () { open "https://datasetsearch.research.google.com/" }
_sf_27 () { open "https://onionsearchengine.com/" }
_sf_28 () { open "http://dnmugu4755642434.onion.pet/captcha" }
_sf_29 () { open "https://gifcities.org/" }
_sf_30 () { open "https://presearch.org/" }
_sf_31 () { open "https://milled.com/search" }
_sf_32 () { open "https://github.com/Araekiel/orion" }
_sf_33 () { open "https://www.soundeffectssearch.com/find-a-sound-library/" }
_sf_34 () { open "https://packettotal.com/app/search" }
_sf_35 () { open "https://github.com/searxng/searxng" }
_sf_36 () { open "https://searchall.net" }
_sf_37 () { open "https://query-server.herokuapp.com" }
_sf_38 () { TOC_CMD }

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
