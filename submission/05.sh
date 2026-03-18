# Check the total amount in the wallet.

#!/bin/bash
#bitcoin-cli -regtest getbalance

bitcoin-cli -regtest createwallet "testwalletbalance" 2>/dev/null

# Generate an address in the wallet
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=testwalletbalance getnewaddress 2>/dev/null)

# Mine blocks to the address
bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" 2>/dev/null

# Get balance and echo it
BALANCE=$(bitcoin-cli -regtest -rpcwallet=testwalletbalance getbalance 2>/dev/null)

echo "$BALANCE"