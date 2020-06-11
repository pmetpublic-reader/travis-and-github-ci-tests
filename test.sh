#!/bin/bash
set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR
trap - SIGPIPE
[[ $debug ]] && set -x

echo "
LANG $LANG
LC_ALL $LC_ALL
LC_CTYPE $LC_CTYPE
"

# rand_subdomain_suffix=$(LC_ALL=C tr -dc 'a-z' < /dev/random | fold -w 4 | head -n 1)
ls -al /dev/random
head /dev/random | LC_ALL=C tr -dc 'a-z' | head -c 4

