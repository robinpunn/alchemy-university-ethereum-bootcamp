## Slot 3 Solidity 201

---
### Table of Contents
1. [Block 1](#block-1)
    102. [Inheritance](#102-inheritance)
    103. [Contract Types](#103-contract-types)
    104. [Using For](#104-using-for)
    105. [Base Class Function](#105-base-class-function)
    106. [Shadowing](#106-shadowing)
    107. [Overriding Changes](#107-overriding-changes)
    108. [Virtual Functions](#108-virtual-functions)
    109. [State Variables](#109-state-variables)
    110. [Function Modifiers](#110-function-modifiers)
    111. [Base Constructor](#111-base-constructor)
    112. [Name Collision](#112-name-collision)
    113. [Library Restrictions](#113-library-restrictions)
    114. [EVM Storage](#114-evm-storage)
    115. [Storage Layout](#115-storage-layout)
    116. [Stroge Packing](#116-storage-packing)
    117. [Structs and Arrays](#117-structs-and-arrays)
    118. [Inheritance](#118-inheritance)
    119. [Layout and Types](#119-layout-and-types)
    120. [Layout and Ordering](#120-layout-and-ordering)
2. [Block 2](#block-2)
	121. [Mapping and Dynamic Arrays](#121-mapping-and-dynamic-arrays)
	122. [Dynamic Arrays](#122-dynamic-arrays)
	123. [Mappings](#123-mappings)
	124. [bytes and string](#124-bytes-and-string)
	125. [Memory](#125-memory)
	126. [Memory Layout](#126-memory-layout)
	127. [Reserved Memory](#127-reserved-memory)
	128. [Memory Arrays](#128-memory-arrays)
	129. [Free Memory Pointer](#129-free-memory-pointer)
	130. [Zeroed Memory](#130-zeroed-memory)
	131. [Reserved Keywords](#131-reserved-keywords)
	132. [Inline Assembly](#132-inline-assembly)
	133. [Assembly Access](#133-assembly-access)
	134. [Yul Syntax](#134-yul-syntax)
	135. [Solidity 0.6.0 Breaking](#135-solidity-060-breaking)
	136. [Solidity 0.6.0 Explicitness](#136-solidity-060-explicitness)
	137. [Solidity 0.6.0 Changes](#137-solidity-060-changes)
	138. [Solidity 0.6.0 New Features](#138-solidity-060-new-features)
	139. [Solidity 0.7.0 Breaking](#139-solidity-070-breaking)
	140. [Solidity 0.7.0 Changes](#140-solidity-070-changes)
3. [Block 3](#block-3)
	141. [Solidity 0.7.0 Removed](#141-solidity-070-removed)
	142. [Solidity 0.8.0 Breaking](#142-solidity-080-breaking)
	143. [Solidity 0.8.0 Restrictions](#143-solidity-080-restrictions)
	144. [Zero Address Check](#144-zero-address-check)
	145. [tx.origin Check](#145-txorigin-check)
	146. [Arithmetic Check](#146-arithmetic-check)
	147. [OpenZeppelin Libraries](#147-open-zeppelin-libraries)
	148. [OpenZeppelin ERC20](#148-openzeppelin-erc20)
	149. [OpenZeppelin SafeERC20](#149-openzeppelin-safeerc20)
	150. [OpenZeppelin TokenTimelock](#150-openzeppelin-tokentimelock)
	151. [OpenZeppelin ERC721](#151-openzeppelin-erc721)
	152. [OpenZeppelin ERC777](#152-openzeppelin-erc777)
	153. [OpenZeppelin ERC1155](#153-openzeppelin-erc1155)
	154. [OpenZeppelin Ownable](#154-openzeppelin-ownable)
	155. [OpenZeppelin AccessControl](#155-openzeppelin-accesscontrol)
	156. [OpenZeppelin Pausable](#156-openzeppelin-pausable)
	157. [OpenZeppelin ReentrancyGuard](#157-openzeppelin-reentrancyguard)
	158. [OpenZeppelin PullPayment](#158-openzeppelin-pullpayment)
	159. [OpenZeppelin Address](#159-156-openzeppelin-address)
	160. [OpenZeppelin Arrays](#160-openzeppelin-arrays)
4. [Block 4](#block-4)
	161. [OpenZeppelin Context](#161-openzeppelin-context)
	162. [OpenZeppelin Counters](#162-openzeppelin-counters)
	163. [OpenZeppelin CREATE2](#163-openzeppelin-create2)
	164. [OpenZeppelin Multicall](#164-openzeppelin-multicall)
	165. [OpenZeppelin Strings](#165-openzeppelin-strings)
	166. [OpenZeppelin ECDSA](#166-openzeppelin-ecdsa)
	167. [OpenZeppelin Merkleproof](#167-openzeppelin-merkleproof)
	168. [OpenZeppelin SignatureChecker](#168-openzeppelin-signaturechecker)
	169. [OpenZeppelin EIP712](#169-openzeppelin-eip712)
	170. [OpenZeppelin Escrow](#170-160-openzeppelin-escrow)
	171. [OpenZeppelin ConditoinalEscrow](#171-openzeppelin-conditionalescrow)
	172. [OpenZeppelin RefundEscrow](#172-openzeppelin-refundescrow)
	173. [OpenZeppelin ERC165](#173-openzeppelin-erc165)
	174. [OpenZeppelin Math](#174-openzeppelin-math)
	175. [OpenZeppelin SafeMath](#175-openzeppelin-safemath)
	176. [OpenZeppelin SignedSafeMath](#176-openzeppelin-signedsafemath)
	177. [OpenZeppelin SafeCast](#177-openzeppelin-safecast)
	178. [OpenZeppelin EnumberableMap](#178-openzeppelin-enumerablemap)
	179. [OpenZeppelin EnumerableSet](#179-openzeppelin-enumerableset)
	180. [OpenZeppelin Bitmaps](#180-openzeppelin-bitmaps)
5. [Block 5](#block-5)
	181. [OpenZeppelin PaymentSplitter](#181-openzeppelin-paymentsplitter)
	182. [OpenZeppelin TimelockController](#182openzeppelin-timelockcontroller)
	183. [OpenZeppelin ERC2771Context](#183-openzeppelin-erc2771context)
	184. [OpenZeppelin MinimalForwarder](#184-openzeppelin-minimalforwarder)
	185. [OpenZeppelin Proxy](#185-openzeppelin-proxy)
	186. [OpenZeppelin ERC1967Proxy](#186-openzeppelin-erc1967proxy)
	187. [OpenZeppelin TransparentUpgradeableProxy](#187-openzeppelin-transparentupgradeableproxy)
	188. [OpenZeppelin ProxyAdmin](#188-openzeppelin-proxyadmin)
	189. [OpenZeppelin BeaconProxy](#189-openzeppelin-beaconproxy)
	190. [OpenZeppelin UpgradeableBeacon](#190-openzeppelin-upgradeablebeacon)
	191. [OpenZeppelin Clones](#191-openzeppelin-clones)
	192. [OpenZeppelin Initializable](#192-openzeppelin-initializable)
	193. [Dappsys DSProxy](#193-dappsys-dsproxy)
	194. [Dappsys DSMath](#194-dappsys-dsmath)
	195. [Dappsys DSAuth](#195-dappsys-dsauth)
	196. [Dappsys DSGuard](#196-dappsys-dsguard)
	197. [Dappsys DSRoles](#197-dappsys-dsroles)
	198. [WETH](#198-weth)
	199. [UniSwap V2](#199-uniswap-v2)
	200. [Uniswap V3](#200-uniswap-v3)
	201. [Chainlink Oracles and Price Feeds](#201-chainlink-oracles--price-feeds)
6. [Quiz](#quiz)
---

### [Block 1](https://www.youtube.com/watch?v=3bFgsmsQXrE)
#### 102. Inheritance
- Solidity supports multiple inheritance including polymorphism
	- A function call (internal and external) always executes the function of the same name (and parameter types) in the most derived contract in the inheritance heirarchy.
	- When a contract inherits from other contracts, only a single contract is created on the blockchain with the code of the base contract compiled into the created contract
	- Function Overriding: Base functions can be overridden by inheriting contracts to change their behavior if they are marked as _virtual_. 
		- The overriding function must then use the _override_ keyword in the function header
	- Languages that allow multiple inheritance have to deal with several problems. 
		- One is the Diamond Problem. 
		- Solidity is similar to Python in that it uses “C3 Linearization” to force a specific order in the directed acyclic graph (DAG) of base classes. 
		- So when a function is called that is defined multiple times in different contracts, the given bases are searched from right to left (left to right in Python) in a depth-first manner, stopping at the first match.
#### 103. Contract Types
- Besides the typical contracts supported by Solidity, it also supports three other contract types: Abstract contracts, Interfaces, and Libraries
	- Abstract Contracts: Contracts need to be marked as abstract when at least one of their functions is not implemented. 
		- They use the _abstract_ keyword.
	- Interfaces: They cannot have any functions implemented. 
		- There are further restrictions: 
			1) They cannot inherit from other contracts, but they can inherit from other interfaces 
			2) All declared functions must be external 
			3) They cannot declare a constructor 
			4) They cannot declare state variables. They use the _interface_ keyword
	- Libraries: They are deployed only once at a specific address and their code is reused using the DELEGATECALL opcode. 
		- This means that if library functions are called, their code is executed in the context of the calling contract. 
		- They use the _library_ keyword.
#### 104. Using For
- Solidity supports using the "for directive"
- This directive is used for attaching library functions to specific types in the context of the contract
- The directive using A for B; 
	- can be used to attach library functions (from the library A) to any type (B) in the context of a contract. 
	- These functions will receive the object they are called on as their first parameter.
	- The using A for B; directive is active only within the current contract, including within all of its functions, and has no effect outside of the contract in which it is used.
	- The directive may only be used inside a contract, not inside any of its functions
		- ``using SafeMath for uint256;``
#### 105. Base Class Function
- When we consider inheritance hierarchy, we have base classes and then we have derived classes
- It is possible to call functions further up in the inheritance hierarchy internally by explicitly specifying the contract using ContractName.functionName() or using super.functionName() if you want to call the function one level higher up in the flattened inheritance hierarchy
#### 106. Shadowing
- Until verision 0.6.0, variables of the same name were allowed to be used from derived classes as they were declared in the base classes
- As of the lastest versions, this is considered as an error. A derived contract can only declare a state variable x, if there is no visible state variable with the same name in any of its bases.
#### 107. Overriding Changes
- Functions in the derived classes can override the virtual functions in their base classes to redefine the logic within them
	- These overriding functions can change the visibility of the overridden functions
- The overriding function may only change the visibility of the overridden function from external to public. 	
- The mutability may be changed to a more strict one following the order: 
	- nonpayable can be overridden by view and pure. 
	- view can be overridden by pure. 
	- payable is an exception and cannot be changed to any other mutability.
#### 108. Virtual Functions
- Virtual functions are functions without implementation
- Have to be marked virtual outside of interfaces. 
- In interfaces, all functions are automatically considered virtual... don't need to use virtual keyword. 
- In abstract functions, if a function has to be considered virtual (without specifying an implemenation??) it should use the virtual keyword
- Functions with private visibility cannot be virtual.
#### 109. State Variables
- State variables in Solidity can have different visibilities... one of them is public
	- Public state functions have automatic getter functions generated by the solidity compiler
		- Getters are functions that are generated to allow accessing the value of the public state variables
- Public state variables can override external functions if the parameter and return types of the function matches the getter function of the variable. 
	- While public state variables can override external functions, they themselves cannot be overridden.
#### 110. Function Modifiers
- Function modifiers can override each other. 
	- This works in the same way as function overriding (except that there is no overloading for modifiers). 
	- The virtual keyword must be used on the overridden modifier and the override keyword must be used in the overriding modifier
#### 111. Base Constructor
- The constructors of all the base contracts will be called following the linearization rules. 
	- If the base constructors have arguments, derived contracts need to specify all of them either in the inheritance list or in the derived constructor.
#### 112. Name Collision
- Name collision is always an error in Solidity
- It is an error when any of the following pairs in a contract have the same name due to inheritance: 
	1) a function and a modifier 
	2) a function and an event 
	3) an event and a modifier
#### 113. Library Restrictions
- In comparison to contracts, libraries are restricted in the following ways:
	- they cannot have state variables
	- they cannot inherit nor be inherited
	- they cannot receive Ether
	- they cannot be destroyed
	- it can only access state variables of the calling contract if they are explicitly supplied (it would have no way to name them, otherwise)
	- Library functions can only be called directly (i.e. without the use of DELEGATECALL) if they do not modify the state (i.e. if they are view or pure functions), because libraries are assumed to be stateless
#### 114. EVM Storage
- Storage is a key-value store that maps 256-bit words to 256-bit words and is accessed with EVM’s SSTORE/SLOAD instructions. 
	- All locations in storage are initialized as zero.
#### 115. Storage Layout
- State variables are stored in different storage slots
	- Each slot corresponds to a word size of 256bits and the various state variables in a contract map to these storage slots
- Depending on their types, multiple state variables can fit within the same storage slot
- State variables of contracts are stored in storage in a compact way such that multiple values sometimes use the same storage slot. 
	- Except for dynamically-sized arrays and mappings, data is stored contiguously item after item starting with the first state variable, which is stored in slot 0
#### 116. Storage Packing
- For each state variable, a size in bytes is determined according to its type. 
	- Multiple, contiguous items that need less than 32 bytes are packed into a single storage slot if possible, according to the following rules:
	    - The first item in a storage slot is stored lower-order aligned
	    - Value types use only as many bytes as are necessary to store them
	    - If a value type does not fit the remaining part of a storage slot, it is stored in the next storage slot
#### 117. Structs and Arrays
- Structs and array data always start a new slot and their items are packed tightly according to these rules
- Items following struct or array data always start a new storage slot
- The elements of structs and arrays are stored after each other, just as if they were given as individual values.
#### 118. Inheritance
- For contracts that use inheritance, the ordering of state variables is determined by the C3-linearized order of contracts starting with the most base-ward contract. 
	- If allowed by the above rules, state variables from different contracts do share the same storage slot.
#### 119. Layout and Types
- Storage packing allows us to optimize the storage slot layout depending on the types of the state variables
- It might be beneficial to use reduced-size types if you are dealing with storage values because the compiler will pack multiple elements into one storage slot, and thus, combine multiple reads or writes into a single operation.
	- If you are not reading or writing all the values in a slot at the same time, this can have the opposite effect, though: 
		- When one value is written to a multi-value storage slot, the storage slot has to be read first and then combined with the new value such that other data in the same slot is not destroyed.
#### 120. Layout and Ordering
- Packing has a big impact on gas costs
	- From a gas cost perspective, SLOAD and SSTORE are very expensive
- Ordering of storage variables and struct members affects how they can be packed tightly. 
	- For example, declaring your storage variables in the order of uint128, uint128, uint256 instead of uint128, uint256, uint128, as the former will only take up two slots of storage whereas the latter will take up three.


### [Block 2](https://www.youtube.com/watch?v=TqMIbouwePE)
#### 121. Mapping and Dynamic Arrays
- Due to their unpredictable size, mappings and dynamically-sized array types cannot be stored “in between” the state variables preceding and following them.
	- They occupy a single slot (32 bytes)
	- The elements contained inside that can change dynamically over the duration of the contract are stored in a different location
		- The starting storage slot for these elements is computed using the keccak-256 hash
#### 122. Dynamic Arrays
- If the storage location of the array ends up being a slot p after applying the storage layout rules, this slot stores the number of elements in the array (byte arrays and strings are an exception).
	- Array data is located starting at keccak256(p) and it is laid out in the same way as statically-sized array data would: One element after the other, potentially sharing storage slots if the elements are not longer than 16 bytes.
- Dynamic arrays of dynamic arrays apply this rule recursively.
#### 123. Mappings
- For mappings, the slot stays empty, but it is still needed to ensure that even if there are two mappings next to each other, their content ends up at different storage locations.
	- The value corresponding to a mapping key k is located at keccak256(h(k) . p) where . is concatenation and h is a function that is applied to the key depending on its type:
		1) for value types, h pads the value to 32 bytes in the same way as when storing the value in memory.
		2) for strings and byte arrays, h computes the keccak256 hash of the unpadded data.
	- If the mapping value is a non-value type, the computed slot marks the start of the data.
	- If the value is of struct type, for example, you have to add an offset corresponding to the struct member to reach the member.
#### 124. bytes and string
- bytes and string are encoded identically.
- In general, the encoding is similar to byte1[], in the sense that there is a slot for the array itself and a data area that is computed using a keccak256 hash of that slot’s position.
- However, for short values (shorter than 32 bytes) the array elements are stored together with the length in the same slot.
	- if the data is at most 31 bytes long, the elements are stored in the higher-order bytes (left aligned) and the lowest-order byte stores the value length * 2.
	- For byte arrays that store data which is 32 or more bytes long, the main slot p stores length * 2 + 1 and the data is stored as usual in keccak256(p).
		- This means that you can distinguish a short array from a long array by checking if the lowest bit is set: short (not set) and long (set).
#### 125. Memory
- EVM is a stack based architecture which has call data, volatile memory, and non-volatile storage
	- EVM memory has a linear layout: all the memory locations are stored linearly next to each other
- can be addressed at byte level and accessed with MSTORE/MSTORE8/MLOAD instructions.
- All locations in memory are initialized as zero.
#### 126. Memory Layout
- Solidity places new memory objects at the free memory pointer and memory is never freed.
	- The free memory pointer points to 0x80 initially.
#### 127. Reserved Memory
- The initial value of the free memory pointer in Solidity is 0x80
	- because the first four 32 byte slots are reserved by Solidity and these add up to 128 bytes: therefore the 0x80 value
-  Solidity reserves four 32-byte slots, with specific byte ranges (inclusive of endpoints) being used as follows:
	- 0x00 - 0x3f (64 bytes): scratch space for hashing methods
	- 0x40 - 0x5f (32 bytes): currently allocated memory size (aka. free memory pointer)
	- 0x60 - 0x7f (32 bytes): zero slot (The zero slot is used as initial value for dynamic memory arrays and should never be written to)
#### 128. Memory Arrays
- Elements in memory arrays in Solidity always occupy multiples of 32 bytes (this is even true for byte[], but not for bytes and string).
	- Multi-dimensional memory arrays are pointers to memory arrays
	- The length of a dynamic array is stored at the first slot of the array and followed by the array elements
#### 129. Free Memory Pointer
- There is a “free memory pointer” at position 0x40 in memory.
- If you want to allocate memory, use the memory starting from where this pointer points at and update it.
- Considering the reserved memory, allocatable memory starts at 0x80, which is the initial value of the free memory pointer.
#### 130. Zeroed Memory
- Zeroed memory is memory containing zero bytes
- There is no guarantee that the memory has not been used before and thus you cannot assume that its contents are zero bytes.
- There is no built-in mechanism to release or free allocated memory.
#### 131. Reserved Keywords
- These keywords are reserved in Solidity.
- They might become part of the syntax in the future:
	- _after, alias, apply, auto, case, copyof, default, define, final, immutable, implements, in, inline, let, macro, match, mutable, null, of, partial, promise, reference, relocatable, sealed, sizeof, static, supports, switch, typedef, typeof, unchecked_
#### 132. Inline Assembly
- Inline assembly is a way to access the Ethereum Virtual Machine at a low level.
	- This bypasses several important safety features and checks of Solidity.
- You should only use it for tasks that need it, and only if you are confident with using it.
- The language used for inline assembly in Solidity is called Yul
- An inline assembly block is marked by _assembly { ... }_, where the code inside the curly braces is code in the Yul language
#### 133. Assembly Access
- Yul supports assembly access to various features such as external variables, functions, and libraries
	- You can access Solidity variables and other identifiers by using their name.
	- Local variables of value type are directly usable in inline assembly
	- Local variables that refer to memory/calldata evaluate to the address of the variable in memory/calldata and not the value itself
	- For local storage variables or state variables, a single Yul identifier is not sufficient, since they do not necessarily occupy a single full storage slot.
		- Therefore, their “address” is composed of a slot and a byte-offset inside that slot.
		- To retrieve the slot pointed to by the variable x, you use x.slot, and to retrieve the byte-offset you use x.offset. Using x itself will result in an error.
	- Local Solidity variables are available for assignments
	- Assignments are possible to assembly-local variables and to function-local variables.
		- Take care that when you assign to variables that point to memory or storage, you will only change the pointer and not the data.
	- You can assign to the .slot part of a local storage variable pointer.
		- For these (structs, arrays or mappings), the .offset part is always zero.
		- It is not possible to assign to the .slot or .offset part of a state variable, though
#### 134. Yul Syntax
- Yul parses comments, literals and identifiers in the same way as Solidity.
- Inside a code block, the following elements can be used:
	- literals, i.e. 0x123, 42 or "abc" (strings up to 32 characters)
	- calls to built in functions, e.g. add(1, mload(0))
	- variable declarations, e.g. let x := 7, let x := add(y, 3) or let x (initial value of 0 is assigned)
	- identifiers (variables), e.g. add(3, x)
	- assignments, e.g. x := add(y, 3)
	- blocks where local variables are scoped inside, e.g. { let x := 3 { let y := add(x, 1) } }
	- if statements, e.g. if lt(a, b) { sstore(0, 1) }
	- switch statements, e.g. switch mload(0) case 0 { revert() } default { mstore(0, 1) }
	- for loops, e.g. for { let i := 0} lt(i, 10) { i := add(i, 1) } { mstore(i, 7) }
	- function definitions, e.g. function f(a, b) -> c { c := add(a, b) }
#### 135. Solidity 0.6.0 Breaking
- Breaking versions are versions that are not backwards compatible
	- Significant changes that are not compatible with the previous versions
- Breaking versions increment the number seen in the middle of the version
- 0.6.0 introduced a breaking semantic feature... changed the behavior of the code without changing the syntax
- Changes where existing code changes its behavior without the compiler notifying you about it:
	- The resulting type of an exponentiation is the type of the base.
	- It used to be the smallest type that can hold both the type of the base and the type of the exponent, as with symmetric operations.
	- Additionally, signed types are allowed for the base of the exponentiation.
#### 136. Solidity 0.6.0 Explicitness
- Explicitness is good for security because it reduces ambiguity
- Keywords virtual and override were introduced
- Functions can now only be overridden when they are either marked with the virtual keyword or defined in an interface.
	- Functions without implementation outside an interface have to be marked virtual.
	- When overriding a function or modifier, the new keyword override must be used.
	- When overriding a function or modifier defined in multiple parallel bases, all bases must be listed in parentheses after the keyword like so: override(Base1, Base2).
- Member-access to length of arrays is now always read-only, even for storage arrays.
	- It is no longer possible to resize storage arrays by assigning a new value to their length.
	- Use push(), push(value) or pop() instead, or assign a full array, which will of course overwrite the existing content.
	- The reason behind this is to prevent storage collisions of gigantic storage arrays.
- The new keyword abstract can be used to mark contracts as abstract.
	- It has to be used if a contract does not implement all its functions.
	- Abstract contracts cannot be created using the new operator, and it is not possible to generate bytecode for them during compilation.
- Libraries have to implement all their functions, not only the internal ones.
- The names of variables declared in inline assembly may no longer end in _slot or _offset.
- Variable declarations in inline assembly may no longer shadow any declaration outside the inline assembly block.
	- If the name contains a dot, its prefix up to the dot may not conflict with any declaration outside the inline assembly block.
- State variable shadowing is now disallowed.
	- State variable shadowing is when you have state variables in the base contracts that are shadowed in the derived contracts (they have the same name)
	- A derived contract can only declare a state variable x, if there is no visible state variable with the same name in any of its bases.
#### 137. Solidity 0.6.0 Changes
- Conversions from external function types to address are now disallowed.
	- Instead external function types have a member called address, similar to the existing selector member.
- The function push(value) for dynamic storage arrays does not return the new length anymore (it returns nothing).
- The unnamed function commonly referred to as “fallback function” was split up into a new fallback function that is defined using the fallback keyword and a receive ether function defined using the receive keyword.
- If present, the receive ether function is called whenever the call data is empty (whether or not ether is received).
	- This function is implicitly payable.
- The new fallback function is called when no other function matches (if the receive ether function does not exist then this includes calls with empty call data).
	- You can make this function payable or not.
	- If it is not payable then transactions not matching any other function which send value will revert.
	- You should only need to implement the new fallback function if you are following an upgrade or proxy pattern.
#### 138. Solidity 0.6.0 New Features
- The try/catch statement allows you to react on failed external calls.
- struct and enum types can be declared at file level.
- Array slices can be used for calldata arrays, for example abi.decode(msg.data[4:], (uint, uint)) is a low-level way to decode the function call payload.
- Natspec supports multiple return parameters in developer documentation, enforcing the same naming check as @param.
- Yul and Inline Assembly have a new statement called leave that exits the current function.
- Conversions from address to address payable are now possible via payable(x), where x must be of type address.
#### 139. Solidity 0.7.0 Breaking
- changes where existing code changes its behaviour without the compiler notifying you about it:
	- Exponentiation and shifts of literals by non-literals (e.g. 1 << x or 2 ** x) will always use either the type uint256 (for non-negative literals) or int256 (for negative literals) to perform the operation.
	- Previously, the operation was performed in the type of the shift amount / the exponent which can be misleading.
#### 140. Solidity 0.7.0 Changes
- changes that might cause existing contracts to not compile anymore:
	- In external function and contract creation calls, Ether and gas is now specified using a new syntax:
		- x.f{gas: 10000, value: 2 ether}(arg1, arg2).
		- The old syntax – x.f.gas(10000).value(2 ether)(arg1, arg2) – will cause an error.
	- The global variable now is deprecated, block.timestamp should be used instead.
		- The single identifier now is too generic for a global variable and could give the impression that it changes during transaction processing, whereas block.timestamp correctly reflects the fact that it is just a property of the block.
	- NatSpec comments on variables are only allowed for public state variables and not for local or internal variables
	- The token gwei is a keyword now (used to specify, e.g. 2 gwei as a number) and cannot be used as an identifier
	- String literals now can only contain printable ASCII characters and this also includes a variety of escape sequences, such as hexadecimal (\xff) and unicode escapes (\u20ac).
	- Unicode string literals are supported now to accommodate valid UTF-8 sequences.
		- They are identified with the unicode prefix: unicode"Hello 😃".
	- State Mutability: The state mutability of functions can now be restricted during inheritance.
		- Functions with default state mutability can be overridden by pure and view functions while view functions can be overridden by pure functions.
		- At the same time, public state variables are considered view and even pure if they are constants.
	- Disallow . in user-defined function and variable names in inline assembly.
		- It is still valid if you use Solidity in Yul-only mode.
	- Slot and offset of storage pointer variable x are accessed via x.slot and x.offset instead of x_slot and x_offset.

### [Block 3](https://www.youtube.com/watch?v=C0zBhTgppLQ)
#### 141. Solidity 0.7.0 Removed
- If a struct or array contains a mapping, it can only be used in storage.
	- Previously, mapping members were silently skipped in memory, which is confusing and error-prone.
- Assignments to structs or arrays in storage do not work if they contain mappings.
	- Previously, mappings were silently skipped during the copy operation, which is misleading and error-prone.
- Visibility (public / external) is not needed for constructors anymore:
	- To prevent a contract from being created, it can be marked abstract.
	- This makes the visibility concept for constructors obsolete.
- Type Checker:
	- Disallow virtual for library functions:
		- Since libraries cannot be inherited from, library functions should not be virtual.
- Multiple events with the same name and parameter types in the same inheritance hierarchy are disallowed.
- using A for B only affects the contract it is mentioned in.
	- Previously, the effect was inherited.
	- Now, you have to repeat the using statement in all derived contracts that make use of the feature.
- Shifts by signed types are disallowed.
	- Previously, shifts by negative amounts were allowed, but reverted at runtime.
- The finney and szabo denominations are removed.
	- They are rarely used and do not make the actual amount readily visible.
	- Instead, explicit values like 1e20 or the very common gwei can be used.
- The keyword var cannot be used anymore.
	- Previously, this keyword would parse but result in a type error and a suggestion about which type to use. Now, it results in a parser error.

#### 142. Solidity 0.8.0 Breaking
- Arithmetic operations revert on underflow and overflow.
	- You can use unchecked { ... } to use the previous wrapping behaviour.
	- Checks for overflow are very common, so they are the default to increase readability of code, even if it comes at a slight increase of gas costs.
- ABI coder v2 is activated by default.
	- You can choose to use the old behaviour using _pragma abicoder v1;_.
	- The pragma _pragma experimental ABIEncoderV2;_ is still valid, but it is deprecated and has no effect.
	- If you want to be explicit, please use _pragma abicoder v2;_ instead.
- Exponentiation is right associative, i.e., the expression _a**b**c_ is parsed as _a**(b**c)_.
	- Before 0.8.0, it was parsed as _(a**b)**c_.
	- This is the common way to parse the exponentiation operator.
- Failing assertions and other internal checks like division by zero or arithmetic overflow do not use the invalid opcode but instead the revert opcode.
	- More specifically, they will use error data equal to a function call to Panic(uint256) with an error code specific to the circumstances.
	- This will save gas on errors while it still allows static analysis tools to distinguish these situations from a revert on invalid input, like a failing require.
- If a byte array in storage is accessed whose length is encoded incorrectly, a panic is caused.
	- A contract cannot get into this situation unless inline assembly is used to modify the raw representation of storage byte arrays.
- If constants are used in array length expressions, previous versions of Solidity would use arbitrary precision in all branches of the evaluation tree.
	- Now, if constant variables are used as intermediate expressions, their values will be properly rounded in the same way as when they are used in run-time expressions.
- The type byte has been removed. It was an alias of bytes1.
#### 143. Solidity 0.8.0 Restrictions
- Explicit conversions from negative literals and literals larger than type(uint160).max to address are disallowed.
- Explicit conversions between literals and an integer type T are only allowed if the literal lies between type(T).min and type(T).max.
	- In particular, replace usages of uint(-1) with type(uint).max.
- Explicit conversions between literals and enums are only allowed if the literal can represent a value in the enum.
- Explicit conversions between literals and address type (e.g. address(literal)) have the type address instead of address payable.
	- One can get a payable address type by using an explicit conversion, i.e., payable(literal).
- Address literals have the type _address_ instead of _address payable_.
	- They can be converted to address payable by using an explicit conversion
- Function call options can only be given once,
	- i.e. c.f{gas:10000}{value: 1}() is invalid and has to be changed to c.f{gas: 10000, value: 1}()
- The global functions log0, log1, log2, log3 and log4 have been removed.
	- These are low-level functions that were largely unused.
	- Their behaviour can be accessed from inline assembly.
- enum definitions cannot contain more than 256 members.
	- This will make it safe to assume that the underlying type in the ABI is always uint8.
- Declarations with the name this, super and _ are disallowed, with the exception of public functions and events.
- The global variables _tx.origin_ and _msg.sender_ have the type address instead of address payable.
	- One can convert them into address payable by using an explicit conversion.
- Explicit conversion into address type always returns a non-payable address type
- The _chainid_ builtin in inline assembly is now considered view instead of pure
#### 144. Zero-Address Check
- The first of three categories of  security checks is the zero-address check
- address(0) which is 20-bytes of 0’s is treated specially in Solidity contracts because the private key corresponding to this address is unknown.
	- Ether and tokens sent to this address cannot be retrieved and setting access control roles to this address also won’t work (no private key to sign transactions).
	- Therefore zero addresses should be used with care and checks should be implemented for user-supplied address parameters.
#### 145. tx.origin Check
- The second category of security checks is the transaction origin check
- Recall that Ethereum has two types of accounts: Externally Owned Account (EOA) and Contract Account.
	- Transactions can originate only from EOAs.
	- In situations where contracts would like to determine if the _msg.sender_ was a contract or not, checking if _msg.sender_ is equal to _tx.origin_ is an effective check.
#### 146. Arithmetic Check
- The third category of checks are arithmetic checks
- Until Solidity version 0.8.0 which introduced checked arithmetic by default, arithmetic was unchecked and therefore susceptible to overflows and underflows which could lead to critical vulnerabilities.
- The recommended best-practice for such contracts is to use OpenZeppelin’s SafeMath library for arithmetic.
#### 147. Open Zeppelin Libraries
- OpenZeppelin’s smart contract libraries are perhaps the most commonly used libraries in smart contract projects.
- They are widely used, time-tested, and have been optimized over time
- One of the most common libraries is the SafeMath library
	- Others include contracts for popular token standards, access control, security, proxies and other utilities.
#### 148. OpenZeppelin ERC20
- Implements the popular ERC20 token standard.
- The functions are:
	- _constructor(string name_, string symbol_)_:
		- Sets the values for name and symbol.
		- The default value of decimals is 18.
		- To select a different value for decimals you should overload it.
		- All three of these values are immutable: they can only be set once during construction.
	-  _name()_ → _string_:
		- Returns the name of the token.
	-  _symbol()_ → _string_:
		- Returns the symbol of the token, usually a shorter version of the name.
	-  _decimals()_ → _uint8_:
		- Returns the number of decimals used to get its user representation.
		- For example, if decimals equals 2, a balance of 505 tokens should be displayed to a user as 5.05 (505 / 10 ** 2).
		- Tokens usually opt for a value of 18, imitating the relationship between Ether and Wei.
		- This is the value ERC20 uses, unless this function is overridden.
	- _totalSupply()_:
		- Returns the amount of tokens in existence.
	- _balanceOf(address account)_ → _uint256_:
		- Returns the amount of tokens owned by account
	- _transfer(address recipient, uint256 amount)_ → _bool_:
		- Moves amount tokens from the caller’s account to recipient.
		- Returns a boolean value indicating whether the operation succeeded.
		- Emits a Transfer event.
	- _allowance(address owner, address spender)_ → _uint256_:
		- Returns the remaining number of tokens that spender will be allowed to spend on behalf of owner through transferFrom.
		- This is zero by default.
		- This value changes when approve or transferFrom are called.
	- _approve(address spender, uint256 amount)_ → _bool_:
		- Sets amount as the allowance of spender over the caller’s tokens.
		- Returns a boolean value indicating whether the operation succeeded.
		- Emits an Approval event.
		- Warning:
			- changing an allowance with this method brings the risk that someone may use both the old and the new allowance by unfortunate transaction ordering.
			- One possible solution to mitigate this race condition is to first reduce the spender’s allowance to 0 and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
	- _transferFrom(address sender, address recipient, uint256 amount)_ → _bool_:
		- Moves amount tokens from sender to recipient using the allowance mechanism. amount is then deducted from the caller’s allowance.
		- Returns a boolean value indicating whether the operation succeeded. Emits a Transfer event.
	-  _increaseAllowance(address spender, uint256 addedValue)_ → _bool_ (Non-standard):
		- Atomically increases the allowance granted to spender by the caller.
		- This is an alternative to approve that can be used as a mitigation for the warning above.
		- Emits an Approval event indicating the updated allowance.
		- Requirement is that spender cannot be the zero address.
	-  _decreaseAllowance(address spender, uint256 subtractedValue)_ → _bool_ (Non-standard):
		- Atomically decreases the allowance granted to spender by the caller.
		- This is an alternative to approve that can be used as a mitigation for the warning described above.
		- Emits an Approval event indicating the updated allowance.
		- Requirements are:
			1) spender cannot be the zero address.
			2) spender must have allowance for the caller of at least subtractedValue.
- The different extensions/presets are:
	- OpenZeppelin ERC20Burnable:
		- Extension of ERC20 that allows token holders to destroy both their own tokens and those that they have an allowance for, in a way that can be recognized off-chain (via event analysis).
	- OpenZeppelin ERC20Capped:
		- Extension of ERC20 that adds a cap to the supply of tokens and enforces it in the mint function.
	- OpenZeppelin ERC20Pausable:
		- ERC20 token with pausable token transfers, minting and burning.
		- Useful for scenarios such as preventing trades until the end of an evaluation period, or having an emergency switch for freezing all token transfers in the event of a large bug.
		- The __beforeTokenTransfer()_ internal function enforces the not paused condition.
	- OpenZeppelin ERC20Snapshot:
		- This contract extends an ERC20 token with a snapshot mechanism.
		- When a snapshot is created, the balances and total supply at the time are recorded for later access.
		- This can be used to safely create mechanisms based on token balances such as trustless dividends or weighted voting.
		- Snapshots are created by the internal __snapshot_ function, which will emit the Snapshot event and return a snapshot id.
		- To get the total supply at the time of a snapshot, call the function _totalSupplyAt_ with the snapshot id.
		- To get the balance of an account at the time of a snapshot, call the _balanceOfAt_ function with the snapshot id and the account address.
	- OpenZeppelin ERC20PresetFixedSupply:
		- ERC20 token, including:
			1) Preminted initial supply
			2) Ability for holders to burn (destroy) their tokens
			3) No access control mechanism (for minting/pausing) and hence no governance.
				- This contract uses _ERC20Burnable_ contract to include burn capabilities
	- OpenZeppelin ERC20PresetMinterPauser:
		- ERC20 token, including:
			1) ability for holders to burn (destroy) their tokens
			2) a minter role that allows for token minting (creation)
			3) a pauser role that allows to stop all token transfers.
				- This contract uses _AccessControl_ contract to lock permissioned functions using the different roles.
				- The account that deploys the contract will be granted the minter and pauser roles, as well as the default admin role, which will let it grant both minter and pauser roles to other accounts.
#### 149. OpenZeppelin SafeERC20
- SafeERC20 is a utility that affects:
	- transfer, transferFrom, approve, increaseAllowance, decreaseAllownace
	- they are expected to return a boolean value
	- However, some contracts may chose not to return a boolean, revert, or do nothing
		- These differing return values have resulted in security vulnerabilities
		- SafeERC20 uses wrappers to address this
- Wrappers around ERC20 operations that throw on failure when the token contract implementation returns false.
- Tokens that return no value and instead revert or throw on failure are also supported with non-reverting calls assumed to be successful.
- Adds _safeTransfer_, _safeTransferFrom_, _safeApprove_, _safeDecreaseAllowance_, and _safeIncreaseAllowance_.
#### 150. OpenZeppelin TokenTimelock
- A token holder contract that will allow a beneficiary to extract the tokens after a given release time.
- Useful for simple vesting schedules like "advisors get all of their tokens after 1 year".
#### 151. OpenZeppelin ERC721
- Implements the popular ERC721 Non-Fungible Token Standard. The functions are:
	- _balanceOf(address owner)_ → _uint256 balance_:
		- Returns the number of tokens in owner's account.
	- _ownerOf(uint256 tokenId)_ → _address owner_:
		- Returns the owner of the tokenId token. Requirements: tokenId must exist.
	- _transferFrom(address from, address to, uint256 tokenId)_:
		- Transfers tokenId token from from to to.
		- Requirements:
			- from cannot be the zero address.
			- to cannot be the zero address.
			- tokenId token must be owned by from.
			- If the caller is not from, it must be approved to move this token by either approve or setApprovalForAll.
		- Emits a Transfer event.
	- _safeTransferFrom(address from, address to, uint256 tokenId)_:
		- Safely transfers tokenId token from from to to, checking first that contract recipients are aware of the ERC721 protocol to prevent tokens from being forever locked.
		- Requirements:
			1) from cannot be the zero address
			2) to cannot be the zero address.
			3) tokenId token must exist and be owned by from
			4) If the caller is not from, it must be have been allowed to move this token by either approve or setApprovalForAll
			5) If to refers to a smart contract, it must implement IERC721Receiver.onERC721Received, which is called upon a safe transfer.
		- Emits a Transfer event. (The use of this function is encouraged over the related but unsafe transferFrom function.)
	-  _approve(address to, uint256 tokenId)_:
		- Gives permission to to to transfer tokenId token to another account.
		- The approval is cleared when the token is transferred.
		- Only a single account can be approved at a time, so approving the zero address clears previous approvals.
		- Requirements:
			1) The caller must own the token or be an approved operator
			2) tokenId must exist.
		- Emits an Approval event.
	- _getApproved(uint256 tokenId)_ → _address operator_:
		- Returns the account approved for tokenId token.
		- Requirements: tokenId must exist.
	-  _setApprovalForAll(address operator, bool _approved)_:
		- Approve or remove operator as an operator for the caller.
		- Operators can call transferFrom or safeTransferFrom for any token owned by the caller.
		- Requirements:
			- The operator cannot be the caller.
		- Emits an ApprovalForAll event.
	- _isApprovedForAll(address owner, address operator)_ → _bool_:
		- Returns if the operator is allowed to manage all of the assets of owner.
- The different extensions/presets/utilities are:
	- OpenZeppelin ERC721Burnable:
		- ERC721 Token that can be irreversibly burned (destroyed).
	- OpenZeppelin ERC721Enumerable:
		- This implements an optional extension of ERC721 defined in the EIP that adds enumerability of all the token ids in the contract as well as all token ids owned by each account.
	- OpenZeppelin ERC721Pausable:
		- ERC721 token with pausable token transfers, minting and burning.
		- Useful for scenarios such as preventing trades until the end of an evaluation period, or having an emergency switch for freezing all token transfers in the event of a large bug.
	- OpenZeppelin ERC721URIStorage:
		- ERC721 token with storage based token URI management.
	- OpenZeppelin ERC721PresetMinterPauserAutoId:
		- ERC721 token, including:
			1) ability for holders to burn (destroy) their tokens
			2) a minter role that allows for token minting (creation)
			3) a pauser role that allows to stop all token transfers
			4) token ID and URI autogeneration.
		- This contract uses AccessControl to lock permissioned functions using the different roles.
			- The account that deploys the contract will be granted the minter and pauser roles, as well as the default admin role, which will let it grant both minter and pauser roles to other accounts.
	- OpenZeppelin ERC721Holder:
		- Implementation of the IERC721Receiver interface.
		- Accepts all token transfers.
#### 152. OpenZeppelin ERC777
- Like ERC20, ERC777 is a standard for fungible tokens with improvements such as getting rid of the confusion around decimals, minting and burning with proper events, among others, but its killer feature is receive hooks. ERC777 is backwards compatible with ERC20 (See [here](https://eips.ethereum.org/EIPS/eip-777))
	- A hook is simply a function in a contract that is called when tokens are sent to it, meaning accounts and contracts can react to receiving tokens.
		- This enables a lot of interesting use cases, including atomic purchases using tokens (no need to do approve and transferFrom in two separate transactions), rejecting reception of tokens (by reverting on the hook call), redirecting the received tokens to other addresses, among many others.
	- Both contracts and regular addresses can control and reject which token they send by registering a tokensToSend hook. (Rejection is done by reverting in the hook function.)
	- Both contracts and regular addresses can control and reject which token they receive by registering a tokensReceived hook. (Rejection is done by reverting in the hook function.)
	- The tokensReceived hook allows to send tokens to a contract and notify it in a single transaction, unlike ERC-20 which requires a double call (approve/transferFrom) to achieve this.
	- Furthermore, since contracts are required to implement these hooks in order to receive tokens, no tokens can get stuck in a contract that is unaware of the ERC777 protocol, as has happened countless times when using ERC20s.
	- It mandates that decimals always returns a fixed value of 18, so there’s no need to set it ourselves
	- Has a concept of  _defaultOperators_ which are special accounts (usually other smart contracts) that will be able to transfer tokens on behalf of their holders
	- Implements _send_ (besides _transfer_) where if the recipient contract has not registered itself as aware of the ERC777 protocol then transfers to it are disabled to prevent tokens from being locked forever.
		- Accounts can be notified of tokens being sent to them by having a contract implement this _IERC777Recipient_ interface and registering it on the ERC1820 global registry.
#### 153. OpenZeppelin ERC1155
- is a novel token standard that aims to take the best from previous standards to create a fungibility-agnostic and gas-efficient token contract.
	- The distinctive feature of ERC1155 is that it uses a single smart contract to represent multiple tokens at once
	- Accounts have a distinct balance for each token id, and non-fungible tokens are implemented by simply minting a single one of them.
	- This approach leads to massive gas savings for projects that require multiple tokens. Instead of deploying a new contract for each token type, a single ERC1155 token contract can hold the entire system state, reducing deployment costs and complexity.
	- Because all state is held in a single contract, it is possible to operate over multiple tokens in a single transaction very efficiently. The standard provides two functions, _balanceOfBatch_ and _safeBatchTransferFrom_, that make querying multiple balances and transferring multiple tokens simpler and less gas-intensive.
#### 154. OpenZeppelin Ownable
- Provides a basic access control mechanism, where there is an account (an owner) that can be granted exclusive access to specific functions.
	- By default, the owner account will be the one that deploys the contract.
	- This can later be changed with _transferOwnership_.
- This module is used through inheritance.
- It will make available the modifier _onlyOwner_, which can be applied to your functions to restrict their use to the owner.
#### 155. OpenZeppelin AccessControl
- Provides a general role based access control mechanism.
- Multiple hierarchical roles can be created and assigned each to multiple accounts.
- Roles can be used to represent a set of permissions.
	- _hasRole_ is used to restrict access to a function call.
	- Roles can be granted and revoked dynamically via the _grantRole_ and _revokeRole_ functions which can only be called by the role’s associated admin accounts.
#### 156. OpenZeppelin Pausable
- Allows teams to execute a "guarded launch"
	- Helps in anticipating potential emergencies allowing a pause to handle the emergency
- Provides an emergency stop mechanism using functions pause and unpause that can be triggered by an authorized account.
- This module is used through inheritance.
- It will make available the modifiers _whenNotPaused_ and _whenPaused_, which can be applied to the functions of your contract.
- Only the functions using the modifiers will be affected when the contract is paused or unpaused.
#### 157. OpenZeppelin ReentrancyGuard:
- Used to mitigate the risk from reentrancy
	- Vulnerability that was exploited during the DAO hack
	- If a smart contract is marking an external call to any other function of an external contract where that external contract is potentially untrusted, that contract can potentially make a nested call to the calling contract, "re-entering" the function that made the call
		- This can trigger logic multiple times where the intended behavior was to only trigger once
- Prevents reentrant calls to a function.
- Inheriting from ReentrancyGuard will make the _nonReentrant_ modifier available, which can be applied to functions to make sure there are no nested (reentrant) calls to them.
#### 158. OpenZeppelin PullPayment:
- Payments between two contracts can done by either the paying contract pushing the payment to the receiver account or the receiving contract doing a pull of the payment from the paying contract
- Provides a pull-payment strategy, where the paying contract doesn’t invoke any functions on the receiver account which must withdraw its payments itself.
- Pull-payments are often considered the best practice when it comes to sending Ether, security-wise.
	- It prevents recipients from blocking execution and eliminates reentrancy concerns.
#### 159. 156. OpenZeppelin Address:
- Collection of functions related to the address type:
	- _isContract(address account)_ → _bool_:
		- Returns true if account is a contract.
			- It is unsafe to assume that an address for which this function returns false is an externally-owned account (EOA) and not a contract.
			- Among others, isContract will return false for the following types of addresses:
				1) an externally-owned account
				2) a contract in construction
				3) an address where a contract will be created
				4) an address where a contract lived, but was destroyed
        - _sendValue(address payable recipient, uint256 amount)_:
	        - Replacement for Solidity’s transfer:
		        - sends amount wei to recipient, forwarding all available gas and reverting on errors.
		- EIP1884 increases the gas cost of certain opcodes, possibly making contracts go over the 2300 gas limit imposed by transfer, making them unable to receive funds via transfer.
			- sendValue removes this limitation.
        -  _functionCall(address target, bytes data)_ → _bytes_:
	        - Performs a Solidity function call using a low level call.
	        - A plain `call` is an unsafe replacement for a function call:
		        - use this function instead.
		- If target reverts with a revert reason, it is bubbled up by this function (like regular Solidity function calls).
		- Returns the raw returned data.
		- Requirements:
			- target must be a contract.
			- calling target with data must not revert.
        - _functionCallWithValue(address target, bytes data, uint256 value)_ → _bytes_:
	        - Same as functionCall, but also transferring value wei to target.
	        - Requirements:
		        1) the calling contract must have an ETH balance of at least value.
		        2) the called Solidity function must be payable.
        - _functionStaticCall(address target, bytes data)_ → _bytes_:
	        - Same as functionCall, but performing a static call.
        - _functionDelegateCall(address target, bytes data)_ → _bytes_:
	        - Same as functionCall, but performing a delegate call.
#### 160. OpenZeppelin Arrays
- Collection of functions related to array types:
    - _findUpperBound(uint256[] array, uint256 element)_ → _uint256_:
	    - Searches a sorted array and returns the first index that contains a value greater or equal to element.
	    - If no such index exists (i.e. all values in the array are strictly less than element), the array length is returned.
	    - Time complexity O(log n). array is expected to be sorted in ascending order, and to contain no repeated elements.

### [Block 4](https://www.youtube.com/watch?v=L_9Fk6HRwpU)
#### 161. OpenZeppelin Context
- Provides information about the current execution context, including the sender of the transaction and its data.
	- While these are generally available via _msg.sender_ and _msg.data_, they should not be accessed in such a direct manner, since when dealing with meta-transactions the account sending and paying for execution may not be the actual sender (as far as an application is concerned).
	- This contract is only required for intermediate, library-like contracts.
#### 162. OpenZeppelin Counters
- Provides counters that can only be incremented or decremented by one. This can be used e.g. to track the number of elements in a mapping, issuing ERC721 ids, or counting request ids. Functions are:
	- current(struct Counters.Counter counter) → uint256
	- increment(struct Counters.Counter counter)
	- decrement(struct Counters.Counter counter)
#### 163. OpenZeppelin Create2
- The EVM has two instructions, CREATE and CREATE2 that allow contracts to programmatically create other contracts
	- This is in contrast to sending transactions to the 0 address
- The CREATE opcode uses the opcode of the deployer contract along with the state of the deployed contract (in the form of the nonce of that contract account) to determine the address of the newly deployed contact
- The CREATE2 opcode does not use the state of the deployer contract (it does away with using the nonce of the account) and it only uses the bytecode of the newly deployed contract along with a value provided by the deployer contract (known as the salt) to determine the address of the newly deployed contract
	- The address of the newly deployed becomes deterministic because of the lack of a nonce??
	- ``deploy(uint256 amount, bytes32 salt, bytes bytecode)``: used to create and deploy a contract
- Makes usage of the CREATE2 EVM opcode easier and safer.
- CREATE2 can be used to compute in advance the address where a smart contract will be deployed, which allows for interesting new mechanisms known as 'counterfactual interactions’.
	- _deploy(uint256 amount, bytes32 salt, bytes bytecode)_ → _address_:
		- Deploys a contract using CREATE2.
		- The address where the contract will be deployed can be known in advance via computeAddress.
		- The bytecode for a contract can be obtained from Solidity with type(contractName).creationCode.
		- Requirements:
			1) bytecode must not be empty.
			2) salt must have not been used for bytecode already.
			3) the factory must have a balance of at least amount.
			4) if amount is non-zero, bytecode must have a payable constructor.
	- _computeAddress(bytes32 salt, bytes32 bytecodeHash)_ → _address_:
		- Returns the address where a contract will be stored if deployed via deploy.
		- Any change in the bytecodeHash or salt will result in a new destination address.
	- _computeAddress(bytes32 salt, bytes32 bytecodeHash, address deployer)_ → _address_:
		- Returns the address where a contract will be stored if deployed via deploy from a contract located at deployer.
		- If the deployer is this contract’s address, it returns the same value as computeAddress.
#### 164. OpenZeppelin Multicall
- Provides a function to batch together multiple calls in a single external call
	- _multicall(bytes[] calldata data) external_ → _bytes[]_:
		- Receives and executes a batch of function calls on this contract
- Benefit is that it provides less overhead and gas efficiency as multiple calls are packaged in a single call within the same transaction of the same block
#### 165. OpenZeppelin Strings
- Allows the performance of basic string operations
- String operations:
	-  _toString(uint256 value)_ → _string_:
		- Converts a uint256 to its ASCII string decimal representation.
	-  _toHexString(uint256 value)_ → _string_:
		- Converts a uint256 to its ASCII string hexadecimal representation.
	- _toHexString(uint256 value, uint256 length)_ → string:
		- Converts a uint256 to its ASCII string hexadecimal representation with fixed length.
#### 166. OpenZeppelin ECDSA
- Provides functions for recovering and managing Ethereum account ECDSA signatures.
- These are often generated via _web3.eth.sign_, and are a 65 byte array (of type bytes in Solidity) arranged the following way: [[v (1)], [r (32)], [s (32)]].
- The data signer can be recovered with _ECDSA.recover_, and its address compared to verify the signature
- Most wallets will hash the data to sign and add the prefix '\x19Ethereum Signed Message:\n', so when attempting to recover the signer of an Ethereum signed message hash, you’ll want to use _toEthSignedMessageHash._
- The `ecrecover` EVM opcode allows for malleable (non-unique) signatures. _This library prevents that by requiring the `s` value to be in the lower half order, and the `v` value to be either 27 or 28._
#### 167. OpenZeppelin MerkleProof
- This deals with verification of Merkle Trees proofs.
- Merkle trees are data structures where leaves contain the data and all the other nodes in the tree contain a combination of the hashes of their two child nodes
-  _verify:_
	- which can prove that some value is part of a Merkle tree.
	- Returns true if a `leaf` can be proved to be a part of a Merkle tree defined by `root`.
	- For this, a `proof` must be provided, containing sibling hashes on the branch from the leaf to the root of the tree.
	- Each pair of leaves and each pair of pre-images are assumed to be sorted.
#### 168. OpenZeppelin SignatureChecker
- Provide a single mechanism to verify both private-key (EOA) ECDSA signature and ERC1271 contract signatures.
- Using this instead of ECDSA.recover in your contract will make them compatible with smart contract wallets such as Argent and Gnosis.
- Externally Owned Accounts (EOA) can sign messages with their associated private keys, but currently contracts cannot.
	- This is a problem for many applications that implement signature based off-chain methods, since contracts can't easily interact with them as they do not possess a private key.
	- ERC 1271 proposes a standard way for any contracts to verify whether a signature on behalf of a given contract is valid.
- Note: unlike ECDSA signatures, contract signature's are revocable, and the outcome of this function can thus change through time. It could return true at block N and false at block N+1 (or the opposite).
#### 169. OpenZeppelin EIP712
- EIP 712 is a standard for hashing and signing of typed structured data.
- This contract implements the EIP 712 domain separator (__domainSeparatorV4_) that is used as part of the encoding scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA (__hashTypedDataV4_).
- Protocols need to implement the type-specific encoding they need in their contracts using a combination of abi.encode and keccak256.
	- _constructor(string name, string version)_:
		 - Initializes the domain separator and parameter caches.
		 - The meaning of name and version is specified in EIP 712:
			 1) name is the user readable name of the signing domain, i.e. the name of the DApp or the protocol
			 2) version: the current major version of the signing domain.
	- __domainSeparatorV4()_ → _bytes32_:
		- Returns the domain separator for the current chain.
		- __hashTypedDataV4(bytes32 structHash)_ → _bytes32_:
			- Given an already hashed struct, this function returns the hash of the fully encoded EIP712 message for this domain.
			- This hash can be used together with ECDSA.recover to obtain the signer of a message.
#### 170. 160. OpenZeppelin Escrow
- Holds funds designated for a payee until they withdraw them.
	- The contract that uses this escrow as its payment method should be its owner, and provide public methods redirecting to the escrow's deposit and withdraw if the escrow rules are satisfied.
- _depositsOf(address payee)_ → _uint256_
- _deposit(address payee)_: Stores the sent amount as credit to be withdrawn.
- _withdraw(address payable payee)_:
	- Withdraw accumulated balance for a payee, forwarding all gas to the recipient.
#### 171. OpenZeppelin ConditionalEscrow
- Derived from Escrow and only allows withdrawal if a condition is met by providing the _withdrawalAllowed()_ function which returns whether an address is allowed to withdraw their funds and is to be implemented by derived contracts.
#### 172. OpenZeppelin RefundEscrow
- Derived from ConditionalEscrow and holds funds for a beneficiary, deposited from multiple parties.
- The owner account (that is, the contract that instantiates this contract) may deposit, close the deposit period, and allow for either withdrawal by the beneficiary, or refunds to the depositors.
#### 173. OpenZeppelin ERC165
- In Solidity, it’s frequently helpful to know whether or not a contract supports an interface you’d like to use.
- ERC165 is a standard that helps do runtime interface detection using a lookup table.
- You can register interfaces using __registerInterface(bytes4)_ and _supportsInterface(bytes4 interfaceId)_ returns a bool indicating if that interface is supported or not.
#### 174. OpenZeppelin Math
- Standard math utilities missing in the Solidity language:
	- _max(uint256 a, uint256 b)_:
		- Returns the larger of two numbers
	- _min(uint256 a, uint256 b)_:
		- Returns the smaller of two numbers
        - _average(uint256 a, uint256 b)_:
	        - Returns the average of two numbers.
	        - The result is rounded towards zero.
#### 175. OpenZeppelin SafeMath
- Provides mathematical functions that protect your contract from overflows and underflows.
- Include the contract with ``using SafeMath for uint256;`` and then call the functions:
	- myNumber.add(otherNumber):
		- Returns the addition of two unsigned integers, reverting on overflow. Counterpart to Solidity's `+` operator.
	- myNumber.sub(otherNumber):
		- Returns the subtraction of two unsigned integers, reverting on overflow (when the result is negative).
		- Counterpart to Solidity's `-` operator.
        - myNumber.div(otherNumber):
	        - Returns the division of two unsigned integers, reverting on overflow.
	        - The result is rounded towards zero.
	        - Counterpart to Solidity's `/` operator.
        - myNumber.mul(otherNumber):
	        - Returns the multiplication of two unsigned integers, reverting on overflow.
	        - Counterpart to Solidity's `*` operator.
        - myNumber.mod(otherNumber):
	        - Returns the modulus of two unsigned integers, reverting when dividing by zero.
	        - Counterpart to Solidity's `%` operator.
- The corresponding try* functions return results with an overflow flag instead of reverting.
#### 176. OpenZeppelin SignedSafeMath
- Provides the same mathematical functions as SafeMath but for signed integers
	- myNumber.add(otherNumber):
		- Returns the addition of two signed integers, reverting on overflow.
		- Counterpart to Solidity's `+` operator.
        - myNumber.sub(otherNumber):
	        - Returns the subtraction of two signed integers, reverting on overflow (when the result is negative).
	        - Counterpart to Solidity's `-` operator.
        - myNumber.div(otherNumber):
	        - Returns the division of two signed integers, reverting on overflow.
	        - The result is rounded towards zero.
	        - Counterpart to Solidity's `/` operator.
        - myNumber.mul(otherNumber):
	        - Returns the multiplication of two signed integers, reverting on overflow.
	        - Counterpart to Solidity's `*` operator.
#### 177. OpenZeppelin SafeCast
- Solidity allows both implicit and explicit casting of types
	- Explicit casting is where the developers can force the compiler to cast one type into another type where the compiler may not be able to determine that it is safe to do so
- Wrappers over Solidity's uintXX/intXX casting operators with added overflow checks.
- Downcasting from uint256/int256 in Solidity does not revert on overflow.
	- Downcasting is when a developer wants to cast a source type into a target type where the target type has fewer storage bits to represent it than the source type
		- Because the target type has fewer storage bits, it may not always be safe to do so if the variable of that type actually requires the storage bits being reduced from the source type to the destination type??
- This can easily result in undesired exploitation or bugs, since developers usually assume that overflows raise errors.
	- `SafeCast` restores this intuition by reverting the transaction when such an operation overflows.
- _toUint128(uint256 value) returns (uint128)_:
	- Returns the downcasted uint128 from uint256, reverting on overflow (when the input is greater than largest uint128).
	- Similar functions are available for toUint64(uint256 value), toUint32(uint256 value), toUint16(uint256 value), toUint8(uint256 value)
- _toInt128(int256 value) internal pure returns (int256)_:
	- Returns the downcasted int128 from int256, reverting on overflow (when the input is less than smallest int128 or greater than largest int128).
	- Similar functions are available for toInt64(int256 value), toInt32(int256 value), toInt16(int256 value), toInt8(int256 value).
- _function toInt256(uint256 value) returns (int256)_:
	- Converts an unsigned uint256 into a signed int256
- _function toUint256(int256 value)_ returns (uint256):
	- Converts a signed int256 into an unsigned uint256
- Similar functions downcasting to 224/96/64/32/16/8 bits for both unsigned and signed.
#### 178. OpenZeppelin EnumerableMap
- Library for managing an enumerable variant of Solidity’s mapping type.
- Maps have the following properties:
	1) Entries are added, removed, and checked for existence in constant time (O(1))
	2) Entries are enumerated in O(n).
		- No guarantees are made on the ordering.
		- As of v3.0.0, only maps of type uint256 → address (UintToAddressMap) are supported.
- _set(struct EnumerableMap.UintToAddressMap map, uint256 key, address value)_ → _bool_:
	- Adds a key-value pair to a map, or updates the value for an existing key.
	- Returns true if the key was added to the map, that is if it was not already present.
- _remove(struct EnumerableMap.UintToAddressMap map, uint256 key)_ → _bool_:
	- Removes a value from a set.
	- Returns true if the key was removed from the map, that is if it was present.
- _contains(struct EnumerableMap.UintToAddressMap map, uint256 key)_ → _bool_:
	- Returns true if the key is in the map.
- _length(struct EnumerableMap.UintToAddressMap map)_ → _uint256_:
	- Returns the number of elements in the map.
- _at(struct EnumerableMap.UintToAddressMap map, uint256 index)_ → _uint256, address_:
	- Returns the element stored at position index in the set.
	- Note that there are no guarantees on the ordering of values inside the array, and it may change when more values are added or removed.
	- Requirements: index must be strictly less than length.
- _tryGet(struct EnumerableMap.UintToAddressMap map, uint256 key)_ → _bool, address_:
	- Tries to return the value associated with key.
	- Does not revert if key is not in the map.
- _get(struct EnumerableMap.UintToAddressMap map, uint256 key)_ → _address:_
	- Returns the value associated with key.
	- Requirements:
		- key must be in the map.
#### 179. OpenZeppelin EnumerableSet
- Library for managing sets of primitive types.
- Sets have the following properties:
	1) Elements are added, removed, and checked for existence in constant time (O(1))
	2) Elements are enumerated in O(n).
		- No guarantees are made on the ordering.
		- As of v3.3.0, sets of type bytes32 (Bytes32Set), address (AddressSet) and uint256 (UintSet) are supported.
- _add(struct EnumerableSet.Bytes32Set set, bytes32 value)_ → _bool_:
	- Add a value to a set.
	- Returns true if the value was added to the set, that is if it was not already present.
- _remove(struct EnumerableSet.Bytes32Set set, bytes32 value)_ → _bool_:
	- Removes a value from a set.
	- Returns true if the value was removed from the set, that is if it was present.
- _contains(struct EnumerableSet.Bytes32Set set, bytes32 value)_ → _bool_:
	- Returns true if the value is in the set.
- _length(struct EnumerableSet.Bytes32Set set)_ → _uint256_:
	- Returns the number of values in the set.
- _at(struct EnumerableSet.Bytes32Set set, uint256 index)_ → _bytes32_:
	- Returns the value stored at position index in the set.
	- Note that there are no guarantees on the ordering of values inside the array, and it may change when more values are added or removed.
	- Requirements:
		- index must be strictly less than length.
- _add(struct EnumerableSet.AddressSet set, address value)_ → _bool_:
	- Add a value to a set.
	- Returns true if the value was added to the set, that is if it was not already present.
- _remove(struct EnumerableSet.AddressSet set, address value)_ → _bool_:
	- Removes a value from a set.
	- Returns true if the value was removed from the set, that is if it was present.
- _contains(struct EnumerableSet.AddressSet set, address value)_ → _bool_:
	- Returns true if the value is in the set.
- _length(struct EnumerableSet.AddressSet set)__ → _uint256_:
	- Returns the number of values in the set.
- _at(struct EnumerableSet.AddressSet set, uint256 index)_ → _address_:
	- Returns the value stored at position index in the set.
	- Note that there are no guarantees on the ordering of values inside the array, and it may change when more values are added or removed.
	- Requirements:
		- index must be strictly less than length.
- _add(struct EnumerableSet.UintSet set, uint256 value)_ → _bool_:
	- Add a value to a set.
	- Returns true if the value was added to the set, that is if it was not already present.
- _remove(struct EnumerableSet.UintSet set, uint256 value)_ → _bool_:
	- Removes a value from a set. Returns true if the value was removed from the set, that is if it was present.
- _contains(struct EnumerableSet.UintSet set, uint256 value)_ → _bool_:
	- Returns true if the value is in the set. O(1).
- _length(struct EnumerableSet.UintSet set)_ → _uint256_:
	- Returns the number of values on the set.
- _at(struct EnumerableSet.UintSet set, uint256 index)_ → _uint256_:
	- Returns the value stored at position index in the set.
	- Note that there are no guarantees on the ordering of values inside the array, and it may change when more values are added or removed.
	- Requirements:
		- index must be strictly less than length.
#### 180. OpenZeppelin BitMaps
- BitMaps are common data structures encountered in computer science where every bit of the underlying type can be thought of as representing a different variable
- Library for managing uint256 to bool mapping in a compact and efficient way, providing the keys are sequential.
- struct BitMap: mapping(uint256 => uint256) _data;
- get(BitMap storage bitmap, uint256 index) → _bool:_
	- Returns whether the bit at `index` is set.
- setTo(BitMap storage bitmap, uint256 index, bool value):
	- Sets the bit at `index` to the boolean `value`
- function set(BitMap storage bitmap, uint256 index):
	- Sets the bit at `index`
- function unset(BitMap storage bitmap, uint256 index):
	- Unsets the bit at `index`

### [Block 5](https://www.youtube.com/watch?v=0kx8M4u5980)
#### 181. OpenZeppelin PaymentSplitter
- Allows to split Ether payments among a group of accounts.
	- The sender does not need to be aware that the Ether will be split in this way, since it is handled transparently by the contract.
- The split can be in equal parts or in any other arbitrary proportion.
	- The way this is specified is by assigning each account to a number of shares.
	- Of all the Ether that this contract receives, each account will then be able to claim an amount proportional to the percentage of total shares they were assigned.
- PaymentSplitter follows a pull payment model.
	- This means that payments are not automatically forwarded to the accounts but kept in this contract, and the actual transfer is triggered as a separate step by calling the release function
#### 182. OpenZeppelin TimelockController
- Acts as a timelocked controller.
	- Timelocks are time delayed operations
- When set as the owner of an Ownable smart contract, it enforces a timelock on all _onlyOwner_ maintenance operations.
	- This gives time for users of the controlled contract to exit before a potentially dangerous maintenance operation is applied.
- By default, this contract is self administered, meaning administration tasks have to go through the timelock process.
- The proposer (resp executor) role is in charge of proposing (resp executing) operations.
- A common use case is to position this TimelockController as the owner of a smart contract, with a multisig or a DAO as the sole proposer.
- Functions:
	- _constructor(uint256 minDelay, address[] proposers, address[] executors)_:
	    - Initializes the contract with a given minDelay.
	- _receive()_:
	    - Contract might receive/hold ETH as part of the maintenance process.
	- _isOperation(bytes32 id)_ → _bool pending_:
	    - Returns whether an id corresponds to a registered operation.
	    - This includes both Pending, Ready and Done operations.
	- _isOperationPending(bytes32 id)_ → _bool pending_:
	    - Returns whether an operation is pending or not.
	- _isOperationReady(bytes32 id)_ → _bool ready_:
	    - Returns whether an operation is ready or not.
	- _isOperationDone(bytes32 id)_ → _bool done_:
	    - Returns whether an operation is done or not.
	- _getTimestamp(bytes32 id)_ → _uint256 timestamp_:
	    - Returns the timestamp at which an operation becomes ready (0 for unset operations, 1 for done operations).
	- _getMinDelay()_ → _uint256 duration_:
	    - Returns the minimum delay for an operation to become valid.
	    - This value can be changed by executing an operation that calls updateDelay.
	- _hashOperation(address target, uint256 value, bytes data, bytes32 predecessor, bytes32 salt)_ → _bytes32 hash_:
	    - Returns the identifier of an operation containing a single transaction.
	- _hashOperationBatch(address[] targets, uint256[] values, bytes[] datas, bytes32 predecessor, bytes32 salt)_ → _bytes32 hash_:
		- Returns the identifier of an operation containing a batch of transactions.
	- _schedule(address target, uint256 value, bytes data, bytes32 predecessor, bytes32 salt, uint256 delay)_:
		- Schedule an operation containing a single transaction.
		- Emits a CallScheduled event.
		- Requirements:
			- the caller must have the 'proposer' role.
	- _scheduleBatch(address[] targets, uint256[] values, bytes[] datas, bytes32 predecessor, bytes32 salt, uint256 delay)_:
		- Schedule an operation containing a batch of transactions.
		- Emits one CallScheduled event per transaction in the batch.
		- Requirements: the caller must have the 'proposer' role.
	- _cancel(bytes32 id)_:
		- Cancel an operation.
		- Requirements: the caller must have the 'proposer' role.
	- _execute(address target, uint256 value, bytes data, bytes32 predecessor, bytes32 salt)_:
		- Execute an (ready) operation containing a single transaction.
		- Emits a CallExecuted event.
		- Requirements: the caller must have the 'executor' role.
	- _executeBatch(address[] targets, uint256[] values, bytes[] datas, bytes32 predecessor, bytes32 salt)_:
		- Execute an (ready) operation containing a batch of transactions.
		- Emits one CallExecuted event per transaction in the batch.
		- Requirements: the caller must have the 'executor' role.
	- _updateDelay(uint256 newDelay)_:
		- Changes the minimum timelock duration for future operations.
		- Emits a MinDelayChange event.
		- Requirements:
			- the caller must be the timelock itself.
			- This can only be achieved by scheduling and later executing an operation where the timelock is the target and the data is the ABI-encoded call to this function.
#### 183. OpenZeppelin ERC2771Context
- A Context variant for [ERC2771](https://eips.ethereum.org/EIPS/eip-2771).
- ERC2771 provides support for meta transactions, which are transactions that have been:
	- Authorized by the Transaction Signer.
		- For example, signed by an externally owned account
	- Relayed by an untrusted third party that pays for the gas (the Gas Relay)
- The problem is that for a contract that is not natively aware of meta transactions, the _msg.sender_ of the transaction will make it appear to be coming from the Gas Relay and not the Transaction Signer.
- A secure protocol for a contract to accept meta transactions needs to prevent the Gas Relay from forging, modifying or duplicating requests by the Transaction Signer.
- The entities are:
	- Transaction Signer - entity that signs & sends to request to Gas Relay
	- Gas Relay - receives a signed request off-chain from Transaction Signer and pays gas to turn it into a valid transaction that goes through Trusted Forwarder
	- Trusted Forwarder - a contract that is trusted by the Recipient to correctly verify the signature and nonce before forwarding the request from Transaction Signer
	- Recipient - a contract that can securely accept meta-transactions through a Trusted Forwarder by being compliant with this standard.
#### 184. OpenZeppelin MinimalForwarder
- Provides a simple minimal forwarder (as described above) to be used together with an ERC2771 compatible contract.
- It verifies the nonce and signature of the forwarded request before calling the destination contract.
	- struct ForwardRequest {address from; address to; uint256 value; uint256 gas; uint256 nonce; bytes data;}
	- verify(ForwardRequest calldata req, bytes calldata signature) public view → (bool)
	- execute(ForwardRequest calldata req, bytes calldata signature) → (success, returndata)
#### 185. OpenZeppelin Proxy
- This abstract contract provides a fallback function that delegates all calls to another contract using the EVM instruction delegatecall.
- We refer to the second contract as the implementation behind the proxy, and it has to be specified by overriding the virtual _implementation function.
	- Additionally, delegation to the implementation can be triggered manually through the _fallback function, or to a different contract through the _delegate function.
	- The success and return data of the delegated call will be returned back to the caller of the proxy.
- Functions
	- __delegate(address implementation)_:
		- Delegates the current call to implementation.
		- This function does not return to its internal call site, it will return directly to the external caller.
        - __implementation()_ → _address_:
	        - This is a virtual function that should be overridden so it returns the address to which the fallback function and __fallback_ should delegate.
        - __fallback()_:
	        - Delegates the current call to the address returned by __implementation()_.
	        - This function does not return to its internal call site, it will return directly to the external caller.
        - _fallback()_:
	        - Fallback function that delegates calls to the address returned by __implementation()_.
	        - Will run if no other function in the contract matches the call data.
        - _receive()_:
	        - Fallback function that delegates calls to the address returned by __implementation()_.
	        - Will run if call data is empty.
        - __beforeFallback()_:
	        - Hook that is called before falling back to the implementation.
	        - Can happen as part of a manual _fallback call, or as part of the Solidity fallback or receive functions. If overridden, should call _super._beforeFallback()_.
#### 186. OpenZeppelin ERC1967Proxy
- Implements an upgradeable proxy.
- It is upgradeable because calls are delegated to an implementation address that can be changed.
- This address is stored in storage in the location specified by EIP1967, so that it doesn’t conflict with the storage layout of the implementation behind the proxy.
- Upgradeability is only provided internally through __upgradeTo_.
	- _constructor(address _logic, bytes _data)_:
		- Initializes the upgradeable proxy with an initial implementation specified by _logic.
		- If _data is nonempty, it’s used as data in a delegate call to _logic.
		- This will typically be an encoded function call, and allows initializing the storage of the proxy like a Solidity constructor.
	- __implementation()_ → _address_ _impl_:
		- Returns the current implementation address.
	- __upgradeTo(address newImplementation)_:
		- Upgrades the proxy to a new implementation.
		- Emits an Upgraded event.
#### 187. OpenZeppelin TransparentUpgradeableProxy
- Implements a proxy that is upgradeable by an admin.
- To avoid proxy selector clashing, which can potentially be used in an attack, this contract uses the transparent proxy pattern.
	- This pattern implies two things that go hand in hand:
		- If any account other than the admin calls the proxy, the call will be forwarded to the implementation, even if that call matches one of the admin functions exposed by the proxy itself.
		- If the admin calls the proxy, it can access the admin functions, but its calls will never be forwarded to the implementation.
			- If the admin tries to call a function on the implementation it will fail with an error that says "admin cannot fallback to proxy target”.
- These properties mean that the admin account can only be used for admin actions like upgrading the proxy or changing the admin, so it’s best if it’s a dedicated account that is not used for anything else.
- This will avoid headaches due to sudden errors when trying to call a function from the proxy implementation.
	- _constructor(address _logic, address admin_, bytes _data)_:
		- Initializes an upgradeable proxy managed by _admin, backed by the implementation at _logic, and optionally initialized with _data.
	- _admin()_ → _address admin__:
		- Returns the current admin.
	- _implementation()_ → _address implementation__:
		- Returns the current implementation.
	- _changeAdmin(address newAdmin)_:
		- Changes the admin of the proxy.
		- Emits an AdminChanged event.
	- _upgradeTo(address newImplementation)_:
		- Upgrade the implementation of the proxy.
	- _upgradeToAndCall(address newImplementation, bytes data)_:
		- Upgrade the implementation of the proxy, and then call a function from the new implementation as specified by data, which should be an encoded function call.
		- This is useful to initialize new storage variables in the proxied contract.
	- __admin()_ → _address adm_:
		- Returns the current admin.
	- __beforeFallback()_:
		- Makes sure the admin cannot access the fallback function.
#### 188. OpenZeppelin ProxyAdmin
- This is an auxiliary contract meant to be assigned as the admin of a TransparentUpgradeableProxy.
	- _getProxyImplementation(contract TransparentUpgradeableProxy proxy)_ → _address_:
		- Returns the current implementation of proxy.
		- Requirements:
			- This contract must be the admin of proxy.
        - _getProxyAdmin(contract TransparentUpgradeableProxy proxy)_ → _address_:
	        - Returns the current admin of proxy.
	        - Requirements:
		        - This contract must be the admin of proxy.
        - _changeProxyAdmin(contract TransparentUpgradeableProxy proxy, address newAdmin)_:
	        - Changes the admin of proxy to newAdmin.
	        - Requirements:
		        - This contract must be the current admin of proxy.
        - _upgrade(contract TransparentUpgradeableProxy proxy, address implementation)_:
	        - Upgrades proxy to implementation.
	        - Requirements:
		        - This contract must be the admin of proxy.
        - _upgradeAndCall(contract TransparentUpgradeableProxy proxy, address implementation, bytes data)_:
	        - Upgrades proxy to implementation and calls a function on the new implementation.
	        - Requirements:
		        - This contract must be the admin of proxy.
#### 189. OpenZeppelin BeaconProxy
- Implements a proxy that gets the implementation address for each call from a UpgradeableBeacon.
- The beacon address is stored in storage slot uint256(keccak256('eip1967.proxy.beacon')) - 1, so that it doesn’t conflict with the storage layout of the implementation behind the proxy.
	- _constructor(address beacon, bytes data)_:
		- Initializes the proxy with beacon.
		- If data is nonempty, it’s used as data in a delegate call to the implementation returned by the beacon.
		- This will typically be an encoded function call, and allows initializing the storage of the proxy like a Solidity constructor.
		- Requirements:
			- beacon must be a contract with the interface IBeacon.
        - __beacon()_ → _address beacon_:
	        - Returns the current beacon address.
        - __implementation()_ → _address_:
	        - Returns the current implementation address of the associated beacon.
        - __setBeacon(address beacon, bytes data)_:
	        - Changes the proxy to use a new beacon.
	        - If data is nonempty, it’s used as data in a delegate call to the implementation returned by the beacon.
	        - Requirements:
		        1) beacon must be a contract
		        2) The implementation returned by beacon must be a contract.
#### 190. OpenZeppelin UpgradeableBeacon
- Is used in conjunction with one or more instances of BeaconProxy to determine their implementation contract, which is where they will delegate all function calls.
- An owner is able to change the implementation the beacon points to, thus upgrading the proxies that use this beacon.
	- _constructor(address implementation_)_:
		- Sets the address of the initial implementation, and the deployer account as the owner who can upgrade the beacon.
	- _implementation()_ → _address_:
		- Returns the current implementation address.
	- _upgradeTo(address newImplementation)_:
		- Upgrades the beacon to a new implementation.
		- Emits an Upgraded event.
		- Requirements:
			1) msg.sender must be the owner of the contract
			2) newImplementation must be a contract.
#### 191. OpenZeppelin Clones
- EIP 1167 is a standard for deploying minimal proxy contracts, also known as “clones".
- To simply and cheaply clone contract functionality in an immutable way, this standard specifies a minimal bytecode implementation that delegates all calls to a known, fixed address.
- The library includes functions to deploy a proxy using either create (traditional deployment) or create2 (salted deterministic deployment).
- It also includes functions to predict the addresses of clones deployed using the deterministic method.
	- _clone(address implementation)_ → _address instance_:
		- Deploys and returns the address of a clone that mimics the behaviour of implementation.
		- This function uses the create opcode, which should never revert.
	- _cloneDeterministic(address implementation, bytes32 salt)_ → _address instance_:
		- Deploys and returns the address of a clone that mimics the behaviour of implementation.
		- This function uses the create2 opcode and a salt to deterministically deploy the clone.
		- Using the same implementation and salt multiple times will revert, since the clones cannot be deployed twice at the same address.
	- _predictDeterministicAddress(address implementation, bytes32 salt, address deployer)_ → address predicted:
		- Computes the address of a clone deployed using Clones.cloneDeterministic.
	- _predictDeterministicAddress(address implementation, bytes32 salt)_ → _address predicted_:
		- Computes the address of a clone deployed using Clones.cloneDeterministic.
#### 192. OpenZeppelin Initializable
- Aids in writing upgradeable contracts, or any kind of contract that will be deployed behind a proxy.
- Since a proxied contract cannot have a constructor, it is common to move constructor logic to an external initializer function, usually called _initialize_.
- It then becomes necessary to protect this initializer function so it can only be called once.
- The initializer modifier provided by this contract will have this effect.
	- To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as possible by providing the encoded function call as the _data argument.
	- When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure that all initializers are idempotent.
	- This is not verified automatically as constructors are by Solidity.
#### 193. Dappsys DSProxy
- Dappsys is used as an alternative to OpenZeppelin libraries
- Implements a proxy deployed as a standalone contract which can then be used by the owner to execute code.
- A user would pass in the bytecode for the contract as well as the calldata for the function they want to execute.
- The proxy will create a contract using the bytecode.
- It will then delegatecall the function and arguments specified in the calldata.
#### 194. Dappsys DSMath
- Provides arithmetic functions for the common numerical primitive types of Solidity.
- You can safely add, subtract, multiply, and divide uint numbers without fear of integer overflow.
- You can also find the minimum and maximum of two numbers.
- Additionally, this package provides arithmetic functions for two new higher level numerical concepts called _wad_ (18 decimals) and _ray_ (27 decimals).
	- These are used to represent fixed-point decimal numbers.
	- A wad is a decimal number with 18 digits of precision and a ray is a decimal number with 27 digits of precision.
	- These functions are necessary to account for the difference between how integer arithmetic behaves normally, and how decimal arithmetic should actually work.
- The standard functions are the uint set, so their function names are not  prefixed:
	- _add_, _sub_, _mul_, _min_, and _max_.
	- There is no div function, as divide-by-zero checking is built into the Solidity compiler.
	- The int functions have an _i_ prefix: _imin_ and _imax_.
	- Wad functions have a _w_ prefix: _wmul_, _wdiv_.
	- Ray functions have a _r_ prefix: _rmul_, _rdiv_, _rpow_.
#### 195. Dappsys DSAuth
- Provides a flexible and updatable auth pattern which is completely separate from application logic.
- By default, the auth modifier will restrict function-call access to the including contract owner and the including contract itself.
- The auth modifier provided by DSAuth triggers the internal isAuthorized function to require that the msg.sender is authorized ie. the sender is either:
	1) the contract owner
	2) the contract itself or
	3) has been granted permission via a specified authority.
#### 196. Dappsys DSGuard
- Manages an Access Control List which maps source and destination addresses to function signatures.
- Intended to be used as an authority for DSAuth where it acts as a lookup table for the _canCall_ function to provide boolean answers as to whether a particular address is authorized to call a given function at another address.
- The ACL is a mapping of _[src][dst][sig] => boolean_ where an address src can be either permitted or forbidden access to a function _sig_ at address _dst_ according to the boolean value.
- When used as an authority by DSAuth the _src_ is considered to be the _msg.sender_, the _dst_ is the including contract and _sig_ is the function which invoked the auth modifier.
#### 197. Dappsys DSRoles
- A role-driven authority for ds-auth which facilitates access to lists of user roles and capabilities.
- Works as a set of lookup tables for the canCall function to provide boolean answers as to whether a user is authorized to call a given function at given address.
- DSRoles provides 3 different ways of permitting/forbidding function call access to users:
	1) Root Users:
		- any users added to the _root_users whitelist will be authorized to call any function regardless of what roles or capabilities might be defined.
	1) Public Capabilities:
		- public capabilities are global capabilities which apply to all users and take precedence over any user specific role-capabilities which might be defined.
	1) Role Capabilities:
		- capabilities which are associated with a particular role.
		- Role capabilities are only checked if the user does not have root access and the capability is not public.
#### 198. WETH
- WETH stands for Wrapped Ether.
- For protocols that work with ERC-20 tokens but also need to handle Ether, WETH contracts allow converting Ether to its ERC-20 equivalent WETH (called wrapping) and vice-versa (called unwrapping).
- WETH can be created by sending ether to a WETH smart contract where the Ether is stored and in turn receiving the WETH ERC-20 token at a 1:1 ratio.
- This WETH can be sent back to the same smart contract to be “unwrapped” i.e. redeemed back for the original Ether at a 1:1 ratio.
- The most widely used WETH contract is [WETH9](https://etherscan.io/address/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2#code) which holds more than 7 million Ether for now.
#### 199. Uniswap V2
- Uniswap is an automated liquidity protocol powered by a constant product formula and implemented in a system of non-upgradeable smart contracts on the Ethereum blockchain.
- The automated market making algorithm used by Uniswap is _x*y=k_, where x and y represent a token pair that allow one token to be exchanged for the other as long as the “constant product” formula is preserved i.e. trades must not change the product (k) of a pair’s reserve balances (x and y). Core concepts:
	1. Pools:
		 - Each Uniswap liquidity pool is a trading venue for a pair of ERC20 tokens.
		 - When a pool contract is created, its balances of each token are 0; in order for the pool to begin facilitating trades, someone must seed it with an initial deposit of each token.
		 - This first liquidity provider is the one who sets the initial price of the pool.
		 - They are incentivized to deposit an equal value of both tokens into the pool.
		 - Whenever liquidity is deposited into a pool, unique tokens known as liquidity tokens are minted and sent to the provider’s address.
		 - These tokens represent a given liquidity provider’s contribution to a pool.
        2. Swaps:
	        - allows one to trade one ERC-20 token for another, where one token is withdrawn (purchased) and a proportional amount of the other deposited (sold), in order to maintain the constant _x*y=k_
        3. Flash Swaps:
	        - allows one to withdraw up to the full reserves of any ERC20 token on Uniswap and execute arbitrary logic at no upfront cost, provided that by the end of the transaction they either:
		        1) pay for the withdrawn ERC20 tokens with the corresponding pair tokens
		        2) return the withdrawn ERC20 tokens along with a small fee
        4. Oracles:
	        - enables developers to build highly decentralized and manipulation-resistant on-chain price oracles.
	        - A price oracle is any tool used to view price information about a given asset.
	        - Every pair measures (but does not store) the market price at the beginning of each block, before any trades take place i.e. price at the end of the previous block which is added to a single cumulative-price variable weighted by the amount of time this price existed.
	        - This variable can be used by external contracts to track accurate time-weighted average prices (TWAPs) across any time interval.
#### 200. Uniswap V3:
- [Introduces](https://uniswap.org/blog/uniswap-v3/)
    1. Concentrated liquidity:
	    - giving individual LPs granular control over what price ranges their capital is allocated to.
	    - Individual positions are aggregated together into a single pool, forming one combined curve for users to trade against
    2. Multiple fee tiers:
	    - allowing LPs to be appropriately compensated for taking on varying degrees of risk
    3. V3 oracles are capable of providing time-weighted average prices (TWAPs) on demand for any period within the last ~9 days.
	    - This removes the need for integrators to checkpoint historical values.
#### 201. Chainlink Oracles & Price Feeds
- Chainlink Price Feeds provide aggregated data (via its _AggregatorV3Interface_ contract interface) from various high quality data providers, fed on-chain by decentralized oracles on the Chainlink Network.
- To get price data into smart contracts for an asset that isn’t covered by an existing price feed, such as the price of a particular stock, one can customize Chainlink oracles to call any external API.



### [Quiz](https://ventral.digital/posts/2021/10/30/secureum-bootcamp-solidity-201-quiz)
##### Q1 Which of the following is/are true about abstract contracts and interfaces?
- [ ]  A) Abstract contracts have at least one function undefined
- [ ]  B) Interfaces can have some functions defined
- [ ]  C) Unimplemented functions in abstract contracts need to be declared virtual
- [ ]  D) All functions are implicitly virtual in interfaces
<details>
<summary>Answer</summary>
A,C,D
<p>Note: While the initial platform-specified correct answer for Q1 was A,C,D, it was determined that this Q&A had some latent ambiguity with answer choice A. Therefore, all answer combinations indicated above were considered as valid and scores adjusted accordingly.
</p>
<p>
Note that A isn't necessarily correct since abstract classes can have all functions defined.<br>
Abstract Contracts: Contracts need to be marked as abstract when at least one of their functions is not implemented. They use the abstract keyword.<br>
Interfaces: They cannot have any functions implemented.<br>
Virtual Functions: Functions without implementation have to be marked virtual outside of interfaces. In interfaces, all functions are automatically considered virtual. Functions with private visibility cannot be virtual.
</p>
</details>

##### Q2 Libraries are contracts
- [ ]  A) That cannot have state variables
- [ ]  B) That cannot be inherited
- [ ]  C) That always require a delegatecall
- [ ]  D) That are not meant to receive Ether
<details>
<summary>Answer</summary>
A,B,D
<p>
Libraries: They are deployed only once at a specific address and their code is reused using the DELEGATECALL opcode. This means that if library functions are called, their code is executed in the context of the calling contract. They use the library keyword.<br>
Library Restrictions: In comparison to contracts, libraries are restricted in the following ways: They cannot have state variables, they cannot inherit nor be inherited, they cannot receive Ether.<br>
Library functions can only be called directly (i.e. without the use of DELEGATECALL) if they do not modify the state (i.e. if they are view or pure functions), because libraries are assumed to be stateless
</p>
</details>

##### Q3 Storage layout
- [ ]  A) Refers to the layout of state variables in storage
- [ ]  B) Is organized in 256-byte slots
- [ ]  C) Is packed for value types that use less than 32 bytes
- [ ]  D) Always starts on a new slot for reference types
<details>
<summary>Answer</summary>
A,C,D
<p>
EVM Storage: Storage is a key-value store that maps 256-bit words to 256-bit words and is accessed with EVM’s SSTORE/SLOAD instructions. All locations in storage are initialized as zero.<br>
Storage Layout Packing: For each state variable, a size in bytes is determined according to its type. Multiple, contiguous items that need less than 32 bytes are packed into a single storage slot if possible, according to the following rules: [...] Value types use only as many bytes as are necessary to store them
</p>
</details>

##### Q4 For contract A {uint256 i; bool b1; bool b2; address a1;} the number of storage slots used is
- [ ]  A) 4
- [ ]  B) 3
- [ ]  C) 2
- [ ]  D) 1
<details>
<summary>Answer</summary>
C
<p>
The uint256 takes a full slot, the bools (each 1 byte) and the address (20 bytes) can packed into the same slot<br>
Storage Layout: State variables of contracts are stored in storage in a compact way such that multiple values sometimes use the same storage slot. Except for dynamically-sized arrays and mappings, data is stored contiguously item after item starting with the first state variable, which is stored in slot 0<br>
Storage Layout Packing: For each state variable, a size in bytes is determined according to its type. Multiple, contiguous items that need less than 32 bytes are packed into a single storage slot if possible, according to the following rules: [...] If a value type does not fit the remaining part of a storage slot, it is stored in the next storage slot
</p>
</details>

##### Q5 Which of the following is/are generally true about storage layouts?
- [ ]  A) The number of slots used for a contract depends on the ordering of state variable declarations
- [ ]  B) The slots for struct elements are consecutive
- [ ]  C) The slot s for dynamic array contains the length with individual elements stored consecutively in slots starting at keccak256(s)
- [ ]  D) The slot s for mapping is empty with individual values stored consecutively in slots starting at keccak(h(k).s), where k is the first key and h is a hash function that depends on type of k
<details>
<summary>Answer</summary>
A,B,C
<p>
For mappings the slots are unique for each key, they're not consecutive.<br>
Storage Layout & Ordering: Ordering of storage variables and struct members affects how they can be packed tightly. For example, declaring your storage variables in the order of uint128, uint128, uint256 instead of uint128, uint256, uint128, as the former will only take up two slots of storage whereas the latter will take up three.<br>
Storage Layout & Structs/Arrays: [...] The elements of structs and arrays are stored after each other, just as if they were given as individual values.<br>
Storage Layout for Dynamic Arrays: If the storage location of the array ends up being a slot p after applying the storage layout rules, this slot stores the number of elements in the array (byte arrays and strings are an exception). Array data is located starting at keccak256(p) and it is laid out in the same way as statically-sized array data would: One element after the other, potentially sharing storage slots if the elements are not longer than 16 bytes.<br>
Storage Layout for Mappings: For mappings, the slot stays empty, but it is still needed to ensure that even if there are two mappings next to each other, their content ends up at different storage locations. The value corresponding to a mapping key k is located at keccak256(h(k) . p) where . is concatenation and h is a function that is applied to the key depending on its type [...]
</p>
</details>

##### Q6 EVM memory
- [ ]  A) Is linear and byte-addressable
- [ ]  B) Is reserved by Solidity until 0x7f
- [ ]  C) Can be accessed in bytes using MLOAD8/MSTORE8
- [ ]  D) Is non-volatile or persistent
<details>
<summary>Answer</summary>
A,B
<p>
EVM Memory: EVM memory is linear and can be addressed at byte level and accessed with MSTORE/MSTORE8/MLOAD instructions. All locations in memory are initialized as zero.<br>
Reserved Memory: Solidity reserves four 32-byte slots, with specific byte ranges (inclusive of endpoints) [...]: `0x60 - 0x7f (32 bytes)`: zero slot (The zero slot is used as initial value for dynamic memory arrays and should never be written to)
</p>
</details>

##### Q7 EVM inline assembly has
- [ ]  A) Its own language called Yul
- [ ]  B) Safety checks just like Solidity
- [ ]  C) Access to all variables in the contract and function where present
- [ ]  D) References to variables as their addresses not values
<details>
<summary>Answer</summary>
A,C,D
<p>
Inline Assembly: Inline assembly is a way to access the Ethereum Virtual Machine at a low level. This bypasses several important safety features and checks of Solidity. You should only use it for tasks that need it, and only if you are confident with using it. The language used for inline assembly in Solidity is called Yul.<br>
Inline Assembly Access to External Variables, Functions and Libraries: You can access Solidity variables and other identifiers by using their name. Local variables of value type are directly usable in inline assembly. Local variables that refer to memory/calldata evaluate to the address of the variable in memory/calldata and not the value itself [...]
</p>
</details>

##### Q8 Zero address check is typically recommended because
- [ ]  A) The use of zero address for transfers will trigger an EVM exception
- [ ]  B) Ether/tokens sent to zero address will be inaccessible
- [ ]  C) Ether/tokens sent to zero address can be accessed by anyone
- [ ]  D) Address 0 is the Ethereum Masternode account and is forbidden for access
<details>
<summary>Answer</summary>
B
<p>
Zero Address Check: address(0) which is 20-bytes of 0’s is treated specially in Solidity contracts because the private key corresponding to this address is unknown. Ether and tokens sent to this address cannot be retrieved and setting access control roles to this address also won’t work (no private key to sign transactions). Therefore zero addresses should be used with care and checks should be implemented for user-supplied address parameters.
</p>
</details>

##### Q9 ERC20 transferFrom(address sender, address recipient, uint256 amount) (that follows the ERC20 spec strictly)
- [ ]  A) Transfers token amount from sender to recipient
- [ ]  B) sender must have given caller (msg.sender) approval for at least amount or more
- [ ]  C) Deducts amount from sender’s allowance
- [ ]  D) Deducts amount from caller’s (msg.sender’s) allowance
<details>
<summary>Answer</summary>
A,B,D
<p>
Moves amount tokens from sender to recipient using the allowance mechanism. amount is then deducted from the caller’s allowance. Returns a boolean value indicating whether the operation succeeded. Emits a Transfer event.
</p>
</details>

##### Q10 OpenZeppelin SafeERC20 is generally considered safer to use than ERC20 because
- [ ]  A) It adds integer overflow/underflow checks
- [ ]  B) It adds return value/data checks
- [ ]  C) It adds pause/unpause capability
- [ ]  D) It adds race-condition checks
<details>
<summary>Answer</summary>
B
</details>

##### Q11 OpenZeppelin ERC20Pausable
- [ ]  A) Adds ability to pause token transfers
- [ ]  B) Adds ability to pause token minting and burning
- [ ]  C) Provides modifiers whenPaused and whenNotPaused
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
A,B
<p>
Not C, because it inherits these modifiers from Pausable and doesn't implement them<br>
OpenZeppelin ERC20Pausable: ERC20 token with pausable token transfers, minting and burning. Useful for scenarios such as preventing trades until the end of an evaluation period, or having an emergency switch for freezing all token transfers in the event of a large bug.<br>
OpenZeppelin Pausable: provides an emergency stop mechanism using functions pause and unpause that can be triggered by an authorized account. This module is used through inheritance. It will make available the modifiers whenNotPaused and whenPaused, which can be applied to the functions of your contract. Only the functions using the modifiers will be affected when the contract is paused or unpaused.
</p>
</details>

##### Q12 OpenZeppelin ERC721
- [ ]  A) Implements the NFT standard
- [ ]  B) safeTransferFrom(..) checks for zero-addresses
- [ ]  C) approve(..) is susceptible to race-condition just like ERC20
- [ ]  D) setApprovalForAll(address operator, bool _approved) approves/removes operator for all of caller’s tokens
<details>
<summary>Answer</summary>
A,B,D
<p>
 Not C, since approval is not susceptible since approval can only given or taken away for a single token, so changing approval doesn't allow stealing more than was already approved<br>
 OpenZeppelin ERC721: Implements the popular ERC721 Non-Fungible Token Standard.<br>
 `safeTransferFrom(..)`: Safely transfers tokenId token from from to to, checking first that contract recipients are aware of the ERC721 protocol to prevent tokens from being forever locked. Requirements: 1) from cannot be the zero address [...]<br>
 `setApprovalForAll(address operator, bool _approved)`: Approve or remove operator as an operator for the caller. Operators can call transferFrom or safeTransferFrom for any token owned by the caller.<br>
</p>
</details>

##### Q13 ERC777 may be considered as an improved version of ERC20 because
- [ ]  A) Hooks allow reacting to token mint/burn/transfer
- [ ]  B) It can help avoid separate approve and transferFrom transactions
- [ ]  C) It can help prevent tokens getting stuck in contracts
- [ ]  D) It removes reentrancy risk
<details>
<summary>Answer</summary>
A,B,C
<p>
OpenZeppelin ERC777: Like ERC20, ERC777 is a standard for fungible tokens with improvements such as getting rid of the confusion around decimals, minting and burning with proper events, among others, but its killer feature is receive hooks. [...] A hook is simply a function in a contract that is called when tokens are sent to it, meaning accounts and contracts can react to receiving tokens. This enables a lot of interesting use cases, including atomic purchases using tokens (no need to do approve and transferFrom in two separate transactions), rejecting reception of tokens (by reverting on the hook call), redirecting the received tokens to other addresses, among many others. Furthermore, since contracts are required to implement these hooks in order to receive tokens, no tokens can get stuck in a contract that is unaware of the ERC777 protocol, as has happened countless times when using ERC20s.
</p>
</details>

##### Q14 The OpenZeppelin library that provides onlyOwner modifier
- [ ]  A) Is Ownable
- [ ]  B) Provides role based access control
- [ ]  C) Provides a function to renounce ownership
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
A,C
<p>
OpenZeppelin Ownable: provides a basic access control mechanism, where there is an account (an owner) that can be granted exclusive access to specific functions. By default, the owner account will be the one that deploys the contract. This can later be changed with transferOwnership. This module is used through inheritance. It will make available the modifier onlyOwner, which can be applied to your functions to restrict their use to the owner.
</p>
</details>

