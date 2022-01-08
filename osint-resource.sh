#!/bin/sh

. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1

# SNS LIST
menu="
   Github    : (https://github.com)
   test      : (https://twitter.com)
  exit<<<CONTROL + C
"

# SNS URL PUSH
_sf_1 ()  { open https://github.com | exit }
_sf_2 ()  { open https://twitter.com/ | exit }

# FUNCTIONS
func (){
  _sf_1 () {
    _s_current_n=0
    _s_break=1
  }
  _sf_2 () {
    _s_current_n=1
    _s_break=1
  }
}

_sf_select () {
  if   [ $_s_current_n -eq 0 ];then
    _sf_1
  elif [ $_s_current_n -eq 1 ];then
    _sf_2
  fi
}

echo "$menu" | _sf_main "$@"
