# Generate a legacy address.

#!/bin/bash
#bitcoin-cli -regtest getnewaddress "" legacy

# Create wallet if it doesn't exist
bitcoin-cli -regtest createwallet "legacywallet" 2>/dev/null || true

# Generate a legacy address and output only the address
bitcoin-cli -regtest -rpcwallet=legacywallet getnewaddress "" legacy