##### Q15 OpenZeppelin’s (role-based) AccessControl library
- [ ]  A) Provides support only for two specific roles: Owner and User
- [ ]  B) Provides support for different roles with different authorization levels
- [ ]  C) Provides support for granting and revoking roles
- [ ]  D) None the above
<details>
<summary>Answer</summary>
B,C
<p>
OpenZeppelin AccessControl: provides a general role based access control mechanism. Multiple hierarchical roles can be created and assigned each to multiple accounts. Roles can be used to represent a set of permissions. hasRole is used to restrict access to a function call. Roles can be granted and revoked dynamically via the grantRole and revokeRole functions which can only be called by the role’s associated admin accounts.
</p>
</details>

##### Q16 If OpenZeppelin’s isContract(address) returns false for an address then
- [ ]  A) Address is guaranteed to not be a contract
- [ ]  B) Codesize at address is 0 at time of invocation
- [ ]  C) Both A & B
- [ ]  D) Neither A nor B
<details>
<summary>Answer</summary>
B
<p>
Returns true if account is a contract. It is unsafe to assume that an address for which this function returns false is an externally-owned account (EOA) and not a contract. Among others, isContract will return false for the following types of addresses: 1) an externally-owned account 2) a contract in construction 3) an address where a contract will be created 4) an address where a contract lived, but was destroyed
</p>
</details>

