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
  ﴣ Face Generator — Face Generator for creating #sockpuppets. Customize gender, age, head position, emotions, hair and skin color, makeup and glasses.
  ﴣ 2,682,783 free AI generated photos
  ﴣ VoiceBooking — fake voice generator
  ﴣ ThisXDoesNotExist — collection of more than 30 services that generate various items using neural networks.
  ﴣ TheXifer — add fake metadata to photo
  ﴣ GeoTagOnline — add fake geotags to photo
  ﴣ Fake ID Identity Random Name Generator — generate a random character with a fake name for games, novels, or alter ego avatars of yourself. Create a new virtual disposable identity instantly.
  ﴣ @TempMail_org_bot — telegram bot for quick creation of temporary email addresses (to receive emails when registering on different sites)
  ﴣ Text2img — text to image AI generator
  ﴣ Face Anonimyzer — Upload a face photo and get set of similar AI generated faces.
  ﴣ AI video generator — Type the text (video script). Choose a character and script template. Click the 'Submit a video' button. Enter your registration data and wait for the letter with the result
  ﴣ AI Face maker — Just draw a person face (note that there is a separate tool for each part of the face) and the neural network will generate a realistic photo based on it.
  ﴣ SessionBox — multi-login browser extension
  ﴣ MultiLogin — multi-login browser extension
  ﴣ FreshStart — multi-login browser extension
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://generated.photos/face-generator/" }
_sf_1 ()  { open "https://generated.photos/faces" }
_sf_2 ()  { open "https://www.voicebooking.com/en/free-voice-over-generator" }
_sf_3 ()  { open "https://thisxdoesnotexist.com" }
_sf_4 ()  { open "https://www.thexifer.net" }
_sf_5 ()  { open "https://geotagonline.com" }
_sf_6 ()  { open "https://www.elfqrin.com/fakeid.php" }
_sf_7 ()  { open "https://t.me/TempMail_org_bot" }
_sf_8 ()  { open "https://deepai.org/machine-learning-model/text2img" }
_sf_9 ()  { open "https://generated.photos/anonymizer" }
_sf_10 () { open "https://www.synthesia.io/free-ai-video-demo" }
_sf_11 () { open "https://massless.io/tool/face-maker-ai/" }
_sf_12 () { open "https://chrome.google.com/webstore/detail/sessionbox-multi-login-to/megbklhjamjbcafknkgmokldgolkdfig?hl=ru" }
_sf_13 () { open "https://chrome.google.com/webstore/detail/multilogin/ijfgglilaeakmoilplpcjcgjaoleopfi?hl=ru" }
_sf_14 () { open "https://chrome.google.com/webstore/detail/freshstart-cross-browser/nmidkjogcjnnlfimjcedenagjfacpobb?hl=ru" }
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
