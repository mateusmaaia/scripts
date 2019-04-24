#!/bin/bash
# som.sh
# speaker change frequence

# beep default (f=750, t=100ms)

echo -e '\033[10;750\033[11;100]'

freq=0
while : ; do
    freq=$((freq+1))
    echo -e ESC[10;$freq]
    echo "frequencia=$freq"
    echo -e '\a'
    usleep 100
done
