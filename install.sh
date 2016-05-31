#!/bin/bash

src='~/.dotfiles'

ln -fs $src/aliases ~/.aliases
ln -fs $src/bash_logout ~/.bash_logout
ln -fs $src/bash_profile ~/.bash_profile
ln -fs $src/bashrc ~/.bashrc
ln -fs $src/bashrc_debian ~/.bashrc_debian
ln -fs $src/functions ~/.functions
ln -fs $src/local ~/.local
ln -fs $src/oh-my-zsh ~/.oh-my-zsh
ln -fs $src/profile ~/.profile
ln -fs $src/vimrc ~/.vimrc
ln -fs $src/vimrc-windows ~/.vimrc-windows
ln -fs $src/vim_runtime ~/.vim_runtime
ln -fs $src/zshrc ~/.zshrc

