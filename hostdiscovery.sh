#!/bin/bash

hosts=("$1")

for host in ${hosts[@]};do
        echo -e "\n[!] Enumerating $host.0\n"
        for i in $(seq 1 254); do
                timeout 1 bash -c "ping -c 1 $host.$i" &> /dev/null && echo -e "\t[+] Host $host.$i - ACTIVO" &
        done; wait
done
