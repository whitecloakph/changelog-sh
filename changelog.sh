#!/bin/bash

source ~/.change/changelog-init.sh
source ~/.change/changelog-new.sh
source ~/.change/changelog-preview.sh
source ~/.change/changelog-release.sh

function changelog {
  error="Invalid command. Valid commands:
  - init
  - new
  - preview
  - release
"

  if [ "$#" -eq 0 ]; then
    printf "$error"
    return
  fi

  if [ $1 == 'init' ]; then
    init ${@:2}
    return
  fi

  if [ $1 == 'new' ]; then
    new ${@:2}
    return
  fi

  if [ $1 == 'preview' ]; then
    preview ${@:2}
    return
  fi

  if [ $1 == 'release' ]; then
    release ${@:2}
    return
  fi

  printf "$error"
}

changelog $@
