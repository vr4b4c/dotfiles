#!/usr/bin/env bash

if [ -f "$HOME/.tmux.conf" ]; then
  echo "[tmux] Installing plugins"
  bash "$HOME/.tmux/plugins/tpm/bin/install_plugins"
fi
