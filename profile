# .profile

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -d /usr/lib/kbd/consolefonts/ ]; then
    case $(tty) in /dev/tty[0-9]*)
      setfont /usr/lib/kbd/consolefonts/ter-powerline-v16n.psf.gz
      tty-theme 4
      ;;
    esac
fi

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$HOME/.cargo/bin/:$HOME/.rvm/bin"

export TF_LOG="TRACE"
export TF_LOG_PATH="$HOME/.tflogs"

export LS_COLORS=$(vivid generate molokai)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Workaround for KeePass built-in ssh-agent
#export SSH_AUTH_SOCK=/tmp/ssh-agent-lib-sock

export _JAVA_AWT_WM_NONREPARENTING=1
