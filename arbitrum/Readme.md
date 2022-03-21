#Curl example: 
curl --location --request POST 'https://apiscore.titans.finance/api/v1/rpc/ethereum' \
--header 'Content-Type: application/json' \
--data-raw '{
    "jsonrpc":"2.0",
    "method":"net_version",
    "params":[],
    "id":67
}'

#more arbitrum info: https://developer.offchainlabs.com/docs/developer_quickstart