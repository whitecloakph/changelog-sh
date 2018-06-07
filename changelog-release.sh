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

  version=$1
  expanded=$(_changelogsh_raw_to_expanded $version)

  mv 'changelog/unreleased' "changelog/$expanded"
  _changelogsh_preview $1
}
