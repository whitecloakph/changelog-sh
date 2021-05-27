#!/bin/bash

release_file=CHANGELOG.md 

function _changelogsh_release {

  if [ ! -d "changelog/unreleased/" ]; then
    printf "Nothing to release.\n"
    return
  fi

  if [ "$#" -lt 1 ]; then
    echo "Version is required"
    return
  fi

  version=$1
  expanded=$(_changelogsh_raw_to_expanded $version)

  mv 'changelog/unreleased' "changelog/$expanded"

  exec > $release_file

  echo "# What's new?"

  find changelog/*/ -prune -type d | sort -r | while IFS= read -r d; do 
    d=${d%*/}
    raw=$(_changelogsh_expanded_to_raw "${d##*/}")
    _changelogsh_preview "$raw"
  done
}
