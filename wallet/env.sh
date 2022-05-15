#!/bin/bash

# inject variables into wallet bundle
WALLET_JS_FILE_GLOB="/var/www/html/wallet/src*js"

sed -i -E 's$([,{])'"${1}"':"[^"]*"([,}])$\1'"${1}"':"'"${2}"'"\2$g' ${WALLET_JS_FILE_GLOB}
