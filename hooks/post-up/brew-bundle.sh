#!/bin/sh

if [ -f "$HOME/.Brewfile" ] && ! brew bundle check --global; then
  echo "[brew] Installing bundle dependencies"
  brew bundle install 
fi
