pragma solidity ^0.4.18;

contract Delegate {
    address public owner;

    function Delegate(address _owner) public {
        owner = _owner;
    }

    function pwn() public {
        owner = msg.sender;
    }
}
