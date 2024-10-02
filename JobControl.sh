#!/bin/bash
# Ctrl + C 🡪 stop the command
# Ctrl + Z 🡪 pause the current job
# Ctrl + D 🡪 logout 🡪 exit the shell
jobs  # list stopped jobs
fg # resume in the Foreground
fg %1 # resume the number 1 job, otherwise last one
bg # resume in the Background
find . -name "*.java" & # & 🡪 start a job in Background
disown %2 # keeps running in the background even after the shell exits
kill %1 # kill a job we don’t need
nohup # run a command immune to hangups
nohup script.sh > script.log 2>&1 &