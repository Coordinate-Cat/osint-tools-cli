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
   Source code search engine (315 million domains indexed). Search by title, metadata, javascript files, server name, location and more. — Source code search engine (315 million domains indexed). Search by title, metadata, javascript files, server name, location and more.
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
   MayorSecDNSScan — Identify DNS records for target domains, check for zone transfers and conduct subdomain enumeration.
  ﴚ [ BACK TO DOMAIN_IP_LINKS ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://t.me/UniversalSearchBot" }
_sf_1 ()  { open "http://cipher387.github.io/domain_investigation_toolbox/" }
_sf_2 ()  { open "https://gofindwhois.com/" }
_sf_3 ()  { open "https://www.spyfu.com/overview/domain" }
_sf_4 ()  { open "https://spyse.com/" }
_sf_5 ()  { open "https://github.com/spyse-com/cli" }
_sf_6 ()  { open "https://domaintracker.app/" }
_sf_7 ()  { open "https://whois.marcaria.com/en" }
_sf_8 ()  { open "https://www.ip-neighbors.com/host/" }
_sf_9 ()  { open "http://besticon.herokuapp.com/" }
_sf_10 () { open "https://github.com/SpiderLabs/HostHunter" }
_sf_11 () { open "https://torwhois.com/" }
_sf_12 () { open "https://dnstwister.report/" }
_sf_13 () { open "https://domaincodex.com" }
_sf_14 () { open "https://github.com/elceef/dnstwist" }
_sf_15 () { open "https://github.com/evilsocket/ditto" }
_sf_16 () { open "http://radb.net/query" }
_sf_17 () { open "https://ipinfo.io/map" }
_sf_18 () { open "https://whois.whoisxmlapi.com/database/pricing" }
_sf_19 () { open "https://github.com/hakluke/hakrawler" }
_sf_20 () { open "https://passivedns.mnemonic.no/" }
_sf_21 () { open "https://talosintelligence.com/reputation_center/" }
_sf_22 () { open "https://netbootcamp.org/websitetool.html" }
_sf_23 () { open "https://github.com/harshnandwana/hussh" }
_sf_24 () { open "https://www.vpnmentor.com/tools/test-the-great-china-firewall/" }
_sf_25 () { open "https://t.me/iptools_robot" }
_sf_26 () { open "https://github.com/hamza07-w/raymond" }
_sf_27 () { open "https://pulsedive.com/" }
_sf_28 () { open "https://github.com/s0md3v/Striker" }
_sf_29 () { open "https://github.com/Anon-Exploiter/SiteBroker" }
_sf_30 () { open "https://dnslytics.com/" }
_sf_31 () { open "https://github.com/h3x0crypt/HostSpider" }
_sf_32 () { open "https://github.com/indiancyberops/Drishti" }
_sf_33 () { open "https://passivedns.mnemonic.no" }
_sf_34 () { open "https://chrome.google.com/webstore/detail/gotanda/jbmdcdfnnpenkgliplbglfpninigbiml" }
_sf_35 () { open "https://cipher387.github.io/domain_investigation_toolbox/ip.html" }
_sf_36 () { open "https://github.com/N0tA1dan/Crab" }
_sf_37 () { open "https://github.com/dievus/msdnsscan" }
_sf_38 () { DOMAIN_IP_LINKS_CMD }

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
