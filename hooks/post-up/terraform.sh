#!/usr/bin/env bash

if [ -f "$HOME/.terraformrc" ]; then
  if [ ! -d "$HOME/.terraform.d" ]; then
    echo "[terraform] Creating config directory"
    mkdir "$HOME/.terraform.d"
  fi

  if [ ! -d "$HOME/.terraform.d/plugin-cache" ]; then
    echo "[terraform] Creating plugin cache directory"
    mkdir "$HOME/.terraform.d/plugin-cache"
  fi
fi
