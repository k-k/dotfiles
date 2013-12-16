#!/bin/bash

bold=`tput bold`
normal=`tput sgr0`

# Remove any existing .vim folder
if [ -e ~/.vim ]; then
    sudo rm -r ~/.vim
fi

# Copt the required files to the home directory
cp -r .bash_git .bash_profile .bashrc .gitconfig .gitignore_global .vimrc .vim git-completion.bash ~/

# Setup .gitconfig
echo "${bold}Let's configure your Git configuration!${normal}"$'\n'
echo "What is your full name? (ex: John Doe)"
read name
echo "And what is your email address? (ex: test@gmail.com)"
read email

echo "[user]"$'\n\t'"email = $email"$'\n\t'"name = $name"$'\n' >> ~/.gitconfig

echo $'\n'"** Finished!"
