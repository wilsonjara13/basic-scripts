#!/bin/bash

hosts=("127.0.0.1")

for host in ${hosts[@]};do
        echo -e "\n[!] Scanning port on $host\n"
        for port in $(seq 1 10000); do
                timeout 1 bash -c "echo ' ' > /dev/tcp/$host/$port" 2> /dev/null && echo -e "\t[+] Puerto $port - OPEN" &
        done; wait
done
