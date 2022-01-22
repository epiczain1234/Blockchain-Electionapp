pragma solidity >= 0.4.22;

contract Election {

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Basically as hashmap, we have no way of determining how many candidates there are with just the mapping

    mapping(uint => Candidate) public candidates;

    uint public candidatesCount;

    constructor () public {
        addCandidate("Zain");
        addCandidate("The Donald");
    }

    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}