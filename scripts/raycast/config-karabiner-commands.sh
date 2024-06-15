#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Config Karabiner Commands
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

alacritty msg create-window --working-directory ~/.config/karabiner --hold --command zsh -c 'source ~/.zshrc; nvim commands.json'

