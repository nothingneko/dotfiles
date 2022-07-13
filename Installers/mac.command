#!/bin/sh
mkdir /Users/$USER/Documents/Projects
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install neofetch starship docker wget
brew install cask font-jetbrains-mono microsoft-office warp
cd /Users/$USER/Downloads