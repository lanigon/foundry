// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {console2} from "forge-std/console2.sol";

contract Counter {
    uint256 public number;
    address public owner;

    constructor(){
        owner = msg.sender;
    }
    function setNumber(uint256 newNumber) public {
        number = newNumber;
        console2.log(owner);
        console2.log("tsss");
    }

    function increment() public {
        number++;
    }
}
