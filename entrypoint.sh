#!/bin/bash
bitcoind -daemon
watch bitcoin-cli getblockchaininfo
while true; do bash; done
