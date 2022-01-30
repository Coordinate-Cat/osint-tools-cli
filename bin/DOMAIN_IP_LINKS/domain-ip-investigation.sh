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
alias DOMAIN_IP_LINKS_CMD='zsh $DOMAIN_IP_LINKS && bash $DOMAIN_IP_LINKS'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   @UniversalSearchBot — telegram bot finding information about email, russian phone number, domain or IP
   Domain Investigation Toolbox — gather information about domain with 41 online tools from one page.
   GoFindWhois — More than 180 online tool for domain investigaions in one. What's not to be found here: reverse whois, hosting history, cloudfare resolver, redirect check, reputation analyze.
   Spyfu — tool to collect seo information about the domain, which provide a lot of data partly for free
   Spyse.com — domain investigation toolbox
   Spyse CLI — command line client for Spyse.com
   Domaintracker — webapp and mobile app, which helps you keep track of payment deadlines (expired dates) for domains (sends push notifications and notifications to email)
   Whois Domain Search Tool — A tool that allows you to query whois data for a site name in several domain zones at once.
   IP Neighbors — Find the hosting neighbors for a specific web site or hostname
   The Favicon Finder — Instantly finds the favicon and all .ico files on the site, and then generates links to download them quickly.
   HostHunter — Tool to efficiently discover and extract hostnames providing a large set of target IP addresses. HostHunter utilises simple OSINT techniques to map IP addresses with virtual hostnames
   Tor Whois
   Dnstwister — The anti-phishing domain name search engine and DNS monitoring service
   Dnstwist — Command line anti-phishing domain name search engine and DNS monitoring service
   Ditto — Dsmall tool that accepts a domain name as input and generates all its variants for an homograph attack as output, checking which ones are available and which are already registered
   RADB — Provides information collected from all the registries that form part of the Internet Routing Registry
   IPinfo map — paste up to 500,000 IPs below to see where they're located on a map
   Whois XML API Whois history database
   Hakrawler — discover endpoints and assets
   Passive DNS search
   Talos Intelligence Mail Server Reputation
   netbootcamp.org/websitetool.html — access to 74 #tools to collect domain information from a single page
   Hussh — shell script for domain analyzing
   Check any website to see in real time if it is blocked in China
   @iptools_robot — univsersal domain investigation Telegram bot
   Raymond — Framework for gathering information about website
   Pulsedive — A partially free website research tool. Collects detailed information about IP, whois, ssl, dns, ports, threats reports, geolocation, cookies, metadata (fb app id etc). Make screenshots and many others
   Striker — Quick and simple tool for gathering information about domain (http headers, technologies, vulnerabilities etc).
   SiteBroker — Domain investigation #python tool
   DNSlytics — find out everything about a domain name, IP address or provider. Discover relations between them and see historical data
   FindMyAss (HostSpider) — Domain investigations toolkit
   Drishti — Nodejs toolkit for OSINT
   passivedns.mnemonic.no — DNS history search by IP-adress or by domain name
   Gotanda — Google Chrome extension. 56 tools for domain, ip and url investigation in one
   Ip Investigation Toolbox — type ip-adress once and gather information about it with 13 tools
   Crab — Well done and well designed port scanner, host info gatherer (include whois).
  ﴚ [ BACK TO DOMAIN_IP_LINKS ]
"

# CODE URL PUSH
_sf_0 () {  }
_sf_1 () {  }
_sf_2 () {  }
_sf_3 () {  }
_sf_4 () {  }
_sf_5 () {  }
_sf_6 () {  }
_sf_7 () {  }
_sf_8 () {  }
_sf_9 () {  }
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
_sf_36 () { DOMAIN_IP_LINKS_CMD }

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
