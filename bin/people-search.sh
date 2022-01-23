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
   GoFindWho People Search — More than 300 tools for gathering information about people in one. Search by name, username, phone, adress, company name.
   That's them people search
   Anywho — Search for people in #USA. Enter first and last name to get age, address, and part of phone number (free)
   Usersearch.org — search people by nickname, phone or email
   Ellis Island — online searchable database of 65 million arrivals to #NewYork between (late 19th and early 20th century).
   recordsearch.naa.gov.au — National archives of #Australia
   SpyDialer — Free search contact information by phone number, name, address or email
   Decoding Social Security Numbers in One Step
   Inmate Database Search
   Scamdigger.com — search in #scammers database by name, IP-adress, email or phone — Search users profile by nickname
   Pyosint — Search for usenames form a list of 326 websites. Scrap a website to extract all links form a given website. Automate the search of subdomains of a given domain from diffrent services
   Cloob.com — Iranian people search
   SlaveVoyages.org — the Trans-Atlantic and Intra-American slave trade databases are the culmination of several decades of independent and collaborative research by scholars drawing upon data in libraries and archives around the Atlantic world.
   Alternate Spelling Finder — When searching for information by name, remember that the same name can be recorded in documents and files very differently, as people of different nationalities perceive sounds differently.
   Translit.net — Sometimes it happens that a person's name is written in Cyrillic, but you can find a lot of info about him in Google if you type his transliteration 'Ivan Ivanov'. This tool will come in handy when working with Russian, Belarusian, Ukrainian, Armenian names
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
_sf_15 () { TOC_CMD }

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
