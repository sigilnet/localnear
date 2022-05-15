#!/bin/bash

rm -f /root/.nearup/node.pid

BINARY_PATH="/root/bin"

ARGS="$@"
if [[ -f $BINARY_PATH/neard ]]
then
  ARGS="$ARGS --binary-path $BINARY_PATH"
fi

echo $ARGS
nearup $ARGS && sleep infinity
