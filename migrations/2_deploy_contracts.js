let Fallback = artifacts.require('./Fallback.sol');
let Fallout = artifacts.require('./Fallout.sol');
let CoinFlip = artifacts.require('./CoinFlip.sol');
let CoinFlipAttack = artifacts.require('./CoinFlipAttack.sol');
let Telephone = artifacts.require('./Telephone.sol');
let TelephoneAttack = artifacts.require('./TelephoneAttack.sol');

module.exports = deployer => {
    deployer.deploy(Fallback);
    deployer.deploy(Fallout);
    deployer.deploy(CoinFlip);
    deployer.deploy(CoinFlipAttack);
    deployer.deploy(Telephone);
    deployer.deploy(TelephoneAttack);
}
