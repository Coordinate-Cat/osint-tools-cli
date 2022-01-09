#!/bin/sh

### [ DON'T TOUCH ] ############################################################
. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases

ERROR_ASCII='\e[31m
  ███████╗██████╗ ██╗   ██╗    ███╗   ██╗ ██████╗ ████████╗    ██████╗ ███████╗ █████╗ ██████╗ ██╗   ██╗
  ██╔════╝██╔══██╗╚██╗ ██╔╝    ████╗  ██║██╔═══██╗╚══██╔══╝    ██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
  ███████╗██████╔╝ ╚████╔╝     ██╔██╗ ██║██║   ██║   ██║       ██████╔╝█████╗  ███████║██║  ██║ ╚████╔╝ 
  ╚════██║██╔══██╗  ╚██╔╝      ██║╚██╗██║██║   ██║   ██║       ██╔══██╗██╔══╝  ██╔══██║██║  ██║  ╚██╔╝  
  ███████║██║  ██║   ██║▄█╗    ██║ ╚████║╚██████╔╝   ██║       ██║  ██║███████╗██║  ██║██████╔╝   ██║   
  ╚══════╝╚═╝  ╚═╝   ╚═╝╚═╝    ╚═╝  ╚═══╝ ╚═════╝    ╚═╝       ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝    ╚═╝   
\e[31m
'

EXIT_ASCII='\e[32m
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
alias resource='zsh RESOURCE'
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

# List of functions to assign to the list
_sf_0 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_1 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_2 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_3 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_4 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_5 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_6 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_7 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_8 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_9 ()  { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_10 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_11 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_12 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_13 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_14 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_15 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_16 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_17 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_18 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_19 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_20 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_21 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_22 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_23 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_24 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_25 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_26 () { clear && echo $ERROR_ASCII && sleep 2m;osint }
_sf_27 () { clear && echo $EXIT_ASCII && sleep 2m;clear && sleep 1m;exit }

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
