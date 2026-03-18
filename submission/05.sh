# Check the total amount in the wallet.

#!/bin/bash
#bitcoin-cli -regtest getbalance

bitcoin-cli -regtest createwallet "testwalletbalance" > /dev/null 2>&1

# Generate address
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=testwalletbalance getnewaddress 2>/dev/null)

# Mine blocks to the address (suppress output)
bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" > /dev/null 2>&1

# Get balance and echo ONLY this
BALANCE=$(bitcoin-cli -regtest -rpcwallet=testwalletbalance getbalance 2>/dev/null)

echo "$BALANCE"