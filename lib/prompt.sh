#! /usr/bin/env bash

function activate_prompt {

  if [[ $# -eq 0 ]]; then
    PROMPT_DIRTRIM=1
  else
    PROMPT_DIRTRIM=$1
  fi
  PS1='[\u@\h \w]\$ '

  #  if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  #    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  #    GIT_PROMPT_ONLY_IN_REPO=1
  #    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
  #  fi

}
