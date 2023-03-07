#!/bin/bash

hosts=("192.168.1" "192.168.2")

for host in ${hosts[@]};do
        echo -e "\n[!] Enumerating $host.0"
        for i in $(seq 1 254); do
                timeout 1 bash -c "ping -c 1 $host.$i" &> /dev/null && echo "[+] Host $host.$i - ACTIVO" &
        done; wait
done
