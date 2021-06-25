# Install neovim
sudo apt install -y neovim git

# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# Clone repo
git clone https://github.com/dung-dao/neovim.git ~/.config/nvim

nvim -c "PlugInstall"
