#
# ~/.bashrc
#
# If not running interactively, don't do anything

umask 002

[[ $- != *i* ]] && return

if [ -n "$BASH_VERSION" ]; then
    export PS1='\u@\h:\w\$ '
else
    if [ "$UID" -eq 0 ]; then
        export PROMPT='[%f%n@%m]:%~%# '
    else
        export PROMPT='[%f%n@%m]:%~\$ '
    fi
fi


#  bwarp
sh $HOME/.bwrap/neovim.sh

# edit this folder
alias dot="cd ~/.dstop"

# directory navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# reload
alias ls='ls -a'
alias la='exa --icons --color=always'
alias ll='exa -alh --group-directories-first --color=always'
alias tree='exa --tree'

alias today='date -u +%Y-%m-%d'

alias ff="sh '$HOME/.qStart/bwrap/firefoxWL'"
alias ffdev="sh '$HOME/.qStart/bwrap/devfirefox'"
alias v1="sh '$HOME/.qStart/bwrap/v1'"
alias v2="sh '$HOME/.qStart/bwrap/v2'"

alias rl="source ~/.bashrc; echo '~/.bashrc reloaded.'"

if test -d "/usr/local/bin"; then
	PATH="/usr/local/bin:$PATH"
fi

if test -d "$HOME/.local/bin"; then
	PATH="$HOME/.local/bin:$PATH"
fi

if test -d "$HOME/bin"; then
	PATH="$HOME/bin:$PATH"
fi

