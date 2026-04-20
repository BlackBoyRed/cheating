// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract simplestorage {
    uint256 private storedData;

    function store(uint256 _value) public {
        storedData = _value;
    }

    function retrieve() public view returns (uint256) {
        return storedData;
    }
}