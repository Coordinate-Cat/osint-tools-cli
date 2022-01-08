#!/bin/sh

. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases

alias resource='zsh RESOURCE'

# Name of the function to be executed
menu="
   Maps, Geolocation and Transport
   Social Media
   Domain/IP/Links
   Image Search and Identification
   Cryptocurrencies
   Messengers
   Code
   Search engines
   Tools for Google
   IOT
   Archives
   Archives of documents
   Datasets
   Passwords, emails, phone numbers
   People search
   Sock Puppets
   NOOSINT tools
   Tools collections
   Files
   IMEI and serial numbers
   Keywords, trends, news analytics
   Apps and programs
   Brands, companies, items
   Amazon
   Movies
   TV/Radio
   VirtualMachines/Linux distributions
   My Projects
  ← exit
"

# List of functions to assign to the list
_sf_0 () { exit }
_sf_1 () { exit }
_sf_2 () { exit }
_sf_3 () { clear && exit }

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
