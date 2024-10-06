#!/bin/bash

retfunc() {
    echo "this is retfunc()"
    return 1
}

exitfunc() {
    echo "this is exitfunc()"
    exit 1
}

retfunc
echo "Still Here"
exitfunc
echo "Never see this"