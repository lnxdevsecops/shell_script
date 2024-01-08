#!/bin/bash

cond=true

while $cond; do

    read -p "Please enter user name: " uname

    id $uname 2>/dev/null 1>/dev/null

    if [ $? != 0 ]; then
        read -p "$uname does not exist...Do you want to create user type '"yes/no"': " action

        if [ "$action" == "yes" ]; then
            echo -e "Proceeding to create a $uname user.........\nPlease get details about $uname:"
            useradd -m $uname
            user_details=$(grep -w "$uname" /etc/passwd)
            echo " "
            echo "$user_details"
        else
            echo "Discarding user creation process....."
        fi

        # set password for user
        echo " "
        read -p "Do you want to set passwrod for user $uname 'yes/no': " password_action
        if [ "$password_action" == "yes" ]; then
            cred_file=/root/.credentials
            # creating credential file if doesn't exists
            if ! [ -e "$cred_file" ]; then
                touch $cred_file
                chmod 600 $cred_file
            else
                #Generating random password
                rand_pass=$(openssl rand -base64 12)

                # setting up the password
                echo "Configuring random password for user $uname......!\nYou will find password in $cred_file file"
                # echo -e "$rand_pass\n$rand_pass" | passwd $uname 1>/dev/nuall
                echo "$rand_pass" | passwd --stdin $uname 1>/dev/null

                # exporting the user and password into the file
                echo -e "UserName: $uname\nPassword: $rand_pass" >>$cred_file
                echo " "
            fi
        else
            echo "Discarding password configuration..........!"
        fi

    else
        echo "$uname user is exists....!"
    fi

    read -p "Do you want to creat another user 'yes/no' :" cond
    echo " "

    if [ $cond == "yes" ]; then
        cond=true
    else
        cond=false
    fi
done
