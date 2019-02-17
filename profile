# .profile

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/git_projects
if [ -e /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi

if [ -d /usr/lib/kbd/consolefonts/ ]; then
    case $(tty) in /dev/tty[0-9]*)
      setfont /usr/lib/kbd/consolefonts/ter-powerline-v16n.psf.gz
      tty-theme 4
      ;;
    esac
fi

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export PATH="$PATH:$HOME/.cargo/bin/"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export TF_LOG="TRACE"
export TF_LOG_PATH="$HOME/.tflogs"

export LS_COLORS=$(vivid generate molokai)
