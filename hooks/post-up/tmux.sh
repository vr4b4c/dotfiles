#!/usr/bin/env bash

if [ -f "$HOME/.tmux.conf" ]; then
  if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "[tmux] Installing tpm"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
  fi

  echo "[tmux] Installing plugins"
  bash "$HOME/.tmux/plugins/tpm/bin/install_plugins"
fi
