/**
 * The purpose of this project is to attempt to build something like Skillshare and coursera
 * however it might not be exact, but the aim is provide a means for people to host educational content
 * Enabling for countries with shitty educational content
 * In Johnny in trust (I pray this project wont be too ball wrenching)
 * This .sol file handles the NFT minting, which will allow people to Mint the projects NFT
 * this NFT will safe as a gateway for educationalist and learners
 * It will be based on ERC721A standard and I'll be doing some research and when I'm stuck. I'll research some more then run to 
 * In Johnny we trust
 * I'll be writing this code like I'm sharing it with people not used to coding with comments and other stuff
 * Which will help in documentation as well.
 * To utilise the ERC721A standard you can get the details about this for the standard
 * https://chiru-labs.github.io/ERC721A/#/ and follow the rules
 */



// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import "erc721a/contracts/ERC721A.sol"; 
//Importing the ERC721A standard

contract NFTMinter is ERC721A {

    // This constructor initialising the NFT name and its symbol
    constructor() ERC721A("Titan","Titan") {}
     function mint(uint256 quantity) external onlyOwner {
        // `_mint`'s second argument now takes in a `quantity`, not a `tokenId`.
        _mint(msg.sender, quantity);
    }

    /**
     * This struct has the details of each token holder, which includes
     * Owner address (it is an address)
     * time stamp of when it was burned ()
     * checks whether it has been burned or not
     * 
     * */
    struct Token_Ownership {

        address Owner_address; //checks the owners address
        uint64 startTimeStamp; //checks the start timestamp, Got no clue why it is a uint64
        bool burned; //checks whether it is burned

    }


/**
 * We will now create another struct called address data (I got the idea from Alchemy)
 * https://www.alchemy.com/blog/erc721-vs-erc721a-batch-minting-nfts
 * this should help us through.
 */

struct Address_Data{
    uint128 balance; // this tracks the user balance of the user
    uint128 numberMinted; //tracks the number the user has minted
}

//This is the mint function 




}