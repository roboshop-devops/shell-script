#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo $G You are root user" $N
fi # fi means reverse of if, indicating condition end

yum install mysqll -y

if [ $? -ne 0 ]
then
    echo "ERROR:: $R Installing MySQL is failed $N"
    exit 1
else
    echo "$G Installing MySQL is SUCCESS $N"
fi

yum install gitt -y

if [ $? -ne 0 ]
then
    echo "ERROR:: $R Installing GIT is failed $N"
    exit 1
else
    echo " $G Installing GIT is SUCCESS $N"
fi