#!/bin/bash
set -e
[[ $debug ]] && set -x

env

echo "
LANG $LANG
LC_ALL $LC_ALL
LC_CTYPE $LC_CTYPE
"

# rand_subdomain_suffix=$(LC_ALL=C tr -dc 'a-z' < /dev/random | fold -w 4 | head -n 1)
ls -al /dev/random

bs_len=${#BASH_SOURCE[@]}
for (( index=0; index < bs_len; ((index++)) )); do
  echo "${BASH_SOURCE[$index]}"
done
