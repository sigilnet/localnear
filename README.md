LocalNear is a Local Development Environment for NEAR with a simple docker-compose file, which contains following components:
- Localnet RPC Endpoint
- Indexer for Explorer
- NEAR Explorer
- NEAR Wallet

## Start LocalNear
`$ docker-compose up -d`

## Testing
`$ ./local_near state test.near`

## Local NEAR Wallet
<http://localhost:13034>

### Login via near-cli
`$ ./local_near login`

### Send a test transaction
`$ export ACCOUNT_ID=<YOUR_ACCOUNT_ID>`

`$ ./local_near send $ACCOUNT_ID test.near 1`

## Local NEAR Explorer
<http://localhost:13032>

## Deploy a Smart Contract
```
$ curl -o ~/main.wasm https://github.com/near-examples/nft-tutorial/raw/main/out/main.wasm -L
$ ./local_near deploy --wasmFile ~/main.wasm --accountId $ACCOUNT_ID
```

### Interact with the deployed contract
```
$ ./local_near call $ACCOUNT_ID new_default_meta '{"owner_id": "'$ACCOUNT_ID'"}' --accountId $ACCOUNT_ID
$ ./local_near call $ACCOUNT_ID nft_mint '{"token_id": "team_token", "metadata": { "title": "Go Team!", "description": "Go Team!", "media": "https://bafybeiftczwrtyr3k7a2k4vutd3amkwsmaqyhrdzlhvpt33dyjivufqusq.ipfs.dweb.link/goteam-gif.gif", "copies": 1}, "receiver_id": "'$ACCOUNT_ID'"}' --accountId $ACCOUNT_ID --amount 0.1
```

## Stop LocalNear
`$ docker-compose down`

### In case you want a clean environment, reset all old data following these steps:
```
$ docker-compose down
$ docker volume rm localnear_postgres
$ rm -rf .near*
$ docker-compose up -d
```
