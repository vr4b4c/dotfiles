#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

source ./script/util.sh

DOTFILES_SECRET_KEY="${DOTFILES_SECRET_KEY:-$(op read op://Employee/Dotfiles/DOTFILES_SECRET_KEY)}"

destination_dir="${DESTINATION_DIR:-$HOME}"

restore_shell_secrets () {
  print_line "Restoring up shell secrets..."

  cd "$destination_dir" || exit
  while [ ! -f "$destination_dir/secrets.enc" ]
  do
    print_subline "Download secrets.enc ($secret_store_location) to $destination_dir"
    wait_continue 1
  done

  decrypt secrets.enc .secrets
  rm secrets.enc
  print_subline "Done"
}

restore_ssh_keys() {
  print_line "Restoring SSH keys..."

  cd "$destination_dir" || exit
  while [ ! -f "$destination_dir/ssh.tgz.enc" ]
  do
    print_subline "Download ssh.tgz.enc ($secret_store_location) to $destination_dir"
    wait_continue 1
  done

  decrypt ssh.tgz.enc ssh.tgz
  tar -xzvf ssh.tgz  &> /dev/null
  rm ssh.tgz.enc ssh.tgz
  print_subline "Done"
}

main () {
  ensure_secret_key_defined
  # restore_shell_secrets
  restore_ssh_keys
}

main
