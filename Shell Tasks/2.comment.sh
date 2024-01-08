#!/bin/bash
# This is single line comment 
echo "This is single line comment"

<<MULTILINEC
This is multiline comment 
line1
line1
line3
MULTILINEC
echo "This is multiline comment"


[root@master ~]# ./script.sh
This is single line comment
This is multiline comment
[root@master ~]#