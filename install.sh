#!/bin/bash
set -eEuo pipefail

INSTALLDIR="${HOME}/dotfiles"

# if current dir is not '~/dotfiles', complain and exit
CURR_DIR=$(cd $(dirname "$0") && pwd)
if [ "$INSTALLDIR" != "$CURR_DIR" ]; then 
    echo "dotfiles repo not cloned into "$INSTALLDIR"! Exiting ..."
    exit 0
fi

# update submodules
echo "updating submodules ..."
git submodule update --init --recursive

# initialise dotdrop
pip3 install -r dotdrop/requirements.txt --user
/bin/bash ./dotdrop/bootstrap.sh

# create symlinks
alias dotdrop="${CURR_DIR}/dotdrop.sh --cfg=${CURR_DIR}/dotdrop.yml"
dotdrop install

# install colorls, howdoi, asciinema, dockly, fzf, whereami, gtop
sudo gem install colorls
sudo pip install howdoi
sudo python3 -m pip install asciinema
sudo npm install -g dockly
sudo dnf install fzf
sudo npm install -g @rafaelrinaldi/whereami
sudo npm install -g gtop
