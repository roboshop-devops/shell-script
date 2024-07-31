#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR :: Please run this script with root access"
    EXIT 1
else
    echo "You are root user"
fi

yum install mysql -y

if [ $? -ne o ]
then
    echo "ERROR::Installation of MYSQL failed"
    EXIT 1
else
    echo "echo "Installed of MYSQL successfully"     
fi

yum isntall git -y

if [ $? -ne 0 ]
then
    echo "ERROR::Installation of GIT failed"
    EXIT 1
else
    echo "Installed of GIT successfully"     
fi