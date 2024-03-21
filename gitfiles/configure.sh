#!/bin/bash

# Set name & email
[user]
	name = "TheCodeMaster210"
	email = "owenfrancisv14@gmail.com"

# Set core editor to vim, nano, or emacs
[core]
	editor = "nano"

[init]
	defualtBranch = main


# Default exclude commonly ignorable files/folders (gitignore) or create a default commit message template
git config --global core.excludesfile ~/.gitignore_global
git config --global commit.template ~/.gitmessage.txt
# Set git autocorrect
git config --global help.autocorrect 1

# Backup existing .gitconfig if it exists
if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig.backup
fi

# Create symbolic link to ~/.gitconfig
ln -s ~/home/tigermaster21/dotfiles/configure.sh ~/.gitconfig
