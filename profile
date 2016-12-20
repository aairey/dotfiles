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
      tty-theme 12
      ;;
    esac
fi
