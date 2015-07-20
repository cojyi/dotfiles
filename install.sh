#!/bin/bash

# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Cygwin cannot symlink folders so use rsync instead for folders

########## Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_bak             # old dotfiles backup directory
files="profile bashrc functions vimrc vim xinitrc"    # list of files/folders to symlink in homedir

#########
# remove existing dotfiles_old in home dir
rm -rf $olddir

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory"
	ln -s $dir/$file ~/.$file
done

# initializing git submodules
echo "Setting up git submodules"
git submodule init
git submodule update

# setup gnome terminal colors
echo "Changing gnome terminal background to solarized light"
./bash/terminal_colors/set_light.sh

# setup directory colors
echo "setting up directory colors"
mkdir ~/.dircolors
cp ./bash/dir_colors/dircolors.256dark ~/.dircolors/
