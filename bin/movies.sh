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
  ﳜ Reelgood.com — search engine for more than 300 free and paid streaming services (Netflix, Amazon Prime Video, HBO, BBC, DisneyPlus)
  ﳜ IMCDB — Internet Movie Cars Database
  ﳜ Sympsons screencaps search
  ﳜ Search Futuruma screencaps
  ﳜ Rick and Morty screencaps search
  ﳜ Subzin.com — by one phrase will find the movie, as well as the full text of the dialogue with the timing
  ﳜ Unogs.com — Netflix search without registration
  ﳜ flixable.com — alternative way to find anything interesting on Netflix
  ﳜ flixwatch.co — alternative way to find anything interesting on Netflix
  ﳜ flicksurfer.com — alternative way to find anything interesting on Netflix
  ﳜ flixboss.com — alternative way to find anything interesting on Netflix
  ﳜ flickmetrix.com — alternative way to find anything interesting on Netflix
  ﳜ whatthehellshouldiwatchonnetflix.com — alternative way to find anything interesting on Netflix
  ﳜ netflix-codes.com — alternative way to find anything interesting on Netflix
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://reelgood.com/" }
_sf_1 ()  { open "http://imcdb.org" }
_sf_2 ()  { open "https://frinkiac.com/" }
_sf_3 ()  { open "https://morbotron.com/" }
_sf_4 ()  { open "https://masterofallscience.com/" }
_sf_5 ()  { open "http://www.subzin.com/" }
_sf_6 ()  { open "http://unogs.com/" }
_sf_7 ()  { open "http://flixable.com" }
_sf_8 ()  { open "http://flixwatch.co" }
_sf_9 ()  { open "http://flicksurfer.com" }
_sf_10 () { open "http://flixboss.com" }
_sf_11 () { open "http://flickmetrix.com" }
_sf_12 () { open "http://whatthehellshouldiwatchonnetflix.com" }
_sf_13 () { open "http://netflix-codes.com" }
_sf_14 () { TOC_CMD }

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
