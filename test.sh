#!/bin/bash
set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR
trap - SIGPIPE
[[ $debug ]] && set -x

echo "ARGH!"
trap - SIGPIPE
rand_subdomain_suffix="$(base64 < /dev/random | tr '[:upper:]' '[:lower:]' | head -c 4)"
echo "$rand_subdomain_suffix"