<!-- ###[ OSINT-TOOLS-CLI ]################################################# -->
# OSINT-TOOLS-CLI

![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Coordinate-Cat/osint-tools-cli?style=flat-square)
![GitHub commit activity](https://img.shields.io/github/commit-activity/w/Coordinate-Cat/osint-tools-cli?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/Coordinate-Cat/osint-tools-cli?style=flat-square)

![top](./assets/top.png)
![list](./assets/list.png)
<!-- ###[ WHATS THIS ]###################################################### -->
## WHATS THIS
THIS IS A CLI VERSION OF THE CHEAT SHEET FOR EASY ACCESS.
TABLE OF CONTENTS IS BASED ON [CIPHER387/OSINT_STUFF_TOOL_COLLECTION](HTTPS://GITHUB.COM/CIPHER387/OSINT_STUFF_TOOL_COLLECTION).  
IT CAN BE NAVIGATED WITHOUT USING COMMANDS OR THE CURSOR.

<!-- ###[ TREE ]############################################################ -->
## TREE
  ```
  toc
  ├ MAPS_GEOLOCATION_AND_TRANSPORT
  │ ├ Social media and photos maps
  │ ├ Nature Aviation
  │ ├ Maritime
  │ ├ Railway
  │ ├ Routes
  │ ├ Politics, conflicts and crisis
  │ ├ Urban and industrial infrastructure
  │ ├ Transport
  │ ├ Communications, Internet, Technologies Tools
  │ ├ Street View
  │ └ Other
  ├ SOCIAL_MEDIA
  │ ├ Twitter
  │ ├ YouTube
  │ ├ TikTok
  │ ├ Facebook
  │ ├ Clubhouse
  │ ├ Linkedin
  │ ├ Xing
  │ ├ Reddit
  │ ├ Onlyfans
  │ ├ Twitch
  │ ├ Fidonet
  │ ├ Usenet
  │ ├ Tumblr
  │ ├ Flickr
  │ ├ Spotify
  │ ├ Discord
  │ ├ Yandex
  │ ├ Instagram
  │ ├ Google
  │ ├ Patreon
  │ ├ Github
  │ ├ Parler
  │ ├ Pornhub
  │ ├ Steam
  │ ├ Xbox
  │ ├ VK
  │ ├ Office365
  │ ├ OneDrive
  │ └ Universal
  ├ DOWNLOADERS
  ├ DOMAIN_IP_LINKS
  │ ├ Dorks/Pentest/Vulnerabilities
  │ ├ Searchers, scrapers, extractors, parsers
  │ ├ Backlinks analyze
  │ ├ Redirect lookup
  │ ├ Cookies analyze
  │ ├ Website's files metadata analyze and files downloads
  │ ├ Website analyze
  │ ├ Domain/IP investigation
  │ ├ Subdomains scan/brute
  │ ├ Cloudfare
  │ ├ Databases of domains
  │ ├ Website traffic look up
  │ ├ Website technology look up
  │ ├ Source Code Analyzes
  │ └ URL unshorteners
  ├ IMAGE_SEARCH_AND_IDENTIFICATION
  │ ├ Reverse Image Search Engines
  │ ├ Other Image Search Engines
  │ ├ Image Analyze
  │ ├ Exif Analyze and Editing
  │ ├ Face recognition and search
  │ └ Font Indenfication
  ├ CRYPTOCURRENCIES
  ├ MESSENGERS
  │ ├ Telegram
  │ ├ WhatsApp
  │ ├ Kik
  │ ├ Skype
  │ └ Others
  ├ CODE
  ├ SEARCH_ENGINES
  ├ TOOLS_FOR_DUCKDUCKGO
  ├ TOOLS_FOR_GOOGLE
  ├ IOT
  ├ ARCHIVES
  ├ ARCHIVES_OF_DOCUMENTS
  ├ DATASETS
  ├ PASSWORDS_EMAILS_PHONE_NUMBERS
  ├ PEOPLE_SEARCH
  ├ SOCK_PUPPETS
  ├ NOOSINT_TOOLS
  ├ TOOLS_COLLECTIONS
  ├ FILES
  ├ NFT
  ├ IMEI_AND_SERIAL_NUMBERS
  ├ KEYWORDS_TRENDS_NEWS_ANALYTICS
  ├ APPS_AND_PROGRAMS
  ├ BRANDS_COMPANIES_ITEMS
  │ └ Amazon
  ├ MOVIES
  ├ TV_RADIO
  ├ VIRTUALMACHINES_LINUX_DISTRIBUTIONS
  └ MY_PROJECTS
  ```

<!-- ###[ USAGE ]########################################################### -->
## USAGE
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
<!-- WRITE TO `~/.ZSHRC` OR `~/.BASHZRC` -->

`~/env.zsh` needs to be loaded in `.zshrc` or `.bashrc`  
<details>
  <summary>env.zsh</summary>

  <pre>
  # OSINT(TOC)
  # export OSINT="$HOME/OSINT-TOOLS-CLI/osint.sh"

  ## TABLE OF CONTENTS
  ## Files without TITLE_ASCII. e.g.(osint.sh -> BIN[EXIT] -> toc.sh)
  export TOC="$HOME/OSINT-TOOLS-CLI/bin/toc.sh"

  ### BIN
  export MAPS_GEOLOCATION_AND_TRANSPORT="$HOME/OSINT-TOOLS-CLI/bin/maps-geolocation-and-transport.sh"
  export SOCIAL_MEDIA="$HOME/OSINT-TOOLS-CLI/bin/social-media.sh"
  export DOWNLOADERS="$HOME/OSINT-TOOLS-CLI/bin/downloaders.sh"
  export DOMAIN_IP_LINKS="$HOME/OSINT-TOOLS-CLI/bin/domain-ip-links.sh"
  export IMAGE_SEARCH_AND_IDENTIFICATION="$HOME/OSINT-TOOLS-CLI/bin/image-search-and-identification.sh"
  export CRYPTOCURRENCIES="$HOME/OSINT-TOOLS-CLI/bin/cryptocurrencies.sh"
  export MESSENGERS="$HOME/OSINT-TOOLS-CLI/bin/messengers.sh"
  export CODE="$HOME/OSINT-TOOLS-CLI/bin/code.sh"
  export SEARCH_ENGINES="$HOME/OSINT-TOOLS-CLI/bin/search-engines.sh"
  export TOOLS_FOR_DUCKDUCKGO="$HOME/OSINT-TOOLS-CLI/bin/tools-for-duckduckgo.sh"
  export TOOLS_FOR_GOOGLE="$HOME/OSINT-TOOLS-CLI/bin/tools-for-google.sh"
  export IOT="$HOME/OSINT-TOOLS-CLI/bin/iot.sh"
  export ARCHIVES="$HOME/OSINT-TOOLS-CLI/bin/archives.sh"
  export ARCHIVES_OF_DOCUMENTS="$HOME/OSINT-TOOLS-CLI/bin/archives-of-documents.sh"
  export DATASETS="$HOME/OSINT-TOOLS-CLI/bin/datasets.sh"
  export PASSWORDS_EMAILS_PHONE_NUMBERS="$HOME/OSINT-TOOLS-CLI/bin/passwords-emails-phone-numbers.sh"
  export PEOPLE_SEARCH="$HOME/OSINT-TOOLS-CLI/bin/people-search.sh"
  export SOCK_PUPPETS="$HOME/OSINT-TOOLS-CLI/bin/sock-puppets.sh"
  export NOOSINT_TOOLS="$HOME/OSINT-TOOLS-CLI/bin/noosint-tools.sh"
  export TOOLS_COLLECTIONS="$HOME/OSINT-TOOLS-CLI/bin/tools-collections.sh"
  export FILES="$HOME/OSINT-TOOLS-CLI/bin/files.sh"
  export NFT="$HOME/OSINT-TOOLS-CLI/bin/nft.sh"
  export IMEI_AND_SERIAL_NUMBERS="$HOME/OSINT-TOOLS-CLI/bin/imei-and-serial-numbers.sh"
  export KEYWORDS_TRENDS_NEWS_ANALYTICS="$HOME/OSINT-TOOLS-CLI/bin/keywords-trends-news-analytics.sh"
  export APPS_AND_PROGRAMS="$HOME/OSINT-TOOLS-CLI/bin/apps-and-programs.sh"
  export BRANDS_COMPANIES_ITEMS="$HOME/OSINT-TOOLS-CLI/bin/brands-companies-items.sh"
  export MOVIES="$HOME/OSINT-TOOLS-CLI/bin/movies.sh"
  export TV_RADIO="$HOME/OSINT-TOOLS-CLI/bin/tv-radio.sh"
  export VIRTUALMACHINES_LINUX_DISTRIBUTIONS="$HOME/OSINT-TOOLS-CLI/bin/virtualmachines-linux-distributions.sh"
  export MY_PROJECTS="$HOME/OSINT-TOOLS-CLI/bin/my-projects.sh"

  #### BIN/MAPS_GEOLOCATION_AND_TRANSPORT
  export SOCIAL_MEDIA_AND_PHOTOS_MAPS="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/social-media-and-photos-maps.sh"
  export NATURE_AVIATION="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/nature-aviation.sh"
  export MARITIME="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/maritime.sh"
  export RAILWAY="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/railway.sh"
  export ROUTES="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/routes.sh"
  export POLITICS_CONFLICTS_AND_CRISIS="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/politics-conflicts-and-crisis.sh"
  export URBAN_AND_INDUSTRIAL_INFRASTRUCTURE="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/urban-and-industrial-infrastructure.sh"
  export TRANSPORT="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/transport.sh"
  export COMMUNICATIONS_INTERNET_TECHNOLOGIES="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/communications-Internet-technologies.sh"
  export TOOLS="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/tools.sh"
  export STREET_VIEW="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/street-view.sh"
  export OTHER="$HOME/OSINT-TOOLS-CLI/bin/MAPS_GEOLOCATION_AND_TRANSPORT/other.sh"

  #### BIN/SOCIAL_MEDIA
  export TWITTER="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/twitter.sh"
  export YOUTUBE="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/youtube.sh"
  export TIKTOK="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/tiktok.sh"
  export FACEBOOK="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/facebook.sh"
  export CLUBHOUSE="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/clubhouse.sh"
  export LINKEDIN="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/linkedin.sh"
  export XING="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/xing.sh"
  export REDDIT="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/reddit.sh"
  export ONLYFANS="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/onlyfans.sh"
  export TWITCH="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/twitch.sh"
  export FIDONET="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/fidonet.sh"
  export USENET="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/usenet.sh"
  export TUMBLR="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/tumblr.sh"
  export FLICKR="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/flickr.sh"
  export SPOTIFY="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/spotify.sh"
  export DISCORD="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/discord.sh"
  export YANDEX="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/yandex.sh"
  export INSTAGRAM="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/instagram.sh"
  export GOOGLE="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/google.sh"
  export PATREON="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/patreon.sh"
  export GITHUB="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/github.sh"
  export PARLER="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/parler.sh"
  export PORNHUB="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/pornhub.sh"
  export STEAM="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/steam.sh"
  export XBOX="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/xbox.sh"
  export VK="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/vk.sh"
  export OFFICE365="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/office365.sh"
  export ONEDRIVE="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/onedrive.sh"
  export UNIVERSAL="$HOME/OSINT-TOOLS-CLI/bin/SOCIAL_MEDIA/universal.sh"

  # BIN/DOMAIN_IP_LINKS
  export DORKS_PENTEST_VULNERABILITIES="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/dorks-pentest-vulnerabilities.sh"
  export SEARCHERS_SCRAPERS_EXTRACTORS_PARSERS="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/searchers-scrapers-extractors-parsers.sh"
  export BACKLINKS_ANALYZE="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/backlinks-analyze.sh"
  export REDIRECT_LOOKUP="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/redirect-lookup.sh"
  export COOKIES_ANALYZE="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/cookies-analyze.sh"
  export WEBSITES_FILES_METADATA_ANALYZE_AND_FILES_DOWNLOADS="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/websites-files-metadata-analyze-and-files-downloads.sh"
  export WEBSITE_ANALYZE="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/website-analyze.sh"
  export DOMAIN_IP_INVESTIGATION="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/domain-ip-investigation.sh"
  export SUBDOMAINS_SCAN_BRUTE="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/subdomains-scan-brute.sh"
  export CLOUDFARE="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/cloudfare.sh"
  export DATABASES_OF_DOMAINS="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/databases-of-domains.sh"
  export WEBSITE_TRAFFIC_LOOK_UP="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/website-traffic-look-up.sh"
  export WEBSITE_TECHNOLOGY_LOOK_UP="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/website-technology-look-up.sh"
  export SOURCE_CODE_ANALYZES="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/source-code-analyzes.sh"
  export URL_UNSHORTENERS="$HOME/OSINT-TOOLS-CLI/bin/DOMAIN_IP_LINKS/url-unshorteners.sh"

  # BIN/IMAGE_SEARCH_AND_IDENTIFICATION
  export REVERSE_IMAGE_SEARCH_ENGINES="$HOME/OSINT-TOOLS-CLI/bin/IMAGE_SEARCH_AND_IDENTIFICATION/reverse-image-search-engines.sh"
  export OTHER_IMAGE_SEARCH_ENGINES="$HOME/OSINT-TOOLS-CLI/bin/IMAGE_SEARCH_AND_IDENTIFICATION/other-image-search-engines.sh"
  export IMAGE_ANALYZE="$HOME/OSINT-TOOLS-CLI/bin/IMAGE_SEARCH_AND_IDENTIFICATION/image-analyze.sh"
  export EXIF_ANALYZE_AND_EDITING="$HOME/OSINT-TOOLS-CLI/bin/IMAGE_SEARCH_AND_IDENTIFICATION/exif-analyze-and-editing.sh"
  export FACE_RECOGNITION_AND_SEARCH="$HOME/OSINT-TOOLS-CLI/bin/IMAGE_SEARCH_AND_IDENTIFICATION/face-recognition-and-search.sh"
  export FONT_INDENFICATION="$HOME/OSINT-TOOLS-CLI/bin/IMAGE_SEARCH_AND_IDENTIFICATION/font-indenfication.sh"

  # BIN/MESSENGERS
  export TELEGRAM="$HOME/OSINT-TOOLS-CLI/bin/MESSENGERS/telegram.sh"
  export WHATSAPP="$HOME/OSINT-TOOLS-CLI/bin/MESSENGERS/whatsapp.sh"
  export KIK="$HOME/OSINT-TOOLS-CLI/bin/MESSENGERS/kik.sh"
  export SLACK="$HOME/OSINT-TOOLS-CLI/bin/MESSENGERS/slack.sh"
  export SKYPE="$HOME/OSINT-TOOLS-CLI/bin/MESSENGERS/skype.sh"

  # BIN/AMAZON
  export AMAZON="$HOME/OSINT-TOOLS-CLI/bin/AMAZON/amazon.sh"
  </pre>
</details>

#### 3-1.EXPORT & SOURCE
DESCRIBE IT ON `.zshrc` OR `.bashrc`
```
export OSINTDIR="$HOME/OSINT-TOOLS-CLI"
source $OSINTDIR/env.zsh
```

#### 3-2.LOAD
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

<!-- ###[ DEV INFO ]######################################################## -->
## DEV INFO
- MACOS (CATALINA OR BIGSUR)
- ITERM2
- [VERSION MANAGEMENT](https://qiita.com/tommy_aka_jps/items/5b39e4b27364c759aa53)

<!-- ###[ REFERNCE ]######################################################## -->
## REFERNCE
- https://github.com/cipher387/osint_stuff_tool_collection
- https://qiita.com/tommy_aka_jps/items/5b39e4b27364c759aa53

<!-- ###[ CONTRIBUTORS ]#################################################### -->
## CONTRIBUTORS
<a href="https://github.com/Coordinate-Cat/OSINT-TOOLS-CLI/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Coordinate-Cat/OSINT-TOOLS-CLI" />
</a>

Made with [contrib.rocks](https://contrib.rocks).