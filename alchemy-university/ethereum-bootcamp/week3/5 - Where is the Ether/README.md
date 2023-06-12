### Where is the Ether?
- If you take a look at the test cases you'll see that there will be three blocks mined with several transactions in each one.
    - The addresses where the ether is sent to will be randomly generated. 
    - It is up to you to find all of these addresses and return them in an array.
        - await ``provider.getBlockNumber()`` will return the current block number.
        - await ``provider.getBlock(blockNumber)`` will return the block object for the given block number.
        - The block object has a ``transactions`` property which is an array of transaction hashes.
#### Your Goal: Find the Addresses
- The ``findEther`` function is passed an ``address`` which has sent ether to several addresses.
    - The goal of this function is to find every address that has received ether and return it in an array of addresses.
---
**SOLUTION**
```js
const { providers } = require('ethers');
const { ganacheProvider } = require('./config');

const provider = new providers.Web3Provider(ganacheProvider);

async function findEther(address) {
    let addresses = []
    const block = await provider.getBlockNumber()
    for (let i=0;i<=block;i++){
        let blockTx = await provider.getBlockWithTransactions(i)
        blockTx.transactions.forEach(tx => addresses.push(tx.to))
    }
    return addresses
}

module.exports = findEther;
```
---