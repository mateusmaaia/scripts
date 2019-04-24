#!/bin/bash

FIRST=$1
SECOND=$2

if [ $FIRST -lt $SECOND ] ; then
    echo "$FIRST é menor que $SECOND"
    exit 0
fi

if [ $FIRST -gt $SECOND ] ; then
    echo "$FIRST é maior que $SECOND"
    exit 0
fi

if [ $FIRST = $SECOND ] ; then
    echo "$FIRST é igual que $SECOND"
    exit 1
fi

