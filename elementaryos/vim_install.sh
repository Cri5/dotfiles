#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
