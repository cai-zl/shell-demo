#!/opt/homebrew/bin/bash

a=0
until [ ! ${a} -lt 10 ]; do
  echo ${a}
  let "a++"
done
