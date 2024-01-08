#!/bin/bash
echo "Arugment 0 is $0"
echo "Argument 1 is $1"
echo "Argument 2 is $2"
echo "Argument 3 is $3"
echo "Number of arguments passed to script $#"
echo "List of arguments passed $@"
echo 'List of arugments passed "$*" $*'
echo "PID of the script is $$"
echo "Previous command execution status $?"