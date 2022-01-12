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
alias MAPS_GEOLOCATION_AND_TRANSPORT_CMD='zsh $MAPS_GEOLOCATION_AND_TRANSPORT && bash $MAPS_GEOLOCATION_AND_TRANSPORT'
alias SOCIAL_MEDIA_CMD='zsh $SOCIAL_MEDIA && bash $SOCIAL_MEDIA'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   Maps, Geolocation and Transport
   Social Media
   Domain/IP/Links
   Image Search and Identification
   Cryptocurrencies
   Messengers
   Code
   Search engines
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
  ﳊ Keywords, trends, news analytics
   Apps and programs
   Brands, companies, items
  ﳜ Movies
   TV/Radio
   VirtualMachines/Linux distributions
   My Projects
  ﴚ [ EXIT ]
"

### [ LIST OF FUNCTIONS TO ASSIGN TO THE LIST ] ################################
_sf_0 ()  { MAPS_GEOLOCATION_AND_TRANSPORT_CMD }
_sf_1 ()  { SOCIAL_MEDIA_CMD }
_sf_2 ()  { ERROR_CMD }
_sf_3 ()  { ERROR_CMD }
_sf_4 ()  { ERROR_CMD }
_sf_5 ()  { ERROR_CMD }
_sf_6 ()  { ERROR_CMD }
_sf_7 ()  { ERROR_CMD }
_sf_8 ()  { ERROR_CMD }
_sf_9 ()  { ERROR_CMD }
_sf_10 () { ERROR_CMD }
_sf_11 () { ERROR_CMD }
_sf_12 () { ERROR_CMD }
_sf_13 () { ERROR_CMD }
_sf_14 () { ERROR_CMD }
_sf_15 () { ERROR_CMD }
_sf_16 () { ERROR_CMD }
_sf_17 () { ERROR_CMD }
_sf_18 () { ERROR_CMD }
_sf_19 () { ERROR_CMD }
_sf_20 () { ERROR_CMD }
_sf_21 () { ERROR_CMD }
_sf_22 () { ERROR_CMD }
_sf_23 () { ERROR_CMD }
_sf_24 () { ERROR_CMD }
_sf_25 () { ERROR_CMD }
_sf_26 () { ERROR_CMD }
_sf_27 () { EXIT_CMD }

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

echo "$menu" | _sf_main "$@"
