# Git Aliases
# alias glog='git log --pretty=oneline --graph --decorate --all'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gbc="git branch | grep '^\*' | cut -d' ' -f2 | xclip -selection c"
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
# alias gac='git add -A && git commit -m'
# alias ge='git-edit-new'
alias unstage="git restore --staged ."
alias stash="git stash -u"
