#!/bin/bash
read -p "please entere data: " myvar
if [ -n "$myvar" ]; then
    echo "Myvar is not empty"
else
    echo "Myvar is empty"
fi

####output:
[root@master ~]# ./script.sh
please entere data: krishna
Myvar is not empty
[root@master ~]#

