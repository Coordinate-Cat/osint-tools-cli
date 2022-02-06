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
   Offen Osint
   BlackArch Linux
   Kali Linux
   CSI Linux
   Fedora Security Lab
   Huron Osint
   Tsurugi Linux
   Osintux
   TraceLabs OSINT VM
   Dracos Linux
   ArchStrike
   Septor Linux
   Parrot Security
   Pentoo Linux
   Deft Linux
   BackBox
   Falcon Arch Linux
   AttifyOS — Linux distro for pentesting IoT devices.
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://github.com/Double2Sky/OffenOsint" }
_sf_1 ()  { open "https://www.blackarch.org" }
_sf_2 ()  { open "https://www.kali.org" }
_sf_3 ()  { open "https://csilinux.com" }
_sf_4 ()  { open "https://labs.fedoraproject.org/security/download/index.html" }
_sf_5 ()  { open "https://github.com/HuronOsint/OsintDistro" }
_sf_6 ()  { open "https://tsurugi-linux.org" }
_sf_7 ()  { open "http://www.osintux.org" }
_sf_8 ()  { open "https://www.tracelabs.org/initiatives/osint-vm" }
_sf_9 ()  { open "https://dracos-linux.org" }
_sf_10 () { open "https://archstrike.org" }
_sf_11 () { open "https://septor.sourceforge.io" }
_sf_12 () { open "https://twitter.com/ParrotSec" }
_sf_13 () { open "https://www.pentoo.ch" }
_sf_14 () { open "https://deftlinux.net" }
_sf_15 () { open "https://www.backbox.org" }
_sf_16 () { open "https://sourceforge.net/projects/falcon-archlinux/" }
_sf_17 () { open "https://github.com/adi0x90/attifyos" }
_sf_18 () { TOC_CMD }

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
