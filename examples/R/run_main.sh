#!/bin/bash -ex
#
# shell commands to run the main example
#

SERVER_IP=$RPMA_SOFT_ROCE_IP
SERVER_PORT=7204 # XXX each user requires a dedicated port number

cd build
./server $SERVER_IP $SERVER_PORT & # XXX PMem needed
sleep 1
./client $SERVER_IP $SERVER_PORT
