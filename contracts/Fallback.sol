pragma solidity ^0.4.18;

import "./open-zeppelin/Ownable.sol";

/**
URL: https://ethernaut.zeppelin.solutions/level/0x234094aac85628444a82dae0396c680974260be7
 */
contract Fallback is Ownable {
    mapping(address => uint) public contributions;

    function Fallback() public {
        // Initial contribution from the owner
        contributions[msg.sender] = 1000 * (1 ether);
    }

    /**
    Fallback function. Can only be executed if the
    caller has previously made a contribution.
     */
    function() public payable {
        require(msg.value > 0 && contributions[msg.sender] > 0);
        owner = msg.sender;
    }

    /**
    Stores the number of ethers sent by the caller.
    If this contribution is greater that the one made by the owner,
    then the sender becomes the new owner of the contract.
     */
    function contribute() public payable {
        require(msg.value < 0.001 ether);
        contributions[msg.sender] += msg.value;
        if(contributions[msg.sender] > contributions[owner]) {
            owner = msg.sender;
        }
    }

    /**
    Returns the contribution made by the caller
     */
    function getContribution() public view returns (uint) {
        return contributions[msg.sender];
    }

    /**
    Allows the owner of the contract to withdraw all the money stored.
    Can only be called by the owner.
     */
    function withdraw() public onlyOwner {
        owner.transfer(address(this).balance);
    }

}
