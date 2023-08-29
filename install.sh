#!/bin/bash

# Installing All dependencies
if [ -f /etc/apt/sources.list ]; then
	echo "Debian-based system Detected."
	# Use apt for package management
	sudo apt-get update
	yes | sudo apt-get install python3 python3-pip curl vim 
	yes | pip install requests
	yes | pip install prompt_toolkit
elif [ -f /etc/pacman.conf ]; then
	echo "Arch-based system Detected."
	# TODO: Use pacman for package management

	exit 1
else
	echo "Error: Unknown distribution"
	exit 1
fi


# Making a directory for the scripts in home directory
mkdir -p ~/.scripts
cp ./bash/gcc ./bash/mk ./bash/push ./python/header_maker.py ./python/files_maker.py ~/.scripts

# Adding vim configuration
cp -f vimrc ~/.vimrc


# Appending aliases in Bashrc
# Check for 'cl' alias
if ! grep -q "alias cl=" ~/.bashrc; then
    echo 'alias cl="clear"' >> ~/.bashrc
fi

# Check for 'mkscript' alias
if ! grep -q "alias mkscript=" ~/.bashrc; then
    echo 'alias mkscript=". ~/.scripts/mk"' >> ~/.bashrc
fi

# Check for 'cgcc' alias
if ! grep -q "alias cgcc=" ~/.bashrc; then
    echo 'alias cgcc=". ~/.scripts/gcc"' >> ~/.bashrc
fi

# Check for 'push' alias
if ! grep -q "alias push=" ~/.bashrc; then
    echo 'alias push=". ~/.scripts/push"' >> ~/.bashrc
fi

# Check for 'mkheader' alias
if ! grep -q "alias mkheader=" ~/.bashrc; then
    echo 'alias mkheader="python3 ~/.scripts/header_maker.py"' >> ~/.bashrc
fi

# Check for 'mkfiles' alias
if ! grep -q "alias mkfiles=" ~/.bashrc; then
    echo 'alias mkfiles="python3 ~/.scripts/files_maker.py"' >> ~/.bashrc
fi

# Installing TrailerTrash vim plugin
vim_config_file=~/.vimrc

if ! [ -f ~/.vim/autoload/plug.vim ]; then
    echo "Installing Vim-Plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -u "$vim_config_file" +PlugInstall +qall



