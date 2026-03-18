# Generate a native SegWit address.

#!/bin/bash
bitcoin-cli -regtest getnewaddress "" bech32
