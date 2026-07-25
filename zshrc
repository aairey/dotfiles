# ~/.zshrc
#zmodload zsh/zprof # initialise profiler
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

# Use Homebrew curl on macOS (needed for AWS signature v4 support)
if [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH="/opt/homebrew/opt/curl/bin:$PATH"
fi

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
if command -v jira >/dev/null 2>&1; then
  eval "$(jira --completion-script-zsh)"
fi

# speed improvement: only load zcompdump once a day
autoload -Uz compinit

# Determine the OS and set the appropriate stat command
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  last_mod_time=$(stat -f '%m' ~/.zcompdump)
else
  # Linux
  last_mod_time=$(stat -c '%Y' ~/.zcompdump)
fi

if [ $(date +'%j') != $(date -r $last_mod_time +'%j') ]; then
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

# enable 1password SSH Agent on macOS
if [ ${OSTYPE:0:6} = 'darwin' ]; then
    export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
fi

# enable byobu support when SSH-ing
#if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
#    export TERM=xterm-256color
#fi

#zprof # show profiler results


SPACESHIP_PROMPT_ASYNC=FALSE

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH=$PATH:~/.rd/bin
export DOCKER_HOST=unix:///Users/aairey/.rd/docker.sock

# Added by Windsurf
export PATH="/Users/aairey/.codeium/windsurf/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
SPACESHIP_PROMPT_ASYNC=FALSE

# opencode
export PATH=/Users/aairey/.opencode/bin:$PATH
