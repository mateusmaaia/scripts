#!/bin/bash
# (@) /bachup.sh
# Um script de backup muito simples
#
# Change the TAPE device to match your system.
# Check /var/log/messages to determine your tape device.
# You may also need to add support scsi-tape to you kernel.
TAPE=/dev/rft0

# Rewind the $TAPE tape device
mt $TAPE rew
# Get a list of home directories
HOMES=´grep /home /etc/passwd | cut -f6 -d´ : ""
# Back up the data in this directory
tar cvf $TAPE $HOMES
# Rewind and eject the tape.
mt $TAPE rewoffl

