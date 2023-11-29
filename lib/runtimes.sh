#! /usr/bin/env bash

function activate_runtimes {
  # nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
  # n

  # pyenv
  [ -a "/usr/local/bin/pyenv" ] && eval "$(pyenv init -)"

}

# Known problem with node on macos
# https://github.com/webpack/webpack/issues/14532
#  export NODE_OPTIONS=--openssl-legacy-provider

#  pattern="^.*darwin.*$"
#  if [[ $OSTYPE =~ $pattern ]]; then
#    #echo "Placing brew bindir early in PATH"
#    export PATH=/usr/local/bin:$PATH
#  fi
