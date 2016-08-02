#!/bin/bash

INSTALLDIR=$(cd $(dirname "$0") && pwd)

#if current dir is not '~/.dotfiles', complain and exit
if [ "$HOME/.dotfiles" != $INSTALLDIR ]; then 
    echo "dotfiles repo not cloned into $HOME/.dotfiles! Exiting ..."
    exit 0
fi

# create symlinks
echo "Creating symlinks ..."
ln -fs $INSTALLDIR/aliases $HOME/.aliases
ln -fs $INSTALLDIR/bash_logout $HOME/.bash_logout
ln -fs $INSTALLDIR/bash_profile $HOME/.bash_profile
ln -fs $INSTALLDIR/bashrc $HOME/.bashrc
ln -fs $INSTALLDIR/bashrc_debian $HOME/.bashrc_debian
ln -fs $INSTALLDIR/functions $HOME/.functions
ln -fsn $INSTALLDIR/local/share/fonts $HOME/.local/share/fonts
ln -fsn $INSTALLDIR/oh-my-zsh $HOME/.oh-my-zsh
ln -fs $INSTALLDIR/profile $HOME/.profile
ln -fs $INSTALLDIR/vim/vimrc $HOME/.vimrc
ln -fs $INSTALLDIR/vim/vimrc-windows $HOME/.vimrc-windows
ln -fsn $INSTALLDIR/vim/vim_runtime $HOME/.vim_runtime
ln -fs $INSTALLDIR/zshrc $HOME/.zshrc

# update submodules
echo "updating submodules ..."
git submodule update --init --recursive

# installing vim plugins
pushd $INSTALLDIR/vim/vim_runtime/
echo "updating vim plugins ..."
python update_plugins.py
popd

# Reload fonts
echo "Reloading fonts cache ..."
#fc-cache -f
