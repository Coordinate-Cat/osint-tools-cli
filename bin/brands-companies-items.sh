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
   Amazon Scraper — scraped detail information about list of items
   iPhone IMEI Checker — Get information about #iPhone by International Mobile Equipment Identity
   LEI search — can help find 'who owned by' or 'who owns'
   Amazon ASIN Finder
   Sellerapp.com. Amazon Reverse ASIN search
   Barcode lookup
   Panjiva.com — search data on millions of shipments worldwide
   en.52wmb.com — Search information about worldwide buyers and suppliers by product name, company name or HS code.
   Lei.bloomberg.com — search information about company by Legal Identify Number
   FDIC search — Search banks by FDIC (Federal Deposit Insurance Corporation) certificate number and get detailed information about it
   990 finder — Enter the company name and select the state to get a link to download its 900 form.
   Iban.com — Check the validity of the IBAN (International Bank Account Number) of the company and see the information about the bank where it is serviced
   Related List — find company-related contacts and confidential documents leaked online
   Open Corporates Command Line Client (Occli) — Gathering detailed information about company through cli.
   NewsBrief — Looking for recent mentions of the company in online media around the world
   Investing.com — View a detailed investment profile of the company
   FCCID.IO — seacrh by FCC ID, Country, Date, Company name or Frequency ( in Mhz)
   Freebin Checker — easy-to-use API for getting bank details by BIN. 850,000+ BIN records in FreeBinChecker's database
   Tradeint — Quick access for more than 85 tools for gathering information about company and company website, location and sector
   Corporative Registry Catalog — worldwide catalog of business registries (63 countries)
   WIPO.int — Global Brands Database (46,020,000 records)
   TMDN Design View — Search 17 684 046 products designs across the European Union and beyond
   TESS — Search engine for #USA trademarks
   TendersInfo — Search tenders around the world by keywords.
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  {  }
_sf_1 ()  {  }
_sf_2 ()  {  }
_sf_3 ()  {  }
_sf_4 ()  {  }
_sf_5 ()  {  }
_sf_6 ()  {  }
_sf_7 ()  {  }
_sf_8 ()  {  }
_sf_9 ()  {  }
_sf_10 () {  }
_sf_11 () {  }
_sf_12 () {  }
_sf_13 () {  }
_sf_14 () {  }
_sf_15 () {  }
_sf_16 () {  }
_sf_17 () {  }
_sf_18 () {  }
_sf_19 () {  }
_sf_20 () {  }
_sf_21 () {  }
_sf_22 () {  }
_sf_23 () {  }
_sf_24 () { TOC_CMD }

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
