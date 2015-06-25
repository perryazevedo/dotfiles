#!/usr/bin/env bash
set -eu

#
# Application installer (via brew-cask)
#

# Add Homebrew Cask for app installs
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Apps to install
apps=(
  1password
  adobe-creative-cloud
  adobe-photoshop-lightroom
  adobe-dng-converter
  atom
  couchbase-server-community
  dropbox
  evernote
  firefox
  firefoxdeveloperedition
  flux
  google-chrome
  google-chrome-canary
  hipchat
  intellij-idea-ce
  java
  mailbox
  noizio
  sketch
  slack
  sourcetree
  spotify
  sublime-text3
  transmission
  transmit
  virtualbox
)

# Fonts list
fonts=(
  font-cabin
  font-cabin-condensed
  font-cabin-sketch
  font-droid-sans-mono
  font-droid-sans
  font-droid-serif
  font-source-code-pro
)

# Atom packages
# atom=(
#   advanced-railscasts-syntax
#   atom-beautify
#   cmd-9
#   color-picker
#   css-comb
#   docblockr
#   easy-motion
#   editor-stats
#   emmet
#   fancy-new-file
#   file-icons
#   git-history
#   highlight-selected
#   image-view
#   inc-dec-value
#   key-peek
#   language-jade
#   linter
#   markdown-preview
#   merge-conflicts
#   neutron-ui
#   npm-install
#   react
#   vim-mode
#   zentabs
# )

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Install the fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# Install Atom packages
# echo "installing atom plugins..."
# apm install ${atom[@]}

# Cleanup
brew cleanup

exit 0