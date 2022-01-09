# extraAliases
fcd(){
  cd "$(find -type d | fzf)"
}

open(){
  xdg-open "$(find -type f | fzf)"
}

psInfo() {ps -p "$1" -o pid,cmd,etime,etimes,uid,gid}
ptemp() {curl wttr.in/"$1"}

open(){
  xdg-open "$(find -type f | fzf)"
}

# Create a new directory and enter it
function mk() {
  mkdir -p "$@" && cd "$@"
}
