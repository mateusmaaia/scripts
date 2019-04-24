#!/bin/bash

FIRST=$1
SECOND=$2

if test $FIRST -lt $SECOND && echo "$FIRST é menor que $SECOND"; exit

if test $FIRST -gt $SECOND && echo "$FIRST é maior que $SECOND"; exit

if test $FIRST = $SECOND && echo "$FIRST é igual que $SECOND"; exit