##### Q17 CREATE2
- [ ]  A) Deploys two contracts proxy and implementation concurrently
- [ ]  B) Deploys contract at an address that can be predetermined
- [ ]  C) Uses a salt and contract creationCode
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
B, C
</details>

##### Q18 OpenZeppelin ECDSA
- [ ]  A) Implements functions for signature creation & verification
- [ ]  B) Is susceptible to signature malleability
- [ ]  C) Both A & B
- [ ]  D) Neither A nor B
<details>
<summary>Answer</summary>
D
<p>
OpenZeppelin ECDSA: provides functions for recovering and managing Ethereum account ECDSA signatures. These are often generated via web3.eth.sign, and are a 65 byte array (of type bytes in Solidity) arranged the following way: `[[v (1)], [r (32)], [s (32)]]`. The data signer can be recovered with ECDSA.recover, and its address compared to verify the signature. Most wallets will hash the data to sign and add the prefix `'\x19Ethereum Signed Message:\n'`, so when attempting to recover the signer of an Ethereum signed message hash, you’ll want to use toEthSignedMessageHash.<br>
Externally Owned Accounts (EOA) can sign messages with their associated private keys, but currently contracts cannot.
</p>
</details>

##### Q19 OpenZeppelin SafeMath
- [ ]  A) Prevents integer overflows/underflows at compile-time
- [ ]  B) Is not required if using Solidity compiler version >= 0.8.0
- [ ]  C) Both A & B
- [ ]  D) Neither A nor B
<details>
<summary>Answer</summary>
B
<p>
Not A, because it does not prevent them at compile- but at runtime. It can be argued it's not B since it's a recommendation and not a requirement.<br>
OpenZeppelin SafeMath: provides mathematical functions that protect your contract from overflows and underflows.<br>
Overflow/Underflow Check: Until Solidity version 0.8.0 which introduced checked arithmetic by default, arithmetic was unchecked and therefore susceptible to overflows and underflows which could lead to critical vulnerabilities. The recommended best-practice for such contracts is to use OpenZeppelin’s SafeMath library for arithmetic.
</p>
</details>

