# .profile

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/git_projects
source /usr/bin/virtualenvwrapper.sh
