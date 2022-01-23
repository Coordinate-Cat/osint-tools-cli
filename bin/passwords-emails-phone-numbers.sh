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
   Leak peek — by pasword search part of email and site, where this password is used
   Breachchecker.com — history of data leaks associated with a particular email address
   Metric Sparrow email permulator
   snov.io email finder — find emails of company employees by domain name.
   @maigret_osint_bot — check accounts by username on 1500 sites. Based on maigret CLI tool
   Analyzeid.com Username Search — view 'Summary'  of accounts found: list of names used, locations, bio, creations dates etc.
   NEXFIL — Search username by 350 social media platforms
   Mailfoguess — tool create a lot of possible local-part from personal information, add domain to all local-part respecting the conditions of creation of mail of these domains and verify these mails
   USA Telephone Directory Collection — 3512 of paper 'yellow' and 'white' pages available for download in PDF published from 1887 to 1987
   Oldphonebook — USA phonenumbers database from 1994 to 2014
   Phomber — Get information about phone number with command line.
   DaProfiler — Get emails, social medias, adresses of peoples using web scraping and google dorking
   Spy — Just another very quick and simple account checker by username (210 sites in list).
   Hunter.io — can link to an article to find its author and his email address
   SingleHire — Tool for search contacts by full name, location and job title. Shows phones, emails, #Linkedin, #Facebook, #Twitter and other social media profile
   Mailcat — find existing email addresses by nickname in 22 providers, > 60 domains and > 100 aliases
   Social Analyzer — tool for searching nickname profiles on more than 300 sites
   SovaWeb — web version of a famous Russian bot in Telegram for searching by email, nickname, IMSI, IMEI, MSISDN, BTS, IP, BSSID
   Profil3r — search for profiles in social networks by nickname
   Aliens eye — Find links to social media accounts in 70 websites by username
   Thorndyke — Checks the availability of a specified username on over 200 websites
   Marple — It collect links contains nickname/name/surname in url from Google and DuckDuckGo search results.
   BehindTheNames — when conducting an in-depth search for information about a person, it is important to check the different pronunciations of their name and diminutives. This service will help you find them
   Holehe — check if the mail is used on different sites like twitter, instagram and will retrieve information on sites with the forgotten password function
   H8mail — email OSINT and breach hunting tool using different breach and reconnaissance services, or local breaches such as Troy Hunt's 'Collection1' and the infamous 'Breach Compilation' torrent
   My CSE for search in 48 pastebin sites
   Psbdmp.ws — search sensitive user data by 25 759 511 pastebins
   MailBoxLayer API — free api for email adress checking
   EmailHippo — Simple free online tool for check the existence of a particular email address and evaluate its reliability on a 10-point scale.
   Numverify API — free api for global phone number lookup and validation
   Cybernews RockYour2021 — check if your data has been leaked
   Spycloud.com — check for a particular email in data leaks. Shows how many addresses registered on a particular house have been scrambled
   Gravatar check — Just enter email and see what the person's Gravatar avatar looks like.
   UserFinder — tool for finding profiles by username
   Reference of default settings of different router models (IP, username, password)
   Many Passwords — Default passwords for IoT devices and for web applications (for ex. MySQL and PostgreSQL admin panels)
   PassHunt — Command line tool for searching of default credentials for network devices, web applications and more. Search through 523 vendors and their 2084 default passwords
   BugMenot — login and passwords for public accounts in different services
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  {  }
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
_sf_37 () {  }
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
