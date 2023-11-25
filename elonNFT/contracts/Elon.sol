// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {

    //Counters.Counter private _tokenIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("ElonMusk", "ELON") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;
        //uint256 newItemId = _tokenIds.current(); -- replaced with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://coffee-large-tuna-874.mypinata.cloud/ipfs/QmdEK7SjVQbszsAaBz4oHm5RotQBmX8n94j8WBLEL9CSZx?_gl=1*13oc1m2*_ga*MTY1OTA4MTU3MC4xNzAwODk3MTg0*_ga_5RMPXG14TE*MTcwMDg5NzE4NC4xLjEuMTcwMDg5ODk5MC42MC4wLjA.");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}

