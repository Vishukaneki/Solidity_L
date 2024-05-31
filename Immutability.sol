// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Immutable{
    // this is inline declaration of immutable data
    address public immutable addr=msg.sender;
    address public immutable addr2;
    // this is constructor declaration of immutable data 
    // you can intialize immmutable data at deploy time
    constructor(){
        addr2=address(this);
    }
    // there is a difference between constant and immutable
    // i.e you have to always initialize the constant type 
    address public constant addr3= address(23);

}