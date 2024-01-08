#!/bin/bash
read -p "Please entere the data: " myvar
if [ -z "$myvar" ];
then
echo "Myvar is empty"
else
echo "Length of the myvar is" ${#myvar}
fi

#######output
[root@master ~]# ./script.sh
Please entere the data: radhakrishna
Lenthe of the myvar is 12
[root@master ~]#
