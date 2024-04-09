#!/usr/bin/env bash

source ./script/util.sh

backup_ssh_keys() {
  print_line "Backing up SSH keys..."

  cd "$HOME" || exit
  COPYFILE_DISABLE=1 tar -czvf ssh.tgz .ssh &> /dev/null
  openssl aes-256-cbc -e -md md5 -in ssh.tgz -out ssh.tgz.enc -k "$DOTFILES_SECRET_KEY"

  print_subline "Backup ssh.tgz.enc (https://www.dropbox.com/home/Private/software)"
  wait_continue 1

  print_subline "Removing artifacts"
  rm ssh.tgz ssh.tgz.enc
  print_subline "Done"
}

backup_shell_secrets () {
  print_line "Backing up shell secrets..."

  cd "$HOME" || exit
  openssl aes-256-cbc -e -md md5 -in .secrets -out secrets.enc -k "$DOTFILES_SECRET_KEY"

  print_subline "Backup secrets.enc (https://www.dropbox.com/home/Private/software)"
  wait_continue 1

  print_subline "Removing artifacts"
  rm secrets.enc
  print_subline "Done"
}

main () {
  ensure_secret_key_defined
  backup_ssh_keys
  backup_shell_secrets
  exit 1
}

main
