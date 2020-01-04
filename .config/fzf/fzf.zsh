# Setup fzf
# ---------
if [[ ! "$PATH" == *$XDG_CACHE_PATH/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$XDG_CACHE_PATH/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$XDG_CACHE_PATH/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$XDG_CACHE_PATH/fzf/shell/key-bindings.zsh"
