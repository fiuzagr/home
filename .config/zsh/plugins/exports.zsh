# XDG
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}

# VIM
# Set vimrc's location and source it on vim startup
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export EDITOR='vim'

# Browser
export BROWSER='brave-browser'

# PATH
export PATH="${PATH}:/usr/local/tinygo/bin:${HOME}/.local/bin"
typeset -U path
