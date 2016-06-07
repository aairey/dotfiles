#!/bin/bash

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)
 

# create symlinks
echo "Creating symlinks ..."
ln -fs $DOTFILES_ROOT/.dotfiles/aliases $DOTFILES_ROOT/.aliases
ln -fs $DOTFILES_ROOT/.dotfiles/bash_logout $DOTFILES_ROOT/.bash_logout
ln -fs $DOTFILES_ROOT/.dotfiles/bash_profile $DOTFILES_ROOT/.bash_profile
ln -fs $DOTFILES_ROOT/.dotfiles/bashrc $DOTFILES_ROOT/.bashrc
ln -fs $DOTFILES_ROOT/.dotfiles/bashrc_debian $DOTFILES_ROOT/.bashrc_debian
ln -fs $DOTFILES_ROOT/.dotfiles/functions $DOTFILES_ROOT/.functions
ln -fs $DOTFILES_ROOT/.dotfiles/local/share/fonts $DOTFILES_ROOT/.local/share/fonts
ln -fs $DOTFILES_ROOT/.dotfiles/oh-my-zsh $DOTFILES_ROOT/.oh-my-zsh
ln -fs $DOTFILES_ROOT/.dotfiles/profile $DOTFILES_ROOT/.profile
ln -fs $DOTFILES_ROOT/.dotfiles/vim/vimrc $DOTFILES_ROOT/.vimrc
ln -fs $DOTFILES_ROOT/.dotfiles/vim/vimrc-windows $DOTFILES_ROOT/.vimrc-windows
ln -fs $DOTFILES_ROOT/.dotfiles/vim/vim_runtime $DOTFILES_ROOT/.vim_runtime
ln -fs $DOTFILES_ROOT/.dotfiles/zshrc $DOTFILES_ROOT/.zshrc

# Reload fonts
echo "Reloading fonts cache ..."
fc-cache -f
