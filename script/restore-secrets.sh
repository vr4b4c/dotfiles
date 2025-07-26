#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

source ./script/util.sh

DOTFILES_SECRET_KEY="${DOTFILES_SECRET_KEY:-$(op read op://Employee/Dotfiles/DOTFILES_SECRET_KEY)}"

restore_shell_secrets () {
  print_line "Restoring up shell secrets..."

  cd "$HOME" || exit
  while [ ! -f "$HOME/secrets.enc" ]
  do
    print_subline "Download secrets.enc ($secret_store_location) to $HOME"
    wait_continue 1
  done

  decrypt secrets.enc .secrets
  rm secrets.enc
  print_subline "Done"
}

restore_ssh_keys() {
  print_line "Restoring SSH keys..."

  cd "$HOME" || exit
  while [ ! -f "$HOME/ssh.tgz.enc" ]
  do
    print_subline "Download ssh.tgz.enc ($secret_store_location) to $HOME"
    wait_continue 1
  done

  decrypt ssh.tgz.enc ssh.tgz
  tar -xzvf ssh.tgz  &> /dev/null
  rm ssh.tgz.enc ssh.tgz
  print_subline "Done"
}

main () {
  ensure_secret_key_defined
  restore_shell_secrets
  restore_ssh_keys
}

main
