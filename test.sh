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
head -c 4 /dev/random
head -c 4 /dev/urandom
dd if=/dev/random bs=50 count=1
dd if=/dev/urandom bs=50 count=1
