#!/bin/bash -ex
#
# XXX placeholder
#

SERVER_IP=$RPMA_SOFT_ROCE_IP

rping -s -a $SERVER_IP -C 10 &
rping -c -a $SERVER_IP -C 10 -v
