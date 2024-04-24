#!/bin/sh

echo "[rcm] Linking dotted files"
if ! [ -L "$HOME/.config/nvim/.luarc.json" ]; then
  ln -s "$HOME/dotfiles/tag-nvim/config/nvim/.luarc.json" "$HOME/.config/nvim/.luarc.json"
fi
