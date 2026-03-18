# Check the total amount in the wallet.

#!/bin/bash
#bitcoin-cli -regtest getbalance

bitcoin-cli -regtest createwallet "testwalletbalance"

# Generate an address in the wallet
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=testwalletbalance getnewaddress)

# Mine 101 blocks to fund the wallet (first 100 are unspendable, 101st is spendable)
bitcoin-cli -regtest generatetoaddress 101 $ADDRESS

# Check the balance
BALANCE=$(bitcoin-cli -regtest -rpcwallet=testwalletbalance getbalance)

echo $BALANCE