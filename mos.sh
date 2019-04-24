#!/bin/bash

read -p "Enter your favorite OS: " OS
echo $OS
if [ $OS = "windows" ] || [ $OS = "mac" ] ; then
    echo "Shame on you"
    exit 1
fi

if [ $OS = "linux" ] ; then
    echo "Very good"
fi


