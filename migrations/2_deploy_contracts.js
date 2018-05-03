let Fallback = artifacts.require('./Fallback.sol');

module.exports = deployer => {
    deployer.deploy(Fallback);
}
