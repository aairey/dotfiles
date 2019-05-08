# ~/.zshrc
#zmodload zsh/zprof # initialise profiler
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

# compatibility with some oh-my-zsh plugins (kubectl)
export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

# load shell-agnostic stuff first
if [ -f ~/.profile ]; then
    source ~/.profile
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.functions ]; then
    source ~/.functions
fi

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history

# Load Antibody and plugins
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

# load go-jira completions
eval "$(jira --completion-script-zsh)"

# speed improvement: only load zcompdump once a day
autoload -Uz compinit
if [ $(date +'%j') != $(stat -c '%z'  ~/.zcompdump | date +'%j') ]; then
  compinit
else
  compinit -C
fi

#zprof # show profiler results
