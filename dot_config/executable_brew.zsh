#!/usr/bin/env bash

# sign into icloud and mac app store
# This allows for
echo "Are you signed into the iCloud and the Mac App Store?"
read myvariable


# Install Homebrew
# instructions via https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Use bundle to install my pre-defined homebrew apps and related content.
brew bundle --file brewfile

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/iTerm/settings"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