##### Q20 OpenZeppelin’s proxy implementations
- [ ]  A) Typically have a proxy contract and an implementation contract
- [ ]  B) Use delegatecall's from proxy to implementation
- [ ]  C) Cannot support upgradeable proxies
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
A,B
<p>
OpenZeppelin Proxy: This abstract contract provides a fallback function that delegates all calls to another contract using the EVM instruction delegatecall. We refer to the second contract as the implementation behind the proxy, and it has to be specified by overriding the virtual _implementation function.<br>
OpenZeppelin ERC1967Proxy: implements an upgradeable proxy. It is upgradeable because calls are delegated to an implementation address that can be changed.
</p>
</details>

##### Q21 Proxied contracts
- [ ]  A) Should use constructors in implementation contract to initialize the proxy’s state variables
- [ ]  B) Should use an external/public initialize() function
- [ ]  C) Should have their initialize() function called only once
- [ ]  D) All of the above
<details>
<summary>Answer</summary>
B,C
<p>
OpenZeppelin Initializable: aids in writing upgradeable contracts, or any kind of contract that will be deployed behind a proxy. Since a proxied contract cannot have a constructor, it is common to move constructor logic to an external initializer function, usually called initialize. It then becomes necessary to protect this initializer function so it can only be called once. The initializer modifier provided by this contract will have this effect.<br>
To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as possible by providing the encoded function call as the _data argument. When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
</p>
</details>

