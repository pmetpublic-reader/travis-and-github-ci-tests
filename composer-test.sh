#!/bin/bash
set -e
[[ $debug ]] && set -x

git clone https://github.com/magento/magento-cloud.git -b 2.3.5
cd magento-cloud
composer install
