//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor(string memory _greeting) {
        console.log(
            "Deploying the smart contract with this greeting: ",
            _greeting
        );
        greeting = _greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log(
            "Changing the greeting from '%s' to '%s'",
            greeting,
            _greeting
        );
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    receive() external payable {}

    fallback() external payable {}
}
