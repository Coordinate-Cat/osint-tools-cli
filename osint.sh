#!/bin/sh

### [ DON'T TOUCH ] ############################################################
. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases

TITLE_ASCII='\e[31m
◤◢◣◥◤ ◢◣◆◢◣◥◤◢◣◥◤◢◣◥◤ ◢◣◆◢◣◥◤◢◣◥◤◢◣◥◤ ◢◣◆◢◣◥◤◢◣◥◤◢◣◥◤ ◢◣◆◢◣◥◤◢◣◥◤◢◣◥◤ ◢◣◆◢◣◥◤◢◣◥◤◢◣◥◤ ◢◣◆◢◣◥◤◢◣◥◤◢◣◥◤ ◢◣◆◢◣◥

 ██████╗ ███████╗██╗███╗   ██╗████████╗   ████████╗ ██████╗  ██████╗ ██╗     ███████╗     ██████╗██╗     ██╗
██╔═══██╗██╔════╝██║████╗  ██║╚══██╔══╝   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝    ██╔════╝██║     ██║
██║   ██║███████╗██║██╔██╗ ██║   ██║         ██║   ██║   ██║██║   ██║██║     ███████╗    ██║     ██║     ██║
██║   ██║╚════██║██║██║╚██╗██║   ██║         ██║   ██║   ██║██║   ██║██║     ╚════██║    ██║     ██║     ██║
╚██████╔╝███████║██║██║ ╚████║   ██║         ██║   ╚██████╔╝╚██████╔╝███████╗███████║    ╚██████╗███████╗██║
 ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝   ╚═╝         ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝     ╚═════╝╚══════╝╚═╝

                                    ≡≡≡≡≡ ≡≡≡≡≡ ≡≡≡≡≡ ≡≡≡≡≡ ≡≡≡≡≡
                      GITHUB:(https://github.com/Coordinate-Cat/OSINT-TOOLS-CLI)
                  COLLECTION:(https://github.com/CIPHER387/OSINT_STUFF_TOOL_COLLECTION)
                              AUTHOR:(https://github.com/Coordinate-Cat)
                                          UPDATE:(11/2/2022)
                                    ≡≡≡≡≡ ≡≡≡≡≡ ≡≡≡≡≡ ≡≡≡≡≡ ≡≡≡≡≡

◣◥◤◢◣ ◥◤◆◥◤◢◣◥◤◢◣◥◤◢◣ ◥◤◆◥◤◢◣◥◤◢◣◥◤◢◣ ◥◤◆◥◤◢◣◥◤◢◣◥◤◢◣ ◥◤◆◥◤◢◣◥◤◢◣◥◤◢◣ ◥◤◆◥◤◢◣◥◤◢◣◥◤◢◣ ◥◤◆◥◤◢◣◥◤◢◣◥◤◢◣ ◥◤◆◥◤◢

\e[31;5mLOADING...\e[m
\e[31m\e[37m
'

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
# REPLACE THIS WITH THE PATH WHERE YOUR .ZSHRC OR .BASHRC IS LOCATED
  clear && source $HOME/dotfiles/.zshrc

### [ Aliases ] ################################################################
alias MAPS_GEOLOCATION_AND_TRANSPORT_CMD='zsh $MAPS_GEOLOCATION_AND_TRANSPORT && bash $MAPS_GEOLOCATION_AND_TRANSPORT'
alias SOCIAL_MEDIA_CMD='zsh $SOCIAL_MEDIA && bash $SOCIAL_MEDIA'
alias DOWNLOADERS_CMD='zsh $DOWNLOADERS && bash $DOWNLOADERS'
alias DOMAIN_IP_LINKS_CMD='zsh $DOMAIN_IP_LINKS && bash $DOMAIN_IP_LINKS'
alias IMAGE_SEARCH_AND_IDENTIFICATION_CMD='zsh $IMAGE_SEARCH_AND_IDENTIFICATION && bash $IMAGE_SEARCH_AND_IDENTIFICATION'
alias CRYPTOCURRENCIES_CMD='zsh $CRYPTOCURRENCIES && bash $CRYPTOCURRENCIES'
alias MESSENGERS_CMD='zsh $MESSENGERS && bash $MESSENGERS'
alias CODE_CMD='zsh $CODE && bash $CODE'
alias SEARCH_ENGINES_CMD='zsh $SEARCH_ENGINES && bash $SEARCH_ENGINES'
alias TOOLS_FOR_DUCKDUCKGO_CMD='zsh $TOOLS_FOR_DUCKDUCKGO && bash $TOOLS_FOR_DUCKDUCKGO'
alias TOOLS_FOR_GOOGLE_CMD='zsh $TOOLS_FOR_GOOGLE && bash $TOOLS_FOR_GOOGLE'
alias IOT_CMD='zsh $IOT && bash $IOT'
alias ARCHIVES_CMD='zsh $ARCHIVES && bash $ARCHIVES'
alias ARCHIVES_OF_DOCUMENTS_CMD='zsh $ARCHIVES_OF_DOCUMENTS && bash $ARCHIVES_OF_DOCUMENTS'
alias DATASETS_CMD='zsh $DATASETS && bash $DATASETS'
alias PASSWORDS_EMAILS_PHONE_NUMBERS_CMD='zsh $PASSWORDS_EMAILS_PHONE_NUMBERS && bash $PASSWORDS_EMAILS_PHONE_NUMBERS'
alias PEOPLE_SEARCH_CMD='zsh $PEOPLE_SEARCH && bash $PEOPLE_SEARCH'
alias SOCK_PUPPETS_CMD='zsh $SOCK_PUPPETS && bash $SOCK_PUPPETS'
alias NOOSINT_TOOLS_CMD='zsh $NOOSINT_TOOLS && bash $NOOSINT_TOOLS'
alias TOOLS_COLLECTIONS_CMD='zsh $TOOLS_COLLECTIONS && bash $TOOLS_COLLECTIONS'
alias FILES_CMD='zsh $FILES && bash $FILES'
alias IMEI_AND_SERIAL_NUMBERS_CMD='zsh $IMEI_AND_SERIAL_NUMBERS && bash $IMEI_AND_SERIAL_NUMBERS'
alias NFT_CMD='zsh $NFT && bash $NFT'
alias KEYWORDS_TRENDS_NEWS_ANALYTICS_CMD='zsh $KEYWORDS_TRENDS_NEWS_ANALYTICS && bash $KEYWORDS_TRENDS_NEWS_ANALYTICS'
alias APPS_AND_PROGRAMS_CMD='zsh $APPS_AND_PROGRAMS && bash $APPS_AND_PROGRAMS'
alias BRANDS_COMPANIES_ITEMS_CMD='zsh $BRANDS_COMPANIES_ITEMS && bash $BRANDS_COMPANIES_ITEMS'
alias MOVIES_CMD='zsh $MOVIES && bash $MOVIES'
alias TV_RADIO_CMD='zsh $TV_RADIO && bash $TV_RADIO'
alias VIRTUALMACHINES_LINUX_DISTRIBUTIONS_CMD='zsh $VIRTUALMACHINES_LINUX_DISTRIBUTIONS && bash $VIRTUALMACHINES_LINUX_DISTRIBUTIONS'
alias MY_PROJECTS_CMD='zsh $MY_PROJECTS && bash $MY_PROJECTS'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   Maps, Geolocation and Transport
   Social Media
   Downloaders
   Domain/IP/Links
   Image Search and Identification
   Cryptocurrencies
   Messengers
   Code
   Search engines
   Tools for DuckDuckGo
   Tools for Google
   IOT
   Archives
   Archives of documents
   Datasets
   Passwords, emails, phone numbers
   People search
  ﴣ Sock Puppets
   NOOSINT tools
   Tools collections
   Files
   IMEI and serial numbers
   NFT
  ﳊ Keywords, trends, news analytics
   Apps and programs
   Brands, companies, items
  ﳜ Movies
   TV/Radio
   VirtualMachines/Linux distributions
   My Projects
  ﴚ [ EXIT - Mischief managed! ]
"

### [ LIST OF FUNCTIONS TO ASSIGN TO THE LIST ] ################################
_sf_0 ()  { MAPS_GEOLOCATION_AND_TRANSPORT_CMD }
_sf_1 ()  { SOCIAL_MEDIA_CMD }
_sf_2 ()  { DOWNLOADERS_CMD }
_sf_3 ()  { DOMAIN_IP_LINKS_CMD }
_sf_4 ()  { IMAGE_SEARCH_AND_IDENTIFICATION_CMD }
_sf_5 ()  { CRYPTOCURRENCIES_CMD }
_sf_6 ()  { MESSENGERS_CMD }
_sf_7 ()  { CODE_CMD }
_sf_8 ()  { SEARCH_ENGINES_CMD }
_sf_9 ()  { TOOLS_FOR_DUCKDUCKGO_CMD }
_sf_10 () { TOOLS_FOR_GOOGLE_CMD }
_sf_11 () { IOT_CMD }
_sf_12 () { ARCHIVES_CMD }
_sf_13 () { ARCHIVES_OF_DOCUMENTS_CMD }
_sf_14 () { DATASETS_CMD }
_sf_15 () { PASSWORDS_EMAILS_PHONE_NUMBERS_CMD }
_sf_16 () { PEOPLE_SEARCH_CMD }
_sf_17 () { SOCK_PUPPETS_CMD }
_sf_18 () { NOOSINT_TOOLS_CMD }
_sf_19 () { TOOLS_COLLECTIONS_CMD }
_sf_20 () { FILES_CMD }
_sf_21 () { IMEI_AND_SERIAL_NUMBERS_CMD }
_sf_22 () { NFT_CMD }
_sf_23 () { KEYWORDS_TRENDS_NEWS_ANALYTICS_CMD }
_sf_24 () { APPS_AND_PROGRAMS_CMD }
_sf_25 () { BRANDS_COMPANIES_ITEMS_CMD }
_sf_26 () { MOVIES_CMD }
_sf_27 () { TV_RADIO_CMD }
_sf_28 () { VIRTUALMACHINES_LINUX_DISTRIBUTIONS_CMD }
_sf_29 () { MY_PROJECTS_CMD }
_sf_30 () { EXIT_CMD }

### [ SEARCH FOR A SELECTED NUMBER OF LINES ] ##################################
  func (){
    for i in `seq 0 99`
      do
      _sf_ + $i () {
        _s_current_n=$i
        _s_break=1
      }
      done
  }

### [ RUN THE SELECTED FUNCTION. ] #############################################
  _sf_select () {
    for i in `seq 0 99`
      do
        if   [ $_s_current_n -eq $i ];then
          _sf_$i
        fi
      done
  }

echo -e "$TITLE_ASCII" && sleep 1m;reset && sleep 2m;echo "$menu" | _sf_main "$@"
