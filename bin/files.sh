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
   Grep for OSINT — simple toolkit that helps to quickly extract 'important data' (phone numbers, email addresses, URLs) from the text / file directory
   Diffnow.com — Compares and finds differences in text, URL (html code downloaded by link), office documents (doc, docx, xls, xlsx, ppt, pptx), source code (C, C++, C#, Java, Perl, PHP and other), archives (RAR, 7-zip etc).
   Dicom Viewer — view MRI or CT photo online (.DCM files)
   CompressedCrack — Simple tool for brute passwords for ZIP and RAR archives
   Encrytped ZIP file creator — Create ZIP archive online
   PDFX — get meta data of PDF files thrue command line
   @mediainforobot — telegram bot to getting metadata from different types of files
   Mutagen — get meta data of audiofiles thrue command line
   compress-or-die.com/analyze — get detail information about images (exif, metatags, ICC_Profile, quantanisation tables)
   aperisolve.fr — Deep image layers (Supperimposed, Red, Green, Blue) and properties (Zsteg, Steghide, Outguess, Exif, Binwalk, Foremost) analyze tool.
   voyant-tools.org — analysis of particular words in .TXT, .DOCX, .XLSX, .CSV and other file types.
   Analyze file format online
   ToolSley: analyze file format online
   MP3 Spectrum Analyzer
   RecoveryToolBox — recovery tools for corrupted Excel, CorelDraw, Photoshop, PowerPoint, RAR, ZIP, PDF and other files
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://github.com/cipher387/grep_for_osint" }
_sf_1 ()  { open "http://diffnow.com" }
_sf_2 ()  { open "https://www.imaios.com/en/Imaios-Dicom-Viewer" }
_sf_3 ()  { open "https://github.com/mnismt/CompressedCrack" }
_sf_4 ()  { open "https://www.protectedzip.com/" }
_sf_5 ()  { open "https://github.com/metachris/pdfx" }
_sf_6 ()  { open "https://t.me/mediainforobot" }
_sf_7 ()  { open "https://github.com/quodlibet/mutagen" }
_sf_8 ()  { open "https://compress-or-die.com/analyze" }
_sf_9 ()  { open "https://aperisolve.fr" }
_sf_10 () { open "https://voyant-tools.org/" }
_sf_11 () { open "https://www.aconvert.com/analyze.html" }
_sf_12 () { open "https://www.toolsley.com/file.html" }
_sf_13 () { open "https://academo.org/demos/spectrum-analyzer/" }
_sf_14 () { open "https://recoverytoolbox.com/" }
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
