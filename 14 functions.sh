#!/bin/bash

echo "Script execution started"
ID=$(id -u)

R=\e[31m
G=\e[32m
Y=\e[33m
VALIDATE() 
{
    if [ $1 -ne 0 ]
    then
        echo "Error: $2 Installing failed"
        exit 1
    else
        echo "Success : $2 Installing is done"
fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR: Please run this script with ROOT access"
    exit 1
else
    echo "You are root user"
fi

apt install mysql-client-core-8.0

VALIDATE $? "Installing MySQL"

sudo apt install git

VALIDATE $? "Installing GIT"

echo "Script execution ended"
