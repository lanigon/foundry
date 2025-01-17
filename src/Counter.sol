// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {console2} from "forge-std/console2.sol";

contract Counter {
    address public owner;
    mapping(address => uint256) public balances;

    constructor(){
        owner = msg.sender;
    }
    
    function deposit() public payable {
        balances[msg.sender] += msg.value;
        console2.log("deposit", address(this).balance/1 ether);
    }

    function withdraw() public {
        uint256 amount = balances[msg.sender];
        console2.log("amount", amount/1 ether);
        //payable(msg.sender).transfer(amount);
        (bool success, ) = msg.sender.call{value: amount, gas: 1000000}("");
        require(success, "Failed to send Ether");
        balances[msg.sender] = 0;
    }
    
    function add() public payable {
        require(msg.value > 0, "No ETH sent");
        maxUint += msg.value;
    }
}
