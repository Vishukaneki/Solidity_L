// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract  CallSendTransfer{
    bool sent;
    address payable public payee;
    fallback() external payable { }
    receive() external payable { }
    constructor (address payable _payee)payable {
        payee=_payee;
    }
    modifier reverting{
        require(sent,"REVERTED ALLL DA GAS");
        _;
    }
    function usingSend() public payable reverting{// wow more gas used by use of modifier    
    sent=payee.send(1 ether);
    }
    function usingTransfer()public payable reverting{
        payee.transfer(1 ether);
    }
    function usingCall() public payable reverting{
        (bool b1,)=payee.call{value:1 ether,gas:5000}("wow");
        require(b1,"failed");
    }
}