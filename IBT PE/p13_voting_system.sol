// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Voting {
    mapping(string => uint) public votes;
    mapping(address => bool) public hasVoted;

    // Vote for a candidate
    function vote(string memory candidate) public {
        require(!hasVoted[msg.sender], "Already voted");
        
        votes[candidate]++;
        hasVoted[msg.sender] = true;
    }

    // Get votes of a candidate
    function getVotes(string memory candidate) public view returns (uint) {
        return votes[candidate];
    }
}