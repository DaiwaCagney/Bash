#Comparison
[ 3 -eq 3 ] && echo "Number are equal"
#Number are equal
test 3 -eq 3 && echo "Number are equal"
#Number are equal

[[ 1 < 2 ]] && echo "1 is less than 2"
#1 is less than 2
[ 1 < 2 ] && echo "1 is less than 2"
#No such file or directory
#Must use the escape character (\) before the < operator
[ 1 \< 2 ] && echo "1 is less than 2"

#Boolean
#Must use the && operator for the logical AND operation and the || operator for the logical OR operation while using the double brackets
[[ 3 -eq 3 && 4 -eq 4 ]] && echo "Numbers are equal"
#Must use the -o and -a test operators for the logical OR and logical AND operations, respectively, while using single brackets
[ 3 -eq 3 -a 4 -eq 4 ] && echo "Numbers are equal"

[[ 3 -eq 3 && (2 -eq 2 && 1 -eq 1) ]] && echo "Parentheses can be used"
#Parentheses can be used
[ 3 -eq 3 -a (2 -eq 2 -a 1 -eq 1) ] && echo "Parentheses can be used"
#syntax error
[ 3 -eq 3 -a \( 2 -eq 2 -a 1 -eq 1 \) ] && echo "Parentheses can be used"
#Parentheses can be used
#Must use the escape character before the opening and closing parentheses for a successful grouping
#There must also be a space after and before the opening and closing parentheses

#Pattern Matching
name="Alice"
[[ $name = *c* ]] && echo "Name includes c"
echo $? #0
[ $name = *c* ] && echo "Name includes c"
echo $? #1

#Regular Expressions
#The =~ built-in operator is used for matching the regular expressions
name="Alice"
[[ $name =~ ^Ali ]] && echo "Regular expression can be used"
#Regular expression can be used
[ $name =~ ^Ali ] && echo "Regular expression can be used"
#-bash: [: =~: binary operator expected
#It isn’t possible to use regular expressions within single brackets

#Word Splitting
#Bash doesn’t perform word splitting inside double brackets
filename="nonexist file"
[[ ! -e $filename ]] && echo "File not exist"
#File not exist
[ ! -e $filename ] && echo "File not exist"
#No Result
#Set IFS can fix
#Must put the variable in double quotes if we want to prevent the word splitting within single brackets
[ ! -e "$filename" ] && echo "File not exist"
