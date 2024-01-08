#!/bin/bash
for cmdarg in $*;
do 
echo 'all arguments passed $*:' $cmdarg
done 
echo "----------------------------"

for cmdarg in $@;
do 
echo 'all arguments passed $@:' $cmdarg
done
echo "----------------------------"

for cmdarg in "$*"
do 
echo 'all argument passed "$*":' $cmdarg
done
echo "----------------------------"

for cmdarg in "$@";
do
echo 'all arguments passed "$@":' $cmdarg 
done


[root@master ~]# ./script.sh  arg1 arg2 arg3 arg4
all arguments passed $*: arg1
all arguments passed $*: arg2
all arguments passed $*: arg3
all arguments passed $*: arg4
----------------------------
all arguments passed $@: arg1
all arguments passed $@: arg2
all arguments passed $@: arg3
all arguments passed $@: arg4
----------------------------
all argument passed "$*": arg1 arg2 arg3 arg4
----------------------------
all arguments passed "$@": arg1
all arguments passed "$@": arg2
all arguments passed "$@": arg3
all arguments passed "$@": arg4
[root@master ~]#

