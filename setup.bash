#!/bin/bash -xve

command="exec 2> /tmp/setup.log"
eval $command

command="cd /home/ubuntu/RaspberryPiMouse/src/drivers/"
eval $command

command="/sbin/insmod rtmouse.ko"
eval $command

command="sleep 1"
eval $command

command="chmod 666 /dev/rt*"
eval $command

command="echo 0> /dev/rtmotoren0"
eval $command











