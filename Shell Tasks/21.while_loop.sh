#!/bin/bash

a=0
while [ $a -lt 10 ]; do
    echo "$a"
    a=$(($a + 1))
done

##########Output:
[root@master ~]# ./script.sh
0
1
2
3
4
5
6
7
8
9
[root@master ~]#
-------------------------------------------------------------------------------------------------
#!/bin/bash

a=0
while [ $a -lt 10 ]; do
    b=$a
    while [ $b -ge 0 ]; do
        echo -n "$b"
        b=$(($b - 1))
    done
    echo
    a=$(($a + 1))
done

##########Output:
[root@master ~]# ./script.sh
0
10
210
3210
43210
543210
6543210
76543210
876543210
9876543210
[root@master ~]# 
