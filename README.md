DegenToken Smart Contract
Overview
The DegenToken smart contract is an Ethereum-based ERC-20 token that allows you to create, manage, and transfer a custom token named "DegenToken" (symbol: "DGN"). This token contract is also integrated with the OpenZeppelin ERC-20 and Ownable contracts.

Prerequisites
Before using this smart contract, you need to have the following:

An Ethereum wallet to interact with the contract (e.g., MetaMask).
Basic knowledge of Ethereum and smart contracts.
Features
Token Creation: The contract deploys with an initial supply of 1,000 DegenTokens. You can easily change this initial supply during deployment.

Token Minting: The contract owner (address that deploys the contract) can mint new tokens. This function can be used to increase the token supply.

Token Transfer: Users can transfer DegenTokens to other addresses using the transferTokens function.

Token Redemption: A function is provided for token redemption, assuming you have an in-game store where users can exchange tokens for in-game items. The redeemTokens function allows users to burn tokens and trigger your in-game logic.

Check Token Balance: The contract includes a function to check the token balance of a specific address.

Token Burning: Users can burn their own tokens using the burnTokens function.

Deployment
To deploy this contract, make sure you have the necessary environment set up. You can use tools like Remix, Truffle, or Hardhat to deploy the contract to the Ethereum network.

Ensure you provide the initial supply of DegenTokens during deployment if you wish to change the default supply.

Usage
After deployment, you can interact with the contract using the Ethereum wallet of the owner address (the address that deployed the contract).

Please refer to the contract functions above to understand how to mint, transfer, redeem, check balances, and burn tokens.

License
This smart contract is provided under the MIT License. You are free to use, modify, and distribute it as per the terms of the MIT License.
