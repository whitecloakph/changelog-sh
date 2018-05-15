#!/bin/bash

function _changelogsh_upgrade {
  if [ ! -n "$CHANGE" ]; then
    CHANGE=~/.change
  fi

  cd $CHANGE
  git pull
}
