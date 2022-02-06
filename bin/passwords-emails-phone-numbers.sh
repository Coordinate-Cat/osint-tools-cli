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
   FireFly — Get information about phone number using Numverify API
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://leakpeek.com/" }
_sf_1 ()  { open "https://breachchecker.com/" }
_sf_2 ()  { open "http://metricsparrow.com/toolkit/email-permutator/" }
_sf_3 ()  { open "https://snov.io/email-finder" }
_sf_4 ()  { open "https://t.me/maigret_osint_bot" }
_sf_5 ()  { open "https://analyzeid.com/username/" }
_sf_6 ()  { open "https://github.com/thewhiteh4t/nexfil" }
_sf_7 ()  { open "https://github.com/WildSiphon/Mailfoguess" }
_sf_8 ()  { open "https://www.loc.gov/collections/united-states-telephone-directory-collection/" }
_sf_9 ()  { open "http://www.oldphonebook.com/" }
_sf_10 () { open "https://github.com/s41r4j/phomber" }
_sf_11 () { open "https://github.com/TheRealDalunacrobate/DaProfiler" }
_sf_12 () { open "https://github.com/CYB3R-G0D/SPY" }
_sf_13 () { open "https://hunter.io/" }
_sf_14 () { open "https://www.signalhire.com/candidates/47dc037faace4abeb0727d6f4d0f3079" }
_sf_15 () { open "https://github.com/sharsil/mailcat" }
_sf_16 () { open "https://github.com/qeeqbox/social-analyzer" }
_sf_17 () { open "http://sovaweb.herokuapp.com/" }
_sf_18 () { open "https://github.com/Rog3rSm1th/Profil3r" }
_sf_19 () { open "https://github.com/BLINKING-IDIOT/Aliens_eye" }
_sf_20 () { open "https://github.com/rlyonheart/thorndyke" }
_sf_21 () { open "https://github.com/soxoj/marple" }
_sf_22 () { open "https://www.behindthename.com" }
_sf_23 () { open "https://github.com/megadose/holehe" }
_sf_24 () { open "https://github.com/khast3x/h8mail" }
_sf_25 () { open "https://cipher387.github.io/pastebinsearchengines/" }
_sf_26 () { open "https://psbdmp.ws" }
_sf_27 () { open "https://mailboxlayer.com/" }
_sf_28 () { open "https://tools.emailhippo.com/email/" }
_sf_29 () { open "https://numverify.com/" }
_sf_30 () { open "https://cybernews.com/personal-data-leak-check/" }
_sf_31 () { open "https://spycloud.com/check-your-exposure/" }
_sf_32 () { open "https://en.gravatar.com/site/check/" }
_sf_33 () { open "https://github.com/mishakorzik/UserFinder" }
_sf_34 () { open "https://www.cleancss.com/router-default/" }
_sf_35 () { open "https://many-passwords.github.io/" }
_sf_36 () { open "https://github.com/Viralmaniar/Passhunt" }
_sf_37 () { open "http://bugmenot.com" }
_sf_38 () { open "https://github.com/Lexxrt/FireFly" }
_sf_39 () { TOC_CMD }

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
