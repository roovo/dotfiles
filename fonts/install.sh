#!/usr/bin/env bash

set -e

if [[ $OS == "linux" ]]; then
  echo "Installing powerline patched fonts"
  fc-cache -vf ~/.fonts
fi
