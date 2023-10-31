#!/bin/bash

SCRIPTS_PATH=/usr/bin

# Setting up VIM Configs and Backup
if [[ -f ~/.vimrc ]]; then
	cp ~/.vimrc ~/.vimrc_backup
fi

declare -a configs=("set number" "set relativenumber" "set autoindent" "filetype indent on" "syntax on" "set wildmenu" "set wildmode=list:longest" "set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx")

for config in "${configs[@]}"; do
	if ! grep -q "$config" ~/.vimrc; then
		echo "$config" >> ~/.vimrc
	fi
done

cat << EOF >> ~/.vimrc

" Initialzing plug
call plug#begin('~/.vim/plugged')
Plug 'csexton/trailertrash.vim'
call plug#end()

" pycodestyle
map <F1> :!pycodestyle %<CR>

" Map a key to run Betty style checker
map <F2> :!betty %<CR>

" Map a key to run TrailerTrash
nnoremap <F4> :TrailerTrim<CR>

" Map F3 to select entire buffer and reformat
function! Indent()
    let save_cursor = getpos(".")
    execute "normal! ggVG="
    call setpos('.', save_cursor)
endfunction

nnoremap <F3> :call Indent()<CR>
" Compile via vim
function! Compile()
	let source_filename = expand('%')
	let number = matchstr(source_filename, '\d\+')
	let test_filename = number . '-main.c'
	let output_filename = substitute(source_filename, '\.c$', '', '')
	let command = 'gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c ' . source_filename . ' ' . test_filename . ' -o ' . output_filename
	execute '!'.command
endfunction

command! -nargs=0 Compile :call Compile()

nnoremap <F5> :Compile<CR>
EOF

# Removing existing configuration from old version of ALX-TSaver
declare -a patterns=("alias mkheader=" "alias mkscript=" "alias cgcc=" "alias push=" "alias mkfiles=")

for pattern in "${patterns[@]}"; do
	grep -v "$pattern" ~/.bashrc > tmp_TSaver
	mv tmp_TSaver ~/.bashrc
done


# Configuring functionalities
sudo cp ./bash/* $SCRIPTS_PATH
sudo cp ./python/* $SCRIPTS_PATH


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

printf "\n\nTime is money, save it with \e[1;32mALX Time Saver\e[0m!\n\n\e[32mcompile\e[0m : Compiles your C files\n\e[32mpush\e[0m : pushes the specified content to your github\n\e[32mmkfiles\e[0m : Extracts all the necessary project files, main.h and all main.c files directly from the intranet\n\e[32mmkscript\e[0m : saves you time setting up a Python or Bash script\n\e[1;33m./read_maker\e[0m : First configure the file then use it to make interactive README directly extracted from your github\n\e[32mfixall\e[0m : Fixes the indentation and removes all trailing white spaces in all the files in the current directory or the specified directories\n\e[32msetall\e[0m : Sets up the test suite\n\e[32mtestall\e[0m : Runs the test suite\n\n"

echo -e "\e[31m#DoHardThings\e[0m"

