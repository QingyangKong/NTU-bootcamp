// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MyToken is ERC721URIStorage, Ownable {
    string constant public TOKEN_URI = "ipfs://QmXw7TEAJWKjKifvLE25Z9yjvowWk2NWY3WgnZPUto9XoA";
    uint256 counter;

    constructor() ERC721("MyNFT", "MN") {}

    function safeMint(address to) public {
        uint256 tokenId = counter;
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, TOKEN_URI);
        counter++;
    }
}