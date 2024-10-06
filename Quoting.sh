#No Quotes
text=a$(echo b)c
echo ${text}
#abc

#Single Quotes 🡪 don’t interpolate anything
text='a $(echo b) c'
echo "${text}"
#a $(echo b) c
#can’t have a single quote directly within the single quote

#Double Quotes 🡪 preserve the literal value of most characters
text="a"
text="${text} $(echo "b") c"
echo "${text}"
#a b c

#Escape Character 🡪 non-quoted backslash
text1="a $(echo b) c"
text2="a \$(echo b) c"
echo "${text1}"
#a b c
echo "${text2}"
#a $(echo b) c

#ANSI-C Quoting
echo 'a\nb'
#a\nb
echo $'a\nb'
#a
#b
