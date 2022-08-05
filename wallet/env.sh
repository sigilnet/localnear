#!/bin/bash

# inject variables into wallet bundle
WALLET_JS_FILE_GLOB="/var/www/html/wallet/src*js"

sed -i -E 's$([,{])'"${1}"':"[^"]*"([,}])$\1'"${1}"':"'"${2}"'"\2$g' ${WALLET_JS_FILE_GLOB}

if [ $1 = "ACCOUNT_HELPER_URL" ]; then
  sed -i -E 's$https://testnet-api.kitwallet.app$'"${2}"'$g' ${WALLET_JS_FILE_GLOB}
  sed -i -E 's$https://near-contract-helper.onrender.com$'"${2}"'$g' ${WALLET_JS_FILE_GLOB}
fi
