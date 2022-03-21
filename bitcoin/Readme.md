# Bitcoin Mainnet Deployer on Akash
This image will deploy Bitcoin node on Mainnet.

# Verify Node Active
Assuming your akash provider forwarded port for `:8332` is `:32066` and the provider url is `provider.edgenet-3.ca.aksh.pw`

```shell
curl --user username:password --data-binary '{"jsonrpc":"1.0","id":"curltest","method":"getblockchaininfo","params":[]}' -H 'content-type:text/plain;' http://provider.edgenet-3.ca.aksh.pw:32066/
```

Output:
```json
{"result":{"chain":"main","blocks":323427,"headers":727740,"bestblockhash":"000000000000000017df004a169bf1af66c496141d7145b0a23e37a349fb581d","difficulty":34661425923.97694,"mediantime":1412205855,"verificationprogress":0.06782864175043646,"initialblockdownload":true,"chainwork":"00000000000000000000000000000000000000000001e4241ef7c06aff08ca20","size_on_disk":27610189626,"pruned":false,"softforks":{"bip34":{"type":"buried","active":true,"height":227931},"bip66":{"type":"buried","active":false,"height":363725},"bip65":{"type":"buried","active":false,"height":388381},"csv":{"type":"buried","active":false,"height":419328},"segwit":{"type":"buried","active":false,"height":481824},"taproot":{"type":"bip9","bip9":{"status":"defined","start_time":1619222400,"timeout":1628640000,"since":0,"min_activation_height":709632},"active":false}},"warnings":""},"error":null,"id":"curltest"}
```


# More RPC available on https://developer.bitcoin.org/reference/rpc/index.html