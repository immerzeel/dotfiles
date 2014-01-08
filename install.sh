#!/bin/sh
FILES_PATH=~/dotfiles
FILES="bash_profile \
       ctags \
       gitconfig \
       profile \
       rsyncignore \
       zprofile \
       zshrc"

for file in $FILES; do
	echo "Create symlink to $file in home directory."
	ln -s $FILES_PATH/$file ~/.$file
done
