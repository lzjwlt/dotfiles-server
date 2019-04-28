ln -s $(pwd)/.tmux.conf.local ~/
ln -s $(pwd)/.tmux.conf ~/
ln -s $(pwd)/server.vimrc ~/.vimrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

zsh -c '
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions --depth=1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git --depth=1 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth=1
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf --depth=1
sed -i "s/plugins=(git)/plugins=(git\nfzf\nzsh-autosuggestions\nzsh-syntax-highlighting\n)/g" ~/.zshrc
~/.fzf/install
'
