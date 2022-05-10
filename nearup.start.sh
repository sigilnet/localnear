#!/bin/bash

rm -f /root/.nearup/node.pid

echo "$@"
nearup "$@" && while true; do sleep 1; done
