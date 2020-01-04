# autocomplete path
fpath+="${0:h:h}/autocomplete"

# complete like bash
zstyle ':completion:::*:default' menu no select

# LS colors
eval $(dircolors -b $XDG_CONFIG_HOME/dircolors)
