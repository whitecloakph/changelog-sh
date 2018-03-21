#!/bin/bash

function title {
  input=$1
  echo $(echo ${input:0:1} | tr  '[a-z]' '[A-Z]')${input:1}
}

function preview {
  echo "# What's new?"
  echo ""
  echo "## [Unreleased]"

  for dir in changelog/unreleased/*; do
    if [ "$(ls -A $dir)" ]; then
      current=$(echo $dir | grep -o '[^/]*$')
      echo "###" $(title $current)
      for file in $dir/*; do
        echo "-" $(cat $file)
      done
      echo ""
    fi
  done
}
