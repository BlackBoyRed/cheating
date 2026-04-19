// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    uint8 public constant decimals = 18;

    // Constructor: assign all tokens to creator
    constructor(uint256 initialSupply) {
        totalSupply = initialSupply * (10 ** uint256(decimals));
        balanceOf[msg.sender] = totalSupply;
    }

    // Transfer function
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Not enough balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
}