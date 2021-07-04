fcd(){
  cd "$(find -type d | fzf)"
}

open(){
  xdg-open "$(find -type f | fzf)"
}

alias getpath="find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c"

#Clipboard
alias cin="xclip -selection c"
alias cout="xclip -selection Clipboard -o"
