# Generate a Taproot address.

#!/bin/bash
#bitcoin-cli -regtest getnewaddress "" bech32m

bitcoin-cli -regtest createwallet "taprootwallet" > /dev/null 2>&1 || true
bitcoin-cli -regtest -rpcwallet=taprootwallet getnewaddress "" bech32m