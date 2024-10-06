#Subshells 🡪 written with parentheses ()
#do something in current dir
#(cd /some/other/dir && other-command)
#continue in original dir

#(...) means run the commands listed in the parentheses in a subshell
a=1; (a=2; echo "inside: a=$a"); echo "outside: a=$a"

#$(command) means execute the command in the parentheses in a subshell and produces its stdout
echo "The current date is $(date)"

#Double Parentheses 🡪 Arithmetic Operations
#Method 1:
Sum=$((6+4))
echo "Sum = $Sum"
#Method 2:
((Sum=6+4))
echo "Sum = $Sum"

#Array
array=(1 2 3)
echo ${array[1]}