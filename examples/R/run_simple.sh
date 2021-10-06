#!/bin/bash -ex
#
# shell commands to run the simple_* example
#

SERVER_IP=$RPMA_SOFT_ROCE_IP
SERVER_PORT=7204 # XXX each user requires a dedicated port number

cd build
./simple_server $SERVER_IP $SERVER_PORT &
sleep 1
./simple_client $SERVER_IP $SERVER_PORT
