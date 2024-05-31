// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AdvancedDt{
    uint[][] public arr=[[1,2,3,4,5],[1,2,3,4,5]];
    uint [][] public arr2=new uint[][](10);
     struct factory {
        uint chips;
        string [] people;
        string  print; 
     }
     enum state
     {
        pending , finsihed , processing 
     }
     mapping (uint=>factory) public RollVFactory;
}