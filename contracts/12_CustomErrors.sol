//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract CustomErrors{

    address public owner;
    uint public total;
    error Unauthorized();

    constructor() {
        owner = msg.sender;
    }

    function Add(uint _amount) public {
        if(msg.sender != owner) {
            revert Unauthorized();
        }
        total += _amount;
    }
}