// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract HashFunc{
    address payable public owner;
    constructor(){
        owner=payable(msg.sender); // did this to find difference between address(this) and msg.sender
    }
    // keccak and sha give 32 bit byte
    // encode and encodePacked generate differnet bytes even though the data provided is same and further you 
    // can generate different hash from the byte of same data
    function keccak(uint _x, string memory _str,address _addr)public pure  returns (bytes32,bytes32){
        bytes32 b1=keccak256(abi.encode(_x,_str,_addr));
        bytes32 b2=keccak256(abi.encodePacked(_x,_str,_addr));
        return (b1,b2);
    }
    function sha(uint _x, string memory _str,address _addr)public pure  returns (bytes32,bytes32){
        bytes32 b1=sha256(abi.encode(_x,_str,_addr));
        bytes32 b2=sha256(abi.encodePacked(_x,_str,_addr));
        return (b1,b2);
    }
    // reipemd returns 20 bit byte 
    function ripemd(uint _x, string memory _str,address _addr)public pure  returns (bytes20,bytes20){
        bytes20 b1=ripemd160(abi.encode(_x,_str,_addr));
        bytes20 b2=ripemd160(abi.encodePacked(_x,_str,_addr));
        return (b1,b2);
    }
}