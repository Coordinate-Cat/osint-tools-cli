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
   Whois Freaks — API which allows you to search Whois-database (430M+ domains since 1986) by keyword, company name or owner name
   Expireddomains.net — lists of deleted and expired domains (last 7 days)
   InstantDomainSearch — search for domains for sale
   WhoisDS.com — database of domains registered in the last day
   API Domaindumper — An interesting tool for researchers of IT history and data journalists. Just an FREE API that shows how many sites were registered in each domain zone on a given day (since January 1, 1990)
   ptrarchive.com — search by 230 billion DNS records retrieved from 2008 to the present.
   PeeringDB — Freely available, user-maintained, database of networks, and the go-to location for interconnection data.
   IQWhois — Search whois data by address, city, name, surname, phonenumber
  ﴚ [ BACK TO DOMAIN_IP_LINKS ]
"

# CODE URL PUSH
_sf_0 () { open "https://whoisfreaks.com/" }
_sf_1 () { open "https://www.expireddomains.net/deleted-domains/" }
_sf_2 () { open "https://instantdomainsearch.com/domain/sale" }
_sf_3 () { open "http://whoisds.com/newly-registered-domains" }
_sf_4 () { open "https://api.domaindumper.com" }
_sf_5 () { open "http://ptrarchive.com/" }
_sf_6 () { open "https://www.peeringdb.com/" }
_sf_7 () { open "https://iqwhois.com/advanced-search" }
_sf_8 () { DOMAIN_IP_LINKS_CMD }

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
