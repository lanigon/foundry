// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";
import {Vm} from "forge-std/Vm.sol";
import {Transfer} from "../src/Transfer.sol";
import {Counter} from "../src/Counter.sol";

contract TransferTest is Test {
  Transfer public _transfer;
  Counter public _counter;
  address payable public sender1 = payable(address(0x2));
  address payable public sender2 = payable(address(0x1));

  function setUp() public {
     _counter = new Counter();
    _transfer = new Transfer(address(_counter));
    vm.deal(sender1, 100 ether);
    vm.deal(sender2, 100 ether);
    vm.deal(address(_transfer), 100 ether);
  }

  function test_balance() public {
    vm.prank(sender1); 
    _counter.deposit{value: 12 ether}();
    vm.prank(sender2);
    _counter.deposit{value: 10 ether}();
    _transfer.deposit{value: 11 ether}();

    console2.log('transbalance', address(_transfer).balance/1 ether);
    console2.log('counterbalance', address(_counter).balance/1 ether);
  }
}