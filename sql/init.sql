--- Historical balances ---

CREATE TABLE IF NOT EXISTS brc20_prog_historical_balances (id INTEGER PRIMARY KEY, block_height INTEGER NOT NULL, wallet TEXT NOT NULL, ticker TEXT NOT NULL, amount TEXT NOT NULL);

CREATE INDEX IF NOT EXISTS idx_brc20_prog_historical_balances_block_height ON brc20_prog_historical_balances (block_height);
CREATE INDEX IF NOT EXISTS idx_brc20_prog_historical_balances_ticker ON brc20_prog_historical_balances (ticker);
CREATE INDEX IF NOT EXISTS idx_brc20_prog_historical_balances_wallet ON brc20_prog_historical_balances (wallet);

--- Current balances ---

CREATE TABLE IF NOT EXISTS brc20_prog_current_balances (id INTEGER PRIMARY KEY, wallet TEXT NOT NULL, ticker TEXT NOT NULL, amount TEXT NOT NULL, block_height INTEGER NOT NULL);

CREATE INDEX IF NOT EXISTS idx_brc20_prog_current_balances_ticker ON brc20_prog_current_balances (ticker);
CREATE INDEX IF NOT EXISTS idx_brc20_prog_current_balances_wallet ON brc20_prog_current_balances (wallet);
CREATE INDEX IF NOT EXISTS idx_brc20_prog_current_balances_block_height ON brc20_prog_current_balances (block_height);
CREATE UNIQUE INDEX IF NOT EXISTS idx_brc20_prog_current_balances_wallet_ticker ON brc20_prog_current_balances (wallet, ticker);

--- Block hashes ---

CREATE TABLE IF NOT EXISTS brc20_prog_block_hashes (id INTEGER PRIMARY KEY, block_height INTEGER NOT NULL, block_hash TEXT NOT NULL);

CREATE INDEX IF NOT EXISTS idx_brc20_prog_block_hashes_block_height ON brc20_prog_block_hashes (block_height);

--- brc20_prog_tickers ---

CREATE TABLE IF NOT EXISTS brc20_prog_tickers (id INTEGER PRIMARY KEY, ticker TEXT NOT NULL, ticker_hash TEXT NOT NULL, contract_address INTEGER NOT NULL);

CREATE INDEX IF NOT EXISTS idx_brc20_prog_tickers_ticker ON brc20_prog_tickers (ticker);
CREATE INDEX IF NOT EXISTS idx_brc20_prog_tickers_ticker_hash ON brc20_prog_tickers (ticker_hash);
CREATE INDEX IF NOT EXISTS idx_brc20_prog_tickers_contract_address ON brc20_prog_tickers (contract_address);
