// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract counter{
    uint public count;
    function increment() external {
        count++;
    }
    function decrement() external {
        count--;
    }
}