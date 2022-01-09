# OSINT-TOOLS-CLI
## WHATS THIS
CIPHER387/OSINT_STUFF_TOOL_COLLECTION
(HTTPS://GITHUB.COM/CIPHER387/OSINT_STUFF_TOOL_COLLECTION)

THIS IS A CHEAT SHEET THAT CAN BE VIEWED IN THE CLI.

## INSTALL

### 1.REPO
```
$ git clone git@github.com:Coordinate-Cat/OSINT-TOOLS-CLI.git
```

### 2.INTERNALLY DEPENDENT PACKAGES
USING [SENTAKU](https://github.com/rcmdnk/sentaku)
```
$ brew tap rcmdnk/rcmdnkpac
$ brew install sentaku
$ brew file install
```

### 3.GLOBAL VARIABLE
WRITE TO `~/.ZSHRC` OR `~/.BASHZRC`
```
export RESOURCE="$HOME/.osint/OSINT-TOOLS-CLI/osint-resource.sh"
```
```
$ source ~/.zshrc
or
$ source ~/.bashrc
```

### 4.ALIAS
```
alias osint='zsh $HOME/.osint/OSINT-TOOLS-CLI/osint.sh'
```

### 5.DISPLAY THE ICON
HACK NERD FONT  
- [SITE URL](https://www.nerdfonts.com/font-downloads)  
- [DIRECT DOWNLOAD](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip)

