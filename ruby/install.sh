#!/usr/bin/env bash

set -e
if [[ ! $(which rvm) ]]; then
  echo "Installing rvm"
  \curl -sSL https://get.rvm.io | bash
fi
