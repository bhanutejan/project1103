#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then 
    echo "$R ERROR: Please run this script with ROOT access $N"
    exit 1
else
    echo "$G You are root user $N"
fi

echo "All arguments passed $@"