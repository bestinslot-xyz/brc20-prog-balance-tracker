# BRC2.0 Balance Tracker

This application keeps track of all ticker balances in the BRC2.0 module, and stores them in an sqlite database for easy retrieval and analysis.

It needs a running BRC2.0 server to connect to, and it fetches all the logs when a new block arrives, and processes them to update the balances in the database.

It handles reorgs to ensure the balance data is always accurate.

## Set up your environment

Balance tracker is written in Rust, so you need to have Rust installed on your machine. You can follow the instructions on the [official Rust website](https://www.rust-lang.org/tools/install) to install Rust.

Following fields need to be set before running the balance tracker:

- `DATABASE_URL` - The URL of the database to connect to (such as `sqlite://path/to/database.db`)
- `RPC_URL` - The URL of the BRC2.0 RPC server to connect to (such as `http://localhost:18545`)
- `RPC_USER` - The username to use for RPC authentication (if required)
- `RPC_PASSWORD` - The password to use for RPC authentication (if required)
- `NETWORK` - The network to connect to (such as `mainnet` or `signet`)

Example `.env` file:

```sh
DATABASE_URL="sqlite://path/to/database.db"
RPC_URL="http://localhost:18545"
RPC_USER="user"
RPC_PASSWORD="password"
NETWORK="mainnet"
```

## Run the balance tracker

Simply run the client and it should start tracking balances:

```sh
cargo run --release
```

## Test balance tracking

You can test the balance tracking by sending some transactions to the BRC2.0 server and checking if the balances are updated correctly in the database.

```sh
cargo run --release -- --test
```

## Restart or reset balance tracking

You can reset the balance tracking by stopping the client and deleting the database file, or running the following command to restart it.

```sh
cargo run --release -- --reset
```
