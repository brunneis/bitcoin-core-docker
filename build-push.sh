#!/bin/bash

BITCOIN_CORE_VERSION=$(cat BITCOIN_CORE_VERSION)
TAGS=(latest $(echo $BITCOIN_CORE_VERSION | cut -d '.' -f 1,2) $BITCOIN_CORE_VERSION $BITCOIN_CORE_VERSION-ubuntu $BITCOIN_CORE_VERSION-ubuntu-18.04 $BITCOIN_CORE_VERSION-ubuntu-bionic)

for tag in ${TAGS[@]}
    do
        docker build --build-arg BITCOIN_CORE_VERSION=$BITCOIN_CORE_VERSION -t brunneis/bitcoin-core:$tag .
        docker push brunneis/bitcoin-core:$tag
    done
