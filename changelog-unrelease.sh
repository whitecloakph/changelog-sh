#!/bin/bash

function _changelogsh_unrelease {

  if [ "$#" -eq 0 ]; then
    echo "Version is required"
    return
  fi

  version=$1
  expanded=$(_changelogsh_raw_to_expanded $1)

  if [ ! -d "changelog/$expanded" ]; then
    printf "$version not found.\n"
    return
  fi

  if [ ! -d 'changelog/unreleased' ]; then
    mkdir 'changelog/unreleased'
  fi

  mv changelog/$expanded/* changelog/unreleased/
  rm -r changelog/$expanded

  _changelogsh_preview
}
