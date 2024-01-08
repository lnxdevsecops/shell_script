#!/bin/bash
read -p "Please enter a value: " a
read -p "Please enter b value: " b

if [ "$a" -gt 10 ] && [ "$b" -gt 10 ]; then
    echo "Both conditions are true"
else
    echo "Any one of condition is true"
fi

########Output:
[root@master ~]# ./script.sh
Please enter a value: 15
Please enter b value: 25
Both conditions are true
[root@master ~]#
[root@master ~]# ./script.sh
Please enter a value: 11
Please enter b value: 5
Any one of condition is true
[root@master ~]#
----------------------------------------------------------------------------

#!/bin/bash
read -p "please enter a value: " a
read -p "please enter b value: " b

if [ "$a" -gt 10 ] || [ "$b" -gt 10 ]; then
    echo "Any one of condition true"
else
    echo "Both conditions are true"
fi

##########Output:
[root@master ~]# ./script.sh
please enter a value: 15
please enter b value: 17
Any one of condition true
[root@master ~]#
[root@master ~]# ./script.sh
please enter a value: 5
please enter b value: 10
Both conditions are true
[root@master ~]#

----------------------------------------------------------------------------

#!/bin/bash
read -p "please enter a value: " a

if ! [ "$a" -gt 10 ]; then
    echo "Condition is true"
else
    echo "condition is not true"
fi

########output:
[root@master ~]# ./script.sh
please enter a value: 5
Condition is true
[root@master ~]#
[root@master ~]# ./script.sh
please enter a value: 15
condition is not true
[root@master ~]#
