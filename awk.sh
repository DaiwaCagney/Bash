#!/bin/bash
awk -F: ’length($2) ‹ 1 print $1’ ‹ /etc/passwd # Sets the field separator to a colon (:), print the first field of each line where the length of the second field is less than 1

