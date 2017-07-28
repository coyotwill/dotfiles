if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
    alias aliases='${EDITOR:-"command vi"} ~/.aliases && source ~/.aliases'
fi

if [ -f $HOME/.functions ]; then
    source $HOME/.functions
    alias functions='${EDITOR:-"command vi"} ~/.functions && source ~/.functions'
fi

if [ -f $HOME/.devenv ]; then
    source $HOME/.devenv
    alias devenv='${EDITOR:-"command vi"} ~/.devenv && source ~/.devenv'
fi


export CLICOLOR=1
export GREP_OPTIONS="--color"
export EDITOR="subl -w"

export PS1="\[\e[0m\]\A \[\e[93m\]\u\[\e[0m\]@\h:\[\e[36m\]\w\[\e[0m\]/> "
