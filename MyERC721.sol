// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
contract MyERC721 is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("ERC721RAKESH","ERC721RK") {}

    struct Tokens{
        address TOkenowner;
        string TokenURI;
    }
    mapping(uint => Tokens) TokenInfo;

    function CreateNFT(address recipient,string memory TokenURI) external returns (uint256) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        TokenInfo[newItemId] = Tokens(recipient,TokenURI);
        return newItemId;
    }

    function TransferNFT(address from, address to, uint256 tokenId) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "Transfer not approved");
        TokenInfo[tokenId].TOkenowner = to;
        _transfer(from, to, tokenId);
    }
}