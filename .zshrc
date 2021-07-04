# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# COMMNET p10k IF NOT INSTALLED
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# user aliases
alias update='sudo pacman -Syyu'
alias ll='ls -lFh'
alias la='ls -aF'
alias ld='ls -ld */'
alias lss='ls -lcFSh'
alias lst='ls -lctFh'
alias dirsize='du -sch ./*'
alias getpath="find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c"

# Clipboard
alias cin="xclip -selection c"
alias cout="xclip -selection Clipboard -o"

# Git Aliases
alias glog='git log --pretty=oneline --graph --decorate --all'

# extraAliases
fcd(){
  cd "$(find -type d | fzf)"
}

open(){
  xdg-open "$(find -type f | fzf)"
}

psInfo() {ps -p "$1" -o pid,cmd,etime,etimes,uid,gid}
source ~/explorer.zsh
source ~/extraAliases.zsh
