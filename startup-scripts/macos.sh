#!/bin/bash

echo ""
echo "#################################################################################"
echo "#################################################################################"
echo "##"
echo "## Columbia PhD Start-up Kit"
echo "## v0.1.0"
echo "## Built August 7, 2016"
echo "##"
echo "## Author: Joe Sutherland <joseph.sutherland@columbia.edu>"
echo "##         *Please feel free to contact for support*"
echo "##"
echo "## NOTE: You may have to enter your password to run this script."
echo "##"
echo "#################################################################################"
echo "#################################################################################"
echo ""
echo ""
echo "Hello, PhD student! I will install the following on to your system:"
echo ""
echo "  * Homebrew -- a package manager for macOS"
echo "  * Cakebrew -- a GUI for Homebrew"
echo "  * TextMate2 -- an editor fluent in all languages"
echo "  * R -- an open-source statistical computing platform"
echo "  * git -- a versioning tool"
echo "  * MacTeX -- a TeX distribution for mac, for writing beautiful papers"
echo "  * TeXMaker -- a modern, cross-platform TeX editor"
echo "  * R Studio -- a GUI for R, so you can easily pass your stat classes"
echo "  * Pandoc -- a tool used by R Studio to convert between document formats"
echo "  * Java 8 -- the latest Java distribution, required for some R packages"
echo ""
echo ""
echo "If you do no want me to install these programs, you have 30 seconds to stop"
echo "this program by hitting Ctrl-C."
echo "sleep 30"
sleep 30

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
