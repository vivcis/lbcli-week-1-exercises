# Generate a P2SH address.

#!/bin/bash
bitcoin-cli -regtest createwallet "p2shwallet" > /dev/null 2>&1 || true
bitcoin-cli -regtest -rpcwallet=p2shwallet getnewaddress "" p2sh-segwit