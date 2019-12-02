# Install python packages
echo "Upgrade pip and install require python packages"
pip2 install -U pip
pip3 install -U pip
pip2 install requests pyquery beautifulsoup4 ipython aiohttp --user
pip3 install requests pyquery beautifulsoup4 ipython aiohttp --user

# Install tpm
echo "Install tmux plugin tpm"
git clone --depth=1 https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# Install oh-my=zsh and plugins
echo "Install oh-my-zsh and oh-my-zsh plugins"
git clone --depth=1 https://github.com/ohmyzsh/oh-my-zsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions

echo "Add config file"
git clone --depth 1 https://github.com/b09780978/my-env.git ~/my-env
cp ~/my-env/.bashrc ~/.bashrc
cp ~/my-env/.vimrc ~/.vimrc
cp ~/my-env/.zshrc ~/.zshrc
cp ~/my-env/.tmux.conf ~/.tmux.conf

echo "Install vim plugins"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +q +UpdateRemotePlugins +q

chsh -s /bin/zsh
