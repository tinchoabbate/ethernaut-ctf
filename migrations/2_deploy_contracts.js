let Fallback = artifacts.require('./Fallback.sol');
let Fallout = artifacts.require('./Fallout.sol');

module.exports = deployer => {
    deployer.deploy(Fallback);
    deployer.deploy(Fallout);
}
