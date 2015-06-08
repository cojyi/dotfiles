#!/bin/bash

# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Cygwin cannot symlink folders so use rsync instead for folders

########## Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_bak             # old dotfiles backup directory
files="bash_profile functions minttyrc vimrc"    # list of files/folders to symlink in homedir
folders="vim" # list of folders

#########
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
    mv ~/.$file ~/dotfiles_bak/
    echo "Creating symlink to $file in home directory"
    ln -s $dir/$file ~/.$file
done

# run everytime you install plugins in vim
for folder in $folders; do
		echo "Moving any existing dotfolders from ~ to $olddir"
		mv ~/.$folder ~/dotfiles_bak/
		echo "Rsyncing to $folder in home directory"
		mkdir ~/.$folder
		rsync -aHA $dir/$folder/ ~/.$folder
done
