// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function requireExample(uint256 x) public pure returns (uint256) {
        // Use require to check a condition and revert if not met
        require(x > 0, "Value must be greater than zero");
        return x;
    }

    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // Use assert to check an invariant and revert if it fails
        assert(a + b == 10);
        return a + b;
    }

    function revertExample() public pure {
        // Use revert to revert the transaction with a custom message
        revert("This transaction has been reverted");
    }
}