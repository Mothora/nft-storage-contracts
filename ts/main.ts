// Use this file for uploading to web3 if you would like
import uploadToWeb3Storage from "./put-files";
import { ethers } from "ethers";

const encoder = ethers.utils.defaultAbiCoder;

uploadToWeb3Storage("assets/nft-collection/war.jpeg")
  .then((cid) => {
    // for a foundry test, you would use this and remove the console.log
    // if you use this for foundry testing, do not run it directly run
    // forge test -vv
    // process.stdout.write(encoder.encode(["string"], [cid]));

    console.log(cid);
  })
  .catch((err) => {
    console.error(err);
  });
