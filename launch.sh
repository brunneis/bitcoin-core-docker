#!/bin/bash
docker run -ti \
-v "$(pwd)"/bitcoin-data:/root/.bitcoin \
--name bitcoin-core \
-p 8333:8333 \
brunneis/bitcoin-core
