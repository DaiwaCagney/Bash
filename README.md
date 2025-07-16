# Bash

# Move Cursor:
Ctrl + w 🡪 Cut the Word before the cursor to the clipboard

Ctrl + u 🡪 Cut the Line before the cursor to the clipboard

Ctrl + k 🡪 Cut the Line after the cursor to the clipboard

Alt + b 🡪 Back (left) one word

Alt + f 🡪 Forward (right) one word.

Ctrl + a 🡪 Go to the beginning of the line (Home)

Ctrl + e 🡪 Go to the End of the line (End)

# Export Path:
export PATH=$PATH:[Path to add]

# Time Zone:
dpkg-reconfigure tzdata

cat /etc/timezone 🡪 Shows the system's timezone

# Route / Firewall:
iptables -A INPUT -j LOG

iptables -A FORWARD -j LOG

iptables -L

iptables -t nat -L 🡪 Check NAT table

netstat -rn 🡪 Displays routing tables

service firewalld status

service ufw status

# Check Open Port:
sudo netstat -tulpn | grep LISTEN

netstat -tulnp | grep [Port]

sudo ss -tulpn

sudo lsof -i -P -n | grep LISTEN

# Variable:
export 🡪 makes a given variable available to all child sessions 🡪 export USER="Jane”

env 🡪 returns a list of environment variables for the current user

source 🡪 change env parameters, 

source ~/.bash_profile

source development.env

$HOME

# History:
history 🡪 get a history of commands

!n 🡪 n is the command number 🡪 execute

!! 🡪 execute last command

# DNS
nslookup www.google.com

dig google.com

host www.google.com 8.8.8.8

# Netcat
nc -zv [remote host IP] [port] 🡪 check port connectivity

nc -nlvp [port] --> listen

# Debug:
set -x # enables debugging mode

set -v # logs raw input, including unexpanded variables and comments

set -u # detect unset variable usages

set -e # cause Bash to exit with an error if any command in the script fails

set -o pipefail # abort on errors within pipes

set -euo pipefail

trap "echo 'error: Script failed: '" ERR

if [ $? -ne 0 ]; then

    echo "Error"
    
fi

0 success, other error

# Job Control:
Ctrl + C 🡪 stop the command

Ctrl + Z 🡪 pause the current job

Ctrl + D 🡪 logout 🡪 exit the shell

jobs  # list stopped jobs

fg # resume in the Foreground

fg %1 # resume the number 1 job, otherwise last one

bg # resume in the Background

find . -name "*.java" & # & 🡪 start a job in Background

disown %2 # keeps running in the background even after the shell exits

kill %1 # kill a job we don’t need

nohup # run a command immune to hangups

nohup script.sh > script.log 2>&1 &

# xargs:
find . -name '*.py' | xargs grep some_function

find . -name '*.py' -print0 | xargs -0 grep some_function # filenames contain spaces or special characters

cat hosts | xargs -I{} ssh root@{} hostname # replacing {} with the actual hostname

echo {a..z} | xargs -n3

TestString="nameXnameXnameXname"

echo $TestString | xargs -dX

echo $TestString | xargs -dX -n2

ls *.jpg | xargs -n1 -I{} cp {} /data/images

find . -type f -name "*.jpg" -print | xargs tar -czvf images.tar.gz


# Other
which bash 🡪 bash shell path

su [username] 🡪 switching the shell to another user

du -hs * 🡪 estimate file space usage

alias 🡪 create alias for command 🡪 alias pd="pwd"

less +F /etc/ssh/ssh_config 🡪 watch the file contents for changes 🡪 log

stat [file] 🡪 display file or file system status

stat -c '%A %a %n' [file] 🡪 file in octal form

ps aux 🡪 Lists all running processes

/proc/<pid>/maps 🡪 Accesses memory mappings for a specific process

/proc/<pid>/fd 🡪 Provides information about file descriptors for a specific process

cat /var/log/auth.log 🡪 user login history

cat ~/.bash_history 🡪 command history for each user

/usr/bin/vmhgfs-fuse .host:/foo /tmp/foo -o subtype=vmhgfs-fuse,allow_other 🡪 Mounts the share named foo to /tmp/foo

find -name myFile > myFileLocation.txt 2> myFileLocation-Error.txt

some-command > logfile 2>&1

nohup myscript.sh >myscript.log 2>&1 </dev/null &

</dev/null 🡪 don't expect input

when variables and filenames include whitespace 🡪 -0 or -print0

To iterate on filenames containing whitespace in a for loop 🡪 IFS=$'\n'

Internal Field Separator (IFS) 🡪 space, tab, and newline
