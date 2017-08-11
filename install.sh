#!/bin/bash

INSTALLDIR=$(cd $(dirname "$0") && pwd)

#if current dir is not '~/.dotfiles', complain and exit
if [ "$HOME/.dotfiles" != $INSTALLDIR ]; then 
    echo "dotfiles repo not cloned into $HOME/.dotfiles! Exiting ..."
    exit 0
fi

# update submodules
git submodule update --init

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
ln -fsn $INSTALLDIR/vim/pack $HOME/.vim/pack
ln -fsn $INSTALLDIR/vim/colors $HOME/.vim/colors
ln -fs $INSTALLDIR/zshrc $HOME/.zshrc
ln -fsn $INSTALLDIR/config/terminator $HOME/.config/terminator
ln -fs $INSTALLDIR/tmux.conf $HOME/.tmux.conf

# update submodules
echo "updating submodules ..."
git submodule update --init --recursive

# add custom oh-my-zsh plugins
echo "addinng zsh-syntax-highlighting plugin for oh-my-zsh ..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# installing vim plugins
pushd $INSTALLDIR/vim/vim_runtime/
echo "updating vim plugins ..."
python update_plugins.py
popd

# Install TTY font and theme selector
# Sorry! Only Fedora supported here.
if [ -d /usr/lib/kbd/consolefonts/ ]; then
    # we are on a RedHat Family OS
    sudo cp $INSTALLDIR/local/share/fonts/ter-powerline-v16n.psf.gz /usr/lib/kbd/consolefonts/.
    pushd $HOME/bin
    wget https://raw.githubusercontent.com/josuah/config/master/.local/bin/tty-theme
    chmod +x tty-theme
    popd
else
    echo "Sorry! Only setting TTY customisations on Fedora for now."
fi


# Reload fonts
echo "Reloading fonts cache ..."
#fc-cache -f
