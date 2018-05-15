#!/bin/bash

function _changelogsh_init {
  if [ ! -d 'changelog' ]; then
    mkdir 'changelog'
  fi

  if [ ! -d 'changelog/unreleased' ]; then
    mkdir 'changelog/unreleased'
  fi

  if [ ! -d 'changelog/unreleased/added' ]; then
    mkdir 'changelog/unreleased/added'
  fi

  if [ ! -d 'changelog/unreleased/changed' ]; then
    mkdir 'changelog/unreleased/changed'
  fi

  if [ ! -d 'changelog/unreleased/deprecated' ]; then
    mkdir 'changelog/unreleased/deprecated'
  fi

  if [ ! -d 'changelog/unreleased/fixed' ]; then
    mkdir 'changelog/unreleased/fixed'
  fi

  if [ ! -d 'changelog/unreleased/removed' ]; then
    mkdir 'changelog/unreleased/removed'
  fi

  if [ ! -d 'changelog/unreleased/security' ]; then
    mkdir 'changelog/unreleased/security'
  fi
}
