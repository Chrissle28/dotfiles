#!/usr/bin/env bash

sudo -v

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin


#--------------------------------------------------
# Oh my zsh installation
#--------------------------------------------------
echo -e "\nOh my zsh Installation"
rm -rf $HOME/.oh-my-zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh  &> /dev/null

echo -e "\nZSH Plugins Installations"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.dotfiles/oh-my-zsh-custom/plugins/zsh-autosuggestions &> /dev/null
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/oh-my-zsh-custom/plugins/zsh-syntax-highlighting &> /dev/null

echo -e "\nSymlinking zsh files"
# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

#--------------------------------------------------
# macOS Apps and services
#--------------------------------------------------

# install brew apps
brew bundle

# # install php extensions
# pecl install xdebug


# # Set default MySQL root password and auth type
brew services start mysql # make sure mysql is running
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

# # install default composer packages
composer self-update
composer global require laravel/installer
composer global require laravel/valet

# # Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# # Create a default sites / projects directory
mkdir $HOME/git

# # configure git
[ ! -f ~/.global.gitignore ] && ln -s ~/.dotfiles/.global.gitignore ~/.global.gitignore
git config --global core.excludesfile ~/.global.gitignore
git config --global user.name "Christian Zellier"
git config --global user.email "36259611+Chrissle28@users.noreply.github.com"
git config --global credential.helper osxkeychain

# # Set macOS preferences - we will run this last because this will reload the shell
source .macos
