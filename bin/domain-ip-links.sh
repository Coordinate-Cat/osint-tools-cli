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
alias DORKS_PENTEST_VULNERABILITIES_CMD='zsh $DORKS_PENTEST_VULNERABILITIES && $DORKS_PENTEST_VULNERABILITIES'
alias SEARCHERS_SCRAPERS_EXTRACTORS_PARSERS_CMD='zsh $SEARCHERS_SCRAPERS_EXTRACTORS_PARSERS && $SEARCHERS_SCRAPERS_EXTRACTORS_PARSERS'
alias BACKLINKS_ANALYZE_CMD='zsh $BACKLINKS_ANALYZE && $BACKLINKS_ANALYZE'
alias REDIRECT_LOOKUP_CMD='zsh $REDIRECT_LOOKUP && $REDIRECT_LOOKUP'
alias COOKIES_ANALYZE_CMD='zsh $COOKIES_ANALYZE && $COOKIES_ANALYZE'
alias WEBSITES_FILES_METADATA_ANALYZE_AND_FILES_DOWNLOADS_CMD='zsh $WEBSITES_FILES_METADATA_ANALYZE_AND_FILES_DOWNLOADS && $WEBSITES_FILES_METADATA_ANALYZE_AND_FILES_DOWNLOADS'
alias WEBSITE_ANALYZE_CMD='zsh $WEBSITE_ANALYZE && $WEBSITE_ANALYZE'
alias DOMAIN_IP_INVESTIGATION_CMD='zsh $DOMAIN_IP_INVESTIGATION && $DOMAIN_IP_INVESTIGATION'
alias SUBDOMAINS_SCAN_BRUTE_CMD='zsh $SUBDOMAINS_SCAN_BRUTE && $SUBDOMAINS_SCAN_BRUTE'
alias CLOUDFARE_CMD='zsh $CLOUDFARE && $DORKS_PENTEST_VCLOUDFAREULNERABILITIES'
alias DATABASES_OF_DOMAINS_CMD='zsh $DATABASES_OF_DOMAINS && $DATABASES_OF_DOMAINS'
alias WEBSITE_TRAFFIC_LOOK_UP_CMD='zsh $WEBSITE_TRAFFIC_LOOK_UP && $WEBSITE_TRAFFIC_LOOK_UP'
alias WEBSITE_TECHNOLOGY_LOOK_UP_CMD='zsh $WEBSITE_TECHNOLOGY_LOOK_UP && $WEBSITE_TECHNOLOGY_LOOK_UP'
alias SOURCE_CODE_ANALYZES_URL_UNSHORTENERS_CMD='zsh $SOURCE_CODE_ANALYZES_URL_UNSHORTENERS && $SOURCE_CODE_ANALYZES_URL_UNSHORTENERS'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   Dorks/Pentest/Vulnerabilities
   Searchers, scrapers, extractors, parsers
   Backlinks analyze
   Redirect lookup
   Cookies analyze
   Website's files metadata analyze and files downloads
   Website analyze
   Domain/IP investigation
   Subdomains scan/brute
   Cloudfare
   Databases of domains
   Website traffic look up
   Website technology look up
   Source Code Analyzes URL unshorteners
  ﴚ [ BACK TO TOC ]
"

# SNS URL PUSH
_sf_0 ()   { DORKS_PENTEST_VULNERABILITIES_CMD }
_sf_1 ()   { SEARCHERS_SCRAPERS_EXTRACTORS_PARSERS_CMD }
_sf_2 ()   { BACKLINKS_ANALYZE_CMD }
_sf_3 ()   { REDIRECT_LOOKUP_CMD }
_sf_4 ()   { COOKIES_ANALYZE_CMD }
_sf_5 ()   { WEBSITES_FILES_METADATA_ANALYZE_AND_FILES_DOWNLOADS_CMD }
_sf_6 ()   { WEBSITE_ANALYZE_CMD }
_sf_7 ()   { DOMAIN_IP_INVESTIGATION_CMD }
_sf_8 ()   { SUBDOMAINS_SCAN_BRUTE_CMD }
_sf_9 ()   { CLOUDFARE_CMD }
_sf_10 ()  { DATABASES_OF_DOMAINS_CMD }
_sf_11 ()  { WEBSITE_TRAFFIC_LOOK_UP_CMD }
_sf_12 ()  { WEBSITE_TECHNOLOGY_LOOK_UP_CMD }
_sf_13 ()  { SOURCE_CODE_ANALYZES_URL_UNSHORTENERS_CMD }
_sf_14 ()  { TOC_CMD }

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
