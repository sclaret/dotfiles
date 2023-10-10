#! /usr/bin/env bash

set -x

function link_config {
  echo "Need a symbolic link pointing to"
  echo "source_file $1"
  echo "from link_name $2" 
  set -x
  if [[ -h $2 ]]; then
    echo "$2 is a symbolic link"
    unlink $2
  elif [[ -f $2 ]]; then
    echo "Error: $2 is a file"
    exit 1
  elif [[ -d $2 ]]; then
    echo "Error: $2 is a directory"
    exit 1
  else
    echo "$2 does not exist"
  fi
  ln -vs $1 $2
  set +x
  echo
}

link_config $PWD/.bash_profile ~/.bash_profile
link_config $PWD/.bashrc ~/.bashrc
link_config $PWD/.bash_aliases ~/.bash_aliases

set +x
