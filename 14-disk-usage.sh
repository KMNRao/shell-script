#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp/file')
DISK_THRESHOLD= 1
message= ""
while IFS= red line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        echo "High Disk Usage on $partition: $usage\n"
    fi
done   <<< $DISK_USAGE
    echo -e "Message :: $Message"
sh mail.sh "Devops Team" "High Disk Usage" "$message" "mohan.etl2023@gmail.com" "Alert High Disk Usage"

