#!/bin/bash -ex
#
# shell commands to run the main example
#

SERVER_IP=$RPMA_SOFT_ROCE_IP
SERVER_PORT=$((62000 + $PMEMUSER_ID))

cd build
./server $SERVER_IP $SERVER_PORT & # XXX PMem needed
./client $SERVER_IP $SERVER_PORT
