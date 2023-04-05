// SPDX-License-Identifier: Unlicense
// tests/NFT.test.sol
pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "../src/NFTStorage.sol";
import "forge-std/console.sol";

import {Test} from "forge-std/Test.sol";

contract NFTStorageTest is DSTest, Test {
  NFTStorage nft;
  string public cid =
    "bafkreigtziefxsjxkbrxdwhf5lyb4cm3pf7b76x6skajt5c2gyx5xt6zhe";

  function setUp() public {
    nft = new NFTStorage();
    // Build ffi command string, upload to IPFS, and mint NFT

    // if you wanted to upload the image using the test, you could do this:
    // string[] memory cmds = new string[](2);
    // cmds[0] = "ts-node";
    // cmds[1] = "./ts/main.ts";
    // bytes memory result = vm.ffi(cmds);
    // console.log(abi.decode(result, (string)));
    // cid = abi.decode(result, (string));
    // console.log("\nCID: %s", cid);
  }

  function testMint() public {
    nft.mint(cid);
    // Check that the NFT was minted
    assertEq(nft.totalSupply(), 1);
    assertEq(nft.tokenURI(0), cid);
  }
}
