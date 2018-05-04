pragma solidity ^0.4.18;

import "./Delegate.sol";

contract Delegation {
    address public owner;
    Delegate delegate;

    function Delegation(address _delegateAddress) public {
        delegate = Delegate(_delegateAddress);
        owner = msg.sender;
    }

    function() public {
        if(delegate.delegatecall(msg.data)) {
            this;
        }
    }
}
