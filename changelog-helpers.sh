#!/bin/bash

function _changelogsh_title {
  input=$1
  echo $(echo ${input:0:1} | tr  '[a-z]' '[A-Z]')${input:1}
}
