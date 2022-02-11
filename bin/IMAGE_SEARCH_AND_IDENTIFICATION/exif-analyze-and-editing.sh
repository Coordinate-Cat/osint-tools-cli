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
alias IMAGE_SEARCH_AND_IDENTIFICATION_CMD='zsh $IMAGE_SEARCH_AND_IDENTIFICATION && bash $IMAGE_SEARCH_AND_IDENTIFICATION'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   EXIF-PY — get exif data of photos thrue command line
   Exif.app — Press 'Diff check button', upload two graphical images and get a comparison table of their metadata. The differences are highlighted in yellow
   Image Analyzer Addon — View all images on a page and expose image properties, EXIF data, and one-click download
   Online metadata viewer and editor — High-quality and well-made. Support docx, xlsx, msg, pptx, jpeg, vsd, mpp.
   Scan QR Code — While determining the location of the photo, sometimes the research of QR codes on the road poles, showcases and billboards helps a lot. This service will help to recognize a QR-code by a picture
   Identify plans
   Forensicdots.de — find 'yellow dots' (Machine Identification Code) in printed documents
   Image Diff Checker
   Vsudo Geotag Tool — tool for mass geotagging of photos
  ﴚ [ BACK TO IMAGE_SEARCH_AND_IDENTIFICATION ]
"

# CODE URL PUSH
_sf_0 () { open "https://github.com/ianare/exif-py" }
_sf_1 () { open "http://exif.app" }
_sf_2 () { open "https://chrome.google.com/webstore/detail/image-analyzer/bgadhpbbppdihhbfcjbbihfcckbblcek" }
_sf_3 () { open "https://products.groupdocs.app/metadata/" }
_sf_4 () { open "https://4qrcode.com/scan-qr-code.php" }
_sf_5 () { open "https://identify.plantnet.org/" }
_sf_6 () { open "https://www.forensicdots.de/" }
_sf_7 () { open "https://www.diffchecker.com/image-diff/" }
_sf_8 () { open "https://vsudo.net/tools/geotag" }
_sf_9 () { IMAGE_SEARCH_AND_IDENTIFICATION_CMD }

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
