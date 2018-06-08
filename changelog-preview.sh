#!/bin/bash

function _changelogsh_preview {
  raw_version="Unreleased"
  expanded="Unreleased"
  if [ "$#" -gt 0 ]; then
    raw_version=$1
  fi

  if [ $raw_version != "Unreleased" ]; then
    expanded=$(_changelogsh_raw_to_expanded $raw_version)
  fi

  if [ ! -d "changelog/$expanded" ]; then
    printf "$raw_version not found.\n"
    return
  fi

  echo "# What's new?"
  echo ""
  echo "## [$raw_version]"

  for dir in changelog/$expanded/*; do
    if [ "$(ls -A $dir)" ]; then
      current=$(echo $dir | grep -o '[^/]*$')
      echo "###" $(_changelogsh_title $current)
      for file in $dir/*; do
        echo "-" $(cat $file)
      done
      echo ""
    fi
  done
}
