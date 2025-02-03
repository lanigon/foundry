// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/coin.sol";

contract DeployScript is Script {
    function run() external {
        // 读取私钥
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        // 开始部署
        vm.startBroadcast(deployerPrivateKey);

        // 部署合约
        MyToken token = new MyToken();

        vm.stopBroadcast();
    }
} 