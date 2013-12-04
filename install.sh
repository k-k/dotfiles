#!/bin/bash

cp .bash_git ~/
cp .bash_profile ~/
cp .bashrc ~/
cp .gitconfig ~/
cp .gitignore_global ~/
cp .vimrc ~/

if [ -e ~/.vim ]; then
    sudo rm -r ~/.vim
fi
cp -r .vim ~/.vim
