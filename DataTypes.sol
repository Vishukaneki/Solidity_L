// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DataTypes{
    uint8 public a=1;
    int public b=-1;
    int public c=1;
    // can't declare c again like this one
    // address public c=0xC7734444EfcF13211219BaF20AB0482B492486d0;
    address public d=0xC7734444EfcF13211219BaF20AB0482B492486d0;
    bytes public b1="hello moto"; // takes less space than strings so it is useful to prevent more gas usage
    string public msg1="hello"; // i didn't use msg to declare it as it is a keyword in solidity
    bool public boo;
}