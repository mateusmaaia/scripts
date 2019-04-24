#!/bin/bash

NUM=$1

while [ $NUM -gt -1 ] ; 
do
    echo $NUM
    NUM=$((NUM=NUM-1))
done

