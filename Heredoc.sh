cat << EOF
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF

cat <<- "EOF"
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF
#The current working directory is: $PWD
#You are logged in as: $(whoami)

cat << EOF > file.txt
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF

cat <<'EOF' |  sed 's/l/e/g'
Hello
World
EOF
#Heeeo
#Wored

cat <<'EOF' |  sed 's/l/e/g' > file.txt
Hello
World
EOF

ssh -T user@host.com << EOF
echo "The current local working directory is: $PWD"
echo "The current remote working directory is: \$PWD"
EOF
