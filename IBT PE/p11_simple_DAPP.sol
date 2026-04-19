// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {

    uint256 private storedData;

    // Store value
    function store(uint256 _value) public {
        storedData = _value;
    }

    // Retrieve value
    function retrieve() public view returns (uint256) {
        return storedData;
    }
}
