#!/bin/bash

THIS="EXAMPLE"
THIS=${THIS:-"NOT SET"}
THAT=${THAT:-"NOT SET"}
echo $THIS
echo $THAT

MYFILENAME="/home/cadu/linux/scripts/file.txt" # define o valor do filename
FILE=${MYFILENAME##*/}
echo $FILE
DIR=${MYFILENAME%/*}
echo $DIR
NAME=${FILE%.*}
echo $NAME
EXTENSION=${FILE##*.}
echo $EXTENSION