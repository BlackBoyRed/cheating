pragma solidity 0.8.19;

contract GanacheCompatibleStore {
    uint256 number;
    event NumberUpdated(uint256 newValue);

    function store(uint256 _number) public {
        number = _number;
        emit NumberUpdated(_number);
    }

    function retrieve() public view returns (uint256) {
        return number;
    }
}