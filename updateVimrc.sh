#!/bin/bash
echo "[c] to copy the configuration file to this system"
echo "[u] to update this vimrc before pushing to Github"
echo "[d] to view the differences between this vimrc and the system's vimrc"
read -p "Choose your option: " RESP
 
if [ "$RESP" = "c" ]; then
	cp .vimrc ~/.vimrc
    echo "Successfully update this system's vimrc"
elif [ "$RESP" = "u" ]; then 
	cp ~/.vimrc .vimrc 
	echo ".vimrc in local repo has been updated."
elif [ "$RESP" = "d" ]; then
    diff .vimrc ~/.vimrc
    echo "Repo's vimrc(left) vs this system's vimrc (right)"
else
	echo "Wrong argument. Please try again"
fi
