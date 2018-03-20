#!/bin/bash

function new {

  timestamp=$(date +"%Y%m%d%H%M%S")
  type='fixed'

  if [ ! -d 'changelog' ]; then
    mkdir 'changelog'
  fi

  if [ ! -d 'changelog/unreleased' ]; then
    mkdir 'changelog/unreleased'
  fi

  if [ "$#" -ge 2 ]; then
    type=$2
  fi

  if [ ! -d "changelog/unreleased/$type" ]; then
    mkdir "changelog/unreleased/$type"
  fi

  if [ "$#" -ge 3 ]; then
    echo ${@:3} > "changelog/unreleased/$type/$timestamp"
  fi

}
