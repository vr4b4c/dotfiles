#!/bin/sh

if [ -f "$HOME/.Brewfile" ] && ! brew bundle check --file="$HOME/.Brewfile"; then
  echo "[brew] Installing bundle dependencies"
  brew bundle install --file="$HOME/.Brewfile"
fi

if [ -f "$HOME/.Brewfile.local" ] && ! brew bundle check --file="$HOME/.Brewfile.local"; then
  echo "[brew/local] Installing bundle dependencies"
  brew bundle install --file="$HOME/.Brewfile.local"
fi
