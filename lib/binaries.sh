#!/usr/bin/env bash
set -eu

# 
# Binary installer
# 

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Don't forget to update the $PATH in ~/.bash_profile
# $PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# Other useful binaries to install
binaries=(
  rename
  node
  git
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

exit 0
