#!/bin/bash
# (@)/phone
# A very simple phonebook
# Type "phone new name number" to add to the list, or
# simpy type "phone name" to obtain a telephone number

PHONELIST=~/.phonelist.txt

# If there is no command line parameter ($#), there is
# a problem, so ask about what they are talking.
if [ $# -lt 1 ]; then
    echo "What phone number do you want?"
    exit 1
fi

# Do you want to add a new phone number?
if [ $1 = "new" ]; then
    shift
    echo $* >> $PHONELIST
    echo $* added to database
    exit 0
fi

# No. But does the file still have something in it?
# This may be the first time that we use it, after all.
if [ ! -s $PHONELIST ]; then
    echo "No number in the phone book yet!"
    exit 1
else
    grep -i -q "$*" $PHONELIST # Search the file silently
    if [ $? -ne 0 ]; then
        echo "Sorry, but that name was not found in the list."
        exit 1
    else
        grep -i "$*" $PHONELIST
    fi 
fi
exit 0
