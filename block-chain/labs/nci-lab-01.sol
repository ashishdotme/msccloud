// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    uint storedData;
    
    // public can be edited from outside of the contact
    function set (uint x) public {
        storedData = x;
    }
    
    // view is readonly, only reads data
    function get() public view returns (uint) {
        return storedData;
    }
}

// the language is called solidity
// retval is just shorthand for return_value
// although we call it anything
// Account is like a bank Account
// it holds ether (or other tokens)
// and we use it to deploy smart contracts to the blockchain