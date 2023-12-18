#!/bin/bash
echo "Check age for Voting in elections..."
NUM=$1
if [ $1 -gt 18 ] 
then
    echo "You are eligible for vote...!"
else
    echo "You are minor, $1 age not eligible to vote...!"
fi
