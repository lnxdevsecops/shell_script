#!/bin/bash
read -p "Please enter string1 data:" str1
read -p "Please enter string2 data:" str2
if [ "$str1" == "$str2" ]; then
    echo "string1 and string2 are equal"
else
    echo "string1 and string2 are not equal"
fi

######output:
[root@master ~]# ./script.sh
Please enter string1 data:hi
Please enter string2 data:hi
string1 and string2 are equal
[root@master ~]#
[root@master ~]# ./script.sh
Please enter string1 data:hello
Please enter string2 data:hi
string1 and string2 are not equal
[root@master ~]#
