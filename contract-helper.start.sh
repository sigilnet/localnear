#!/bin/sh

cp /root/.near/localnet/node0/validator_key.json .

ACCOUNT_CREATOR_KEY=$(cat validator_key.json | tr -d " \t\n\r") && echo "ACCOUNT_CREATOR_KEY=$ACCOUNT_CREATOR_KEY" >> .env

yarn start
