[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bashrc_priv ]] && . ~/.bashrc_priv

EDITOR="/usr/bin/vim"
GEM_PATH="${HOME}/local/stow/rubygems"
LESSOPEN=""
PATH="${PATH}:${HOME}/local/bin"

export EDITOR GEM_PATH LESSOPEN PATH
