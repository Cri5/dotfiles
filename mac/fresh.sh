#!/bin/bash

# git
git config --global user.name "Krzysztof Kraszewski"
git config --global user.email krzysztof@kraszewski.app
git config --global diff.submodule log
git config --global status.submoduleSummary true
git config --global alias.spush 'push --recurse-submodules=on-demand'

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

# Taps
brew tap caskroom/fonts

brew install node
brew install yarn
brew install wget
brew install mas
brew install doctl
# brew install kubectl
brew install python3
brew install go

# Node
yarn global add n
sudo n latest

brew cask install font-fira-code
brew cask install visual-studio-code
brew cask install jetbrains-toolbox
brew cask install iterm2
brew cask install google-chrome
brew cask install slack
brew cask install qbittorrent
brew cask install discord
brew cask install spotify
brew cask install telegram

mas install 904280696 # Magnet
mas install 443987910 # Things
mas install 497799835 # Xcode
mas install 409201541 # Pages

pip3 install awscli --upgrade --user

# VS Code
rm ~/Library/Application\ Support/Code/User/settings.json
code --install-extension zhuangtongfa.material-theme
cp ~/Projects/Personal/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Docker
cd ~/Downloads
wget -q https://download.docker.com/mac/stable/Docker.dmg
hdiutil mount Docker.dmg
sudo cp -R "/Volumes/Docker/Docker.app" /Applications
umount /Volumes/Docker
rm Docker.dmg

# Terraform
# wget -q https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_darwin_amd64.zip
# unzip terraform_0.11.3_darwin_amd64.zip
# rm terraform_0.11.3_darwin_amd64.zip
# mv terraform /usr/local/bin/terraform

source ~/.zshrc
cd

echo "Done."
