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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# IDE / Development Tools
brew install git
brew install --cask visual-studio-code # general language IDE
brew install --cask intellij-idea-ce # JVM based IDE
brew tap AdoptOpenJDK/openjdk #adding source for jdk
brew install --cask adoptopenjdk11 # needed for JVM languages

if test ! $(which nvm); then
  echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
fi
nvm install node # javascript runtime
brew install python@3.9 # scripting language - v2 included with mac however v3 reccomended
brew install gradle # build automation tool 
brew install maven # build automation tool

# Devops Tools
brew install --cask docker # containerisation tool
brew install --cask google-cloud-sdk # google cloud sdk
brew install kubectl # K8S command line interface
brew install hashicorp/tap/terraform # terraform for infrastructure provisioning
brew install hashicorp/tap/packer # packer for building VM images

# Text editing tools
brew install --cask sublime-text # text editing tool
brew install --cask atom # alternative text editing tool

# Misc tools
brew install --cask gpg-suite #needed to sign github commits
brew install --cask virtualbox # hypervisor for virtualization - prerequisite for vagrant
brew install --cask vagrant # management of VMs
brew install nginx # HTTP server + reverse proxy

brew cleanup
