#!/bin/bash

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
# 0 success, other error

