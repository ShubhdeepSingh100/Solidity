// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
//state variables are variables that stores data on blockchain
//pure means that the function is read only
contract StateVariable{
    uint public myUint=123;//state variable
    function foo() external pure returns(uint){
        uint notStateVariable=456;
        return notStateVariable;
    }
}
contract calculator{
    function add(uint x,uint y) external pure returns(uint){
        return x+y;
    }
    function subtract(uint x,uint y) external pure returns(uint){
        return x-y;
    }
    function multiply(uint x, uint y) external pure returns(uint){
        return x*y;
    }
    function divide(uint x,uint y) external pure returns(uint){
        return x/y;
    }
    
}