// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
//view reads data from the blockchain 
//pure doesnot read anything from the blockchain and also it doesnot even modify anything
contract viewAndPure{
    uint public num;
    function viewFunc() external view returns(uint)
    {
        return num;
    }
    function pureFunc() external pure returns(uint){
        return 1;
    }
    function addToNum(uint x) external view returns(uint){
        return num+x;
    }
    function add(uint x,uint y) external pure returns(uint){
        return x+y;
    }
}