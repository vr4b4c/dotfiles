#!/usr/bin/env bash

source ./script/util.sh

restore_shell_secrets () {
  print_line "Restoring up shell secrets..."

  cd "$HOME" || exit
  while [ ! -f "$HOME/secrets.enc" ]
  do
    print_subline "Download secrets.enc (https://www.dropbox.com/home/Private/software)"
    wait_continue 1
  done

  openssl aes-256-cbc -d -md md5 -in secrets.enc -out .secrets -k "$DOTFILES_SECRET_KEY"
  rm secrets.enc
  print_subline "Done"
}

restore_ssh_keys() {
  print_line "Restoring SSH keys..."

  cd "$HOME" || exit
  while [ ! -f "$HOME/ssh.tgz.enc" ]
  do
    print_subline "Download ssh.tgz.enc (https://www.dropbox.com/home/Private/software)"
    wait_continue 1
  done

  openssl aes-256-cbc -d -md md5 -in ssh.tgz.enc -out ssh.tgz -k "$DOTFILES_SECRET_KEY"
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
