# Bash

Move Cursor:
Ctrl + w 🡪 Cut the Word before the cursor to the clipboard
Ctrl + u 🡪 Cut the Line before the cursor to the clipboard
Ctrl + k 🡪 Cut the Line after the cursor to the clipboard

Alt + b 🡪 Back (left) one word
Alt + f 🡪 Forward (right) one word.

Ctrl + a 🡪 Go to the beginning of the line (Home)
Ctrl + e 🡪 Go to the End of the line (End)

set -o vi 🡪 vi style
set -o emacs 🡪 original

export EDITOR=vim + (Ctrl + x) + (Ctrl + e) 🡪 editing long commands in an editor

Time Zone:
dpkg-reconfigure tzdata
cat /etc/timezone 🡪 Shows the system's timezone

iptables:
iptables -A INPUT -j LOG
iptables -A FORWARD -j LOG
iptables -L
iptables -t nat -L 🡪 Check NAT table

Check Open Port:
sudo netstat -tulpn | grep LISTEN
sudo ss -tulpn
sudo lsof -i -P -n | grep LISTEN

which bash 🡪 bash shell path
man bash 🡪 general manual
apropos bash 🡪 Locates commands by keyword lookup
curl cheat.sh/bash

su [username] 🡪 switching the shell to another user
su – [username] 🡪 "-" gets an environment as if another user just logged in

du -hs * 🡪 estimate file space usage

alias 🡪 create alias for command 🡪 alias pd="pwd"

export 🡪 makes a given variable available to all child sessions 🡪 export USER="Jane”

env 🡪 returns a list of environment variables for the current user

source 🡪 change env parameters, 
source ~/.bash_profile
source development.env
$HOME

history 🡪 get a history of commands
!n 🡪 n is the command number 🡪 execute
!! 🡪 execute last command

less +F /etc/ssh/ssh_config 🡪 watch the file contents for changes 🡪 log

stat [file] 🡪 display file or file system status
stat -c '%A %a %n' [file] 🡪 file in octal form

nslookup www.google.com
dig google.com
host www.google.com 8.8.8.8

nc -zv [remote host IP] [port] 🡪 check port

ps aux 🡪 Lists all running processes
/proc/<pid>/maps 🡪 Accesses memory mappings for a specific process
/proc/<pid>/fd 🡪 Provides information about file descriptors for a specific process

netstat -rn 🡪 Displays routing tables

cat /var/log/auth.log 🡪 user login history

cat ~/.bash_history 🡪 command history for each user

lsmod 🡪 Lists loaded kernel modules
dmesg 🡪 Displays kernel ring buffer messages, uncovering hardware or driver events

time [options] command [arguments] 🡪 measuring time

/usr/bin/vmhgfs-fuse .host:/foo /tmp/foo -o subtype=vmhgfs-fuse,allow_other 🡪 Mounts the share named foo to /tmp/foo

fuser -m [Directory] 🡪 find out which processes are accessing the file system

<(some command) 🡪 The output of a command can be treated like a file
diff /etc/hosts <(ssh somehost cat /etc/hosts)

find -name myFile > myFileLocation.txt 2> myFileLocation-Error.txt
some-command >logfile 2>&1

strings
file
xxd
objdump
nm
gdb

nohup myscript.sh >myscript.log 2>&1 </dev/null &
</dev/null 🡪 don't expect input

when variables and filenames include whitespace 🡪 -0 or -print0
To iterate on filenames containing whitespace in a for loop 🡪 IFS=$'\n'
Internal Field Separator (IFS) 🡪 space, tab, and newline
