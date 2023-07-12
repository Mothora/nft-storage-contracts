## Mothora NFT Showcase

Fill in the `.env` file with your web3storage key

Run `forge test` for tests

The test will run the main.ts file, upload the image and capture the CID for the test

Run `forge build` to build


Setup your `deployTestnet.sh` file to deploy the contract onto the arbitrum goerli test net.

### General Information
For the NFT Storage System in Unreal Engine, the first steps involved
were to set up the smart contracts. I used Foundry for the solidity
development environment, I set up the ERC721 standard, included the
ERC721Enumerable and ERC721URIStorage extensions as well and complied
with them. After, I was able to include the CID with the NFT once you
mint. After building foundry tests and passing them, I uploaded them
to the Arbitrum Goerli testnet and I made a frontend application to
communicate with it. From there, I minted the NFTs. In Unreal Engine,
I installed Hyperplay and the web3.unreal plugin and connected my
wallet to be able to communicate with the network. The Unreal Engine
demo achieves displaying all the NFTs inside the world. This is done
by calling the smart contract, downloading the texture and creating a
material with the downloaded texture and applying it. The frontend
portion allows you to connect your wallet and view or mint your NFTs.
It uses web3storage to manage the images on IPFS, which are handled
completely by their cid.

The experience building on IPFS and web3.storage was very seamless.
Using Foundry for solidity development was tough at first and very
hard to set up but in the end it was very quick and reliable. Building
with Unreal Engine was very tough and challenging. Most foundry
challenges that I approached were solved by reading their handbook and
documentation. However in Unreal Engine, using hyperplay and
web3.unreal, there was not a lot of documentation and almost no online
resources to help. Trial and error was the main way of addressing
those problems, which was difficult and time-consuming.
