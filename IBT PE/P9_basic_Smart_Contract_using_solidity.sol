pragma solidity 0.8.19; // Using 0.8.19 avoids thePUSH0 opcode issue in Ganache

contract GanacheCompatibleStore {
    uint256 private number;
    event NumberUpdated(uint256 newValue);
    // Simple function to store a number

    function store(uint256 _number) public
{
        number = _number;
        emit NumberUpdated(_number);
    }
    // Simple function to retrieve the
number
    function retrieve() public view
returns (uint256){
        return number;
    }
}