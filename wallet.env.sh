#!/bin/bash

# inject variables into wallet bundle
WALLET_JS_FILE_GLOB="/var/www/html/wallet/src*js"

declare -A JS_ENV
JS_ENV['ACCESS_KEY_FUNDING_AMOUNT']="3000000000000000000000000"
JS_ENV['ACCOUNT_ID_SUFFIX']="test.near"
JS_ENV['NETWORK_ID']="localnet"
JS_ENV['IS_MAINNET']="false"
JS_ENV['ACCOUNT_HELPER_URL']="http://127.0.0.1:3032"
JS_ENV['EXPLORER_URL']="http://127.0.0.1:3031"
JS_ENV['NODE_URL']="http://127.0.0.1:3030"

for key in "${!JS_ENV[@]}"; do
    value=${JS_ENV[$key]}
    sed -i -E 's$([,{])'"${key}"':"[^"]*"([,}])$\1'"${key}"':"'"${value}"'"\2$g' ${WALLET_JS_FILE_GLOB}
done
