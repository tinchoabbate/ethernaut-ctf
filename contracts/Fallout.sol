pragma solidity ^0.4.18;

import "./open-zeppelin/Ownable.sol";

contract Fallout is Ownable {
    mapping (address => uint) allocations;

    // Constructor
    function Fal1out() public payable {
        owner = msg.sender;
        allocations[owner] = msg.value;
    }

    function allocate() public payable {
        allocations[msg.sender] += msg.value;
    }

    function sendAllocation(address allocator) public {
        require(allocations[allocator] > 0);
        allocator.transfer(allocations[allocator]);
    }

    function collectAllocations() public onlyOwner {
        msg.sender.transfer(address(this).balance);
    }

    function allocatorBalance(address allocator) public view returns (uint) {
        return allocations[allocator];
    }
}
