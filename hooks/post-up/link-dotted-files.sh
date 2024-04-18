#!/bin/sh

echo "[rcm] Linking dotted files"
if ! [ -L "$HOME/.config/nvim/.luarc.json" ]; then
  ln -s "$HOME/dotfiles/tag-nvim/config/nvim/.luarc.json" "$HOME/.config/nvim/.luarc.json"
fi

if ! [ -L "$HOME/.config/nvim/.stylua.toml" ]; then
  ln -s "$HOME/dotfiles/tag-nvim/config/nvim/.stylua.toml" "$HOME/.config/nvim/.stylua.toml"
fi
