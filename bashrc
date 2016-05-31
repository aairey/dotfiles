if [ -f /etc/debian_version ]; then
    $OS=${lsb-release -d}
    if [ -f ~/.bashrc_debian ]; then
        source ~/.bashrc_debian
    fi
fi

if [ -f /etc/redhat-release ]; then
    $OS=${cat /etc/redhat-release}
    # no special bashrc needs to be run
fi
