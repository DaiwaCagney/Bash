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

iptables:
iptables -A INPUT -j LOG
iptables -A FORWARD -j LOG
iptables -L

