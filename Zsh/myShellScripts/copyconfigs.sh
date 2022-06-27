#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy .dotFiles etc
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Copy configs etc
# @raycast.author Steve

cp ~/.config/starship.toml ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.exrc ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.steve_aliases.sh ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.zshrc ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.steve_functions.sh ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.zprofile ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.fzf.zsh ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles
cp ~/.tmux.conf.local ~/Geekery/Github/CodingAdventures/Zsh/myDotFiles

open -a "Github Desktop"
