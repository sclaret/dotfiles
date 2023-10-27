clear

if [[ -n $PS1 ]]; then

  # INTERNAL SETUP
  function get_source_dir {
    _source_file=${BASH_SOURCE[1]}
    if [[ -L $_source_file ]]; then
      _source_file=$(readlink $_source_file)
    fi
    dirname $_source_file
  }
  DOTFILES_DIR=$(get_source_dir)
  export PATH=$PATH:$DOTFILES_DIR/bin
  source ~/.bash_aliases
  source <(cat $DOTFILES_DIR/lib/*.sh)
  # https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
  # https://wiki.archlinux.org/title/XDG_Base_Directory
  export XDG_CONFIG_HOME="$HOME/.config"
  export WGETRC="$DOTFILES_DIR/.config/wget/wgetrc"
  export XDG_STATE_HOME="$HOME/.local/state"
  mkdir -p ${XDG_STATE_HOME}

  # TERMINAL WORKAROUNDS
  if [[ "${BASH_VERSINFO[0]}" -lt "5" ]]; then
    echo "Warning: this bash interpreter is old ($BASH_VERSION)"
  fi
  # In many terminals, the CTRL-s is actually mapped to suspend the terminal session.
  # This suspend and resume feature is not needed.
  # Turn it off to restore CTRL-s to search-forwards mapping:
  stty -ixon

  # DEFAULT APPS, APP CONFIG
  export PATH=$PATH:/usr/local/bin:$PATH
  export EDITOR="vim"
  #export EDITOR="emacs -nw"
  export PAGER="less"
  export HOMEBREW_NO_AUTO_UPDATE=1

  # PROMPTS
  activate_prompt 5
  #   activate_completions

  # ENVIRONMENTS, RUNTIMES
  #   activate_runtimes

  # OTHER
#   activate_secondary_dotfiles $SECONDARY_DOTFILES_DIR

fi
