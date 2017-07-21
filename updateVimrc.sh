#!/bin/bash
echo "[c] to copy this vimrc to the system's vimrc"
echo "[u] to copy the system's vimrc to this vimrc"
echo "[d] to compare the differences between the two vimrc"
echo "[e] to exit"
while :
do
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
elif [ "$RESP" = "e" ]; then
    exit 
else
	echo "Wrong argument. Please try again"
fi
done
