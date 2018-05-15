#!/bin/bash

if [ ! -n "$CHANGE" ]; then
  CHANGE=~/.change
fi

source $CHANGE/changelog-helpers.sh

source $CHANGE/changelog-init.sh
source $CHANGE/changelog-new.sh
source $CHANGE/changelog-preview.sh
source $CHANGE/changelog-release.sh
source $CHANGE/changelog-unrelease.sh
source $CHANGE/changelog-upgrade.sh

function _changelogsh_main {
  usage="usage: change <command> [<args>]
  
  These are the available commands:

  init      Initialize changelog in current directory
  new       Register new change in the changelog
  preview   Preview the changelog in Markdown format
  release   Release the changes for the current version
  unrelease Reverts the changes from the version specified back to unreleased
  upgrade   Pulls the latest master branch from GitHub\n"

  if [ "$#" -eq 0 ]; then
    printf "$usage"
    return
  fi

  if [ $1 == 'init' ]; then
    _changelogsh_init ${@:2}
    return
  fi

  if [ $1 == 'new' ]; then
    _changelogsh_new ${@:2}
    return
  fi

  if [ $1 == 'preview' ]; then
    _changelogsh_preview ${@:2}
    return
  fi

  if [ $1 == 'release' ]; then
    _changelogsh_release ${@:2}
    return
  fi

  if [ $1 == 'unrelease' ]; then
    _changelogsh_unrelease ${@:2}
    return
  fi

  if [ $1 == 'upgrade' ]; then
    _changelogsh_upgrade ${@:2}
    return
  fi

  printf "Invalid command."
  printf "$usage"
}

_changelogsh_main $@
