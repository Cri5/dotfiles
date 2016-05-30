sudo apt-get update
sudo apt install -y vim
sudo apt install -y git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vi
git clone https://github.com/krszwsk/dotfiles/ ~/.vim/dotfiles
rm ~/.vimrc
ln -s ~/.vim/dotfiles/vim/.vimrc ~/.vimrc
echo "Run :PluginInstall in Vim to finish configuration"
