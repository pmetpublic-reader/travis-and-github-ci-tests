#!/bin/bash
set -e
[[ $debug ]] && set -x

echo "ARGH!"
#rand_subdomain_suffix="$(base64 < /dev/random | LC_ALL=C tr '[:upper:]' '[:lower:]' | head -c 4)"
echo "y" | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

