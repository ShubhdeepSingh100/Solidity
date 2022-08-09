// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
//when error throws gas will be refunded ,state variable will be reverted
//require is used to validate inputs and to access control
//revert is better option if the condition is nested and there are lot of if statements
//Assert is used to check the condition that should always be true,if the condition is false ,that means there is a bug
//we can use custom error to save gas.the longer the message the more gas it will use

contract error{
    function testRequire(uint _i) public pure returns(string memory myString){
        require(_i<10,"i>10");
        myString = "require is working";
        return(myString);
    }
    function testRevert(uint _i) public pure {
        if(_i<10)
        {
            revert("i<10");
        }
    }
    int public num=123;
    function testAssert() public view{
        assert(num==123);
    }
    function foo() public{
        //accidently update num
        num+=1;
    }
    error MyError(address caller,uint i);
    function testCustomError(uint _i) public view{
        if(_i>10){
            revert MyError(msg.sender,_i);
        } //custom error can only be used with revert
    }
}