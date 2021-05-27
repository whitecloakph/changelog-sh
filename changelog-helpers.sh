#!/bin/bash

function _changelogsh_title {
  input=$1
  echo $(echo ${input:0:1} | tr  '[a-z]' '[A-Z]')${input:1}
}

function _changelogsh_raw_to_expanded {
  input="$1"
  split=("${input//./ }")
  echo $split | xargs printf '%03d'
}

function _changelogsh_expanded_to_raw {
  echo $(echo $1 | fold -w3 | sed 's/^0//g; s/^0//g;' | tr '\n' '.' | sed 's/.$//g;')
}
