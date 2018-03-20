#!/bin/bash

source changelog-init.sh
source changelog-new.sh
source changelog-render.sh

if [ $1 == 'init' ]; then
  init ${@:1}
fi

if [ $1 == 'new' ]; then
  new ${@:1}
fi

echo "asdf"

if [ $1 == 'render' ]; then
  render ${@:1}
fi