##### Q22 Dappsys provides
- [ ]  A) A proxy implementation
- [ ]  B) A floating-point implementation with wad & ray
- [ ]  C) A flexible authorization implementation
- [ ]  D) All of the above
<details>
<summary>Answer</summary>
A,C
<p>
Dappsys DSProxy: implements a proxy deployed as a standalone contract which can then be used by the owner to execute code.<br>
Dappsys DSMath: provides arithmetic functions for the common numerical primitive types of Solidity. You can safely add, subtract, multiply, and divide uint numbers without fear of integer overflow. You can also find the minimum and maximum of two numbers. Additionally, this package provides arithmetic functions for two new higher level numerical concepts called wad (18 decimals) and ray (27 decimals). These are used to represent **fixed-point decimal numbers**. A wad is a decimal number with 18 digits of precision and a ray is a decimal number with 27 digits of precision.<br>
Dappsys DSAuth: Provides a flexible and updatable auth pattern which is completely separate from application logic.
</p>
</details>

##### Q23 WETH is
- [ ]  A) An ERC20 pre-compile for Wrapped Ether built into Ethereum protocol
- [ ]  B) Warp Ether for super-fast Ether transfers
- [ ]  C) Wrapped Ether to convert Ether into an ERC721 NFT
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
D
<p>
WETH: WETH stands for Wrapped Ether. For protocols that work with ERC-20 tokens but also need to handle Ether, WETH contracts allow converting Ether to its ERC-20 equivalent WETH (called wrapping) and vice-versa (called unwrapping). WETH can be created by sending ether to a WETH smart contract where the Ether is stored and in turn receiving the WETH ERC-20 token at a 1:1 ratio. This WETH can be sent back to the same smart contract to be “unwrapped” i.e. redeemed back for the original Ether at a 1:1 ratio. The most widely used WETH contract is WETH9 which holds more than 7 million Ether for now.
</p>
</details>

