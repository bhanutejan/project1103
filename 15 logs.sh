#!/bin/bash

echo "Script execution started"
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE() 
{
    if [ $1 -ne 0 ]
    then
        echo -e "$R Error: $2 Installing failed $N "
        exit 1
    else
        echo -e "$R Success : $2 Installing is done $N "
fi
}

if [ $ID -ne 0 ]
then 
    echo "$G ERROR: Please run this script with ROOT access $G"
    exit 1
else
    echo "$G You are root user $G"
fi

apt install mysql-client-core-8.0 &>> $LOGFILE

VALIDATE $? "Installing MySQL"

sudo apt install git &>> $LOGFILE

VALIDATE $? "Installing GIT"

echo "Script execution ended"
