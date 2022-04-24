# Install python packages
echo "Upgrade pip and install require python packages"
pip2 install -U pip
pip3 install -U pip
pip2 install requests pyquery beautifulsoup4 ipython aiohttp --user
pip3 install requests pyquery beautifulsoup4 ipython aiohttp --user

# Install tpm
echo "Install tmux plugin tpm"
git clone --depth=1 https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# Install zinit and plugins
echo "Install oh-my-zsh and oh-my-zsh plugins"
wget "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Regular.ttf"
mkdir -p ~/.fonts/
mv "MesloLGS NF Regular.ttf" ~/.fonts/
zsh -ic "source ~/.zshrc"


echo "Add config file"
git clone --depth 1 https://github.com/b09780978/my-env.git ~/my-env
cp ~/my-env/.bashrc ~/.bashrc
cp ~/my-env/.vimrc ~/.vimrc
cp ~/my-env/.zshrc ~/.zshrc
cp ~/my-env/.tmux.conf ~/.tmux.conf
cp ~/my-env/.p10k.zsh ~/.p10k.zsh

echo "Install vim plugins"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +q +UpdateRemotePlugins +q

chsh -s /bin/zsh
