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
   TheTimeMachine — Toolkit to use http://archive.org to search for vulnerabilities
   Waybackpy — If you want to write your own script to work with http://archive.org, check out the #python library Wayback Machine API. You can use it to quickly automate the extraction of all sorts of website data from the webarchive.
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://quickcacheandarchivesearch.onrender.com/" }
_sf_1 ()  { open "http://trove.nla.gov.au/search/category/websites" }
_sf_2 ()  { open "https://chrome.google.com/webstore/detail/vandal/knoccgahmcfhngbjhdbcodajdioedgdo/related" }
_sf_3 ()  { open "https://theoldnet.com/" }
_sf_4 ()  { open "http://carbondate.cs.odu.edu/" }
_sf_5 ()  { open "https://arquivo.pt/" }
_sf_6 ()  { open "https://archive.md/" }
_sf_7 ()  { open "http://webarchive.loc.gov/" }
_sf_8 ()  { open "https://swap.stanford.edu/" }
_sf_9 ()  { open "http://wayback.archive-it.org/" }
_sf_10 () { open "https://vefsafn.is/" }
_sf_11 () { open "http://web.archive.bibalex.org/" }
_sf_12 () { open "https://archive.vn/" }
_sf_13 () { open "https://www.webarchive.org.uk/" }
_sf_14 () { open "https://chrome.google.com/webstore/detail/web-archives/hkligngkgcpcolhcnkgccglchdafcnao/related" }
_sf_15 () { open "https://gaetanlhf.github.io/EasyCache/" }
_sf_16 () { open "https://cachedview.b4your.com/en/" }
_sf_17 () { open "https://tools.digitalmethods.net/beta/internetArchiveWaybackMachineLinkRipper/#" }
_sf_18 () { open "https://github.com/jsvine/waybackpack" }
_sf_19 () { open "https://github.com/anmolksachan/TheTimeMachine" }
_sf_20 () { open "https://github.com/akamhy/waybackpy" }
_sf_21 () { TOC_CMD }

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
