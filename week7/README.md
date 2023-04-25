## Solidity Governance

---
### Table of Contents
1. [Proxy Contracts](#proxy-contracts)
    - [Storage Slots](#storage-slots)
    - [What is contract storage layout and why does it matter?](#what-is-contract-storage-layout-and-why-does-it-matter)
    - [How is memory used in the EVM?](#how-is-memory-used-in-the-evm)
        - [Solidity Memory Types](#solidity-memory-types)
    - [What is storage memory?](#what-is-storage-memory)
    - [How are state variables stored in smart contract storage slots?](#how-are-state-variables-stored-in-smart-contract-storage-slots)
    - [What is Endian-ness?](#what-is-endian-ness)
        - [How is Endian-ness used in Ethereum?](#how-is-endian-ness-used-in-ethereum)
    - [How are state variables padded and packed in smart contract storage slots?](#how-are-state-variables-padded-and-packed-in-smart-contract-storage-slots)
    - [How are user-defined types (structs) stored in contract memory?](#how-are-user-defined-types-structs-stored-in-contract-memory)
    - [How are statically-sized variables stored in memory?](#how-are-statically-sized-variables-stored-in-memory)
    - [How are dynamically-sized state variables stored in smart contract memory?](#how-are-dynamically-sized-state-variables-stored-in-smart-contract-memory)
    - [How are mappings stored in smart contract storage?](#how-are-mappings-stored-in-smart-contract-storage)
---

### Proxy Contracts
#### [Storage Slots](https://docs.alchemy.com/docs/smart-contract-storage-layout#how-is-memory-used-in-the-evm)
- This guide will explain how data stored on smart contracts. 
    - Contract storage layout refers to the rules governing how contracts’ storage variables are laid out in long-term memory.

#### What is contract storage layout and why does it matter?
- Contract storage layout refers to the rules governing how contracts’ storage variables are laid out in long-term memory. 
    - Almost all smart contracts have state variables that need to be stored long-term.
- Understanding contract storage layout is important for:
    - writing gas-efficient contracts as storing data in long-term memory on the blockchain is expensive.
    - working with contracts that use design patterns such as a proxy or a diamond pattern or other various patterns.
    - security auditing a contract. Not understanding contract storage layout rules might leave our contracts vulnerable.
- In addition to the public functions and variables we define to make up our contract’s external interface, the layout of state variables is also considered to be part of the external interface as well.
- Smart contract developer’s do not have direct control over this aspect of their contract’s external interface, it is controlled by the compiler. 
    - However, if the compiler version changes and the rules of contract storage layout were to change, a developer would need to be aware of this.

#### How is memory used in the EVM?
- Smart contracts are computer programs that run on blockchains.
    - Programs consist of functions and data (also known as variables or parameters) that functions operate on.
    - The data that functions use need to be stored somewhere in the computer’s memory.
    - In this case the computer is the EVM.
##### Solidity Memory Types
- There are 3 different types of memory in Solidity that developers can use to instruct the EVM where to store their variables: memory, calldata, and storage.
- There are also rules about how long the variable’s memory location will be valid as well as rules about how the variable can be used.
    - For example, can the variable be read? Can the variable be written to?
1. **Memory**
- Developers use the memory keyword for variables and parameters that are used within a function.
    - These types of variables only exist during the lifetime of a function being executed.
    - When a function finishes running, the variables and parameters stored in the memory area go away.
    - For those with programming backgrounds memory is the type of memory that most people are familiar with.
2. **Calldata**
- The calldata memory type is very similar to the memory type and must be used when declaring an external function’s dynamically-sized parameters that make up a function’s signature.
- The difference between memory variables and calldata variables is that calldata variables reference an area of memory that is read-only.
3. **Storage**
- The final type of memory in Solidity is the storage type.
    - Storage memory is a contract’s long-term memory area that stores variables after a function or a transaction is done executing.
- The EVM rules about how storage variables are laid out is the focus of this article.
- The idea of long-term memory storage is in stark contrast to the other two memory types.
    - A contract’s state variables (i.e. variables declared inside a contract, but not inside a function) are stored in the storage memory area.
- The concept of the storage memory type is unique to blockchains, because when working with smart contracts, stored data is tamper-proof via cryptographic-sealing properties that blockchains give us.
    - In other programming environments, if we want to store variables long-term, we usually off-load this work to a filesystem or database.
    - But in blockchain, a smart contract’s code and data are both persisted together long-term on the blockchain.

#### What is storage memory?
- Each contract gets its own storage area which is a persistent, read-write memory area.
    - Contract’s can only read and write from their own storage.
    - A contract’s storage is divided up into 2²⁵⁶ slots of 32 bytes each.
    - Slots are contiguous and are referenced by indexes, starting at 0 and ending at 2²⁵⁶.
    - All slots are initialized to a value of 0.
- EVM storage memory is only directly accessible by these 32 byte slots.
**2²⁵⁶ slots!**
- Each contract’s storage area has more slots than all the stars in the universe. We’re dealing with truly astronomical proportions here.
- Because of the immense storage size a contract’s storage can be considered virtual.
    - What that means is, that if you were to read a random slot, it will most likely be empty/uninitialized.
    - Reading such a slot will return a value of 0.
    - The EVM is not actually storing all these 0s, but it keeps track of which slots are in use and which are not.
    - When you access an unused slot the EVM knows that and will return 0.
**Why did the designers of the EVM give contracts such a large storage area?**
- The reason the contract storage area is so large has to do with state variables of dynamic size and how hashes are used to calculate state variables’ storage slots.

#### How are state variables stored in smart contract storage slots?
- Solidity will automatically map every defined state variable of your contract to a slot in storage in the order the state variables are declared, starting at slot 0.
- A simple visualization of this idea is show here:
![storage](https://files.readme.io/e316e25-diagram-mapping-contract-state-variables-to-storage-slots.jpeg)
- Here we can see how variables a, b and c get mapped from their declaration order to their storage slots.
    - To see how the storage variables actually get encoded and stored in the slots at the binary level we need to dig a little deeper and understand the concepts of endian-ness, byte-packing and byte-padding.

#### What is Endian-ness?
- Endian-ness refers to how computers store multi-byte values in memory (eg: uint256, bytes32, address), and there are two types of endian-ness: big-endian and little-endian.
    - Big-endian → last byte of binary representation of data type is stored first
    - Little-endian → first byte of binary representation of data type is stored first
- For example take the hexadecimal number 0x01e8f7a1, a hexadecimal representation of the decimal number 32044961.
    - How is this value stored in memory?
    - Visually it will look like one of the diagrams below depending on the endian-ness.
![endian](https://files.readme.io/a21dcf5-diagram-of-big-endian-and-little-endian-storage-layouts-in-solidity-smart-contracts.jpeg)

##### How is Endian-ness used in Ethereum?
- Ethereum uses both endian-ness formats, and the format used depends on the variable type.
    - Big-endian is only used for bytes and string types.
        - These 2 types behave differently in a contract’s storage slots than other variables.
    - Little-endian is used for every other type of variable.
        - Some examples are: uint8, uint32, uint256, int8, boolean, address, etc…

#### How are state variables padded and packed in smart contract storage slots?
- To store variables that require less than 32 bytes of memory in storage, the EVM will pad the values with 0s until all 32 bytes of the slot are used and then store the padded value.
- Many variable types are smaller than the 32 byte slot size, eg: bool, uint8, address.
    - Here is a diagram of what it looks like when we want to store state variables of types requiring less than 32 bytes of memory:
![padded](https://files.readme.io/89ce3ce-diagram-of-how-the-ethereum-virtual-machine-pads-state-variables-that-need-less-than-32-bytes-of-memory.jpeg)
- Due to EVM padding, developer’s can directly address the state variables a and c at the cost of wasting a lot of expensive storage memory.
    - The EVM stores the variables in a way that minimizes the cost of reading/writing the values at the expense of the amount of memory used.
- If we think carefully about the sizes of our contracts’ state variables and their declaration order, the EVM will pack the variables into storage slots to reduce the amount of storage memory that is used.
    - Taking the ``PaddedContract`` example above we can reorder the declaration of the state variables to get the EVM to tightly pack the variables into storage slots.
- An example of this is shown in the ``PackedContract`` below which is just a reordering of the variables in the ``PaddedContract`` example:
![packed](https://files.readme.io/058295a-diagram-of-a-packed-contract-example-where-variables-are-packed-into-storage-slots-to-reduce-storage-memory.jpeg)
- The EVM will pack variables within a slot starting at the right of the slot, moving left for each subsequent state variable that can be packed into the same slot.
    - Here we can see that the variables a and c have been packed into storage slot 0.
    - Because the size of variable b cannot fit into the remaining space in slot 0, the EVM assigns variable b to slot 1.
- In contrast to padding variables, packing minimizes the amount of storage used at the expense of reading/writing these variables.
    - The extra reading and writing costs come from the fact that extra bitwise operations will need to be done to read a and c.
    - For example, to read a the EVM will need to read storage slot 0 and then bitmask out all bits not belonging to variable a.
- The storage gas savings of tightly packing variables can significantly increase the cost of reading/writing them if the packed variables are not usually used together.
    - For example, if we need to read c very often without reading a it might be best to not tightly pack the variables.
    - This is a design consideration developers must take into account when writing contracts.

#### How are user-defined types (structs) stored in contract memory?
- In scenarios where we have a group of variables that logically belong together and are often read and written as unit, we can define a user-defined type via Solidity’s struct keyword and apply the above knowledge of byte-packing to get the most efficient gas-usage regarding storage usage and reading and writing of storage variables.
![structs](https://files.readme.io/3e9dfc1-diagram-of-how-user-defined-structrs-are-packed-and-stored-in-smart-contract-storage-memory.jpeg)
- Now we have the benefit of tight byte-packing and grouped reading/writing of the state variable someStruct.

#### How are statically-sized variables stored in memory?
- Statically-sized state variables are stored in their corresponding slots.
    - If a statically-sized variable is 2 slots in size (64 bytes) and stored at slot s, then the following storage variable will be stored at slot s + 2.
- For example, the storage layout of the state variables in the following contract:
![static](https://files.readme.io/c9c107b-diagram-of-how-statically-sized-variables-are-stored-in-smart-contract-storage-memory.jpeg)

#### How are dynamically-sized state variables stored in smart contract memory?
- Dynamically-sized state variables are assigned slots in the same way as statically-sized state variables, but the slots assigned to dynamic state variables are only marker slots.
    - That is, the slots mark the fact that a dynamic array or mapping exists, but the slot doesn’t store the variable’s data.
- For a [dynamically-sized variable](https://www.alchemy.com/overviews/solidity-arrays), why isn’t its data stored directly in its assigned slot the same way that it works for statically-sized variables?
- Because if new items are added to the variable it will require more slots to store its data, meaning subsequent state variables would have to be pushed down to further slots.
- By using the ``keccak256 hash`` of the marker slot, we can take advantage of the enormous virtual storage area we have to store variables without the risk of a dynamically-sized variable growing and overlapping with other state variables.
- For a dynamically-sized array, the marker slot also stores the array’s length.
    - The keccak256 hash of the marker slot number is a ‘pointer’ to where the array’s values live in the contract’s storage layout.
![dynamic](https://files.readme.io/388c33b-diagram-of-how-dynamically-sized-variables-are-stored-in-storage-memory-using-keccak256-hashing.jpeg)

#### How are mappings stored in smart contract storage?
- For [mappings](https://www.alchemy.com/overviews/solidity-mapping), the marker slot only marks the fact that there is a mapping.
    - To find a value for a given key, the formula keccak256(h(k) . p) is used where:
        - the symbol . denotes string concatenation
        - p is the state variable’s declaration position in the smart contract
        - h()is a function that is applied to the key depending on the key’s type
        - for value types, h() returns the padded the value to 32 bytes
        - for strings and byte arrays, h() just returns the unpadded data
- Here is an diagram depicting how mappings are stored in memory:
![mapping](https://files.readme.io/c4ba494-diagram-of-how-mappings-are-stored-in-storage-memory-using-keccak256-hashing.jpeg)