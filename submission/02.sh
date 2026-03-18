# Write the bitcoin cli command to get the bitcoin node network name

#!/bin/bash
bitcoin-cli -regtest getblockchaininfo | jq -r '.chain'