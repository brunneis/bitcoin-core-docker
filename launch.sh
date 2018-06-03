#!/bin/bash
docker run -d \
-v "$(pwd)"/bitcoin-data:/root/.bitcoin \
--name bitcoin-core \
-p 8333:8333 \
--restart always \
brunneis/bitcoin-core
