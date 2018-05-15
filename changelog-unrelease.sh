#!/bin/bash

function _changelogsh_unrelease {

  if [ "$#" -eq 0 ]; then
    echo "Version is required"
    return
  fi

  version=$1

  if [ ! -d "changelog/$version" ]; then
    printf "$version not found.\n"
    return
  fi

  if [ ! -d 'changelog/unreleased' ]; then
    mkdir 'changelog/unreleased'
  fi

  mv changelog/$version/* changelog/unreleased/
  rm -r changelog/$version

  preview
}
