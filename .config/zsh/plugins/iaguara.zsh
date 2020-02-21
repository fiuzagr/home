export IA_HOME="$HOME/workspace/iaguara/iaguara"
export IA_DATA="$HOME/workspace"
[ -s "$IA_HOME/iaguara.sh" ] && \. $IA_HOME/iaguara.sh

export PINIMA_HOME="$HOME/workspace/iaguara/pinima"
[ -s "$PINIMA_HOME/pinima.sh" ] && \. $PINIMA_HOME/pinima.sh

# Add iaguara bin on path
export PATH="${PATH}:${IA_HOME}/bin:${PINIMA_HOME}/bin"
typeset -U path
