#!/bin/bash

# Making a directory for the scripts in home directory
mkdir -p ~/.scripts
cp gcc mk push ~/.scripts

# Adding vim configuration
cp -f vimrc ~/.vimrc


# Appending aliases in Bashrc
cat << EOF >> ~/.bashrc
# Alias for scripts
alias cl="clear"
alias mkscript=". ~/.scripts/mk"
alias cgcc=". ~/.scripts/gcc"
alias push=". ~/.scripts/push"
EOF


# Installing TrailerTrash vim plugin
vim_config_file=~/.vimrc

if ! [ -f ~/.vim/autoload/plug.vim ]; then
    echo "Installing Vim-Plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -u "$vim_config_file" +PlugInstall +qall

# Installing Python and modules for README & Header Maker
sudo apt-get update
yes | sudo apt-get install python3

modules=("requests" "base64" "re")

for module in "${modules[@]}"; do
	yes | pip install "$module"
done


