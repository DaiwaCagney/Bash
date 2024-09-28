#!/bin/bash

echo "Input file name"
read filename
echo "Input Masscan scan rate"
read rate

now=$(date '+%Y%m%d%H%M%S')

masscan -iL $filename --top-ports 1000 --rate $rate -oL op"$now".txt --retries 2

grep "open" op"$now".txt > open.txt

cut -d " " -f 3,4 -s open.txt > tonmap.txt

while read -r line
do
        first=$(echo "$line" | awk '{print $1}')
        second=$(echo "$line" | awk '{print $2}')

        echo "For $second" >> final"$now".txt
        nmap -Pn -sV -n -p $first --script=vulscan/vulscan.nse --script-args mincvss=4.0 $second -v >> final"$now".txt
        echo "*************************************************************************" >> final"$now".txt
        echo " " >> final"$now".txt
done < tonmap.txt

rm -f tonmap.txt
rm -f open.txt