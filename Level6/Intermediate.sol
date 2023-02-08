// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Token.sol";

contract Intermediate {

  Token tokenContract;

  constructor(address _tokenContractAddress) public {
    tokenContract = Token(_tokenContractAddress);
  }

  function transfer(address _to, uint _value) public {
    tokenContract.transfer(_to, _value);
  }
}