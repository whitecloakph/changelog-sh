#!/bin/bash

function upgrade {
  if [ ! -n "$CHANGE" ]; then
    CHANGE=~/.change
  fi

  cd $CHANGE
  git pull
}
