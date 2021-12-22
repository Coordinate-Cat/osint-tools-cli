. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases
alias resource='zsh /Users/ocat/dotfiles/.osint/OSINT-TOOLS-CLI/osint-resource.sh'
# SNS LIST
menu="
   Chrome
   Safari
   Firefox
   Tor
   resource
  ← exit
"

# SNS URL PUSH
_sf_1 () { open -a "/Applications/Google Chrome.app" && clear }
_sf_2 () { open -a "/Applications/Safari.app" | exit }
_sf_3 () { open -a "/Applications/Firefox.app" | exit }
_sf_4 () { open -a "/Applications/Tor Browser.app" | exit }
_sf_5 () { resource }
_sf_exit () { exit }

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
  _sf_exit () {
    _s_current_n=5
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
    _sf_exit
  fi
}

echo "$menu" | _sf_main "$@"
echo "hello"
