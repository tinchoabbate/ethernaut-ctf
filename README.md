# ethernaut-ctf
Based on [https://ethernaut.zeppelin.solutions/](https://ethernaut.zeppelin.solutions/)

You can find the writeups at [notonlyowner.com](https://notonlyowner.com)

## Install dependencies
- Run `npm install` to install both Ganache-cli and Truffle

## Usage
1. Start `ganache-cli` on port 7545 with `npx ganache-cli --port 7545`
2. Deploy contracts to local blockchain running `npx truffle migrate`
3. Execute exploit with `npx truffle exec exploits/<filename>`

> Note: I initially started coding the exploits as Truffle external scripts, that's why most of them are to be executed with `npx truffle exec`. Another totally valid approach, and somewhat simpler, would be to just build the exploits as [Truffle tests](https://truffleframework.com/docs/truffle/testing/writing-tests-in-javascript). This is what I started doing after `Privacy`.
