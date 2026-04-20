// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
// Importing from OpenZeppelin via Remix URL
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC20/ERC20.sol";

contract MyGanacheToken is ERC20 {
    // Mint 1 million tokens to the deployer immediately
    constructor() ERC20("GanacheToken", "GTK") {
        _mint(msg.sender, 1000000 * 10 ** 18); // Hardcoded 18 decimals
    }
}