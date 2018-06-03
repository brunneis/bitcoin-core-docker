# bitcoin-core-docker

You can run the latest available image as follows:
```bash
docker run -d \
-v "$(pwd)"/bitcoin-data:/root/.bitcoin \
--name bitcoin-core \
-p 8333:8333 \
--restart always \
brunneis/bitcoin-core
```

All the available tags are listed [here](https://hub.docker.com/r/brunneis/bitcoin-core/tags/).
