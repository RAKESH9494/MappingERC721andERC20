# ERC721 smart contract 
## Description :
 This Contract is used to create the NFT Tokens. This smart contract is inherited from the ERC721 
contract, which is imported from openzeppelin. There are two function CreateNFT and TransferNFT. 

## CreateNFT(): 
  This function is used to create NFT. It will take the 2 arguments one is address of the NFT owner and 
other one is URI of the NFT. It executes and creates NFT using ERC721 mint function then returns the 
tokenId of the NFT.

## TransferNFT() : 
   This function is used to transfer NFT between two accounts. It will take 3 arguments, those are from 
address, to address and tokeId of NFT.ERC721 _transfer function is used to transfer the tokens between two 
accounts. 

# ERC20 smart contract 
## Description: 
  This contract is used to create ERC20 tokens. This smart contract is inherited from the ERC20 
contract, which is imported from openzeppelin. There are two function MintToken and TransferERC20Token. 

## MintToken(): 
  This function is used to Mint ERC20 tokens. It will take two arguments one is owner’s address and 
other is amount token to be mint. 

## TransferERC20Token(): 
  This function is used to Transfer ERC20 tokens between the accounts. It will take 3 arguments, those 
are from address, to address and amount tokens. _transfer function of ERC20 is used to transfer the tokens 
between two accounts.

# Mapping ERC720 and ERC20 token 
## Description: 
  This smart contract is used to establish a mapping between ERC721 tokens and ERC20 tokens, 
where each ERC721 token is associated with 1000 ERC20 tokens. It will two arguments at the time 
deployment, one is address of the ERC721 contract and other one is address of the ERC20 contract. By 
using address of the ERC721 and ERC20, it access the functions in both smart contracts. There are two 
functions MapToken and TransferLinkedTokens. 

## MapToken(): 
  This function is used to map the tokens between ERC721 and ERC20.It will take the one argument 
i.e tokenId of NFT. There is a mapping data structure called NftToToken, which stores key as tokenId and 
associated value as 1000 ERC20 tokens .It initially mints the 1000 tokens using ERC20 function with user’s 
address and then map those 1000 tokens to Owner’s NFT. 

## TransferLinkedTokens(): 
  This function is used to Transfer the mapped tokens between the accounts. It will takes two 
arguments, one is to address and other one is tokenId. It changes the ownership of NFT token from owner to 
recipient using ERC721’s function and transfers the ERC20 tokens by using ERC20’s function. 

# Execution:
1. Place the 3 smart contracts in same folder. 
2. Initially deploy the ERC721 smart contract and ERC20 smart contracts one after another. 
3. Copy the addresses of the both smart contracts. 
4. Later deploy the TokenMapping smart contract by giving input as both ERC721 and ERC20 smart contracts addresses.

# 1. Deployment : 
![image](https://github.com/RAKESH9494/MappingERC721andERC20/assets/104605032/c552c70b-cc28-4216-a679-2a0380d47397)

# 2. Creating NFT Token:

![image](https://github.com/RAKESH9494/MappingERC721andERC20/assets/104605032/57167215-e597-497c-a586-c8cf5491e441)

In above smart contract createNFT returns tokenId as 1 

# 3.Mapping NFT token to 1000 ERC20 tokens

1. Initally it mints 1000 ERC20 tokens on NFT owner’s account. 
2. Then it uses Maptoken function to maps the NFT token 1 with 1000ERC20 tokens
 ![image](https://github.com/RAKESH9494/MappingERC721andERC20/assets/104605032/2474d234-12cf-4024-bf17-38ec12b165c5)

# 4.Tranfering NFT Mapped Tokens
![image](https://github.com/RAKESH9494/MappingERC721andERC20/assets/104605032/550b012e-72e5-4597-9c0f-e2092d797bce)
