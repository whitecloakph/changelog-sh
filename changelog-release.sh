#!/bin/bash

function release {

  if [ "$#" -lt 2 ]; then
    echo "Version is required"
    return
  fi

  mv 'changelog/unreleased' "changelog/$2"
}
