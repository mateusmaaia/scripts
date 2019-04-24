#!/bin/bash

BIGNUM=1024
let RESULT=$BIGNUM/16
RESULT='expr $BIGNUM / 16'
RESULT='echo "$BIGNUM / 16" | bc'
let foo=RANDOM%10; echo $foo
