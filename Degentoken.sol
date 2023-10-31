// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("DegenToken", "DGN") {
        _mint(msg.sender,0); // Mint an initial supply of 1000 DEGEN tokens
    }

    // Mint new tokens (Only the owner can call this function)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Transfer tokens
    function transferTokens(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }

    // Redeem tokens (Assuming you have an in-game store)
    function redeemTokens(uint256 amount) public {
        _burn(msg.sender, amount);
        // Add logic to provide in-game items here
    }

    // Check token balance
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

     // Redeem tokens
    function redeemTokens(string memory prizeSelection) public {
        uint256 cost = prizeCosts[prizeSelection];
        require(cost > 0, "Invalid prize selection");
        require(balanceOf(msg.sender) >= cost, "Insufficient balance");

        // Deduct the cost from the user's account
        _burn(msg.sender, cost);

        // Add your logic to provide the prize based on the prizeSelection here
        // You can add code to give the user their in-game items or rewards

        // Emit an event to indicate the redemption was successful
        emit RedemptionSuccessful(msg.sender, prizeSelection);
    }

    event RedemptionSuccessful(address indexed user, string prizeSelection);

    // Define the costs of each prize
    mapping(string => uint256) public prizeCosts;

    // Burn tokens
    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}

