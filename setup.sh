#!/bin/bash

# Install Xcode
xcode-select --install
sudo xcodebuild -license accept

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
