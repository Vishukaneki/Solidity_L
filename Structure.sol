// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// now this structure can be used anywhere in any of the deployed contracts if more than one is available
// by default struct is --storage 
// it is reference data type 
   struct Humans{
        string name;
        string country;
        string color;
        uint age;
        address payable Address;
    }
contract Structure{
    Humans[] public humarray;
    function addHumans(  string  memory _name,string memory _country,string memory _color,uint _age,address payable _Address) public {

        Humans memory hum=Humans(_name,_country,_color,_age,_Address);
        humarray.push(hum);}
        } 