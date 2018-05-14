let Fallback = artifacts.require('./Fallback.sol')
let Fallout = artifacts.require('./Fallout.sol')
let CoinFlip = artifacts.require('./CoinFlip.sol')
let CoinFlipAttack = artifacts.require('./CoinFlipAttack.sol')
let Telephone = artifacts.require('./Telephone.sol')
let TelephoneAttack = artifacts.require('./TelephoneAttack.sol')
let Token = artifacts.require('./Token.sol')
let Delegate = artifacts.require('./Delegate.sol')
let Delegation = artifacts.require('./Delegation.sol')
let Force = artifacts.require('./Force.sol')
let Vault = artifacts.require('./Vault.sol')
let King = artifacts.require('./King.sol')
let KingAttack = artifacts.require('./KingAttack.sol')
let Reentrance = artifacts.require('./Reentrance.sol')
let Elevator = artifacts.require('./Elevator.sol')

const TOKEN_INITIAL_SUPPLY = 20
const INITIAL_PRIZE = 0.01

module.exports = deployer => {
    deployer.deploy(Fallback)
    deployer.deploy(Fallout)
    deployer.deploy(CoinFlip)
    deployer.deploy(CoinFlipAttack)
    deployer.deploy(Telephone)
    deployer.deploy(TelephoneAttack)
    deployer.deploy(Token, TOKEN_INITIAL_SUPPLY)
    deployer.deploy(Delegate, web3.eth.accounts[0]).then(() => {
        return deployer.deploy(Delegation, Delegate.address)
    })
    deployer.deploy(Force)
    deployer.deploy(Vault, web3.fromAscii('4_Sup3r-S3kur3_P4sSw0rD!', 32))
    deployer.deploy(King, {
        value: web3.toWei(0.01, 'ether')
    })
    deployer.deploy(Reentrance)
    deployer.deploy(Elevator)
}
