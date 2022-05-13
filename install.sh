# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download config
curl https://raw.githubusercontent.com/dung-dao/neovim/main/init.vim > "~/.vimrc"

vim -c "PlugInstall"
