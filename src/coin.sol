// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        // 设置总供应量为10亿
        // 1,000,000,000 * 10^18
        uint256 initialSupply = 1_000_000_000 * 10 ** decimals();

        // 将所有代币铸造给指定地址 - 使用正确的checksum地址
        _mint(0x64dd8a8bB289f311002AD09233977BB2D8651578, initialSupply);
    }
}
