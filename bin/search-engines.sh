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
_sf_0 ()  { ERROR_CMD }
_sf_1 ()  {  }
_sf_2 ()  {  }
_sf_3 ()  {  }
_sf_4 ()  {  }
_sf_5 ()  {  }
_sf_6 ()  {  }
_sf_7 ()  {  }
_sf_8 ()  {  }
_sf_9 ()  {  }
_sf_10 () {  }
_sf_11 () {  }
_sf_12 () {  }
_sf_13 () {  }
_sf_14 () {  }
_sf_15 () {  }
_sf_16 () {  }
_sf_17 () {  }
_sf_18 () {  }
_sf_19 () {  }
_sf_20 () {  }
_sf_21 () {  }
_sf_22 () {  }
_sf_23 () {  }
_sf_24 () {  }
_sf_25 () {  }
_sf_26 () {  }
_sf_27 () {  }
_sf_28 () {  }
_sf_29 () {  }
_sf_30 () {  }
_sf_31 () {  }
_sf_32 () {  }
_sf_33 () {  }
_sf_34 () {  }
_sf_35 () {  }
_sf_36 () {  }
_sf_37 () { ERROR_CMD }
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
