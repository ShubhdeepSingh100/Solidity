// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
//function modifier-reuse code
//Basic,inputs,sandwich

contract FunctionModifier{
    bool public paused;
    uint public count;
    function setPause(bool _paused) external{
        paused=_paused;
    }
    modifier whenNotPaused(){
        require(!paused,"paused");
        _;//tells the solidity to call the actual function that this modifier wraps
    }
    function inc() external whenNotPaused{
        count+=1;
    }
    function dec() external whenNotPaused{
        count-=1;
    }
    //input
    modifier cap(uint _x){
        require(_x<100,"x>100");
        _;
    }
    function incBy(uint _x) external whenNotPaused cap(_x){
        count+=_x;
    }
    //sandwich
    modifier sandwich(){
        //code here
        count+=10;
        _;//call acrual function foo
        //more code here
        count*2;
    }
    function foo() external sandwich(){
        count+=1;
    }
}