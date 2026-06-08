#!/bin/bash

filename=$(date +"%d%m%Y%H%M").txt

while read -r line
do
        echo "checking $line"
        nmap -Pn -sV --scan-delay 5s "$line" | grep tcp > nmapoutput.txt
        while read -r line2
        do
                echo "$line $line2" >> "$filename"
        done < nmapoutput.txt
        echo "Done $line"
done < IP.txt

rm -f nmapoutput.txt

echo "Finished" >> "$filename"
