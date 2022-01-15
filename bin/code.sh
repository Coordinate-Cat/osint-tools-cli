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
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()   {  }
_sf_1 ()   {  }
_sf_2 ()   {  }
_sf_3 ()   {  }
_sf_4 ()   {  }
_sf_5 ()   {  }
_sf_6 ()   {  }
_sf_7 ()   {  }
_sf_8 ()   {  }
_sf_9 ()   {  }
_sf_10 ()  {  }
_sf_11 ()  {  }
_sf_12 ()  {  }
_sf_13 ()  {  }
_sf_14 ()  {  }
_sf_15 ()  { TOC_CMD }

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
