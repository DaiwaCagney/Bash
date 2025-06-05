#!/bin/bash

while read -r line
do
        echo "checking $line"
        (echo "$line" & (testssl.sh -p -s --connect-timeout 60 --openssl-timeout 60 $line | grep -e "TLS 1" -e SSLv2 -e SSLv3 -e "Anonymous NULL Ciphers")) | tr '\n' ' ' | tr -s ' '
        echo " "
done < IP.txt
