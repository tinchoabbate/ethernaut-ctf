# ethernaut-ctf
Based on [https://ethernaut.zeppelin.solutions/](https://ethernaut.zeppelin.solutions/)

You can find the writeups at [hackingmood.com](https://hackingmood.com)

## Requirements
- Truffle and Ganache-cli (`npm i -g truffle ganache-cli`)

## Usage
1. Start `ganache-cli` on port 7545 with `ganache-cli --port 7545`
2. Deploy contracts to local blockchain running `truffle migrate`
3. Execute exploit with `truffle exec exploits/<filename>`
