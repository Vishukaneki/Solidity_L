// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ViewPure{
   uint public a=10; // only public can be called 
   uint private b=20;
   uint internal c=30;
   function getValues() public view returns (uint,uint,uint ) { // view can onli read state variable 
    return (a,b,c);
   }
   function getValue(uint _a, uint _b) public pure returns (uint ){// pure cant read state variable
    return _a+_b;
   }
}