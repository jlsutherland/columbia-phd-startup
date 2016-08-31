#!/bin/bash

# To get homebrew, need xcode cli tools.
xcode-select --install

# Check for Homebrew,
# Install if we don't have it.
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes.
brew update

# Install binaries we want.
brew install git R libsvg libxml2 gdal geos boost pandoc

# Install apps we want.
brew cask install qlmarkdown java mactex texmaker textmate
brew cask install caskroom/cask/rstudio
brew cleanup

# Tell R where java is.
R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

## Clone the startup repo to local.
mkdir -p ~/Research
git clone https://github.com/jlsutherland/columbia-phd-startup.git ~/Research/columbia-phd-startup

## Open the browser
open -a /Applications/Safari.app http://www.jlsutherland.com/phd-starter-kit/