##### Q24 Name collision error with inheritance happens when the following pairs have the same name within a contract
- [ ]  A) Function & modifier
- [ ]  B) Function & event
- [ ]  C) Function & function
- [ ]  D) Event & modifier
<details>
<summary>Answer</summary>
A,B,D
<p>
Name Collision Error: It is an error when any of the following pairs in a contract have the same name due to inheritance: 1) a function and a modifier 2) a function and an event 3) an event and a modifier.
</p>
</details>

##### Q25 Which of the following is/are not allowed?
- [ ]  A) Function overriding
- [ ]  B) Function overloading
- [ ]  C) Modifier overloading
- [ ]  D) Modifier overriding
<details>
<summary>Answer</summary>
C
<p>
Function Overriding: Base functions can be overridden by inheriting contracts to change their behavior if they are marked as virtual. The overriding function must then use the override keyword in the function header.<br>
Function Overloading: A contract can have multiple functions of the same name but with different parameter types. This process is called “overloading.”<br>
Modifier Overriding: Function modifiers can override each other. This works in the same way as function overriding (except that there is no overloading for modifiers).
</p>
</details>

##### Q26 Solidity supports
- [ ]  A) Multiple inheritance
- [ ]  B) Polymorphism
- [ ]  C) Contract overloading
- [ ]  D) Function overloading
<details>
<summary>Answer</summary>
A,B,D
<p>
No such things as C.<br>
Solidity supports multiple inheritance including polymorphism<br>
Function Overloading: A contract can have multiple functions of the same name but with different parameter types. This process is called “overloading.”
</p>
</details>

