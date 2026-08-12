# Bash

## Move Cursor
- Ctrl + w - Cut the Word before the cursor to the clipboard
- Ctrl + u - Cut the Line before the cursor to the clipboard
- Ctrl + k - Cut the Line after the cursor to the clipboard
- Alt + b - Back (left) one word
- Alt + f - Forward (right) one word.
- Ctrl + a - Go to the beginning of the line (Home)
- Ctrl + e - Go to the End of the line (End)

---

## Export Path
`export PATH=$PATH:[Path to add]`

---

## Route / Firewall
`ip link` - MAC address

`iptables -A INPUT -j LOG`

`iptables -A FORWARD -j LOG`

`iptables -L` - Check Firewall Rules

`iptables -t nat -L` - Check NAT table

`netstat -rn` - Displays routing tables

`service firewalld status`

`firewall-cmd --list-all` - Check Firewall Rules

`service ufw status`

`netstat -rnv` - Gateway

`systemctl status iptables.service`

`systemctl status firewalld`

`systemctl stop firewalld`

`systemctl disable firewalld`

---

## Check Open Port:
`sudo netstat -tulpn | grep LISTEN`

`netstat -tulnp | grep [Port]`

`sudo ss -tulpn`

`sudo lsof -i -P -n | grep LISTEN`

---

## History
`history` - Get history of commands

`!n` - n is the command number #execute

`!!` - execute last command

`cat ~/.bash_history` - command history for each user

---

## Netcat
`nc -zv [remote host IP] [port]` - check port connectivity

`nc -nlvp [port]` - listen

---

## Debug
```
if [ $? -ne 0 ]; then
{handling error}
fi
```

0 success, other error

---

## Job Control
- Ctrl + C - stop the command
- Ctrl + Z - pause the current job
- Ctrl + D - logout 🡪 exit the shell

`jobs`  - list stopped jobs

`fg` - resume in the Foreground

`fg %1` - resume the number 1 job, otherwise last one

`bg` - resume in the Background

`find . -name "*.java" &` - & 🡪 start a job in Background

`disown %2` - keeps running in the background even after the shell exits

`kill %1` - kill a job we don’t need

`nohup script.sh > script.log 2>&1 &` - nohup run a command immune to hangups

`crontab -l `

---

## View File
`less +F /etc/ssh/ssh_config` - watch the file contents for changes 🡪 log

`tail -f /var/log/messages`

---

## Create File for Testing
`fallocate -l 1337MB filename`

---

## Back Up
`tar -cvzf backup.tar.gz /directory` - gzip (moderate compression, fast)

`tar -cvjf backup.tar.bz2 /directory` - bzip2 (better compression, slower)

`tar -cvJf backup.tar.xz /directory` - xz (best compression, slowest)

`rsync -avz /home/user /backups/home_full/` - Full local backup

`rsync -avz -e ssh user@remote_host:/home/user /local/backups/` - Backup from remote server to local

`tar -cvf archive.tar file1 file2 directory` - Create a tarball

`tar -xvf archive.tar` - Extract a tarball

`tar -czvf archive.tar.gz directory` - Create a tarball with gzip compression

`tar -xzvf archive.tar.gz` - Extract a tarball with gzip compression

`unzip file −d destination` - Extract a zip file

---

## Date
`date -d @1704300000`

`date -d @1704300000 +"%Y-%m-%d %H:%M:%S"`

---

## Find File
`find` - Search for files in a directory hierarchy

`find /path/to/search -type f -name "*.txt"` - Find all .txt files in a directory

`find / -perm -4000 -type f 2>/dev/null` - find executable file user can use

---

## DNS Config
`cat /etc/hosts`

`cat /etc/resolv.conf`

`cat /etc/nsswitch.conf`

---

## Process
`ps -ef | grep {process}`

`ps -ef | more`

`ps aux` - Lists all running processes

`sudo systemctl list-unit-files --type=service --state=enabled` # List all active services

---

## SSH
`cat /etc/ssh/sshd_conf`

`ssh -p {port} -l {user} {ip}`

---

## Access Log
`cat /var/log/auth.log` - user login history

`tail -f /var/log/secure`

---

## ls
`ls -alh`

`ls -ltr`

---

## User
`cat /etc/passwd` - find all users created

`id {username}`

---

## Digital Forensic
`strings` - Display printable strings in files

`file` - Determine type of file

`xxd` - Make a hexdump

`xxd -r` - Reverse hexdump

`objdump` - Display information from object file

`objdump -d -S` - Display assembler contents

`nm` - List symbols in file

`gdb` - GNU debugger

`losetup` - Set up and control loop devices

`losetup /dev/loop0 example.img` - Set up a loop device

`mount /dev/loop0 /home/you/dir` - Mount the loop device

`affuse` - Filesystem in Userspace

`lsblk` - List block devices

`fdisk -l` - Partition table manipulator

`cut -d ‘ ‘ -f 1,3,5 file.txt` - Cut out fields from a file

`ls /dev/sd*` - List all hard drives

`cat /proc/partitions`

---

## Other
`du -hs *` - estimate file space usage

`df -h`

`/usr/bin/vmhgfs-fuse .host:/foo /tmp/foo -o subtype=vmhgfs-fuse,allow_other` - Mounts the share named foo to /tmp/foo

`nohup myscript.sh >myscript.log 2>&1 </dev/null &` - </dev/null 🡪 don't expect input

`tcpdump -A` check the payload

---

## Notes

when variables and filenames include whitespace 🡪 -0 or -print0

Internal Field Separator (IFS) 🡪 space, tab, and newline, To iterate on filenames containing whitespace in a for loop 🡪 IFS=$'\n'

---
