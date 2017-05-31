#!/bin/bash
#Update vimrc in git repo before pushing to GitHub

read -p "[c] to copy the configuration file to this system. [u] to update this vimrc before pushing to Github: " RESP
if [ "$RESP" = "c" ]; then
	cp .vimrc ~/.vimrc
    echo "Successfully update this system's vimrc"
elif [ "$RESP" = "u" ]; then 
	cp ~/.vimrc .vimrc 
	echo ".vimrc in local repo has been updated."
else
	echo "Wrong argument. Please try again"
fi
