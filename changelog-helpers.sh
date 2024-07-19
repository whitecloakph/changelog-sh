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
  input=$1
  echo $input | fold -w3 | tr '\n' ' ' | sed 's/0*//g' | awk '{ if(NF=2){ $3=$2; $2=$1; $1=0 } if($3==""){ $3=0 } } {print $1 "." $2 "." $3}'
}
