#!/bin/sh

. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases

clear && source $HOME/dotfiles/.zshrc


# SNS LIST
menu="
   Github    : (https://github.com)
   twitter   : (https://twitter.com)
   [ BACK TO MAIN LIST ]
"

# SNS URL PUSH
_sf_0 ()  { open https://github.com }
_sf_1 ()  { open https://twitter.com/ }
_sf_2 ()  { osint }

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