##### Q27 Which of the following EVM instruction(s) do(es) not touch EVM storage?
- [ ]  A) SLOAD
- [ ]  B) MSTORE8
- [ ]  C) SSTORE
- [ ]  D) SWAP
<details>
<summary>Answer</summary>
B,D
<p>
EVM Storage: Storage is a key-value store that maps 256-bit words to 256-bit words and is accessed with EVM’s SSTORE/SLOAD instructions. All locations in storage are initialized as zero.<br>
EVM Memory: EVM memory is linear and can be addressed at byte level and accessed with MSTORE/MSTORE8/MLOAD instructions. All locations in memory are initialized as zero.<br>
Stack is made up of 1024 256-bit elements. EVM instructions can operate with the top 16 stack elements. Most EVM instructions operate with the stack (stack-based architecture) and there are also stack-specific operations e.g. PUSH, POP, SWAP, DUP etc.
</p>
</details>

##### Q28 Which of the following is/are true about Solidity compiler 0.8.0?
- [ ]  A) ABI coder v2 is made the default
- [ ]  B) No opt-out primitives for default checked arithmetic
- [ ]  C) Failing assert returns the gas left instead of consuming all gas
- [ ]  D) Exponentiation is made right associative
<details>
<summary>Answer</summary>
A,C,D
<p>
ABI coder v2 is activated by default. You can choose to use the old behaviour using `pragma abicoder v1;`. The pragma `pragma experimental ABIEncoderV2;` is still valid, but it is deprecated and has no effect. If you want to be explicit, please use `pragma abicoder v2;` instead.<br>
Arithmetic operations revert on underflow and overflow. You can use `unchecked`  to use the previous wrapping behaviour.<br>
Failing assertions and other internal checks like division by zero or arithmetic overflow do not use the invalid opcode but instead the revert opcode. More specifically, they will use error data equal to a function call to Panic(uint256) with an error code specific to the circumstances. This will save gas on errors while it still allows static analysis tools to distinguish these situations from a revert on invalid input, like a failing require.<br>
Exponentiation is right associative, i.e., the expression a**b**c is parsed as a**(b**c). Before 0.8.0, it was parsed as (a**b)**c. This is the common way to parse the exponentiation operator.
</p>
</details>

