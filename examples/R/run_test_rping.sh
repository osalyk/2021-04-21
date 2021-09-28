#!/bin/bash -ex
#
# XXX placeholder
#

SERVER_IP=192.168.1.100
rping -s -a $SERVER_IP -C 10 &
rping -c -a $SERVER_IP -C 10 -v
