#!/usr/bin/env bash

echo "[nvim] Syncing Lazy plugins"
nvim --headless "+Lazy! sync" +qa
