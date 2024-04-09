#!/bin/sh

if ! [ -f "$HOME/.config/nvim/.luarc.json" ]; then
  ln -s "$HOME/dotfiles/tag-nvim-lazy/config/nvim/.luarc.json" "$HOME/.config/nvim/.luarc.json"
fi

if ! [ -f "$HOME/.config/nvim/.stylua.toml" ]; then
  ln -s "$HOME/dotfiles/tag-nvim-lazy/config/nvim/.stylua.toml" "$HOME/.config/nvim/.stylua.toml"
fi
