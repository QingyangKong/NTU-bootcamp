// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract MyToken is ERC721URIStorage, Ownable {
    string constant public TOKEN_URI = "ipfs://QmXw7TEAJWKjKifvLE25Z9yjvowWk2NWY3WgnZPUto9XoA";
    uint256 counter;
    uint256 MINIMUM_USD = 500 * 10 ** 18;
    AggregatorV3Interface dataFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);

    constructor() ERC721("MyNFT", "MN") {}

    function safeMint(address to) public payable {
        require(convertEthToUsd(msg.value) >= MINIMUM_USD, "You have to spend more ETH");
        uint256 tokenId = counter;
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, TOKEN_URI);
        counter++;
    }

    function convertEthToUsd(uint256 ethAmount) public view returns(uint256 usdAmount) {
        (
            /* uint80 roundID */,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        usdAmount = ethAmount * uint256(answer * 10 ** 10) / 10**18;
    }
}