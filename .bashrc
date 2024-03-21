#!/bin/bash

# Make two useful aliases
echo 'alias ll="ls -alF"' >> ~/.bashrc
echo 'alias ..="cd .."' >> ~/.bashrc

# "awesome" bash aliases
echo 'alias c="clear"' >> ~/.bashrc
echo 'alias h="history"' >> ~/.bashrc

# 30 okay aliases (just an example, feel free to customize)
echo 'alias gs="git status"' >> ~/.bashrc
echo 'alias ga="git add"' >> ~/.bashrc
# Add more aliases as needed...

# 70 more aliases (just an example, feel free to customize)
echo 'alias d="docker"' >> ~/.bashrc
echo 'alias dc="docker-compose"' >> ~/.bashrc
# Add more aliases as needed...

# Grab something cool from The Ultimate .bashrc file
# For instance, let's grab the weather function
curl https://raw.githubusercontent.com/trapd00r/LS_COLORS/master/LS_COLORS -o ~/.dircolors

# Ensure that the necessary package is installed (curl)
sudo apt-get install curl -y

# Copy your .bashrc to your git repository
cp ~/.bashrc /path/to/your/git/repository/.bashrc

# Create symbolic link to ~/.bashrc
ln -s /path/to/your/git/repository/.bashrc ~/.bashrc
