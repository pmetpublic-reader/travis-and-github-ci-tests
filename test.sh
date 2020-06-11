#!/bin/bash
set -e
[[ $debug ]] && set -x

echo "ARGH!"
#rand_subdomain_suffix="$(base64 < /dev/random | LC_ALL=C tr '[:upper:]' '[:lower:]' | head -c 4)"
rand_subdomain_suffix="$(head /dev/random | LC_ALL=C tr -dc 'a-z' | head -c 4)"
echo "$rand_subdomain_suffix"
