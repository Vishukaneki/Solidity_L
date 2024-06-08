// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Functions{ 
    address payable public sender;
    address payable contractAddress;    // address which can receive money declaration with payable
    constructor(){ 
         contractAddress=payable(address(this)); // address of contract // constructor function will be called as contract is deployed
        sender=payable (msg.sender); // explicit conversion to payable address 
    }
    uint public data=10 ether;
    function sendMoney(uint _amount) public payable { // payable type functions 
        bool b1 =sender.send(_amount);
        require(b1,"reverted"); // require statement if it becomes false the transaction will be reverted
    }
    // fallback and recieve are both functions used to give currency to the contract
    fallback() external payable { } // works without msg.data
    receive() external payable { }// works if msg.data is also present
    function getBalance() public view returns(uint256){ // view and pure keywords soon...
        return address(this).balance; // gets balance of our contract
    }
}