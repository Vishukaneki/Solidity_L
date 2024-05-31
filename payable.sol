// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract NFTCount{
     uint  public  numberOfNFT;
    function addNFT() public {
        numberOfNFT+=1;
    }
    function deleteNFT() public  {
        numberOfNFT-=1;
    }
    function checkNFT() public  view  returns (uint){
        return numberOfNFT;
    }
}