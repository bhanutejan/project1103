#!/bin/bash

echo "Script execution started"
ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR: Please run this script with ROOT access"
    exit 1
else
    echo "You are root user"
fi

apt install mysql-client-core-8.0


if [ $? -ne 0 ]
then
    echo "Error: Installing mysql failed"
    exit 1
else
    echo "Success : Installing mysql is done"
fi

sudo apt install git
if [ $? -ne 0 ]
then
    echo "Error: Installing GIT failed"
    exit 1
else
    echo "Success : Installing GIT is done"
fi

echo "Script execution ended"
