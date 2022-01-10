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
alias SOCIAL_MEDIA_AND_PHOTOS_MAPS_CMD='zsh $SOCIAL_MEDIA_AND_PHOTOS_MAPS && bash $SOCIAL_MEDIA_AND_PHOTOS_MAPS'
alias NATURE_AVIATION_CMD='zsh $NATURE_AVIATION && bash $NATURE_AVIATION'
alias MARITIME_CMD='zsh $MARITIME && bash $MARITIME'
alias RAILWAY_CMD='zsh $RAILWAY && bash $RAILWAY'
alias ROUTES_CMD='zsh $ROUTES && bash $ROUTES'
alias POLITICS_CONFLICTS_AND_CRISIS_CMD='zsh $POLITICS_CONFLICTS_AND_CRISIS && bash $POLITICS_CONFLICTS_AND_CRISIS'
alias URBAN_AND_INDUSTRIAL_INFRASTRUCTURE_CMD='zsh $URBAN_AND_INDUSTRIAL_INFRASTRUCTURE && bash $URBAN_AND_INDUSTRIAL_INFRASTRUCTURE'
alias TRANSPORT_CMD='zsh $TRANSPORT && bash $TRANSPORT'
alias COMMUNICATIONS_INTERNET_TECHNOLOGIES_CMD='zsh $COMMUNICATIONS_INTERNET_TECHNOLOGIES && bash $COMMUNICATIONS_INTERNET_TECHNOLOGIES'
alias TOOLS_CMD='zsh $TOOLS && bash $TOOLS'
alias STREET_VIEW_CMD='zsh $STREET_VIEW && bash $STREET_VIEW'
alias OTHER_CMD='zsh $OTHER && bash $OTHER'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   Social media and photos maps
   Nature Aviation
   Maritime
   Railway
   Routes
   Politics, conflicts and crisis
   Urban and industrial infrastructure
   Transport
   Communications, Internet, Technologies
   Tools
   Street View
   Other
  ﴚ [ BACK TO TOC ]
"

# SNS URL PUSH
_sf_0 ()  { SOCIAL_MEDIA_AND_PHOTOS_MAPS_CMD }
_sf_1 ()  { NATURE_AVIATION_CMD }
_sf_2 ()  { MARITIME_CMD }
_sf_3 ()  { RAILWAY_CMD }
_sf_4 ()  { ROUTES_CMD }
_sf_5 ()  { POLITICS_CONFLICTS_AND_CRISIS_CMD }
_sf_6 ()  { URBAN_AND_INDUSTRIAL_INFRASTRUCTURE_CMD }
_sf_7 ()  { TRANSPORT_CMD }
_sf_8 ()  { COMMUNICATIONS_INTERNET_TECHNOLOGIES_CMD }
_sf_9 ()  { TOOLS_CMD }
_sf_10 () { STREET_VIEW_CMD }
_sf_11 () { OTHER_CMD }
_sf_12 () { TOC_CMD }

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
