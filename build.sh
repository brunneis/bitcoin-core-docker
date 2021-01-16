#!/bin/bash
source env.sh
TAGS=(latest $(echo $BITCOIN_CORE_VERSION | cut -d '.' -f 1,2) $BITCOIN_CORE_VERSION)
for tag in ${TAGS[@]}; do
  docker build --build-arg BITCOIN_CORE_VERSION=$BITCOIN_CORE_VERSION -t brunneis/bitcoin-core:$tag .
done
