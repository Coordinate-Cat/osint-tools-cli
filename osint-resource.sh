. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1

# SNS LIST
menu="
   Github    : (https://github.com)
   Twitter   : (https://twitter.com)
   Instagram : (https://www.instagram.com)
   Reddit    : (https://www.reddit.com)
   Facebook  : (https://www.facebook.com)
   Pinterest : (https://jp.pinterest.com)
   Telegram  : (https://web.telegram.org)
   Keybase   : (https://keybase.io)
  ﭮ Discord   : (https://discord.com)
   5ch       : (https://5ch.net)
"

# SNS URL PUSH
_sf_1 ()  { open https://github.com        }
_sf_2 ()  { open https://twitter.com/      }
_sf_3 ()  { open https://www.instagram.com }
_sf_4 ()  { open https://www.reddit.com    }
_sf_5 ()  { open https://www.facebook.com  }
_sf_6 ()  { open https://jp.pinterest.com  }
_sf_7 ()  { open https://web.telegram.org  }
_sf_8 ()  { open https://keybase.io        }
_sf_9 ()  { open https://discord.com       }
_sf_10 () { open https://5ch.net           }

func (){
  _sf_1 () {
    _s_current_n=0
    _s_break=1
  }
  _sf_2 () {
    _s_current_n=1
    _s_break=1
  }
  _sf_3 () {
    _s_current_n=2
    _s_break=1
  }
  _sf_4 () {
    _s_current_n=3
    _s_break=1
  }
  _sf_5 () {
    _s_current_n=4
    _s_break=1
  }
  _sf_6 () {
    _s_current_n=5
    _s_break=1
  }
  _sf_7 () {
    _s_current_n=6
    _s_break=1
  }
  _sf_8 () {
    _s_current_n=7
    _s_break=1
  }
  _sf_9 () {
    _s_current_n=8
    _s_break=1
  }
}

_sf_select () {
  if   [ $_s_current_n -eq 0 ];then
    _sf_1
  elif [ $_s_current_n -eq 1 ];then
    _sf_2
  elif [ $_s_current_n -eq 2 ];then
    _sf_3
  elif [ $_s_current_n -eq 3 ];then
    _sf_4
  elif [ $_s_current_n -eq 4 ];then
    _sf_5
  elif [ $_s_current_n -eq 5 ];then
    _sf_6
  elif [ $_s_current_n -eq 6 ];then
    _sf_7
  elif [ $_s_current_n -eq 7 ];then
    _sf_8
  elif [ $_s_current_n -eq 8 ];then
    _sf_9
  fi
}

echo "$menu" | _sf_main "$@"