##### Q29 OpenZeppelin SafeCast
- [ ]  A) Prevents underflows while downcasting
- [ ]  B) Prevents overflows while downcasting
- [ ]  C) Prevents underflows while upcasting
- [ ]  D) Prevents overflows while upcasting
<details>
<summary>Answer</summary>
B
<p>
OpenZeppelin SafeCast: Wrappers over Solidity's uintXX/intXX casting operators with added overflow checks. Downcasting from uint256/int256 in Solidity does not revert on overflow. This can easily result in undesired exploitation or bugs, since developers usually assume that overflows raise errors. `SafeCast` restores this intuition by reverting the transaction when such an operation overflows.
</p>
</details>

##### Q30 OpenZeppelin’s ReentrancyGuard library mitigates reentrancy risk in a contract
- [ ]  A) For all its functions by simply deriving/inheriting from it
- [ ]  B) Only for functions that apply the nonReentrant modifier
- [ ]  C) By enforcing a checks-effects-interactions pattern in its functions
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
B
<p>
OpenZeppelin ReentrancyGuard: prevents reentrant calls to a function. Inheriting from ReentrancyGuard will make the nonReentrant modifier available, which can be applied to functions to make sure there are no nested (reentrant) calls to them.
</p>
</details>

##### Q31 Assuming all contracts C1, C2 and C3 define explicit constructors in contract C1 is C2, C3 {…} and both C2 and C3 don’t inherit contracts, the number & order of constructor(s) executed is/are
- [ ]  A) One, that of C1
- [ ]  B) Three, in the order C2, C3, C1
- [ ]  C) One, that of C3
- [ ]  D) Three, in the order C1, C2, C3
<details>
<summary>Answer</summary>
B
<p>
Base Constructors: The constructors of all the base contracts will be called following the linearization rules.<br>
Storage Layout & Inheritance: For contracts that use inheritance, **the ordering of state variables is determined by the C3-linearized order of contracts starting with the most base-ward contract.** If allowed by the above rules, state variables from different contracts do share the same storage slot.
</p>
</details>

##### Q32 Which of the following is/are true for a function f that has a modifier m?
- [ ]  A) Function f cannot have another modifier because every function can have at most one modifier
- [ ]  B) Function f's code is inlined at the point of _ within modifier m
- [ ]  C) Function f reverts if _ is not executed in the modifier m
- [ ]  D) None of the above
<details>
<summary>Answer</summary>
B
<p>
Function Modifiers: They can be used to change the behaviour of functions in a declarative way. For example, you can use a modifier to automatically check a condition prior to executing the function. The function’s control flow continues after the “_” in the preceding modifier. Multiple modifiers are applied to a function by specifying them in a whitespace-separated list and are evaluated in the order presented. The modifier can choose not to execute the function body at all and in that case the return variables are set to their default values just as if the function had an empty body. The _ symbol can appear in the modifier multiple times. Each occurrence is replaced with the function body.
</p>
</details>