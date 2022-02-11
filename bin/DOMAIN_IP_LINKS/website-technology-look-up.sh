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
   WhatRuns — extension, which discover what runs a website: frameworks, Analytics Tools, Wordpress Plugins, Fonts.
   Built With
   w3techs
   Hexometer stack checker
   Web Tech Survey
   Awesome Tech Stack
   Netcraft Site Report
   Wappalyzer
   Larger.io
   CMLabs Tools
   Snov.io technology checker — type name of #webdev technology (jquery, django, wordpress etc) and get the list of websites, which used it.
  ﴚ [ BACK TO DOMAIN_IP_LINKS ]
"

</br><a href='https://chrome.google.com/webstore/detail/whatruns/cmkdbmfndkfgebldhnkbfhlneefdaaip/related'>WhatRuns</a> — extension, which discover what runs a website: frameworks, Analytics Tools, Wordpress Plugins, Fonts.
</br><a href="https://builtwith.com/">Built With</a>
</br><a href="https://w3techs.com/sites">w3techs</a>
</br><a href="https://hexometer.com/stack-checker">Hexometer stack checker</a>
</br><a href="https://webtechsurvey.com/website/">Web Tech Survey</a>
</br><a href="https://awesometechstack.com/">Awesome Tech Stack</a>
</br><a href="https://sitereport.netcraft.com/">Netcraft Site Report</a>
</br><a href="https://www.wappalyzer.com/">Wappalyzer</a>
</br><a href="https://www.larger.io/">Larger.io</a>
</br><a href="https://tools.cmlabs.co/en/technology-lookup">CMLabs Tools</a>
</br><a href='app.snov.io/techcheck/main'>Snov.io technology checker</a> — type name of #webdev technology (jquery, django, wordpress etc) and get the list of websites, which used it. 

# CODE URL PUSH
_sf_0 ()  { open "https://chrome.google.com/webstore/detail/whatruns/cmkdbmfndkfgebldhnkbfhlneefdaaip/related" }
_sf_1 ()  { open "https://builtwith.com/" }
_sf_2 ()  { open "https://w3techs.com/sites" }
_sf_3 ()  { open "https://hexometer.com/stack-checker" }
_sf_4 ()  { open "https://webtechsurvey.com/website/" }
_sf_5 ()  { open "https://awesometechstack.com/" }
_sf_6 ()  { open "https://sitereport.netcraft.com/" }
_sf_7 ()  { open "https://www.wappalyzer.com/" }
_sf_8 ()  { open "https://www.larger.io/" }
_sf_9 ()  { open "https://tools.cmlabs.co/en/technology-lookup" }
_sf_10 () { open "app.snov.io/techcheck/main" }
_sf_11 () { DOMAIN_IP_LINKS_CMD }

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
