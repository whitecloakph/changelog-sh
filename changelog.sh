#!/bin/bash

source changelog-init.sh
source changelog-new.sh
source changelog-render.sh
source changelog-release.sh

function changelog {
  error="
  Invalid command. Valid commands:\n
  - init\n
  - new\n
  - render\n
  - release
  "

  if [ "$#" -eq 0 ]; then
    echo $error
    return
  fi

  if [ $1 == 'init' ]; then
    init ${@:1}
  fi

  if [ $1 == 'new' ]; then
    new ${@:1}
  fi

  if [ $1 == 'render' ]; then
    render ${@:1}
  fi

  if [ $1 == 'release' ]; then
    release ${@:1}
  fi
}

changelog $@
