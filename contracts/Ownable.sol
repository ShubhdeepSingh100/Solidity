// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract ownable{
    address public owner;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender==owner,"not owner");
        _;
    }
    function setOwner(address _newOwner) external onlyOwner{
        require(_newOwner!=address(0),"invalid address");
        owner= _newOwner;
    }
    function onlyOwnerCanCallThisFunction() external onlyOwner{

    }
    function anyOneCanCall() external {

    }

}