if [ -f /etc/debian_version ]; then
    $OS=$(lsb-release -d)
    if [ -f ~/.bashrc_debian ]; then
        source ~/.bashrc_debian
    fi
fi

if [ -f /etc/redhat-release ]; then
    $OS=$(cat /etc/redhat-release)
    # no special bashrc needs to be run
fi

# add go-jira completion
eval "$(jira --completion-script-bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
