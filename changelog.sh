#!/bin/bash

source ~/.change/changelog-init.sh
source ~/.change/changelog-new.sh
source ~/.change/changelog-preview.sh
source ~/.change/changelog-release.sh

function changelog {
  usage="usage: change <command> [<args>]
  
  These are the available commands:

  init      Initialize changelog in current directory
  new       Register new change in the changelog
  preview   Preview the changelog in Markdown format
  release   Release the changes for the current version
  "

  if [ "$#" -eq 0 ]; then
    printf "$usage"
    return
  fi

  if [ $1 == 'init' ]; then
    init ${@:1}
    return
  fi

  if [ $1 == 'new' ]; then
    new ${@:1}
    return
  fi

  if [ $1 == 'preview' ]; then
    preview ${@:1}
    return
  fi

  if [ $1 == 'release' ]; then
    release ${@:1}
    return
  fi

  printf "Invalid command."
	printf "$usage"
}

changelog $@
