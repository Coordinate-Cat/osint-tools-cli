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
   Google Search Scraper — Crawls Google Search result pages (SERPs) and extracts a list of organic results, ads, related queries and more. It supports selection of custom country, language and location
   Googler — command line google search tool
   goosh.org — online google search command line tool
   Web Search Navigator — extension that adds keyboard shortcuts to Google, YouTube, Github, Amazon, and others
   Overload Search — Advanced query builder in #Google with the possibilities: change the language and country of your search, disable safe search,disable personalization of search results ('filter bubble')
   Google Autocomplete Scraper — One of the best ways to learn more about a person, company, or subject is to see what people are more likely to type in a search engine along with it.
   SDorker — Type the Google Dork and get the list of the pages, that came up with this query.
   XGS — allows you to search for links to onion sites using Google Dorks (site:http://onion.cab, site:http://onion.city etc)
   Google Email Extractor — Extract emails from Google Search Results
   SEQE.me — online #tool for constructing search queries using advanced search operators simultaneously for five search engines
   Bright Local Search Result Checker — shows what #Google search results look like for a particular query around the world (by exact address)
   Auto Searcher — One by one types words from a given list into the search bar of #Google, #Bing, or another search engine
   2lingual.com — google search in two languages simultaneously in one window
   I search from — allows you to customize the country, language, device, city when searching on Google
   Anon Scraper — Search uploaded files to AnonFile using Google
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://apify.com/apify/google-search-scraper" }
_sf_1 ()  { open "https://github.com/jarun/googler" }
_sf_2 ()  { open "https://goosh.org/" }
_sf_3 ()  { open "https://github.com/infokiller/web-search-navigator" }
_sf_4 ()  { open "https://chrome.google.com/webstore/detail/overload-search-advanced/knihkdaajdhpjgeiadaefmjmpbnlojbg/related" }
_sf_5 ()  { open "https://tools.digitalmethods.net/beta/scrapeGoogle/autocomplete.php" }
_sf_6 ()  { open "https://github.com/TheSpeedX/SDorker" }
_sf_7 ()  { open "https://github.com/XAMFRA/XGS" }
_sf_8 ()  { open "https://chrome.google.com/webstore/detail/google-email-extractor/aabpdmlmkpedpigeignclfmodjhplllj/related" }
_sf_9 ()  { open "https://seqe.me/" }
_sf_10 () { open "https://www.brightlocal.com/local-search-results-checker/" }
_sf_11 () { open "https://chrome.google.com/webstore/detail/auto-searcher/hhggekcjcdgenbgejmkhineppclnkbkn/related" }
_sf_12 () { open "https://2lingual.com/" }
_sf_13 () { open "http://isearchfrom.com/" }
_sf_14 () { open "https://github.com/370rokas/anonscraper" }
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
