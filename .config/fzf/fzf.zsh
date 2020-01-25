# Setup fzf
# ---------
if [[ ! "$PATH" == */home/fiuzagr/.cache/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/fiuzagr/.cache/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/fiuzagr/.cache/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/fiuzagr/.cache/fzf/shell/key-bindings.zsh"
