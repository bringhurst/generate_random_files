#!/bin/bash

no_of_files=500000;
file_counter=1;

while [[ $file_counter -le $no_of_files ]]; 
do echo Creating file no $counter;
    if [ "$((RANDOM%100+1))" -lt "2" ]
    then
        exit
    fi

    if [ "$((RANDOM%100+1))" -lt "50" -a "$((RANDOM%100+1))" -gt "5" ]
    then
        mkdir random-dir.$file_counter
        cd random-dir.$file_counter
    fi

    dd bs=1024 count=$RANDOM skip=$RANDOM if=/dev/sda of=random-file.$file_counter;
    let "file_counter += 1";
done
