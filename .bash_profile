export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f $HOME/.devenv ]; then
    source $HOME/.devenv
    alias devenv='${EDITOR:-"command vi"} ~/.devenv && source ~/.devenv'
fi

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
    alias aliases='${EDITOR:-"command vi"} ~/.aliases && source ~/.aliases'
fi

if [ -f $HOME/.functions ]; then
    source $HOME/.functions
    alias functions='${EDITOR:-"command vi"} ~/.functions && source ~/.functions'
fi

if [ -f /usr/local/etc/bash_completion ]; then
    source /usr/local/etc/bash_completion
fi

if [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi


export CLICOLOR=1
export GREP_OPTIONS="--color"
export EDITOR="subl -w"
export PIP_REQUIRE_VIRTUALENV=true

function __k8_ps1 {
    [ -f ~/.kube/config ] || return
    local K8CTX=$(cat ~/.kube/config | grep current-context | cut -d ' ' -f '2-' | tr -d '"')
    [ -n "$K8CTX" ] || return
    local ICOLR=blue CCOLR=blue
    [ "$K8CTX" = "prod" ] && ICOLR=warn && CCOLR=red
    echo "[$(clr $ICOLR '\xE2\x8e\x88\x20')$(clr $CCOLR "$K8CTX")]" 
}

export PS1="\[\e[0m\]\t \[\e[33m\]\u\[\e[0m\]@\h\$(__k8_ps1):\[\e[36m\]\w\[\e[0m\]/> "
