#!/bin/sh

if [ -f "$HOME/Brewfile" ] && ! brew bundle check --file="$HOME/Brewfile"; then
  brew bundle install --file="$HOME/Brewfile"
fi
