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
   Grep.app — regExp search in Github repositories
   Searchcode.com — Search engine for @github, @gitlab, @bitbucket, @GoogleCode and other source code storages
   Code Repository Google CSE — Google CSE for search 15 code repository services
   Libraries.io — search by 4 690 628 packages across 32 different package managers
   The Scraper — Simple tool for scrapping emails and social media accounts from the website's source code.
   CloudScraper — Scrape URL's of the target website and find links to cloud resources: Amazonaws, Digitaloceanspaces, Azure (windows net), Storage.googleapis, Aliyuncs
   Complete Email Scraper — Paste the link to the site and the bot finds the sitemap. The bot then goes through all the links on the site looking for email addresses (strings contains @).
   Python Code Checker — quick find errors in code
   Github Search — collection of Github investigation command line tools. Explore users, employes, endpoints,surveys and grab the repos
   Sploitus — exploit and hacker's tools search engine
   Leakcop — service that monitors in real-time the illegal use of source code from certain repositories on Github
   Github Artifact Exporter — provides a set of packages to make exporting Issues easier useful for those migrating information out of Github
   PublicWWW — webpages source code search engine
   SourceGraph — universal code search engine
   NerdyData — html/css/code search engine
   De4js — HTML/JS deobfuscator
   TIO RUN — Run and test code written in one of 680 programming languages (260 practical and 420 recreational) directly in your browser
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  { open "https://grep.app/" }
_sf_1 ()  { open "https://searchcode.com/" }
_sf_2 ()  { open "https://cipher387.github.io/code_repository_google_custom_search_engines/" }
_sf_3 ()  { open "https://libraries.io" }
_sf_4 ()  { open "https://github.com/champmq/TheScrapper" }
_sf_5 ()  { open "https://github.com/jordanpotti/CloudScraper" }
_sf_6 ()  { open "https://freemailscraper.herokuapp.com/complete-website-email-scraper" }
_sf_7 ()  { open "https://extendsclass.com/python-tester.html" }
_sf_8 ()  { open "https://github.com/gwen001/github-search" }
_sf_9 ()  { open "https://sploitus.com/" }
_sf_10 () { open "https://leakcop.info/" }
_sf_11 () { open "https://github.com/github/github-artifact-exporter" }
_sf_12 () { open "https://publicwww.com/" }
_sf_13 () { open "https://about.sourcegraph.com/" }
_sf_14 () { open "https://www.nerdydata.com/" }
_sf_14 () { open "https://lelinhtinh.github.io/de4js/" }
_sf_14 () { open "https://tio.run" }
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
