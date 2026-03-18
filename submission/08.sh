# Generate a native SegWit address.

#!/bin/bash
#bitcoin-cli -regtest getnewaddress "" bech32

bitcoin-cli -regtest createwallet "segwitwallet" > /dev/null 2>&1 || true
bitcoin-cli -regtest -rpcwallet=segwitwallet getnewaddress "" bech32