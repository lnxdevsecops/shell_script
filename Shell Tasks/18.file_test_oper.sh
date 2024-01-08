#!/bin/bash
read -p "Please enter file/dir name along with absolut path: " fname

if [ -e $"fname" ]; then
    echo "The $fname is exists"
else
    echo "The $fname is does not exist"
fi

#######Output:
[root@master ~]# ./script.sh
Please enter file name along with absolut path: /root/file1
The /root/file1 is exists
[root@master ~]#
[root@master ~]# ./script.sh
Please enter file name along with absolut path: /root/dir
The /root/dir is exists
[root@master ~]#
--------------------------------------------------------------------------------------
#/bin/bash
read -p "Please provide file name along with path: " fname
if [ -f "$fname" ]; then
    echo "This is regular file"
else
    echo "This is not regular file"
fi

#########Output:
[root@master ~]# ./script.sh
Please provide file name along with path: /root/file1
This is regular file
[root@master ~]#
[root@master ~]# ./script.sh
Please provide file name along with path: /root/dir
This is not regular file
[root@master ~]#
--------------------------------------------------------------------------------------
#/bin/bash
read -p "Please provide file name along with path: " dname
if [ -d "$dname" ]; then
    echo "This is a Directory "
else
    echo "This is not a directory"
fi

##########Output:
[root@master ~]# ./script.sh
Please provide file name along with path: /root/dir
This is a Directory
[root@master ~]#
[root@master ~]# ./script.sh
Please provide file name along with path: /root/file1
This is not a directory
[root@master ~]#
--------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please provider filename to check permissions: " fname

if [ -r "$fname" ]; then
    echo "The $fname having read permissions"
elif [ -w "$fname" ]; then
    echo "The $fname having write permissions"
elif [ -x "$fname" ]; then
    echo "The $fname having execute permissions"
else
    echo "$fname doesn't have any permissions"
fi

--------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please provider filename to check permissions: " fname

if [ -s "$fname" ]; then
    echo "$fname has a non-zero size."
else
    echo "$fname is empty."
fi

##########Output:
[root@master ~]# ./script.sh
Please provider filename to check permissions: /root/file1
/root/file1 is empty.
[root@master ~]#
--------------------------------------------------------------------------------------