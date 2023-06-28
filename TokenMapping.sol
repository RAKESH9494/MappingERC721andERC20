
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./MyERC721.sol";
import "./MyERC20.sol";
contract TokenMapping {
    mapping(uint256 => uint256) public NftToToken;

    MyERC721 public Erc721Contract;
    MyERC20 public Erc20Contract;

    constructor(address Erc721Address, address Erc20Address) {
        Erc721Contract = MyERC721(Erc721Address);
        Erc20Contract = MyERC20(Erc20Address);
    }

    function MapToken(uint256 tokenId) external {
        require(Erc721Contract.ownerOf(tokenId) == msg.sender, "Only the owner of Token ID can link the token");
        require(NftToToken[tokenId] == 0, "Token is already Mapped..");

        uint256 tokenAmount = 1000;
        Erc20Contract.MintToken(msg.sender, tokenAmount);
        NftToToken[tokenId] = tokenAmount;
    }

    function transferLinkedTokens(uint256 tokenId, address to) external {
        require(Erc721Contract.ownerOf(tokenId) == msg.sender, "Only the owner can transfer");
        require(NftToToken[tokenId] > 0, "Token not linked");

        uint256 tokenAmount = NftToToken[tokenId];
        Erc20Contract.TransferERC20Token(msg.sender, to, tokenAmount);
        NftToToken[tokenId] = 0;
    }
}
