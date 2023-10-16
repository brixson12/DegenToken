// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("DegenToken", "DGN") {
        _mint(msg.sender, 100000000 * 10 ** 18); // Mint an initial supply of 100,000,000 DEGEN tokens
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

    // Burn tokens
    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
