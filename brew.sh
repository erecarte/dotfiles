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

brew install maven
brew install node
brew install terraform
brew install tree
brew install wget --with-iri
brew install graphviz


# Install Cask
brew tap caskroom/cask

brew cask install java
brew cask install atom
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install intellij-idea
brew cask install spotify
brew cask install slack
brew cask install skype
brew cask install docker
brew cask install spectacle
brew cask install iterm2
brew cask install clipy
brew cask install sequel-pro
brew cask install postman

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package


npm install -g grunt-cli

# Remove outdated versions from the cellar.
brew cleanup