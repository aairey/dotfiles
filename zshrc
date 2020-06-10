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

bindkey '^[[3;5~' backward-delete-word
# bindkey '^[[3~' backward-delete-word

# edit command line in $EDITOR
bindkey '^e' edit-command-line

# search history with fzf if installed, default otherwise
if test -d /usr/share/fzf/shell; then
	# shellcheck disable=SC1091
	. /usr/share/fzf/shell/key-bindings.zsh
else
	bindkey '^R' history-incremental-search-backward
fi

# added by travis gem
[ -f /home/aairey/.travis/travis.sh ] && source /home/aairey/.travis/travis.sh

#zprof # show profiler results

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/aairey/.sdkman"
[[ -s "/home/aairey/.sdkman/bin/sdkman-init.sh" ]] && source "/home/aairey/.sdkman/bin/sdkman-init.sh"
