DegenToken README
Introduction
DegenToken is a simple Ethereum-based ERC20 token contract created using the Solidity programming language. This README provides an overview of the code and its functionalities.

Features
DegenToken includes the following features:

Token Minting: The owner of the contract can create new tokens by minting them, increasing the total supply.

Token Transfer: Users can transfer tokens to other addresses using the transferTokens function.

Token Redemption: A function redeemTokens is provided for potential in-game use. When users redeem tokens, they are burned, and you can add custom logic to provide in-game items or rewards.

Balance Inquiry: Users can check their token balance using the balanceOf function.

Token Burning: Users can burn (destroy) their tokens using the burnTokens function.

Contract Details
Name and Symbol: The token is named "DegenToken" with the symbol "DGN."

Inheritance: The contract inherits from the OpenZeppelin ERC20 and Ownable contracts.

Constructor: The constructor mints an initial supply of 1000 DEGEN tokens and assigns them to the contract owner (msg.sender).

Usage
You can deploy the DegenToken contract to the Ethereum blockchain to create your own ERC20 token with the mentioned features. To interact with the contract:

Deploy the contract to the Ethereum blockchain.

As the owner, you can mint new tokens using the mint function.

Users can transfer tokens to each other using the transferTokens function.

Users can redeem tokens for in-game items or rewards by calling the redeemTokens function.

Users can check their token balance using the balanceOf function.

Users can burn their tokens using the burnTokens function.

License
This code is provided under the MIT License. You can use, modify, and distribute it according to the terms of the MIT License.
