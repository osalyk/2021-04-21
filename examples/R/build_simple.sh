#!/bin/bash -ex
#
# shell commands to build the simple_* example
#

mkdir -p build
cd build
cmake ..
make simple_client
make simple_server
