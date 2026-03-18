# Generate a P2SH address.

#!/bin/bash
bitcoin-cli -regtest getnewaddress "" p2sh-segwit
