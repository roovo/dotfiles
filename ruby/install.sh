#!/usr/bin/env bash

set -e

info () {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

if [[  $(which rvm) ]]; then
  user ' - rvm not installed - install it? [y/N]'
  read -n 1 install_rvm
  echo ''

  if [[ "${install_rvm}" == "y" ]]; then
    info "Installing rvm\n"
    \curl -sSL https://get.rvm.io | bash
  fi
fi
