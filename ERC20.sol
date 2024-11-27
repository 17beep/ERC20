// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract YouTubeCoin is ERC20, Ownable {
    constructor() ERC20("YouTubeCoin", "YTC") Ownable(msg.sender) {}

    // Mint new videos 
    function createVideo(address upload_to, uint256 amount) public onlyOwner {
        _mint(upload_to, amount); 
    }

    // Burn likes
    function removeLike(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0, duh.");
        require(
            balanceOf(msg.sender) >= amount,
            "Not enough engagement to remove, sorry."
        );
        _burn(msg.sender, amount); 
    }

    // Share videos 
    function shareVideo(address receiver, uint256 amount) external {
        require(amount > 0, "Amount must be greater than 0, like seriously.");
        require(
            balanceOf(msg.sender) >= amount,
            "Not enough engagement to share, please check your balance."
        );
        _transfer(msg.sender, receiver, amount); 
    }
}



// Owner - 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// random acc to transfer too - 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
