// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleDApp {
    uint public value;

    // Store a value
    function setValue(uint _value) public {
        value = _value;
    }

    // Read value (auto-generated getter also works)
    function getValue() public view returns (uint) {
        return value;
    }
}