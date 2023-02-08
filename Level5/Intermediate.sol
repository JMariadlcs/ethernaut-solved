// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Telephone.sol";

contract Intermediate {

  Telephone telephoneContract;

  constructor(address _telephoneContractAddress) {
    telephoneContract = Telephone(_telephoneContractAddress);
  }

  function changeOwner(address newOwner) public {
    telephoneContract.changeOwner(newOwner);
  }
}