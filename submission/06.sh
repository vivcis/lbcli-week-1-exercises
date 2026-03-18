# Generate a legacy address.

#!/bin/bash
#bitcoin-cli -regtest getnewaddress "" legacy

# Create wallet if it doesn't exist
bitcoin-cli -regtest createwallet "legacywallet" > /dev/null 2>&1 || true

# Generate a legacy address and output only the address
bitcoin-cli -regtest -rpcwallet=legacywallet getnewaddress "" legacy