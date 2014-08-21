[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bashrc_priv ]] && . ~/.bashrc_priv

EDITOR="/usr/bin/vim"
LESSOPEN=""
PATH="${PATH}:${HOME}/local/bin"

export EDITOR LESSOPEN PATH
