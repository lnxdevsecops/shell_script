#!/bin/bash
echo "Sum of two numbers $1 and $2 is a=$(($1+$2)):" $a
echo "Substraction of two number of $1 and $2 is a=$(($1-$2)):" $a
echo "Multiplication of two numbers of $1 and $2 is a=$(($1*$2)):" $a
echo "Division of two numbers of $1 and $2 is a=$(($1/$2)):" $a
echo "Modulas of two numbers of $1 and $2 is a=$(($1%$2)):" $a
echo "Exponential of two numbers of $1 and $2 is a=$(($1**$2)):" $a


[root@master ~]# ./script.sh 4 2
Sum of two numbers 4 and 2 is a=6:
Substraction of two number of 4 and 2 is a=2:
Multiplication of two numbers of 4 and 2 is a=8:
Division of two numbers of 4 and 2 is a=2:
Modulas of two numbers of 4 and 2 is a=0:
Exponential of two numbers of 4 and 2 is a=16:
[root@master ~]#


