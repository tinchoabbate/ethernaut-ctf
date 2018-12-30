# ethernaut-ctf
Based on [https://ethernaut.zeppelin.solutions/](https://ethernaut.zeppelin.solutions/)

You can find the writeups at [hackingmood.com](https://hackingmood.com)

## Requirements
- Truffle and Ganache-cli (`npm i -g truffle@4.1.14 ganache-cli@6.1.8`)

## Usage
1. Start `ganache-cli` on port 7545 with `ganache-cli --port 7545`
2. Deploy contracts to local blockchain running `truffle migrate`
3. Execute exploit with `truffle exec exploits/<filename>`

> Note: I initially started coding the exploits as Truffle external scripts, that's why they are to be executed with `truffle exec`. While a bit different, another totally valid approach would be to build the exploits as [Truffle tests](https://truffleframework.com/docs/truffle/testing/writing-tests-in-javascript).
