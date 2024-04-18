#!/usr/bin/env bash

if [ -f "$HOME/.tool-versions" ]; then
  echo "[asdf] Installing plugins"
  asdf install
fi
