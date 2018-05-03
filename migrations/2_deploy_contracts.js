let Fallback = artifacts.require('./Fallback.sol');
let Fallout = artifacts.require('./Fallout.sol');
let CoinFlip = artifacts.require('./CoinFlip.sol');
let CoinFlipAttack = artifacts.require('./CoinFlipAttack.sol');

module.exports = deployer => {
    deployer.deploy(Fallback);
    deployer.deploy(Fallout);
    deployer.deploy(CoinFlip);
    deployer.deploy(CoinFlipAttack);
}
