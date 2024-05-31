// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
import "./PriceConverter.sol";
contract FundMe{
    using PriceConverter for uint256;
    mapping (address=>uint256) public address_Amount;
    address[] public funders;
    address immutable public owner;
    constructor(){
        owner=msg.sender;
    }
    uint minUsd=10;// minimum 10 dollars us
    function fund() public payable{
        require(msg.value.getConversionRate()>=minUsd,"DIDN'T SEND ENOUGH PLEASE SEND MORE");
        address_Amount[msg.sender]+=msg.value; // dont know why + is used in mapping
        funders.push(msg.sender);
    }
    function withdraw() public payable {
        require(msg.sender==owner,"You are not the owner of the contract");
        for (uint256 funderIndex=0; funderIndex<funders.length;funderIndex++) 
        {
         address funder=funders[funderIndex];
         address_Amount[funder]=0;   
        }
        funders=new address[](0);// new funders array with 0 as initialized value
        (bool success,)=payable(msg.sender).call{value:address(this).balance}("OK transaction failed bye bye");
        require(success, "done with the transactions");
    }
    fallback() external payable { }
    receive() external payable { }
}