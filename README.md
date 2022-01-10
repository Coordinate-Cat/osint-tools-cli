# OSINT-TOOLS-CLI

## ⚠️ SORRY IT'S NOT WORKING YET, BUT WE'RE DOING OUR BEST.

![top](./top.png)
![list](./list.png)
## WHATS THIS

THIS IS A CLI VERSION OF THE CHEAT SHEET FOR EASY ACCESS.
TABLE OF CONTENTS IS BASED ON [CIPHER387/OSINT_STUFF_TOOL_COLLECTION](HTTPS://GITHUB.COM/CIPHER387/OSINT_STUFF_TOOL_COLLECTION).  
IT CAN BE NAVIGATED WITHOUT USING COMMANDS OR THE CURSOR.

## ISSUES
⚠️⚠️⚠️IT WON'T WORK UNTIL THESE TWO ISUUES ARE COMPLETED.⚠️⚠️⚠️  
[LIST INSERTION #4](https://github.com/Coordinate-Cat/OSINT-TOOLS-CLI/issues/4)  
[COMMON FUNC #5](https://github.com/Coordinate-Cat/OSINT-TOOLS-CLI/issues/5)

- [ ] Maps, Geolocation and Transport
- [ ] Social Media
- [ ] Domain/IP/Links
- [ ] Image Search and Identification
- [ ] Cryptocurrencies
- [ ] Messengers
- [ ] Code
- [ ] Search engines
- [ ] Tools for Google
- [ ] IOT
- [ ] Archives
- [ ] Archives of documents
- [ ] Datasets
- [ ] Passwords, emails, phone numbers
- [ ] People search
- [ ] Sock Puppets
- [ ] NOOSINT tools
- [ ] Tools collections
- [ ] Files
- [ ] IMEI and serial numbers
- [ ] Keywords, trends, news analytics
- [ ] Apps and programs
- [ ] Brands, companies, items
- [ ] Movies
- [ ] TV/Radio
- [ ] VirtualMachines/Linux distributions
- [ ] My Projects

## RESOURCE
- CIPHER387/OSINT_STUFF_TOOL_COLLECTION
  (HTTPS://GITHUB.COM/CIPHER387/OSINT_STUFF_TOOL_COLLECTION)

## USAGE

### ⚠️ Sorry, this doesn't work if you do the following. Please wait until readme.md is rewritten.

### 1.REPO
```
$ git clone git@github.com:Coordinate-Cat/OSINT-TOOLS-CLI.git
```

### 2.INTERNALLY DEPENDENT PACKAGES
> Copyright (c) 2014 rcmdnk  
[SENTAKU](https://github.com/rcmdnk/sentaku)
```
$ brew tap rcmdnk/rcmdnkpac
$ brew install sentaku
$ brew file install
```

### 3.GLOBAL VARIABLE
WRITE TO `~/.ZSHRC` OR `~/.BASHZRC`
```
# OSINT(TOC)
export TOC="$DOT/.osint/OSINT-TOOLS-CLI/toc.sh" #TABLE OF CONTENTS
export MAPS_GEOLOCATION_AND_TRANSPORT="$DOT/.osint/OSINT-TOOLS-CLI/bin/maps-geolocation-and-transport.sh"
export SOCIAL_MEDIA="$DOT/.osint/OSINT-TOOLS-CLI/bin/social-media.sh"

# OSINT/MAPS_GEOLOCATION_AND_TRANSPORT
export SOCIAL_MEDIA_AND_PHOTOS_MAPS="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/social-media-and-photos-maps.sh"
export NATURE_AVIATION="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/nature-aviation.sh"
export MARITIME="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/maritime.sh"
export RAILWAY="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/railway.sh"
export ROUTES="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/routes.sh"
export POLITICS_CONFLICTS_AND_CRISIS="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/politics-conflicts-and-crisis.sh"
export URBAN_AND_INDUSTRIAL_INFRASTRUCTURE="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/urban-and-industrial-infrastructure.sh"
export TRANSPORT="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/transport.sh"
export COMMUNICATIONS_INTERNET_TECHNOLOGIES="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/communications-Internet-technologies.sh"
export TOOLS="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/tools.sh"
export STREET_VIEW="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/street-view.sh"
export OTHER="$DOT/.osint/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/other.sh"

# OSINT/SOCIAL_MEDIA
export TWITTER="$DOT/.osint/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/twitter.sh"
export YOUTUBE="$DOT/.osint/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/youtube.sh"
```
```
$ source ~/.zshrc
or
$ source ~/.bashrc
```

### 4.ALIAS
PASS THE PATH TO WHERE YOU DOWNLOADED IT.  
`osint.sh` WILL LAUNCH THE CLI.
```
alias osint='zsh $HOME/OSINT-TOOLS-CLI/osint.sh'
```

### 5.DISPLAY THE ICON
HACK NERD FONT  
- [SITE URL](https://www.nerdfonts.com/font-downloads)  
- [DIRECT DOWNLOAD](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip)

