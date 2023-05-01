#!/bin/sh
sleep 105m
echo "Dispatch memory leak"
stress-ng --cpu 80 --cpu-load 1 -t 5m
for mem in {5..345..20}; do
    stress-ng --vm 1 --vm-bytes ${mem}M -t 5m
done
stress-ng --vm 1 --vm-bytes 350M -t 5m

