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
   Quick Cache and Archive search — quick search website old versions in different search engines and archives (21 source)
   Trove — australian web archive
   Vandal — extension that makes working with http://archive.org faster, more comfortable, and more efficient.
   TheOldNet.com
   Carbon Dating The Web
   Arquivo.pt
   Archive.md
   Webarchive.loc.gov
   Swap.stanford.edu
   Wayback.archive-it.org
   Vefsafn.is
   web.archive.bibalex.org
   Archive.vn
   UKWA — archive of more than half a billion saved English-language web pages (data from 2013)
   Web Archives — extension for viewing cached web page version in 18 search engines and services
   EasyCache — quick search website old versions in different search engines and archives
   cachedview.b4your.com — quick search website old versions in different search engines and archives
   Internet Archive Wayback Machine Link Ripper — Enter a host or URL to retrieve the links to the URL's archived versions at http://wayback.archive.org. A text file is produced which lists the archive URLs.
   Waybackpack — download the entire #WaybackMachine archive for a given URL. You can only download versions for a certain date range (date format YYYYMMDDhhss)
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
_sf_15 () {  }
_sf_16 () {  }
_sf_17 () {  }
_sf_18 () {  }
_sf_19 () { TOC_CMD }

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
