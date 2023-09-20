#!/bin/bash

# Restore VIM Config backup
if [[ -f ~/.vimrc_backup ]]; then
	mv ~/.vimrc_backup ~/.vimrc
else
	rm ~/.vimrc
fi

# Remove scripts
declare -a exes=("mkscript" "mkfiles" "compile" "push")

for exe in "${exes[@]}"; do
	if [[ -f /usr/bin/$exe ]]; then
		sudo rm /usr/bin/$exe
	fi
done
