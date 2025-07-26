#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

source ./script/util.sh

backup_ssh_keys() {
  print_line "Backing up SSH keys..."

  cd "$HOME" || exit
  COPYFILE_DISABLE=1 tar -czvf ssh.tgz .ssh &> /dev/null
  encrypt ssh.tgz ssh.tgz.enc

  print_subline "Backup ~/ssh.tgz.enc ($secret_store_location)"
  wait_continue 1

  print_subline "Removing artifacts"
  rm ssh.tgz ssh.tgz.enc
  print_subline "Done"
}

backup_shell_secrets () {
  print_line "Backing up shell secrets..."

  cd "$HOME" || exit
  encrypt .secrets secrets.enc

  print_subline "Backup ~/secrets.enc ($secret_store_location)"
  wait_continue 1

  print_subline "Removing artifacts"
  rm secrets.enc
  print_subline "Done"
}

main () {
  ensure_secret_key_defined
  backup_ssh_keys
  backup_shell_secrets
  exit 0
}

main
