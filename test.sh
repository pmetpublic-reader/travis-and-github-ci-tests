#!/bin/bash
set -e
[[ $debug ]] && set -x

env

echo "
LANG $LANG
LC_ALL $LC_ALL
LC_CTYPE $LC_CTYPE
"



