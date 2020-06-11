#!/bin/bash
set -e
[[ $debug ]] && set -x

echo "
LANG $LANG
LC_ALL $LC_ALL
LC_CTYPE $LC_CTYPE
"

# rand_subdomain_suffix=$(LC_ALL=C tr -dc 'a-z' < /dev/random | fold -w 4 | head -n 1)
ls -al /dev/random
cat /dev/random | LC_ALL=C tr -dc 'a-z' | fold -w 4 | head -n 1

