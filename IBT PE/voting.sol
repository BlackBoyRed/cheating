// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Candidate {
        string name;
        uint256 voteCount;
    }

    Candidate[] public candidates;

    function addCandidate(string memory _name) public {
        candidates.push(Candidate(_name, 0));
    }

    function vote(uint256 index) public {
        require(index < candidates.length, "Candidate does not exist");
        candidates[index].voteCount++;
    }

    function getVotes(uint256 index) public view returns (uint256) {
        require(index < candidates.length, "Candidate does not exist");
        return candidates[index].voteCount;
    }

    function getWinner() public view returns (string memory) {
        require(candidates.length > 0, "No candidates available");

        uint256 maxVotes = 0;
        uint256 winnerIndex = 0;

        for (uint256 i = 0; i < candidates.length; i++) {
            if (candidates[i].voteCount > maxVotes) {
                maxVotes = candidates[i].voteCount;
                winnerIndex = i;
            }
        }

        return candidates[winnerIndex].name;
    }
}