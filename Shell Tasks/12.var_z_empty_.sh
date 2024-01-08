#!/bin/bash
read -p "Please entere data:" myvar
if [ -z "$myvar" ]; then
    echo "my variable is $myvar empty"
else
    echo "my variable is $myvar not empty"
fi

#####Output:
[root@master ~]# ./script.sh
Please entere data:
my variable is empty
[root@master ~]#
