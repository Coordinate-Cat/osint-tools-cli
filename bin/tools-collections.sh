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
   Osint Search Tools — Several hundred links for quick search in Social Media, Communties, Maps, Documents Search Engines, Maps, Pastes...
   Scrummage — Ultimate OSINT and Threat Hunting Framework
   Mr.Holmes — osint toolkit for gathering information about domains, phone numbers and social media accounts
   E4GL30S1NT — ShellScript toolkit for #osint (12 tools)
   NAZAR — universal Osint Toolkit
   Recon Spider — Advanced Open Source Intelligence (#OSINT) Framework for scanning IP Address, Emails, Websites, Organizations
   Hunt Osint Framework — Dozens of online tools for different stages of #osint investigations
   GoMapEnum — Gather emails on Linkedin (via Linkedin and via Google) + User enumeration and password bruteforce on Azure, ADFS, OWA, O365 (this part seems to be still in development)
   FoxyRecon — 44 osint tools in one add-on for #Firefox
   Owasp Maryam — modular open-source framework based on OSINT and data gathering
   Metabigoor — Simple and fast #osint framework
   Geekflare Tools — 39 online free tools for website testing
   Oryon OSINT query tool — Construct investigations links in Google Sheet
   Discover — Custom bash scripts used to automate various penetration testing tasks including recon, scanning, parsing and listeners with metasploit (16 tools in one)
   one-plus.github.io/DocumentSearch — Document Search osint Toolkit
   Telegram HowToFindBot
   Harpoon
   Profounder — searching users by nickname and scrapping url's from website
   Moriarty Project
   Osintcombine Tools
   OSINT-SAN
   Mihari
   One Plus OSINT Toolkit
   Vichiti
   Sarenka
   Vedbex.com
   Synapsint.com
   Ashok — Swiff knife for #osint
   IVRE — framework for network recon
   SEARCH Investigative and Forensic Toolbar — extension with quick access to dozens of online tools for osint, forensics and othef investigations goals.
   Tenssens — osint framework
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "http://git.hopain.cyou/OSINT-Search-Tools/" }
_sf_1 ()  { open "https://github.com/matamorphosis/Scrummage" }
_sf_2 ()  { open "https://github.com/Lucksi/Mr.Holmes" }
_sf_3 ()  { open "https://github.com/Himatric/SEMID" }
_sf_4 ()  { open "https://github.com/C0MPL3XDEV/E4GL30S1NT" }
_sf_5 ()  { open "https://github.com/MR-NULL666/NAZAR" }
_sf_6 ()  { open "https://github.com/bhavsec/reconspider" }
_sf_7 ()  { open "https://nitinpandey.in/ihunt/" }
_sf_8 ()  { open "https://github.com/nodauf/GoMapEnum" }
_sf_9 ()  { open "https://addons.mozilla.org/ru/firefox/addon/foxyrecon/" }
_sf_10 () { open "https://github.com/saeeddhqan/Maryam" }
_sf_11 () { open "https://github.com/j3ssie/metabigor" }
_sf_12 () { open "https://gf.dev/toolbox" }
_sf_13 () { open "https://docs.google.com/spreadsheets/d/1_x3PXGOahhKT3-ePaWhb3hM1dVxjmBvsVlw6D6lilTQ/edit#gid=1116439221" }
_sf_14 () { open "https://github.com/leebaird/discover" }
_sf_15 () { open "https://one-plus.github.io/DocumentSearch" }
_sf_16 () { open "https://t.me/HowToFindBot" }
_sf_17 () { open "https://github.com/Te-k/harpoon" }
_sf_18 () { open "https://github.com/d8rkmind/Profounder" }
_sf_19 () { open "https://github.com/AzizKpln/Moriarty-Project" }
_sf_20 () { open "https://osintcombine.tools/" }
_sf_21 () { open "https://github.com/Bafomet666/OSINT-SAN" }
_sf_22 () { open "https://github.com/ninoseki/mihari" }
_sf_23 () { open "https://one-plus.github.io/Instagram" }
_sf_24 () { open "https://github.com/umair9747/vichiti" }
_sf_25 () { open "https://github.com/pawlaczyk/sarenka" }
_sf_26 () { open "https://www.vedbex.com/tools/home" }
_sf_27 () { open "https://synapsint.com/" }
_sf_28 () { open "https://github.com/ankitdobhal/Ashok" }
_sf_29 () { open "https://github.com/ivre/ivre" }
_sf_30 () { open "https://chrome.google.com/webstore/detail/search-investigative-and/idgjbdfnngdcenpahfalcamfmcjdfbcj/related" }
_sf_31 () { open "https://github.com/thenurhabib/tenssens" }
_sf_32 () { TOC_CMD }

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
