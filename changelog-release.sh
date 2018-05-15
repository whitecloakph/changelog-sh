#!/bin/bash

function _changelogsh_release {

  if [ ! -d "changelog/unreleased/" ]; then
    printf "Nothing to release.\n"
    return
  fi

  if [ "$#" -lt 1 ]; then
    echo "Version is required"
    return
  fi

  mv 'changelog/unreleased' "changelog/$1"
  preview $1
}
