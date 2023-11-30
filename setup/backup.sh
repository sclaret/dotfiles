#! /usr/bin/env bash

set -x

if [[ -f ~/.bash_profile ]]; then
  mv ~/.bash_profile ~/.bash_profile.BK
fi

if [[ -f ~/.bashrc ]]; then
  mv ~/.bashrc ~/.bashrc.BK
fi

if [[ -f ~/.bash_aliases ]]; then
  mv ~/.bash_aliases ~/.bash_aliases.BK
fi

set +x
