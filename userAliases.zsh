#User Alias
alias ls='ls -G'
alias ll='ls -lFh'
alias la='ls -aF'
alias ld='ls -ld */'
alias lss='ls -lcFSh'
alias lst='ls -lctFh'
alias dirsize='du -sch ./*'
alias rr="rm -rf"
alias hosts="cat /etc/hosts"
alias ehosts="sudo $EDITOR /etc/hosts"
alias at='alacritty-themes'
alias bye='shutdown -P now'
alias c='clear'
alias azsh='atom ~/.zshrc'
alias gzsh='gedit ~/.zshrc'

# alias getpath="find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c"

alias wttr='curl wttr.in/bengaluru'

set -o noclobber
alias cp='cp -i'
alias mv='mv -i'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
# Recursively remove .DS_Store files | Enable for MacOS
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
alias getpath="find . -type f | fzf | sed 's/^..//' | tr -d '\n' | pbcopy -selection c"

# Network
# alias ipp="curl -s ipinfo.io | jq -r '.ip'"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"

# Clipboard
alias cin="pbcopy -selection c"
alias cout="pbcopy -selection Clipboard -o"


# Clipboard
alias cin="xclip -selection c"
alias cout="xclip -selection Clipboard -o"

# Recursively remove .DS_Store files | Enable for MacOS
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# alias week="date +%V"


alias update='sudo pacman -Syyu && paru -Syyu'
alias getpath="find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c"
alias wttr='curl wttr.in/bengaluru'
alias um='sudo pacman-mirrors --fasttrack'
# Uncomment for Mac systems
# Update App Store apps
# alias sup='sudo softwareupdate -i -a'

# Update Homebrew (Cask) & packages
# alias update='brew update && brew upgrade && brew autoremove'

# Brew Doctor for troubleshooting
# alias fix='brew doctor'
