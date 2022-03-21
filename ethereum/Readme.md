# Ethereum Mainnet Deployer on Akash
This image will deploy Ethereum node on Mainnet.

# Verify Node Active
Assuming your akash provider forwarded port for `:3545` is `:32271` and the provider url is `provider.edgenet-3.ca.aksh.pw`

```shell
curl --location --request POST 'http://provider.edgenet-3.ca.aksh.pw:32271/' --header 'Content-Type: application/json' --data-raw '{
        "jsonrpc":"2.0",
        "method":"web3_clientVersion",
        "params":[],
        "id":1
}'
```

Output:
```json
{"jsonrpc":"2.0","id":1,"result":"Geth/v1.10.17-unstable-2352c722-20220316/linux-amd64/go1.17.8"}
```


# More RPC available on https://documenter.getpostman.com/view/4117254/ethereum-json-rpc/RVu7CT5J