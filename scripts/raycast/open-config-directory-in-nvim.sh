#!/bin/sh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open config directory in nvim
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

alacritty msg create-window --working-directory ~/.config --hold --command zsh -c 'source ~/.zshrc; nvim'
