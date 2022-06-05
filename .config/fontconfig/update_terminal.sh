#!/bin/bash
set -euo pipefail

# Install zsh
sudo apt-get install -y zsh git

# PowerLine Fonts part 1
sudo apt-get install -y fonts-powerline
# Install oh-my-zsh
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh external Theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# ReWrite ./.zshrc
echo "POWERLEVEL9K_MODE=\'awesome-fontconfig\'" >> ./.zshrc
echo "ZSH_THEME=\"powerlevel9k/powerlevel9k\"" >> ./.zshrc
# PowerLine Fonts part 2
# clone
sudo git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
sudo bash ./install.sh
# clean-up a bit
cd ..
sudo rm -rf fonts
#Install PowerLineTerminal Font
sudo git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
sudo mkdir -p ~/.fonts
sudo mkdir -p ~/.config/fontconfig/conf.d/
sudo cp -f ./awesome-terminal-fonts/build/*.ttf ~/.fonts
sudo cp -f ./awesome-terminal-fonts/build/*.sh ~/.fonts
sudo cp -f ./awesome-terminal-fonts/config/* ~/.config/fontconfig/conf.d
sudo fc-cache -fv ~/.fonts
sudo cp -f ~/awesome-terminal-fonts/config/10-symbols.conf ~/.config/fontconfig/conf.d
echo "source ~/.fonts/*.sh" >> ~/.zshrc