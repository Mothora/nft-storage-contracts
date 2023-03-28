// SPDX-License-Identifier: Unlicense
// tests/NFT.test.sol
pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "../src/NFTStorage.sol";
import "forge-std/console.sol";

import {Test} from "forge-std/Test.sol";

contract NFTStorageTest is DSTest, Test {
  NFTStorage nft;
  string cid;
  string[] public ids = [
    "bafkreigtziefxsjxkbrxdwhf5lyb4cm3pf7b76x6skajt5c2gyx5xt6zhe",
    "bafkreig6rmtwlxdvvhgcv5ikmot6vapx3fc34mwsbxe3gazkkyofgll5j4",
    "bafkreiff6lvdb2ptfrraq4p3qy3mlh2lyej5r74boeotbbbkjywhmbkx3u",
    "bafkreicssib2z54qghngvaqrmzcprctj6ekpfd7rxpzmrww5faeayy6z3i",
    "bafkreigu5t53hzkrbsuqdj7fv4a3dkgkd2cavimr2nbkd4aggmwlosk4sq",
    "bafkreicq7aiiqbvplr657aaqdkottcev27fa5cbfrj63ljjvl4qumr5aeq",
    "bafkreia3b75lyumbhrfnxrhvkb3lcte7ij6pkexwhdwljgvfapwadaclyu",
    "bafkreiezgow3xcxfgp7ydrnw7xejp2pcaukb6vypui4yaurrk2almarinq",
    "bafkreibayq4ep2l5phkifuwmxc42rpk2hznzqlfkqr6p4xrq7gcbysrvry",
    "bafkreidqwzjlggfjhuxyjyxoig3r4tb7lp7dn6evn7sx2x6ldbdw3p4znu"
  ];

  function setUp() public {
    nft = new NFTStorage();
    string[] memory cmds = new string[](2);
    // Build ffi command string, upload to IPFS, and mint NFT
    cmds[0] = "ts-node";
    cmds[1] = "./ts/main.ts";
    bytes memory result = vm.ffi(cmds);
    console.log(abi.decode(result, (string)));
    cid = abi.decode(result, (string));
    console.log("\nCID: %s", cid);
  }

  function testMint() public {
    nft.mint(cid);
    // Check that the NFT was minted
    assertEq(nft.totalSupply(), 1);
    // console.log("token URI 0: %s", nft.tokenURI(1));
    // console.log("CID: %s", cid);
    assertEq(nft.tokenURI(1), cid);
  }

  function testCapacity() public {
    for (uint256 i = 0; i < ids.length; i++) {
      nft.mint(ids[i]);
    }
    assertEq(nft.totalSupply(), 10);

    vm.expectRevert();
    nft.mint(ids[0]);

    assertEq(nft.totalSupply(), 10);
  }
}
