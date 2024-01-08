#!/bin/bash

threshold=90

current_usage=$(df -hTP / | awk 'NR==2  {print $6}' | tr -d "%")

if [ "$threshold" -lt "$current_usage" ]; then
    echo -e "/ root filesystem usage is above the threshold \n Current usgae is: $current_usage%"
else 
echo -e "/ root filesyste usage is now below threshold \n Current usage is $current_usage%"
fi
