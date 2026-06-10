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

echo "Finished"

awk 'BEGIN { OFS=","; print "IP,Port,State,Service,Description" } 
{
    desc=""; 
    for(i=5; i<=NF; i++) desc=(desc=="" ? $i : desc" "$i); 
    print $1, $2, $3, $4, desc
}' "$filename" > output.csv
