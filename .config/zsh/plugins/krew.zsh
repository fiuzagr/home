# KUBECTL KREW
export KREW_ROOT="$XDG_CACHE_HOME/krew"
[ -f "$KREW_ROOT/bin/kubectl-krew" ] && export PATH="$KREW_ROOT/bin:$PATH"