#!/bin/bash
read -p "Please provide username: " iname

id $iname

if [ $? == '0' ]; then
    echo "$iname user exists"
fi

########Output:
[lnxadm@master ~]$ ./script.sh
Please provide username: lnxadm
uid=1001(lnxadm) gid=1001(lnxadm) groups=1001(lnxadm)
lnxadm user exists
[lnxadm@master ~]$

--------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please provider file/directory path: " iname

if [ -f $iname ]; then
    echo "$iname is a file"
    ls -ltr $iname
else
    echo "$iname is not a file"
    ls -ltr $iname
fi

##########Output:
[lnxadm@master ~]$ ./script.sh
Please provider file/directory path: file1
file1 is a file
--w-------. 1 lnxadm lnxadm 0 Jan 3 03:31 file1
[lnxadm@master ~]$
[lnxadm@master ~]$ mkdir dir
[lnxadm@master ~]$
[lnxadm@master ~]$ ./script.sh
Please provider file/directory path: dir
dir is not a file
total 0
[lnxadm@master ~]$
--------------------------------------------------------------------------------------
#!/bin/bash

read -p "Please provide file path: " iname

if [ -f $iname ]; then
    echo "$iname is a regular file"
elif [ -d $iname ]; then
    echo "$iname is a directory"
elif [ -b $iname ]; then
    echo "$iname is a block device file"
else
    echo "Unable to identify the file type"
fi

#############Output:
[lnxadm@master ~]$ ./script.sh
Please provide file path: file1
file1 is a regular file
[lnxadm@master ~]$
[lnxadm@master ~]$ ./script.sh
Please provide file path: dir
dir is a directory
[lnxadm@master ~]$
[lnxadm@master ~]$ ./script.sh
Please provide file path: /dev/sda
/dev/sda is a block device file
[lnxadm@master ~]$

--------------------------------------------------------------------------------------
#!/bin/bash
read -p "Please provide file path: " iname

if [ -f $iname ]; then
    if [ -r $iname ]; then
        echo "$iname has read permission"
    else
        echo "$iname does not have read permission"
        ls -ltr $iname
    fi
else
    echo "$iname is not a file"
fi

#############Output
[lnxadm@master ~]$ chmod 300 file1
[lnxadm@master ~]$
[lnxadm@master ~]$ ./script.sh
Please provide file path: file1
file1 does not have read permission
--wx------. 1 lnxadm lnxadm 0 Jan 3 03:31 file1
[lnxadm@master ~]$
[lnxadm@master ~]$ chmod 400 file1
[lnxadm@master ~]$
[lnxadm@master ~]$ ./script.sh
Please provide file path: file1
file1 has read permission
-r--------. 1 lnxadm lnxadm 0 Jan 3 03:31 file1
[lnxadm@master ~]$
--------------------------------------------------------------------------------------
