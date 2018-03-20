#!/bin/bash

source changelog-init.sh
source changelog-new.sh
source changelog-render.sh
source changelog-release.sh

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
