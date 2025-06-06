#!/bin/bash

# Output in terminal
while read -r line
do
        echo "checking $line"
        (echo "$line" & (testssl.sh -p -s --connect-timeout 60 --openssl-timeout 60 $line | grep -e "TLS 1" -e SSLv2 -e SSLv3 -e "Anonymous NULL Ciphers")) | tr '\n' ' ' | tr -s ' '
        echo " "
done < IP.txt

#Output in CSV
filename=$(date +"%d%m%Y%H%M").csv

echo "IP,SSLv2,SSLv3,TLS 1,TLS 1.1,TLS 1.2,TLS 1.3,Anonymous NULL Ciphers" > "$filename"

while read -r line
do
        echo "checking $line"
        row=$(testssl.sh -p -s --connect-timeout 60 --openssl-timeout 60 ${line} | grep -e "TLS 1" -e SSLv2 -e SSLv3 -e "Anonymous NULL Ciphers" | grep -oE "(offered|not offered)" | paste -sd ',')
        new_row="${line},${row}"
        echo "$new_row" >> "$filename"
done < IP.txt
