#!/bin/bash

SCRIPTS_PATH=/usr/bin

# Removing existing configuration from old version of ALX-TSaver
declare -a patterns=("alias mkheader=" "alias mkscript=" "alias cgcc=" "alias push=" "alias mkfiles=")

for pattern in "${patterns[@]}"; do
	grep -v "$pattern" ~/.bashrc > tmp_TSaver
	mv tmp_TSaver ~/.bashrc
done


# Configuring functionalities
sudo cp ./bash/* $SCRIPTS_PATH
sudo cp ./python/* $SCRIPTS_PATH

# Configuring VIM
cp -f vimrc ~/.vimrc

# Importing logger
source $SCRIPTS_PATH/TSaver_logger

# Installing All Dependencies
info "Installing dependencies..."
if [ -f /etc/apt/sources.list ]; then
	info "Debian-based system Detected."

	sudo apt-get update
	sudo apt-get install -y python3 python3-pip curl
	yes | pip install requests
	yes | pip install prompt_toolkit
	yes | pip install bs4
	yes | pip install colorama
else
	error "Unknown distribution, Exiting gracefully."
	info "This script is dedicated to ALX Sandboxes and Ubuntu systems only."
	exit 1
fi

success "Dependencies installed."

# Installing TrailerTrash VIM Plugin
vim_config_file=~/.vimrc

if ! [ -f ~/.vim/autoload/plug.vim ]; then
    info "Installing Vim-Plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -u "$vim_config_file" +PlugInstall +qall


# Short Tutorial / Manual
clear

art1='
   _____  .____     ____  ___
  /  _  \ |    |    \   \/  /
 /  /_\  \|    |     \     /
/    |    \    |___  /     \
\____|__  /_______ \/___/\  \
        \/        \/      \_/
'
art2='
___________.__                   _________
\__    ___/|__| _____   ____    /   _____/____ ___  __ ___________
  |    |   |  |/     \_/ __ \   \_____  \\__  \\  \/ // __ \_  __ \
  |    |   |  |  Y Y  \  ___/   /        \/ __ \\   /\  ___/|  | \/
  |____|   |__|__|_|  /\___  > /_______  (____  /\_/  \___  >__|
                    \/     \/          \/     \/          \/
'

echo "$art1"
echo "$art2"

printf "\n\nTime is money, save it with \e[1;32mALX Time Saver\e[0m!\n\n\e[32mcompile\e[0m : Compiles your C files\n\e[32mpush\e[0m : pushes the specified content to your github\n\e[32mmkfiles\e[0m : Extracts all the necessary project files, main.h and all main.c files directly from the intranet\n\e[32mmkscript\e[0m : saves you time setting up a Python or Bash script\n\e[1;33mpython3 read_maker.py\e[0m : First configure the file then use it to make interactive README directly extracted from your github\n\n"

echo -e "\e[31m#DoHardThings\e[0m"

