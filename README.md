部署合约
forge create --rpc-url $sepolia_rpc_url --private-key $private_key src/vrf.sol:RandomNumberConsumer --constructor-args $subscirbe_id
forge create --rpc-url $sepolia_rpc_url --broadcast --private-key $private_key src/course/MyERC20TokenOZ.sol:MyERC20TokenOZ --constructor-args gtk gtk 6 10000000 --use 0.8.27

forge create \
    --rpc-url $sepolia_rpc_url \
    --private-key $private_key \
    src/coin.sol:MyToken \
    --constructor-args gtk gtk 6 10000000 \

27: 0xa76ee5442E8c7C3f902B2d8a1A2CB9F64bb6E0BE get

forge verify-contract --flatten --watch --compiler-version "v0.8.27+commit.40a35a09" \
  --constructor-args $(cast abi-encode "constructor(string,string,uint256,uint256)" "gtk" "gtk" 6 10000000) \
  0xa76ee5442E8c7C3f902B2d8a1A2CB9F64bb6E0BE MyERC20TokenOZ \
  --chain-id 11155111

forge verify-contract --flatten --watch --compiler-version "v0.8.27+commit.40a35a09" \
  0x4638b4Aaf474cA18a4B348C6AEaf4B437adB184c MyToken \
  --chain-id 11155111

部署本地区块链
anvil
