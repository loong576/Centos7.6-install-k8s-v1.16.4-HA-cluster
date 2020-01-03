#!/bin/bash
result=$(curl -k https://localhost:6443/healthz)
if [ "$result" = "ok" ]; then
    #the apiserver is up
    exit 0
else
    #the apiserver is down
    exit 1
fi
