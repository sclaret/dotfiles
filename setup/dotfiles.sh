#! /usr/bin/env bash

set -x

if [[ ! -d ~/scratch ]]; then
    echo "Error: ~/scratch not found"
    exit 1
fi

if [[ ! -d ~/workspace ]]; then
    echo "Error: ~/workspace not found"
    exit 1
fi
cd ~/workspace
echo

if [[ -f ./dotfiles ]]; then
    echo "Error: ~/workspace/dotfiles already exists"
    exit 1
fi

if ! git clone git@github.com:sclaret/dotfiles.git; then
  echo "Error: failed to clone dotfiles via SSH"
  exit 1
#  echo "         falling back to anonymous https"
#  git clone https://github.com/sclaret/dotfiles.git
fi
echo

cd dotfiles

set +x

source ./setup/links.sh
echo
