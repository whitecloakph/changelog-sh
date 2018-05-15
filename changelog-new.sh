#!/bin/bash

function _changelogsh_new {

  timestamp=$(date +"%Y%m%d%H%M%S")
  type='fixed'

  if [ ! -d 'changelog' ]; then
    mkdir 'changelog'
  fi

  if [ ! -d 'changelog/unreleased' ]; then
    mkdir 'changelog/unreleased'
  fi

  if [ "$#" -ge 1 ]; then
    type=$1
  fi

  if [ ! -d "changelog/unreleased/$type" ]; then
    mkdir "changelog/unreleased/$type"
  fi

  if [ "$#" -ge 2 ]; then
    echo ${@:2} > "changelog/unreleased/$type/$timestamp"
  fi

}
