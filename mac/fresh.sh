#!/bin/bash

# git
git config --global user.name "Krzysztof Kraszewski"
git config --global user.email krzysztof@kraszew.ski

# Set up directories
cd
mkdir -p Projects/{Personal,Scuer}
mkdir Repos
mkdir Tests

# dotfiles
cd Projects/Personal
git clone git@github.com:krszwsk/dotfiles

# ZSH, Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
ln -s ~/Projects/Personal/dotfiles/mac/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask

# VS Code
brew cask install visual-studio-code
rm ~/Library/Application\ Support/Code/User/settings.json
code --install-extension zhuangtongfa.material-theme
cp ~/Projects/Personal/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Fira Code
brew tap caskroom/fonts
brew cask install font-fira-code

brew install wget

# Docker
cd ~/Downloads
wget -q https://download.docker.com/mac/stable/Docker.dmg
hdiutil mount Docker.dmg
sudo cp -R "/Volumes/Docker/Docker.app" /Applications
umount /Volumes/Docker
rm Docker.dmg

brew cask install jetbrains-toolbox
brew cask install iterm2
brew cask install google-chrome
brew cask install slack
brew cask install qbittorrent

source ~/.zshrc
cd

echo "Done."
