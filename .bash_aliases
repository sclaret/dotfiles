#! /usr/bin/env bash

####################
# SHORTCUTS        #
####################

alias h="cd ~"
alias w="cd ~/workspace"
alias s="cd ~/scratch"
alias D="cd ~/Downloads"

####################
# EDITORS          #
####################

alias v="vim"
#alias e="emacs -nw"

####################
# COMMANDS         #
####################

alias p="pwd"
alias c="cd"
alias l="ls -lh"
alias ll="ls -alh"
alias r="rm -rf"
alias ssh="ssh -F ~/.config/ssh/config"

#alias diff="diff --color=always"
#  -y, --side-by-side

# alias tl="journalctl -f"
#alias tl="dmesg -w"
#alias tl="cd /var/log; tail -f *.log"
#alias tl="logread -f"

alias e="gh copilot explain"

######################
# COMPOUND COMMANDS  #
######################

alias dus="du -sh * | sort -h"

######################
# PACKAGE MANAGEMENT #
######################

alias brew="sudo -Hu brew brew"

####################
# GIT              #
####################
alias g="git"

alias gs="git status"
alias gl="git log"
alias glp="git log --patch"

function gbc() {
  git branch $@
  git checkout $@
}
alias gba="git branch -a"
alias gm="git merge"           #BRANCH to merge into current branch
alias gms="git merge --squash" #BRANCH to merge into current branch

alias gcheckouth="git checkout HEAD --" #my-file.txt  # update the working copy of my-file.txt with that from HEAD

alias ga="git add"
alias gai="git add --interactive" #patch 1 <enter>
alias gaa="git add --all"
alias grm="git rm"

alias gd="git diff"
alias gdc="git diff --cached"

alias gc="git commit"
alias gca="git commit --amend --reuse-message=HEAD"

alias gp="git push"
alias gpf="git push --force"

alias gr="git reset" # undo add
alias grs="git reset --soft"
alias grm="git reset --mixed"
alias grh="git reset --hard"
alias gclean="git clean -dxn"
alias gcleanf="git clean -dxf"

####################
# PYTHON           #
####################

alias va="source venv/bin/activate"
