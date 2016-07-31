# MacOS

```bash
xcode-select --install
```

```bash
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update
```

```bash
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
```

```bash
$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

binaries=(
  graphicsmagick
  webkit2png
  rename
  zopfli
  ffmpeg
  python
  sshfs
  trash
  node
  tree
  ack
  hub
  git
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

# Apps
apps=(
  alfred
  dropbox
  google-chrome
  qlcolorcode
  screenflick
  slack
  transmit
  appcleaner
  firefox
  hazel
  qlmarkdown
  seil
  spotify
  vagrant
  arq
  flash
  iterm2
  qlprettypatch
  shiori
  sublime-text3
  virtualbox
  atom
  flux
  mailbox
  qlstephen
  sketch
  tower
  vlc
  cloudup
  nvalt
  quicklook-json
  skype
  transmission
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/fonts

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}


```
brew tap caskroom/cask
brew install brew-cask
 
brew install Caskroom/cask/xquartz
brew cask install java
 
brew tap homebrew/science
brew install R
 
brew install Caskroom/cask/rstudio
 
 
# For latex:
 
brew cask install mactex
 
# OR YOU CAN DO
 
brew cask install basictex # suggested by @noamross
 
# DO NOT DO BOTH!
 
brew install libsvg curl libxml2 gdal geos boost
 
R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers
 
brew tap caskroom/fonts
brew cask install font-fira-code
brew cask install iterm2
brew cask install gitup           # if you want a GUI for git stuff (h/t @jennybryan)
```

```R
install.packages('knitr')
```
