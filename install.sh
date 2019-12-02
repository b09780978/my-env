# Install python packages
pip2 install -U pip
pip3 install -U pip

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install oh-my=zsh and plugins
git clone --depth=1 https://github.com/ohmyzsh/oh-my-zsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

echo "Add config file"
git clone --depth 1 https://github.com/b09780978/my-env.git ~/my-env
cp ~/my-env/.bashrc ~/.bashrc
cp ~/my-env/.vimrc ~/.vimrc
cp ~/my-env/.zshrc ~/.zshrc
cp ~/my-env/.tmux.conf ~/.tmux.conf

chsh -s /bin/zsh
