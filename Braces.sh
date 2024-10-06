#{ command; }
#Causes the list to be executed in the current shell context
#No subshell is created
#The semicolon (or newline) following list is required

#Truncate the contents of a variable
#${var%suffix}
var="abcde"; echo ${var%d*}
#abc
#${var#prefix}
var="abcde"; echo ${var#*d}
#e

#Make substitutions
var="abcde"; echo ${var/de/12}
#abc12

#${parameter:-word}
#Using a default value if a variable is empty
#If parameter is unset or null, the expansion of word is substituted
#Otherwise, the value of parameter is substituted
default="hello"; unset var; echo ${var:-$default}
#hello

#${parameter:=word}
#If parameter is unset or null, the expansion of word is assigned to parameter
: ${var:=Default}; echo $var

#${parameter:?word}
#If parameter is null or unset, the expansion of word is written to the standard error 
#and the shell, if it is not interactive, exits
#Otherwise, the value of parameter is substituted
: ${var:?var is unset or null}

#If a Bash script requires a single argument
input_file=${1:?usage: $0 input_file}

#${parameter:+word}
#If parameter is null or unset, nothing is substituted, otherwise the expansion of word is substituted
var=123; echo ${var:+var is set and not null}

#${parameter:offset}
#${parameter:offset:length}
string=0123456789
echo ${string:7}
#789
echo ${string:7:2}
#78
echo ${string:5:-2}
#567
echo ${string: -7}
#3456789
echo ${string: -7:2}
#34
echo ${string: -7:-2}
#34567

#Loop
echo f{oo,ee,a}d
#food feed fad
mv error.log{,.OLD}
#mv error.log error.log.OLD
for num in {000..2}; do echo "$num"; done
#000
#001
#002
echo {00..8..2}
#00 02 04 06 08
echo {D..T..4}
#D H L P T