# .profile

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.functions ]; then
    source ~/.functions
fi

