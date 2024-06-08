// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <=0.8.7;
contract Datas{
    // uint is unsigned integer only +ve values are allowed 
    uint8  public u8=10;
    uint public u256=122222222222222222222222222222222222222222222222;
    // int is signed integer both +ve and _ve values are allowed in it.
    int8 public i8=-10;
    // bytes data type you can input bytes directly into it or it will change the string to bytes
    bytes public b2="hello";
    //  similarly string data type takes strings 
    string public s1="hello moto";
    string public s2='hello samsung';
    // boolean data types
    bool public b1=true;
    bool public b3;
    // address data types addresses are a core concept in blockchain it sure needs a data type
    address public deployer=msg.sender; 
// IF SOMETHING IS NOT INTIALIZED IN SOLIDITY IT WILL BE SET TO DEFAULT VALUE FOR INTEGER IT IS 0
// FOR string i got nothing
}
