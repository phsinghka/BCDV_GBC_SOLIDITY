//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract SimpleStorage{
    
    uint public storedData;

    function SetStoredDate(uint x) public {
        storedData = x;
    }

    function GetStoredData() public view returns (uint){
        return storedData;
    }
    function getMoney() public payable{
        
    }

    //Example of Infinite Gas Consumption
    function gasDes() public pure returns (uint){
        uint i = 1;
        while (i!=0){
            i++;
        }
    }

}