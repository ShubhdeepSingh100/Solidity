// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
//Global variables store information such as blockchain, transaction and account that called the function
//view can read data from state variables and global variables
//1. msg.sender:this is a global variable that stores the address that called this function its datatype is address , we have to store it in the variable
//2. block.timestamp: this variable stores the unix timestamp of when this function was called. Its datatype is uint and stored in a variable.
//3. block.number: this stores the current block number. Its data type is uint and is stored in a variable.
contract GlobalVariable{
    function globalVariable() external view returns(address,uint,uint){
        address sender=msg.sender;
        uint timestamp=block.timestamp;
        uint blockNum=block.number;
        return(sender,timestamp,blockNum);
    }
}