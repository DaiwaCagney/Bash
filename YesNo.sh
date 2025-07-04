#!/bin/bash

read -rp "Continue? (Y/N): " answer

case "$answer" in
    [Yy]|[Yy][Ee][Ss])
        echo "YES"
        ;;
    [Nn]|[Nn][Oo])
        echo "NO"
        ;;
    *)
        echo "Invalid"
        ;;
esac
