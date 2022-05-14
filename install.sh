# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download config
curl https://raw.githubusercontent.com/dung-dao/neovim/main/init.vim > "$HOME/.vimrc"

# Ignore hidden files in fzf
source "$HOME/.zprofile"
if [ -z ${FZF_CTRL_T_COMMAND+x} ]; then
    echo "export FZF_CTRL_T_COMMAND=\"fd --type f\"" >> "$HOME/.zprofile"
    echo "FZF_CTRL_T_COMMAND is set"
fi

if [ -z ${FZF_DEFAULT_COMMAND+x} ]; then
    echo "export FZF_DEFAULT_COMMAND=\"fd --type f\"" >> "$HOME/.zprofile"
    echo "FZF_DEFAULT_COMMAND is set"
fi

if [ -z ${FZF_ALT_C_COMMAND+x} ]; then
    echo "export FZF_ALT_C_COMMAND=\"fd --type f\"" >> "$HOME/.zprofile"
    echo "FZF_ALT_C_COMMAND is set"
fi

vim -c "PlugInstall"
