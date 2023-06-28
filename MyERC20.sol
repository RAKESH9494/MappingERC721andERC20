// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract MyERC20 is ERC20 {
    constructor() ERC20("ERC20RAKESH", "RK20") {}

    function MintToken(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function TransferERC20Token(address from, address to, uint256 amount) external {
        require(balanceOf(from) >= amount, "Insufficient balance");
        _transfer(from, to, amount);
    }
}