#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=ethash.unmineable.com:3333
WALLET=TVfhgbjnjKfmD4WQapxmJXnBZqn5JNV4Wq.zactech1

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool ethash.unmineable.com:3333 --user TRX:0xD812f87DEfA8bd3a82F878Aed122809F6fe73808.RIG1#2u5h-1jug --ethstratum ETHPROXY
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool ethash.unmineable.com:3333 --user TRX:0xD812f87DEfA8bd3a82F878Aed122809F6fe73808.RIG1#2u5h-1jug --ethstratum ETHPROXY
done
