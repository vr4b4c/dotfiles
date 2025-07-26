#!/usr/bin/env bash

error_code_secret_key_undefined=1
error_code_unknown_command=2
export secret_store_location="https://www.dropbox.com/home/Private/software"

print_line () {
  local line=$1
  local indent=${2:-0}

  case $indent in
    0)
    echo "$line"
    ;;

    *)
    echo "  > $line"
    ;;
  esac
}

print_subline () {
  print_line "$1" 1
}

wait_continue () {
  local indent=$1

  local command=

  print_line "Press 'c' to continue: " "$indent"
  read -r command
  if [[ "$command" != "c" ]]; then
    print_line "Unknown command: '$command'" "$indent"
    print_line "Exiting..." "$indent"
    exit  $error_code_unknown_command
  fi
}

ensure_secret_key_defined () {
  if [[ -z "${DOTFILES_SECRET_KEY}" ]]; then
    echo "DOTFILES_SECRET_KEY is not defined"
    echo "Exiting..."
    exit $error_code_secret_key_undefined
  fi
}

encrypt () {
  local input=$1
  local output=$2

  openssl aes-256-cbc -e -md sha512 -pbkdf2 -iter 1000000 -in "$input" -out "$output" -k "$DOTFILES_SECRET_KEY"
}

decrypt () {
  local input=$1
  local output=$2

  openssl aes-256-cbc -d -md sha512 -pbkdf2 -iter 1000000 -in "$input" -out "$output" -k "$DOTFILES_SECRET_KEY"
}
