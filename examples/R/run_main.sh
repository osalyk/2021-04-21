#!/bin/bash -ex
#
# shell commands to run the main example
#

if [ ! -c /${DEV_DAX} ]; then
        echo "Error: \"${DEV_DAX}\" device DAX not found (DEV_DAX environment variable)"
        exit 1
fi

echo "Device DAX: ${DEV_DAX}"

SERVER_IP=$RPMA_SOFT_ROCE_IP
SERVER_PORT=$((62000 + $PMEMUSER_ID))

cd build
./server $SERVER_IP $SERVER_PORT $DEV_DAX $PMEMUSER_ID on &
sleep 1
./client $SERVER_IP $SERVER_PORT
