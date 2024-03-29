export ZPLUG_HOME="$XDG_CACHE_HOME/zplug"
if [[ ! -d $ZPLUG_HOME ]]; then
  echo 'Auto installing ZPLUG...'
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Initialize zplug
source $ZPLUG_HOME/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# List plugins below

zplug "romkatv/powerlevel10k", as:theme, depth:1
# zplug "dracula/zsh", as:theme, depth:1
# zplug "chrissicool/zsh-256color", as:theme, depth:1
#zplug "agkozak/agkozak-zsh-prompt"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

# local plugins
zplug "$XDG_CONFIG_HOME/zsh/plugins", from:local, use:"*.zsh"

# end of plugins
zplug load # --verbose

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
if zmodload zsh/terminfo && (( terminfo[colors] >= 256 ))
then
  [[ ! -f "$XDG_CONFIG_HOME/zsh/.p10k.zsh" ]] || {
    source "$XDG_CONFIG_HOME/zsh/.p10k.zsh"
  }
else
  [[ ! -f "$XDG_CONFIG_HOME/zsh/.p10k-portable.zsh" ]] || {
    source "$XDG_CONFIG_HOME/zsh/.p10k-portable.zsh"
  }
fi

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
