# NTU bootcamp 1/18-19
This repo was created for the 2-day bootcamp at NTU in January 18-19 2024. The code from the day 1 is stored in the [day1 folder](./day1/), while the code from the day 2 is stored in the [day2 folder](./day2/).

## Content in day 1
Please check the slides [here](https://docs.google.com/presentation/d/1KeHildzNdFeTvyB8uLVzN_6cxCNgBVRbCNsyMBUlNGE/edit?usp=sharing).

In code along part:
1. Open Remix and switch metamask to Ethereum Sepolia.
2. Deploy the `MyToken.sol` on Ethereum Sepolia.
NFT contract with a `mint` function, and you can deploy this contract onto an EVM (Ethereum Virtual Machine) network using Remix.

Notes:<br>
Because we are going to use Avalanche Fuji network to demo the cross-chain transaction in day 2, the solidity version is 0.8.19 since the EVM version has not upgraded to Paris yet. 

## Content in day 2
Please check the slides [here](https://docs.google.com/presentation/d/1gJA9L1DyV1nne-OfUA0Ty_fygML_bnPGzTraamQ_fcs/edit?usp=sharing).

In code along part:
1. Open Remix and switch metamask to Ethereum Sepolia.
2. Deploy the `MyNFT.sol` on Ethereum Sepolia.
3. Deploy the `receiver.sol` on Ethereum Sepolia with address with NFT address and Sepolia router address.
4. Switch metamask from Ethereum Sepolia to Avalanche Fuji.
5. Deploy the `sender.sol` on Avalanche Fuji with router address and LINK token address on Fuji.
6. Transfer 5 LINKs to `sender.sol`. 
7. Call the function `sendMessage` with sepolia selector and receiver address.

<b> Leave your address if you need test tokens on Sepolia in https://pad.riseup.net/p/NTU_Bootcamp_day2 </b>

## References:
Data Feed materials:
- Please find more details about Data Feed [here](https://docs.chain.link/data-feeds).
- Please find Data Feed supported chains [here](https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum&page=1).
- Please find Data Feed sample codes [here](https://docs.chain.link/data-feeds/getting-started). 

NFT Openzeppelin materials:
- Please find openzeppelin ERC-721 [here](https://docs.openzeppelin.com/contracts/5.x/erc721).
- Please find Opensea standard [here](https://docs.opensea.io/docs/metadata-standards).

CCIP materials:
- Please find CCIP sender sample codes [here](https://docs.chain.link/ccip/getting-started#sender-code).
- Please find CCIP receiver sample codes [here](https://docs.chain.link/ccip/getting-started#receiver-code). 
- Please router and selector info [here](https://docs.chain.link/ccip/supported-networks/v1_2_0/testnet).

Faucets
- get test tokens from [Chainlink faucets](https://faucets.chain.link/).