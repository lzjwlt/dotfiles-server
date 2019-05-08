#!/bin/zsh
ln -s $(pwd)/.tmux.conf.local ~/
ln -s $(pwd)/.tmux.conf ~/
ln -s $(pwd)/server.vimrc ~/.vimrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

