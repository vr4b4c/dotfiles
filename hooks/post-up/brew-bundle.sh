#!/bin/sh

if [ -f "$HOME/Brewfile" ] && ! brew bundle check --file="$HOME/Brewfile"; then
  echo "[brew] Installing bundle dependencies"
  brew bundle install --file="$HOME/Brewfile"
fi
