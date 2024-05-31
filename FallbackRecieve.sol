// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FallbackReceive{
    event log(string _data,uint _no);
    // IF DATA IS ALSOM PRESENT THEN FALLBACK IS USED
    fallback() external payable { 
        emit log("Fallaback()",1);
    }
    // IF NO DATA IS USED THEN RECEIVE IS USED
    receive() external payable { 
        emit log("Receive()",2);
    }
    function getbal() public view returns(uint) {
        return msg.sender.balance;
    
    }
    // function getdata() public view returns (uint){
    // }
    }