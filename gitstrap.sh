#!/bin/bash
cd ~
echo "Cloning dotfiles repo..."
git clone --bare https://github.com/TheSchilk/dotfiles.git

echo "Moving Repo..."
mv dotfiles.git/ .dotfiles.git/

echo "Configuring Repo to hide untracked files..."
/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME config --local status.showUntrackedFiles no

echo "To add temporary dotgit alias, source schilkstrap/tempdotgit.sh"
