#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

gh_repo_content_url=https://raw.githubusercontent.com/vr4b4c/dotfiles/HEAD

main() {
  /bin/bash -c "$(curl -fsSL ${gh_repo_content_url}/script/echo.sh)"
  brew install git
  # git clone git@github.com:vr4b4c/dotfiles.git "$HOME"/dotfiles
  git clone git@github.com:vr4b4c/dotfiles.git /tmp/dotfiles
}

main
