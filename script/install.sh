#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

main() {
  curl -fsSL https://github.com/vr4b4c/dotfiles/archive/refs/heads/master.zip -o dotfiles.zip
  unzip dotfiles.zip
  cd dotfiles-master
  ./script/restore-secrets.sh
  brew install git
  git clone git@github.com:vr4b4c/dotfiles.git "$HOME"/dotfiles

  cd ..
  rm dotfiles.zip
  rm -r dotfiles-master
}

main
