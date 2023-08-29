#!/bin/bash

SCRIPTS_PATH=~/.scripts

# Creating scripts directory
mkdir -p $SCRIPTS_PATH

## TODO: Fix paths (in case of script execited from other directories)
cp ./bash/* $SCRIPTS_PATH
cp ./python/* $SCRIPTS_PATH

# Adding vim configuration
cp -f vimrc ~/.vimrc

# Importing logger
source $SCRIPTS_PATH/logger

# Installing All dependencies
if [ -f /etc/apt/sources.list ]; then
	info "Debian-based system Detected."

	# Use apt for package management
	sudo apt-get update
	sudo apt-get install -y python3 python3-pip curl
	yes | pip install requests
	yes | pip install prompt_toolkit
else
	error "Unknown distribution, Exiting gracefully."
	info "This script is dedicated to ALX Sandboxes only."
	exit 1
fi

success "All dependencies installed are installed."

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



