#!/bin/bash
source env.sh
TAGS=(latest $(echo $BITCOIN_CORE_VERSION | cut -d '.' -f 1,2) $BITCOIN_CORE_VERSION)
for tag in ${TAGS[@]}; do
  docker push brunneis/bitcoin-core:$tag
done
