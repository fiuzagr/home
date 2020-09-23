alias ls='ls --color=always'
alias la='ls -la'
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'

clipboard() {
  cat ${@} | xsel -b
}

wttr() {
  # change Paris to your default location
  local request="wttr.in/${1:-'Itapeva-MG'}"
  [ "$(tput cols)" -lt 125 ] && request+='?n'
  curl -H "Accept-Language: ${LANG%_*}" --compressed "$request"
}
