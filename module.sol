// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint256 public totalBalance;

    function deposit(uint256 amount) public {
        require(amount > 0, "Enter the amount greater than zero");
        totalBalance += amount;
    }

    function withdraw(uint256 amount) public {
        require(amount > 0, "amount is greater than zero");
        require(amount <= totalBalance, "Insufficient balance");

        totalBalance -= amount;
    }

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Divisor must be non-zero");

        return a / b;
    }

    function assertExample(uint256 value) public pure returns (uint256) {
        assert(value > 0);
        return value;
    }
}
