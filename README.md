# Bash

## Move Cursor:
- Ctrl + w # Cut the Word before the cursor to the clipboard
- Ctrl + u # Cut the Line before the cursor to the clipboard
- Ctrl + k # Cut the Line after the cursor to the clipboard
- Alt + b # Back (left) one word
- Alt + f # Forward (right) one word.
- Ctrl + a # Go to the beginning of the line (Home)
- Ctrl + e # Go to the End of the line (End)

# Export Path:
export PATH=$PATH:[Path to add]

# Route / Firewall:
iptables -A INPUT -j LOG

iptables -A FORWARD -j LOG

iptables -L

iptables -t nat -L # Check NAT table

netstat -rn # Displays routing tables

service firewalld status

service ufw status

# Check Open Port:
sudo netstat -tulpn | grep LISTEN

netstat -tulnp | grep [Port]

sudo ss -tulpn

sudo lsof -i -P -n | grep LISTEN

# History:
history # Get history of commands

!n # n is the command number #execute

!! # execute last command

cat /var/log/auth.log # user login history

cat ~/.bash_history # command history for each user

cat /etc/passwd # find all users created

# Netcat
nc -zv [remote host IP] [port] # check port connectivity

nc -nlvp [port] # listen

# Debug:
if [ $? -ne 0 ]; then

{handling error}
    
fi

0 success, other error

# Job Control:
Ctrl + C # stop the command

Ctrl + Z # pause the current job

Ctrl + D # logout 🡪 exit the shell

jobs  # list stopped jobs

fg # resume in the Foreground

fg %1 # resume the number 1 job, otherwise last one

bg # resume in the Background

find . -name "*.java" & # & start a job in Background

disown %2 # keeps running in the background even after the shell exits

kill %1 # kill a job we don’t need

nohup script.sh > script.log 2>&1 & # nohup run a command immune to hangups

crontab -l 

# View File
less +F /etc/ssh/ssh_config # watch the file contents for changes 🡪 log

tail -f /var/log/messages

# Create File for Testing
fallocate -l 1337MB filename

# Back Up
tar -cvzf backup.tar.gz /directory    # gzip (moderate compression, fast)
tar -cvjf backup.tar.bz2 /directory   # bzip2 (better compression, slower)
tar -cvJf backup.tar.xz /directory    # xz (best compression, slowest)
rsync -avz /home/user /backups/home_full/ # Full local backup
rsync -avz -e ssh user@remote_host:/home/user /local/backups/ # Backup from remote server to local

# Other
du -hs * # estimate file space usage

ps aux # Lists all running processes

ls -alh

find / -perm -4000 -type f 2>/dev/null # find executable file user can use

/usr/bin/vmhgfs-fuse .host:/foo /tmp/foo -o subtype=vmhgfs-fuse,allow_other # Mounts the share named foo to /tmp/foo

nohup myscript.sh >myscript.log 2>&1 </dev/null & # </dev/null # don't expect input

when variables and filenames include whitespace # -0 or -print0

Internal Field Separator (IFS) # space, tab, and newline, To iterate on filenames containing whitespace in a for loop 🡪 IFS=$'\n'

date -d @1704300000

date -d @1704300000 +"%Y-%m-%d %H:%M:%S"
