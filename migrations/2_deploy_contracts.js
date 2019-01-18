const Fallback = artifacts.require('./Fallback.sol')
const Fallout = artifacts.require('./Fallout.sol')
const CoinFlip = artifacts.require('./CoinFlip.sol')
const CoinFlipAttack = artifacts.require('./CoinFlipAttack.sol')
const Telephone = artifacts.require('./Telephone.sol')
const TelephoneAttack = artifacts.require('./TelephoneAttack.sol')
const Token = artifacts.require('./Token.sol')
const Delegate = artifacts.require('./Delegate.sol')
const Delegation = artifacts.require('./Delegation.sol');
const Force = artifacts.require('./Force.sol');
const Vault = artifacts.require('./Vault.sol');
const King = artifacts.require('./King.sol');
const KingAttack = artifacts.require('./KingAttack.sol');
const Reentrance = artifacts.require('./Reentrance.sol');
const Elevator = artifacts.require('./Elevator.sol');
const Privacy = artifacts.require('./Privacy.sol');

const TOKEN_INITIAL_SUPPLY = 20
const INITIAL_PRIZE = 0.01

module.exports = deployer => {
    deployer.deploy(Fallback);
    deployer.deploy(Fallout);
    deployer.deploy(CoinFlip);
    deployer.deploy(CoinFlipAttack);
    deployer.deploy(Telephone);
    deployer.deploy(TelephoneAttack);
    deployer.deploy(Token, TOKEN_INITIAL_SUPPLY);
    deployer.deploy(Delegate, web3.eth.accounts[0]).then(() => {
        return deployer.deploy(Delegation, Delegate.address);
    })
    deployer.deploy(Force);
    deployer.deploy(Vault, web3.fromAscii('4_Sup3r-S3kur3_P4sSw0rD!', 32));
    deployer.deploy(King, {
        value: web3.toWei(0.01, 'ether')
    })
    deployer.deploy(Reentrance);
    deployer.deploy(Elevator);
    deployer.deploy(Privacy, ['this is', 'the', 'data']);
}
