// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bank {

    // uint for to avoid negative balaces
    uint bal;

    constructor() {
        bal = 0; //initial balance 0
    }

    // view only for fetching value and not for manipulating
    function getBalance() view public returns(uint) {
        return bal;          //balance check
    }
    
    function withdrawl(uint amt) public {
        bal = bal - amt;    //deduct
    }

    function deposit(uint amt) public {
        bal = bal + amt;    //credit
    }
} 

// If we want to connect webpage with smart contract we need : 
// ABI  (Json code)
// Deployed contract address  (0xae3B84c2B50749Bd18b2B65c7a3AFa3Ab1d025e8)