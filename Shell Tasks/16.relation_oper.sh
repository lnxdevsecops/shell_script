#!/bin/bash
read -p "Please enter a value:" a
read -p "Please enter b value:" b

if [ "$a" == "$b" ]; then
    echo "Both a and b values are same"
else
    echo "Both are not same"
fi

#####Output:
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:3
Both are not same
[root@master ~]#
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:5
Both a and b values are same
[root@master ~]#

-----------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please enter a value:" a
read -p "Please enter b value:" b
if [ "$a" != "$b" ]; then
    echo "Both values are not equal"
else
    echo "Both are equal"
fi

#######Output
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:5
Both are equal
[root@master ~]#
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:2
Both values are not equal
[root@master ~]#

-----------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please enter a value:" a
read -p "Please enter b value:" b

if [ "$a" -gt "$b" ]; then
    echo "a greater than value b"
else
    echo "a is less than b"
fi

###Output:
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:3
a greater than value b
[root@master ~]#
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:8
a is less than b
[root@master ~]#

-----------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please enter a value:" a
read -p "Please enter b value:" b

if [ "$a" -lt "$b" ]; then
    echo "a is less than b"
else
    echo "a is greater than b"
fi

####Output:
[root@master ~]# ./script.sh
Please enter a value:3
Please enter b value:5
a is less than b
[root@master ~]#
[root@master ~]# ./script.sh
Please enter a value:5
Please enter b value:3
a is greater than b
[root@master ~]#

-----------------------------------------------------------------------------------------
