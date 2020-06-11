#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install node
brew install terraform
brew install terraform_landscape
brew install tree
brew install wget --with-iri
brew install graphviz
brew install plantuml
brew install go
brew install jq
brew install awscli
brew install git-secrets
brew install gnutls
brew install yubico-piv-tool
brew install dep
brew install travis
brew install vault
brew install hub
brew install fish
brew install bash-completion
brew install yq

brew tap go-swagger/go-swagger
brew install go-swagger

# Install Cask
brew tap caskroom/cask

brew cask install java
brew cask install google-chrome
brew cask install intellij-idea
brew cask install spotify
brew cask install slack
brew cask install skype
brew cask install docker
brew cask install spectacle
brew cask install iterm2
brew cask install clipy
brew cask install postman
brew cask install gpg-suite
brew cask install zoomus
brew cask install caskroom/fonts/font-firacode-nerd-font
brew cask install goland
brew cask install 1password
brew cask install avg-antivirus
brew cask install visual-studio-code
brew tap caskroom/versions
brew cask install java8
brew cask install typora

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package


npm install -g grunt-cli
brew install maven
brew install gradle

# Remove outdated versions from the cellar.
brew cleanup

# Make fish the default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# Install oh my fish and bobthefish theme
curl -L https://get.oh-my.fish | fish
omf install bobthefish