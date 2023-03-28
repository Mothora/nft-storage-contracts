// Do not run this file directly, it will not give you the CID if you want it
// When running the forge test, the image is uploaded to web3 storage
// The generated CID is captured by the solidity test and used to mint the NFT for testing
// Run `forge test -vv` instead
import uploadToWeb3Storage from "./put-files";
import { ethers } from "ethers";

const encoder = ethers.utils.defaultAbiCoder;

uploadToWeb3Storage("assets/nft-collection/war.jpeg")
  .then((cid) => {
    process.stdout.write(encoder.encode(["string"], [cid]));
  })
  .catch((err) => {
    console.error(err);
  });
