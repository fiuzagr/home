export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-"$HOME/.cache"}
export XDG_DATA_HOME=${XDG_DATA_HOME:-"$HOME/.local/share"}
export XDG_CONFIG_DIRS=/usr/share/xdg:/etc/xdg

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

source "$ZDOTDIR/zshenv"
