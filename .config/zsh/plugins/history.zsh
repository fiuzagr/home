#
# History

export HISTFILE="$XDG_CACHE_HOME/zsh-history"
export SAVEHIST=10000
export HISTSIZE=10000
export HIST_STAMPS="yyyy-mm-dd"
export HISTCONTROL=ignorespace

# more data
setopt EXTENDED_HISTORY
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# do not store duplications
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
# ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# ignore command that starts with space
setopt HIST_IGNORE_SPACE

# history remove
hrm () {
  LC_ALL=C sed -i "/$1/d" $HISTFILE
}
