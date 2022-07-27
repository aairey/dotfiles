# ~/.zshrc
#zmodload zsh/zprof # initialise profiler
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

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

# clone antidote if necessary
[[ -e ~/.antidote ]] || git clone https://github.com/mattmc3/antidote.git ~/.antidote

# source antidote
. ~/.antidote/antidote.zsh

# generate and source plugins from ~/.zsh_plugins.txt
antidote load
# load go-jira completions
if $(command -v jira 2>/dev/null); then
  eval "$(jira --completion-script-zsh)"
fi

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

#zprof # show profiler results


