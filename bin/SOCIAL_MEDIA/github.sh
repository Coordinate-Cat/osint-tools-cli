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
alias SOCIAL_MEDIA_CMD='zsh $SOCIAL_MEDIA && bash $SOCIAL_MEDIA'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   Star History — simple tool that shows how the number of stars a repository on #Github has changed over the past three months.
   Commits.top — Current list of the most active @Github users by country
   Gitstar Ranking — Unofficial GitHub star ranking for users, organizations and repositories
   Github Rater — rates GitHub profile upon data received from GitHub API
   Github Trending Archives — Github trending archive for a specific date.
   GitHub Repository Size — simple google chrome extension to view Github repo size
   Gitcolombo — simple and fast tool that collects information (edit statistics and contacts) about repository contributors on Github
   Coderstats — enter Github username and get detailed statistics of profile: languages, issues, forks, stars and much more
   GitHub-Chart — it shows a visual representation of the temporal distribution of user changes in the repositories. You can visually see "productivity peaks" and see which days of the week a person is most active
   Zen — Tool for gathering emails of #Github users
   GithubCompare — When searching for OSINT tools on #Github, you will often come across several repositories with the same name. This service will help to visually compare them, determine which one was created earlier, which one has more forks and stars.
   DownGit — Create GitHub Resource Download Link
  ← [ BACK TO SOCIAL MEDIA ]
"

# SNS URL PUSH
_sf_0 ()  { open "https://star-history.com" }
_sf_1 ()  { open "https://commits.top/" }
_sf_2 ()  { open "https://gitstar-ranking.com/" }
_sf_3 ()  { open "https://aykutsarac.github.io/github-rater/" }
_sf_4 ()  { open "https://github.com/willin/github-trending" }
_sf_5 ()  { open "https://chrome.google.com/webstore/detail/github-repository-size/apnjnioapinblneaedefcnopcjepgkci" }
_sf_6 ()  { open "https://github.com/soxoj/gitcolombo" }
_sf_7 ()  { open "https://coderstats.net" }
_sf_8 ()  { open "https://chrome.google.com/webstore/detail/github-chart/apaldppjjcjgjddfobajdclccgkbkkje/related" }
_sf_9 ()  { open "https://github.com/s0md3v/Zen" }
_sf_10 () { open "https://www.githubcompare.com" }
_sf_11 () { open "https://minhaskamal.github.io/DownGit/#/home" }
_sf_12 () { SOCIAL_MEDIA_CMD }

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
