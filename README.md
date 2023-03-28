## Mothora MVP Contracts

The contracts are organized from a main HUB registry contract (`MothoraGame.sol`), which also controls game account creation and DAO attribution.

Connected to the HUB are the following core modules:

- `EssenceToken.sol` - ERC20 Essence token (non transfereable)
- `Arena.sol` - Manages postmatch results and their verification

## Currently deployed contracts

- MothoraGame - Arbitrum Goerli - https://goerli.arbiscan.io/address/0xb2a4ae57b6b7aeccbd381cbbdc3fa4491df15411

open endpoint: https://goerli-rollup.arbitrum.io/rpc

## Getting started

1. Set `PRIVATE_KEY` env variable

2. Install submodules and dependencies

Or, if your repo already exists, run:

```sh
git submodule update --init --recursive
forge install
```

### First time with Forge/Foundry?

See the official Foundry installation [instructions](https://github.com/foundry-rs/foundry/blob/master/README.md#installation).

Then, install the [foundry](https://github.com/foundry-rs/foundry) toolchain installer (`foundryup`) with:

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Now that you've installed the `foundryup` binary,
anytime you need to get the latest `forge` or `cast` binaries,
you can run `foundryup`.

So, simply execute:

```bash
foundryup
```

🎉 Foundry is installed! 🎉

### Ideas

https://github.com/ZeframLou/playpen/blob/main/src/ERC20StakingPool.sol
https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol

## License

MIT
