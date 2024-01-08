case $var in pattern) commands to execute ;;
pattern1) commands to execute ;;
pattern2) commands to execute ;;
pattern3) commands to execute ;;
*)
    Default condition and commands to execute
    ;;
esac

#!/bin/bash
echo -e "Please choose which operation do you want to perform \n 1. add \n 2. sub \n 3. mul \n 4. div"
read -p "Please provide the operation type: " operation
read -p "Please enter the a value: " a
read -p "Please entere the b value: " b

case $operation in
add)
    echo "-----------Addition-----------"
    x=$(($a + $b))
    echo "Addition of $a and $b is: " $x
    ;;

sub)
    echo "-----------Substraction--------------"
    x=$(($a - $b))
    echo "Substraction of $a & $b is: " $x
    ;;

mul)
    echo "---------Multiplication------------"
    x=$(($a * $b))
    echo "Multiplication of $a & $b is: " $x
    ;;

div)
    echo "---------Division----------"
    x=$(($a / $b))
    echo "Division of $a & $b is: " $x
    ;;

*) echo "Your input is invalid \n please entere the valid input" ;;
esac


##########Output:
[root@master ~]# ./script.sh
Please choose which operation do you want to perform
 1. add
 2. sub
 3. mul
 4. div
Please provide the operation type: mul
Please enter the a value: 5
Please entere the b value: 4
---------Multiplication------------
Multiplication of 5 & 4 is:  20
[root@master ~]#