#!/bin/bash

Target="$1"

if [ -z $Target ]; then
        echo "Usage: crt.sh <target>"
        exit
fi

echo "Certificate Subdomains:"

curl -s https://crt.sh/?q=%25.$Target | grep $Target | grep TD | sed -e 's/<//g' | sed -e 's/>//g' | sed -e 's/TD//g' | sed -e 's/\///g' | sed -e 's/ //g' | sed -n '1!p' | sort -u > $Target-CT.txt

cat $Target-CT.txt
