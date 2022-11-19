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

cp ~/.config/starship.toml ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.config/nvim/init.vim ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.exrc ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.my_aliases.sh ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.my_functions.sh ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.zshrc ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.zprofile ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.fzf.zsh ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles
cp ~/.tmux.conf.local ~/Geekery/Github/CodingAdventures/Zsh/myConfigFiles

# Also copy current active shell scripts.

cp ~/.bin/*.sh ~/Geekery/Github/CodingAdventures/Zsh/myShellScripts/

open -a "Github Desktop"
