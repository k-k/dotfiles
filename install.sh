#!/bin/bash

bold=`tput bold`
normal=`tput sgr0`

echo "${bold}Setting up Dot Files for this machine!${normal}"$'\n'

# Update PHP Syntax for this machine
php vim-php-syntax/update_syntax.php
echo "PHP Syntax updated based on installed packages..."

# Remove any existing .vim folder
if [ -e ~/.vim ]; then
    sudo rm -r ~/.vim
fi

# Copy the required files to the home directory
cp -r .bash_git .bash_profile .bashrc .gitconfig .gitignore_global .vimrc .vim git-completion.bash ~/
echo "Dot Files copied into your home directory..."
echo "Done."$'\n\n'

# Setup .gitconfig
echo "${bold}Let's configure your Git configuration!${normal}"$'\n'
echo "What is your full name? (ex: John Doe)"
read name
echo "And what is your email address? (ex: test@gmail.com)"
read email

echo "[user]"$'\n\t'"email = $email"$'\n\t'"name = $name"$'\n' >> ~/.gitconfig

echo $'\n'"** Finished!"
